package com.vkontakte.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebView;
import android.widget.EditText;

/* loaded from: classes.dex */
public class AuthActivity extends Activity implements View.OnClickListener {
    private static final int REGISTER_RESULT = 100;
    boolean authDone = false;
    ProgressDialog progress;
    WebView webview;

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        if (Global.currentContext instanceof AuthActivity) {
            finish();
            return;
        }
        new CustomTitleActivityImpl(this, 0, false).initGlobal(false);
        Global.currentContext = this;
        setContentView(R.layout.auth);
        findViewById(R.id.auth_btn).setOnClickListener(this);
        findViewById(R.id.forgot_btn).setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.AuthActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                AuthActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://vkontakte.ru/login.php?op=forgot")));
            }
        });
        findViewById(R.id.reg_btn).setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.AuthActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                try {
                    InputMethodManager inputManager = (InputMethodManager) AuthActivity.this.getSystemService("input_method");
                    inputManager.hideSoftInputFromWindow(AuthActivity.this.getCurrentFocus().getWindowToken(), 0);
                } catch (Exception e) {
                }
                AuthActivity.this.startActivityForResult(new Intent(AuthActivity.this, JoinActivity.class), 100);
            }
        });
        findViewById(R.id.network_settings_btn).setOnClickListener(new View.OnClickListener() { // from class: com.vkontakte.android.AuthActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                Intent intent = new Intent(AuthActivity.this, SettingsNetworkActivity.class);
                AuthActivity.this.startActivityForResult(intent, 100);
            }
        });
        this.progress = new ProgressDialog(this);
        this.progress.setMessage(getResources().getString(R.string.loading));
        this.progress.setCancelable(false);
        Global.setFontOnAll(findViewById(R.id.auth_root));
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int code, KeyEvent evt) {
        if (code == 4) {
            finish();
            return true;
        }
        return super.onKeyDown(code, evt);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View arg0) {
        String login = ((EditText) findViewById(R.id.auth_login)).getText().toString();
        String pass = ((EditText) findViewById(R.id.auth_pass)).getText().toString();
        findViewById(R.id.auth_btn).setEnabled(false);
        this.progress.show();
        Auth.authorizeAsync(login, pass, this);
    }

    public void authDone(final int result) {
        if (result == Auth.REAUTH_SUCCESS) {
            runOnUiThread(new Runnable() { // from class: com.vkontakte.android.AuthActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        InputMethodManager imm = (InputMethodManager) AuthActivity.this.getSystemService("input_method");
                        imm.hideSoftInputFromWindow(AuthActivity.this.getCurrentFocus().getWindowToken(), 0);
                    } catch (Exception e) {
                    }
                    AuthActivity.this.setResult(-1);
                    AuthActivity.this.finish();
                }
            });
            if (getIntent().hasExtra("accountAuthenticatorResponse")) {
                try {
                    Parcelable response = getIntent().getParcelableExtra("accountAuthenticatorResponse");
                    Bundle res = new Bundle();
                    res.putString("authAccount", Global.myName);
                    res.putString("accountType", Auth.ACCOUNT_TYPE);
                    response.getClass().getMethod("onResult", Bundle.class).invoke(response, res);
                    return;
                } catch (Exception e) {
                    return;
                }
            }
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.vkontakte.android.AuthActivity.4
            @Override // java.lang.Runnable
            public void run() {
                AuthActivity.this.findViewById(R.id.textView2).setEnabled(true);
                AuthActivity.this.progress.dismiss();
                if (result != Auth.REAUTH_CANCELED) {
                    if (result != Auth.REAUTH_OPEN_BROWSER) {
                        String msg = AuthActivity.this.getResources().getString(result == Auth.REAUTH_ERROR_INCORRECT_PASSWORD ? R.string.auth_error : R.string.search_people);
                        if (result == Auth.REAUTH_ERROR_INCORRECT_PASSWORD) {
                            msg = String.valueOf(msg) + " (" + AuthActivity.this.getResources().getString(R.string.error_video) + ": " + Auth.redirectUri + ")";
                        }
                        new AlertDialog.Builder(AuthActivity.this).setMessage(msg).setTitle(R.string.auth_error_title).setIcon(Build.VERSION.SDK_INT >= 11 ? 0 : 17301543).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null).show();
                        return;
                    }
                    AuthActivity.this.openBrowser(Auth.redirectUri);
                }
            }
        });
    }

    @Override // android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent intent) {
        if (requestCode == 100 && resultCode == -1) {
            ((EditText) findViewById(R.id.auth_login)).setText(intent.getStringExtra("login"));
            ((EditText) findViewById(R.id.auth_pass)).setText(intent.getStringExtra("password"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openBrowser(String url) {
        Intent intent = new Intent(this, ValidationActivity.class);
        intent.putExtra("url", url);
        intent.putExtra("return_result", true);
        startActivityForResult(intent, 101);
    }
}