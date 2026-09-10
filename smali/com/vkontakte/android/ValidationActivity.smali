.class public Lcom/vkontakte/android/ValidationActivity;
.super Landroid/app/Activity;
.source "ValidationActivity.java"


# static fields
.field public static final VRESULT_CANCEL:I = 0x1

.field public static final VRESULT_NONE:I = 0x0

.field public static final VRESULT_RETRY:I = 0x2

.field public static result:I


# instance fields
.field private phoneEntered:Z

.field private progress:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/vkontakte/android/ValidationActivity;->result:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ValidationActivity;->phoneEntered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ValidationActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ValidationActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/ValidationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ValidationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/vkontakte/android/ValidationActivity;->phoneEntered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ValidationActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ValidationActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 133
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 136
    sget v0, Lcom/vkontakte/android/ValidationActivity;->result:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "return_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x1

    sput v0, Lcom/vkontakte/android/ValidationActivity;->result:I

    .line 138
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/vkontakte/android/ValidationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 31
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    .line 32
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 33
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkontakte/android/ValidationActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ValidationActivity$1;-><init>(Lcom/vkontakte/android/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkontakte/android/ValidationActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ValidationActivity$2;-><init>(Lcom/vkontakte/android/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ValidationActivity;->setContentView(Landroid/view/View;)V

    .line 124
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ValidationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method
