.class public Lcom/vkontakte/android/ValidationActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "ValidationActivity.java"


# static fields
.field public static final VRESULT_CANCEL:I = 0x1

.field public static final VRESULT_NONE:I = 0x0

.field public static final VRESULT_RETRY:I = 0x2

.field public static result:I


# instance fields
.field private progress:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/ValidationActivity;->result:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ValidationActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->finish()V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 129
    sget v0, Lcom/vkontakte/android/ValidationActivity;->result:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "return_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    sput v0, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 131
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onBackPressed()V

    .line 132
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/vkontakte/android/ValidationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 33
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    .line 34
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 35
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkontakte/android/ValidationActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ValidationActivity$1;-><init>(Lcom/vkontakte/android/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkontakte/android/ValidationActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ValidationActivity$2;-><init>(Lcom/vkontakte/android/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ValidationActivity;->setContentView(Landroid/view/View;)V

    .line 117
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ValidationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method
