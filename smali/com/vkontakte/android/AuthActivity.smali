.class public Lcom/vkontakte/android/AuthActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "AuthActivity.java"

# interfaces
.implements Lcom/vkontakte/android/Auth$AuthResultReceiver;


# static fields
.field private static final AUTH_RESULT:I = 0x66

.field private static final REGISTER_RESULT:I = 0x64

.field private static final VALIDATION_RESULT:I = 0x65

.field public static active:Z


# instance fields
.field authDone:Z

.field private photo:Ljava/lang/String;

.field progress:Landroid/app/ProgressDialog;

.field webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/AuthActivity;->active:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AuthActivity;->authDone:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/AuthActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/AuthActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity;->photo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AuthActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/vkontakte/android/AuthActivity;->photo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/AuthActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AuthActivity;->openBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/ValidationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "return_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method

.method private openBrowser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/ValidationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "return_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 186
    return-void
.end method


# virtual methods
.method public authDone(ILjava/util/HashMap;)V
    .locals 1
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget v0, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    if-ne p1, v0, :cond_0

    .line 125
    new-instance v0, Lcom/vkontakte/android/AuthActivity$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AuthActivity$5;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/vkontakte/android/AuthActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AuthActivity$6;-><init>(Lcom/vkontakte/android/AuthActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    const/4 v2, -0x1

    .line 196
    if-ne p1, v3, :cond_0

    if-ne p2, v2, :cond_0

    .line 197
    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    invoke-virtual {p0, v1, v4}, Lcom/vkontakte/android/AuthActivity;->authDone(ILjava/util/HashMap;)V

    .line 199
    :cond_0
    if-ne p1, v3, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 200
    const-string v0, "https://oauth.vk.com/restore?scope=nohttps,all&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH"

    .line 201
    .local v0, "url":Ljava/lang/String;
    const-string v1, "number"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/AuthActivity;->openBrowser(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    const/16 v1, 0x66

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 204
    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    invoke-virtual {p0, v1, v4}, Lcom/vkontakte/android/AuthActivity;->authDone(ILjava/util/HashMap;)V

    .line 206
    :cond_2
    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    .line 207
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 208
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/AuthActivity$7;

    invoke-direct {v2, p0, p3}, Lcom/vkontakte/android/AuthActivity$7;-><init>(Lcom/vkontakte/android/AuthActivity;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 215
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/AuthActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "uid"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    .line 40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 41
    const v1, 0x103006b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->setTheme(I)V

    .line 42
    :cond_0
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0025

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d01cd

    new-instance v3, Lcom/vkontakte/android/AuthActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AuthActivity$2;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/AuthActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$1;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 106
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AuthActivity;->requestWindowFeature(I)Z

    .line 64
    const v1, 0x7f030018

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->setContentView(I)V

    .line 66
    const v1, 0x7f08007a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/AuthActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$3;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f080079

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/AuthActivity$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$4;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    .line 96
    sput-boolean v4, Lcom/vkontakte/android/AuthActivity;->active:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/AuthActivity;->active:Z

    .line 111
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "evt"    # Landroid/view/KeyEvent;

    .prologue
    .line 114
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->setResult(I)V

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->finish()V

    .line 117
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/accounts/AccountAuthenticatorActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
