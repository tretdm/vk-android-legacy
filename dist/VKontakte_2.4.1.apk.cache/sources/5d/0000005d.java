package com.vkontakte.android;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import com.google.android.c2dm.C2DMBaseReceiver;
import com.vkontakte.android.api.GetWallInfo;
import java.util.HashMap;
import java.util.Random;
import java.util.Set;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public class Auth {
    public static final String ACCOUNT_TYPE = "com.vkontakte.account";
    private static String captchaSid;
    static String nonce;
    public static int REAUTH_OPEN_BROWSER = 4;
    public static int REAUTH_CANCELED = 3;
    public static int REAUTH_ERROR_INCORRECT_PASSWORD = 2;
    public static int REAUTH_ERROR_NETWORK = 1;
    public static int REAUTH_SUCCESS = 0;
    public static String redirectUri = "";

    public static void authorizeAsync(final String login, final String pass, final AuthActivity act) {
        new Thread(new Runnable() { // from class: com.vkontakte.android.Auth.1
            @Override // java.lang.Runnable
            public void run() {
                Auth.createNonce();
                int r = Auth.doAuth(login, pass);
                if (act != null) {
                    act.authDone(r);
                }
            }
        }).start();
    }

    public static boolean doReauth() {
        createNonce();
        if (doAuth(null, null) == REAUTH_ERROR_INCORRECT_PASSWORD) {
            Global.longPoll.onReauthError();
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void createNonce() {
        char[] chars = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0'};
        nonce = "";
        Random r = new Random();
        for (int i = 0; i < 16; i++) {
            nonce = String.valueOf(nonce) + chars[r.nextInt(chars.length)];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int doAuth(String login, String pass) {
        String sig;
        JSONObject jo;
        boolean needCreateAccount;
        try {
            if (login == null) {
                SharedPreferences prefs = VKApplication.context.getSharedPreferences(null, 0);
                login = prefs.getString("login", null);
                sig = prefs.getString("sig", null);
                if (login == null) {
                    Log.i("vk", "Login/pass not available, starting AuthActivity");
                    Intent intent = new Intent(VKApplication.context, AuthActivity.class);
                    intent.addFlags(805306368);
                    VKApplication.context.startActivity(intent);
                    return REAUTH_ERROR_INCORRECT_PASSWORD;
                }
            } else {
                sig = APIRequest.md5(String.valueOf(login) + ":vk.com:" + pass);
                SharedPreferences prefs2 = VKApplication.context.getSharedPreferences(null, 0);
                prefs2.edit().putString("login", login).putString("sig", sig).commit();
            }
            Object[] objArr = new Object[3];
            objArr[0] = PreferenceManager.getDefaultSharedPreferences(VKApplication.context).getString("oauthHost", "api.openvk.org");
            objArr[1] = Uri.encode(login);
            if (pass != null) {
                sig = pass;
            }
            objArr[2] = Uri.encode(sig);
            String url = String.format("http://%1$s/token?grant_type=password&scope=nohttps&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH&username=%2$s&password=%3$s", objArr);
            if (captchaSid != null) {
                url = String.valueOf(url) + "&captcha_sid=" + Uri.encode(captchaSid) + "&captcha_key=" + Uri.encode(CaptchaActivity.lastKey);
                captchaSid = null;
            }
            byte[] r = Global.getURL(url);
            String s = new String(r, "UTF-8");
            Log.d("vk", s);
            jo = (JSONObject) new JSONTokener(s).nextValue();
        } catch (Exception x) {
            Log.w("vk", x);
        }
        if (jo.has(C2DMBaseReceiver.EXTRA_ERROR)) {
            if ("need_captcha".equals(jo.optString(C2DMBaseReceiver.EXTRA_ERROR))) {
                captchaSid = jo.getString("captcha_sid");
                Intent intent2 = new Intent(VKApplication.context, CaptchaActivity.class);
                intent2.addFlags(268435456);
                intent2.putExtra("url", jo.getString("captcha_img"));
                VKApplication.context.startActivity(intent2);
                while (!CaptchaActivity.isReady) {
                    Thread.sleep(100L);
                }
                CaptchaActivity.isReady = false;
                if (CaptchaActivity.lastKey == null || CaptchaActivity.lastKey.length() == 0) {
                    return REAUTH_CANCELED;
                }
                return doAuth(login, pass);
            } else if ("need_validation".equals(jo.optString(C2DMBaseReceiver.EXTRA_ERROR))) {
                redirectUri = jo.getString("redirect_uri");
                return REAUTH_OPEN_BROWSER;
            } else {
                return REAUTH_ERROR_INCORRECT_PASSWORD;
            }
        }
        if (jo.has("access_token")) {
            Global.uid = jo.getInt("user_id");
            Global.accessToken = jo.getString("access_token");
            Global.secret = jo.getString("secret");
            Global.authOK = true;
            SharedPreferences prefs3 = VKApplication.context.getSharedPreferences(null, 0);
            prefs3.edit().putInt("uid", Global.uid).putString("sid", Global.accessToken).putString("secret", Global.secret).putBoolean("new_auth", true).commit();
            try {
                Object am = Class.forName("android.accounts.AccountManager").getMethod("get", Context.class).invoke(null, VKApplication.context);
                int l = ((Object[]) am.getClass().getMethod("getAccountsByType", String.class).invoke(am, ACCOUNT_TYPE)).length;
                needCreateAccount = l == 0;
            } catch (ClassNotFoundException e) {
                needCreateAccount = false;
            }
            SharedPreferences prefs1 = PreferenceManager.getDefaultSharedPreferences(VKApplication.context);
            if (Integer.parseInt(Build.VERSION.SDK) < 8 && !prefs1.contains("enableC2DM")) {
                prefs1.edit().putBoolean("enableC2DM", true).commit();
                C2DM.start();
            }
            if (needCreateAccount) {
                new GetWallInfo(Global.uid).setCallback(new GetWallInfo.Callback() { // from class: com.vkontakte.android.Auth.2
                    @Override // com.vkontakte.android.api.GetWallInfo.Callback
                    public void success(String[] name, String photo, String subtext1, String subtext2, boolean online, boolean canWrite, boolean isAdmin, Photo[] lastPhotos, int[] counters, HashMap<String, String> info) {
                        SharedPreferences prefs4 = VKApplication.context.getSharedPreferences(null, 0);
                        String sphotos = "";
                        for (Photo p : lastPhotos) {
                            sphotos = String.valueOf(sphotos) + ";" + p.id + "|" + p.thumbURL;
                        }
                        if (sphotos.length() > 0) {
                            sphotos = sphotos.substring(1);
                        }
                        String ctrs = "";
                        for (int c : counters) {
                            ctrs = String.valueOf(ctrs) + "|" + c;
                        }
                        String ctrs2 = ctrs.substring(1);
                        String uinfo = "";
                        Set<String> ik = info.keySet();
                        for (String k : ik) {
                            uinfo = String.valueOf(uinfo) + "<>" + k + "|" + info.get(k).replace("<>", "< >");
                        }
                        if (uinfo.length() > 0) {
                            uinfo = uinfo.substring(2);
                        }
                        prefs4.edit().putString("username", name[0]).putString("username1", name[1]).putString("username2", name[2]).putString("userphoto", photo).putString("userphotos", sphotos).putString("usercounters", ctrs2).putString("userinfo", uinfo).putString("useruniversity", subtext1).putString("usercity", subtext2).commit();
                        try {
                            Object account = Class.forName("android.accounts.Account").getConstructor(String.class, String.class).newInstance(name[0], Auth.ACCOUNT_TYPE);
                            Object am2 = Class.forName("android.accounts.AccountManager").getMethod("get", Context.class).invoke(null, VKApplication.context);
                            ((Boolean) am2.getClass().getMethod("addAccountExplicitly", account.getClass(), String.class, Bundle.class).invoke(am2, account, null, null)).booleanValue();
                            ContentResolver.class.getMethod("setIsSyncable", account.getClass(), String.class, Integer.TYPE).invoke(null, account, "com.android.contacts", 1);
                        } catch (Exception x2) {
                            Log.w("vk", x2);
                        }
                    }

                    @Override // com.vkontakte.android.api.GetWallInfo.Callback
                    public void fail(int ecode, String emsg) {
                    }
                }).execSync();
            }
            return REAUTH_SUCCESS;
        }
        return REAUTH_ERROR_NETWORK;
    }

    public static int getCurrentSyncOption(Context context) {
        boolean syncEnabled;
        boolean syncAll;
        try {
            Object am = Class.forName("android.accounts.AccountManager").getMethod("get", Context.class).invoke(null, VKApplication.context);
            Object[] accounts = (Object[]) am.getClass().getMethod("getAccountsByType", String.class).invoke(am, ACCOUNT_TYPE);
            if (accounts.length == 0) {
                Object account = Class.forName("android.accounts.Account").getConstructor(String.class, String.class).newInstance(VKApplication.context.getSharedPreferences(null, 0).getString("username", ""), ACCOUNT_TYPE);
                am.getClass().getMethod("addAccountExplicitly", account.getClass(), String.class, Bundle.class).invoke(am, account, null, null);
                accounts = new Object[]{account};
            }
            syncEnabled = ((Boolean) ContentResolver.class.getMethod("getSyncAutomatically", accounts[0].getClass(), String.class).invoke(null, accounts[0], "com.android.contacts")).booleanValue();
            SharedPreferences prefs = context.getApplicationContext().getSharedPreferences(null, 0);
            syncAll = prefs.getBoolean("sync_all", false);
        } catch (Exception x) {
            Log.w("vk", x);
        }
        if (syncEnabled) {
            if (!syncEnabled || syncAll) {
                return (syncEnabled && syncAll) ? 0 : -1;
            }
            return 1;
        }
        return 2;
    }
}