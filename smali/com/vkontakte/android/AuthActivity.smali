.class public Lcom/vkontakte/android/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REGISTER_RESULT:I = 0x64


# instance fields
.field authDone:Z

.field progress:Landroid/app/ProgressDialog;

.field webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AuthActivity;->authDone:Z

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
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

# virtual methods
.method public authDone(I)V
    .locals 7
    .param p1, "result"    # I

    .prologue
    .line 82
    sget v2, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    if-ne p1, v2, :cond_1

    .line 83
    new-instance v2, Lcom/vkontakte/android/AuthActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$3;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountAuthenticatorResponse"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "accountAuthenticatorResponse"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 96
    .local v1, "response":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "res":Landroid/os/Bundle;
    const-string v2, "authAccount"

    sget-object v3, Lcom/vkontakte/android/Global;->myName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "accountType"

    const-string v3, "com.vkontakte.account"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onResult"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v0    # "res":Landroid/os/Bundle;
    .end local v1    # "response":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    new-instance v2, Lcom/vkontakte/android/AuthActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/AuthActivity$4;-><init>(Lcom/vkontakte/android/AuthActivity;I)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 123
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "login"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 73
    const v2, 0x7f060031

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "login":Ljava/lang/String;
    const v2, 0x7f060032

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "pass":Ljava/lang/String;
    const v2, 0x7f060034

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    iget-object v2, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 78
    invoke-static {v0, v1, p0}, Lcom/vkontakte/android/Auth;->authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/AuthActivity;)V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->requestWindowFeature(I)Z

    .line 29
    sget-object v0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/vkontakte/android/AuthActivity;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->finish()V

    .line 61
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-direct {v0, p0, v3, v3}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal(Z)V

    .line 36
    sput-object p0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 38
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AuthActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AuthActivity$1;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AuthActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AuthActivity$2;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    
    .line 50
    const v1, 0x7f0601b7

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/AuthActivity$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$5;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 60
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "evt"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->finish()V

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
