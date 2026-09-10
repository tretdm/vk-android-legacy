.class public Lcom/vkontakte/android/AuthActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "AuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REGISTER_RESULT:I = 0x64

.field private static final VALIDATION_RESULT:I = 0x65

.field public static active:Z


# instance fields
.field authDone:Z

.field progress:Landroid/app/ProgressDialog;

.field webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/AuthActivity;->active:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AuthActivity;->authDone:Z

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AuthActivity;->openBrowser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AuthActivity;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/vkontakte/android/AuthActivity;->doAuth()V

    return-void
.end method

.method private doAuth()V
    .locals 4

    .prologue
    .line 131
    const v2, 0x7f08007f

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "login":Ljava/lang/String;
    const v2, 0x7f080080

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "pass":Ljava/lang/String;
    const v2, 0x7f080081

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    iget-object v2, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 135
    const-string v2, ""

    invoke-static {v0, v1, p0, v2}, Lcom/vkontakte/android/Auth;->authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/AuthActivity;Ljava/lang/String;)V

    .line 136
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
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 139
    sget v0, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    if-ne p1, v0, :cond_0

    .line 140
    new-instance v0, Lcom/vkontakte/android/AuthActivity$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AuthActivity$7;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Lcom/vkontakte/android/AuthActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AuthActivity$8;-><init>(Lcom/vkontakte/android/AuthActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 196
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 197
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "login"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 202
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AuthActivity$9;

    invoke-direct {v1, p0, p3}, Lcom/vkontakte/android/AuthActivity$9;-><init>(Lcom/vkontakte/android/AuthActivity;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/vkontakte/android/AuthActivity;->doAuth()V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f080080

    const v3, 0x7f08007e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/vkontakte/android/AuthActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "uid"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 43
    const v1, 0x103006b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->setTheme(I)V

    .line 44
    :cond_0
    new-instance v1, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 46
    const v2, 0x7f06017d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 47
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 48
    const v2, 0x7f060028

    new-instance v3, Lcom/vkontakte/android/AuthActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AuthActivity$1;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/vkontakte/android/AuthActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$2;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 109
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AuthActivity;->requestWindowFeature(I)Z

    .line 67
    sput-object p0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 69
    const v1, 0x7f030025

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 72
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 73
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    
    .line 77
    const v1, 0x7f080197

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v7, Lcom/vkontakte/android/AuthActivity$10;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/AuthActivity$10;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    .line 80
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/AuthActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$3;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v1, 0x7f080083

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/AuthActivity$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$4;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    .line 89
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/vkontakte/android/AuthActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 91
    sput-boolean v5, Lcom/vkontakte/android/AuthActivity;->active:Z

    .line 93
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/XLinearLayout;

    new-instance v2, Lcom/vkontakte/android/AuthActivity$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$5;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/XLinearLayout;->setOnKeyboardStateListener(Lcom/vkontakte/android/ui/XLinearLayout$OnKeyboardStateChangeListener;)V

    .line 101
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v2, Lcom/vkontakte/android/AuthActivity$6;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AuthActivity$6;-><init>(Lcom/vkontakte/android/AuthActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 108
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/AuthActivity;->active:Z

    .line 114
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "evt"    # Landroid/view/KeyEvent;

    .prologue
    .line 117
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AuthActivity;->setResult(I)V

    .line 119
    invoke-virtual {p0}, Lcom/vkontakte/android/AuthActivity;->finish()V

    .line 120
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/accounts/AccountAuthenticatorActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
