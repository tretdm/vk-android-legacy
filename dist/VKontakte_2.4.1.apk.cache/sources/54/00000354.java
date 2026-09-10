package com.vkontakte.android;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.KeyEvent;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* loaded from: classes.dex */
public class ValidationActivity extends Activity {
    public static final int VRESULT_CANCEL = 1;
    public static final int VRESULT_NONE = 0;
    public static final int VRESULT_RETRY = 2;
    public static int result = 0;
    private ProgressDialog progress;
    private WebView webView;

    @Override // android.app.Activity
    public void onCreate(Bundle b) {
        super.onCreate(b);
        this.webView = new WebView(this);
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().sync();
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.setWebViewClient(new WebViewClient() { // from class: com.vkontakte.android.ValidationActivity.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                Uri uri = Uri.parse(url);
                if (PreferenceManager.getDefaultSharedPreferences(ValidationActivity.this).getString("oauthHost", "api.openvk.org").equals(uri.getHost()) && "/blank.html".equals(uri.getPath())) {
                    Uri uri2 = Uri.parse(url.replace('#', '?'));
                    if (ValidationActivity.this.getIntent().getBooleanExtra("return_result", false)) {
                        if (uri2.getQueryParameter("access_token") != null) {
                            Intent intent = new Intent();
                            intent.putExtra("access_token", uri2.getQueryParameter("access_token"));
                            intent.putExtra("secret", uri2.getQueryParameter("secret"));
                            intent.putExtra("user_id", Integer.parseInt(uri2.getQueryParameter("user_id")));
                            ValidationActivity.this.setResult(-1, intent);
                            Global.uid = Integer.parseInt(uri2.getQueryParameter("user_id"));
                            Global.accessToken = uri2.getQueryParameter("access_token");
                            Global.secret = uri2.getQueryParameter("secret");
                            SharedPreferences prefs = VKApplication.context.getSharedPreferences(null, 0);
                            prefs.edit().putInt("uid", Global.uid).putString("sid", Global.accessToken).putString("secret", Global.secret).putBoolean("new_auth", true).commit();
                        } else {
                            ValidationActivity.this.setResult(0);
                        }
                        ValidationActivity.this.finish();
                    } else if (uri2.getQueryParameter("fail") != null) {
                        ValidationActivity.result = 1;
                        ValidationActivity.this.finish();
                    } else if (uri2.getQueryParameter("cancel") != null) {
                        ValidationActivity.result = 1;
                        ValidationActivity.this.finish();
                    } else if (uri2.getQueryParameter("access_token") != null) {
                        String token = uri2.getQueryParameter("access_token");
                        String secret = uri2.getQueryParameter("secret");
                        Global.uid = Integer.parseInt(uri2.getQueryParameter("user_id"));
                        Global.accessToken = token;
                        Global.secret = secret;
                        SharedPreferences prefs2 = VKApplication.context.getSharedPreferences(null, 0);
                        prefs2.edit().putInt("uid", Global.uid).putString("sid", Global.accessToken).putString("secret", Global.secret).putBoolean("new_auth", true).commit();
                        ValidationActivity.result = 2;
                        ValidationActivity.this.finish();
                    }
                } else {
                    view.loadUrl(url);
                }
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String url) {
                CookieSyncManager.getInstance().sync();
            }
        });
        this.webView.setWebChromeClient(new WebChromeClient() { // from class: com.vkontakte.android.ValidationActivity.2
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView view, int progr) {
                boolean visible = progr < 100;
                if (visible != ValidationActivity.this.progress.isShowing()) {
                    if (visible) {
                        ValidationActivity.this.progress.show();
                    } else {
                        ValidationActivity.this.progress.dismiss();
                    }
                }
            }
        });
        this.webView.loadUrl(getIntent().getStringExtra("url"));
        setContentView(this.webView);
        this.progress = new ProgressDialog(this);
        this.progress.setMessage(getString(R.string.loading));
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        try {
            this.webView.destroy();
        } catch (Exception e) {
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && result == 0 && !getIntent().getBooleanExtra("return_result", false)) {
            result = 1;
        }
        return super.onKeyDown(keyCode, event);
    }
}