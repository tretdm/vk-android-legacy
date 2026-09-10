package com.vkontakte.android;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import com.google.android.c2dm.C2DMBaseReceiver;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.List;
import java.util.concurrent.Semaphore;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class APIRequest {
    private static final boolean API_DEBUG = false;
    public static final String API_URL = "%s/method/";
    private static Semaphore reauthSemaphore = new Semaphore(1, true);
    private HttpPost httppost;
    public Hashtable<String, String> params = new Hashtable<>();
    private APIHandler handler = null;
    private boolean forceHTTPS = false;
    private boolean cancel = false;
    private ProgressDialog progressDialog = null;
    private int numRetries = 3;

    public APIRequest(String method) {
        this.params.put("method", method);
        this.params.put("v", "3.0");
    }

    private static String convert(byte[] b) {
        String ret = new String();
        for (int i = 0; i < b.length; i++) {
            char[] hex = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            ret = String.valueOf(String.valueOf(ret) + String.valueOf(hex[(b[i] & 240) >> 4])) + String.valueOf(hex[b[i] & 15]);
        }
        return ret;
    }

    public static String md5(String h) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] s = md.digest(h.getBytes("UTF-8"));
            return convert(s);
        } catch (Exception e) {
            return "";
        }
    }

    public String getSig() {
        String src = "/method/" + this.params.get("method") + "?";
        Enumeration<String> e = this.params.keys();
        while (e.hasMoreElements()) {
            String key = e.nextElement();
            if (!key.equals("method")) {
                src = String.valueOf(src) + key + "=" + this.params.get(key);
                if (e.hasMoreElements()) {
                    src = String.valueOf(src) + "&";
                }
            }
        }
        if (src.endsWith("&")) {
            src = src.substring(0, src.length() - 1);
        }
        return md5(String.valueOf(src) + Global.secret);
    }

    public APIRequest param(String name, String value) {
        if (value != null) {
            this.params.put(name, value);
        }
        return this;
    }

    public APIRequest param(String name, int value) {
        if (value != 0) {
            this.params.put(name, Integer.toString(value));
        }
        return this;
    }

    public APIRequest handler(APIHandler h) {
        this.handler = h;
        return this;
    }

    public APIRequest forceHTTPS(boolean f) {
        this.forceHTTPS = f;
        return this;
    }

    public APIRequest exec() {
        return exec((View) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean reqDone(JSONObject o) {
        if (this.progressDialog != null) {
            try {
                this.progressDialog.dismiss();
            } catch (Throwable th) {
            }
            this.progressDialog = null;
        }
        if (this.cancel) {
            return false;
        }
        if (o == null || (!o.has("response") && !o.has(C2DMBaseReceiver.EXTRA_ERROR))) {
            if (this.handler != null) {
                this.handler.fail(-1, null);
                return false;
            }
            return false;
        } else if (!o.has("response") && o.has(C2DMBaseReceiver.EXTRA_ERROR)) {
            if (this.handler != null) {
                this.handler.fail(o.optJSONObject(C2DMBaseReceiver.EXTRA_ERROR).optInt("error_code"), o.optJSONObject(C2DMBaseReceiver.EXTRA_ERROR).optString("error_msg"));
                return false;
            }
            return false;
        } else {
            if (this.handler != null) {
                this.handler.success(o);
            }
            return true;
        }
    }

    public APIRequest exec(final View v) {
        new Thread(new Runnable() { // from class: com.vkontakte.android.APIRequest.1
            @Override // java.lang.Runnable
            public void run() {
                APIRequest.this.numRetries = 3;
                final JSONObject o = APIRequest.this.doExec();
                if (APIRequest.this.handler != null) {
                    if (v == null) {
                        APIRequest.this.reqDone(o);
                    } else {
                        v.post(new Runnable() { // from class: com.vkontakte.android.APIRequest.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                APIRequest.this.reqDone(o);
                            }
                        });
                    }
                }
            }
        }, "API " + this.params.get("method")).start();
        return this;
    }

    public APIRequest exec(final Activity v) {
        new Thread(new Runnable() { // from class: com.vkontakte.android.APIRequest.2
            @Override // java.lang.Runnable
            public void run() {
                APIRequest.this.numRetries = 3;
                final JSONObject o = APIRequest.this.doExec();
                if (APIRequest.this.handler != null) {
                    if (v == null) {
                        APIRequest.this.reqDone(o);
                    } else {
                        v.runOnUiThread(new Runnable() { // from class: com.vkontakte.android.APIRequest.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                APIRequest.this.reqDone(o);
                            }
                        });
                    }
                }
            }
        }, "API " + this.params.get("method")).start();
        return this;
    }

    public boolean execSync() {
        this.numRetries = 3;
        JSONObject o = doExec();
        return reqDone(o);
    }

    public void cancel() {
        try {
            this.cancel = true;
            this.httppost.abort();
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject doExec() {
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        HttpProtocolParams.setUseExpectContinue(defaultHttpClient.getParams(), false);
        HttpConnectionParams.setSocketBufferSize(defaultHttpClient.getParams(), 8192);
        if (Global.uid == 1708231) {
            HostnameVerifier hostnameVerifier = SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER;
            SchemeRegistry registry = new SchemeRegistry();
            SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
            socketFactory.setHostnameVerifier((X509HostnameVerifier) hostnameVerifier);
            registry.register(new Scheme("https", socketFactory, 443));
            new SingleClientConnManager(defaultHttpClient.getParams(), registry);
            HttpsURLConnection.setDefaultHostnameVerifier(hostnameVerifier);
        }
        String url = String.valueOf((MainActivity.useHTTPS || this.forceHTTPS || Global.accessToken == null) ? "http" : "http") + "://" + String.format(API_URL, PreferenceManager.getDefaultSharedPreferences(VKApplication.context).getString("apiHost", "api.openvk.org")) + this.params.get("method");
        this.httppost = new HttpPost(url);
        this.httppost.addHeader("Accept-Encoding", "gzip");
        int tries = Global.accessToken == null ? 1 : 3;
        try {
            if (Global.accessToken != null) {
                this.params.put("access_token", Global.accessToken);
            }
            List<NameValuePair> nameValuePairs = new ArrayList<>(2);
            Enumeration<String> e = this.params.keys();
            while (e.hasMoreElements()) {
                String key = e.nextElement();
                if (!key.equals("method")) {
                    nameValuePairs.add(new BasicNameValuePair(key, this.params.get(key)));
                }
            }
            if (Global.accessToken != null) {
                String sig = getSig();
                nameValuePairs.add(new BasicNameValuePair("sig", sig));
            }
            this.httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs, "UTF-8"));
            HttpResponse response = defaultHttpClient.execute(this.httppost);
            if (this.cancel) {
                return null;
            }
            InputStream is = response.getEntity().getContent();
            Header contentEncoding = response.getFirstHeader("Content-Encoding");
            if (contentEncoding != null && "gzip".equalsIgnoreCase(contentEncoding.getValue())) {
                is = new GZIPInputStream(is);
            }
            ByteArrayOutputStream buf = new ByteArrayOutputStream();
            byte[] rd = new byte[1024];
            while (true) {
                int l = is.read(rd);
                if (l <= 0) {
                    break;
                }
                buf.write(rd, 0, l);
            }
            String s = Global.replaceHTML(new String(buf.toByteArray(), "UTF-8"));
            JSONObject obj = (JSONObject) new JSONTokener(s).nextValue();
            if (obj.has(C2DMBaseReceiver.EXTRA_ERROR)) {
                int code = obj.getJSONObject(C2DMBaseReceiver.EXTRA_ERROR).getInt("error_code");
                if (code == 5) {
                    Global.authOK = false;
                    reauthSemaphore.acquire();
                    boolean reauthResult = Global.authOK;
                    if (reauthResult) {
                        reauthSemaphore.release();
                    } else {
                        reauthResult = Auth.doReauth();
                    }
                    if (!reauthResult) {
                        return null;
                    }
                    this.numRetries--;
                    if (this.numRetries == 0) {
                        throw new APIException(0, "too many retries");
                    }
                    obj = doExec();
                } else if (code == 7) {
                    return obj;
                } else {
                    if (code == 14) {
                        Intent intent = new Intent(VKApplication.context, CaptchaActivity.class);
                        intent.addFlags(268435456);
                        intent.putExtra("url", obj.getJSONObject(C2DMBaseReceiver.EXTRA_ERROR).getString("captcha_img"));
                        VKApplication.context.startActivity(intent);
                        while (!CaptchaActivity.isReady) {
                            Thread.sleep(100L);
                        }
                        CaptchaActivity.isReady = false;
                        if (CaptchaActivity.lastKey != null) {
                            this.params.put("captcha_sid", obj.getJSONObject(C2DMBaseReceiver.EXTRA_ERROR).getString("captcha_sid"));
                            this.params.put("captcha_key", CaptchaActivity.lastKey);
                            return doExec();
                        }
                        return obj;
                    }
                    throw new APIException(code, obj.getJSONObject(C2DMBaseReceiver.EXTRA_ERROR).getString("error_msg"));
                }
            }
            return obj;
        } catch (APIException e2) {
            return null;
        } catch (IOException e3) {
            if (tries == 0) {
                return null;
            }
            Log.w("vk", e3);
            int i = tries - 1;
            return null;
        } catch (Throwable e4) {
            if (e4 instanceof OutOfMemoryError) {
                ImageCache.clearTopLevel();
                return doExec();
            }
            Log.w("vk", e4);
            return null;
        }
    }

    public APIRequest wrapProgress(Context context) {
        return wrapProgress(context, R.string.loading, true);
    }

    public APIRequest wrapProgress(Context context, int strRes, boolean cancelable) {
        this.progressDialog = new ProgressDialog(context);
        this.progressDialog.setMessage(context.getResources().getString(strRes));
        this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.vkontakte.android.APIRequest.3
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialog) {
                APIRequest.this.cancel();
            }
        });
        this.progressDialog.setCancelable(cancelable);
        this.progressDialog.show();
        return this;
    }

    /* loaded from: classes.dex */
    public static class APIHandler {
        public void success(JSONObject resp) {
        }

        public void fail(int code, String msg) {
        }
    }
}