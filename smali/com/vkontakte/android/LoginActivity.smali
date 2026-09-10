.class public Lcom/vkontakte/android/LoginActivity;
.super Lcom/vkontakte/android/VKActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/vkontakte/android/Auth$AuthResultReceiver;


# static fields
.field private static final RESTORE_RESULT:I = 0xcb

.field private static final VALIDATION_RESULT:I = 0xca


# instance fields
.field private progress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vkontakte/android/VKActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LoginActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/LoginActivity;->doAuth()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/LoginActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/LoginActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/vkontakte/android/LoginActivity;->openBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private doAuth()V
    .locals 4

    .prologue
    .line 59
    const v2, 0x7f0900e1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "login":Ljava/lang/String;
    const v2, 0x7f0900e2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "pass":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const v2, 0x7f0900e3

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 63
    iget-object v2, p0, Lcom/vkontakte/android/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 64
    iget-object v2, p0, Lcom/vkontakte/android/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f02027a

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 65
    invoke-static {v0, v1, p0}, Lcom/vkontakte/android/Auth;->authorizeAsync(Ljava/lang/String;Ljava/lang/String;Lcom/vkontakte/android/Auth$AuthResultReceiver;)V

    goto :goto_0
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/ValidationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v1, "return_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    const/16 v1, 0xca

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
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
    .line 69
    .local p2, "extra":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget v0, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    if-ne p1, v0, :cond_0

    .line 70
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LoginActivity;->setResult(I)V

    .line 71
    invoke-virtual {p0}, Lcom/vkontakte/android/LoginActivity;->finish()V

    .line 97
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/vkontakte/android/LoginActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/LoginActivity$4;-><init>(Lcom/vkontakte/android/LoginActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0xcb

    const/4 v3, -0x1

    .line 107
    const/16 v1, 0xca

    if-ne p1, v1, :cond_0

    if-ne p2, v3, :cond_0

    .line 108
    iget-object v1, p0, Lcom/vkontakte/android/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 109
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/LoginActivity$5;

    invoke-direct {v2, p0, p3}, Lcom/vkontakte/android/LoginActivity$5;-><init>(Lcom/vkontakte/android/LoginActivity;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 116
    :cond_0
    if-ne p1, v4, :cond_1

    if-ne p2, v3, :cond_1

    .line 117
    sget v1, Lcom/vkontakte/android/Auth;->REAUTH_SUCCESS:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/LoginActivity;->authDone(ILjava/util/HashMap;)V

    .line 119
    :cond_1
    if-ne p1, v4, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 120
    const-string v0, "https://oauth.vk.com/restore?scope=nohttps,all&client_id=2274003&client_secret=hHbZxrka2uZ6jB1inYsH"

    .line 121
    .local v0, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/vkontakte/android/LoginActivity;->openBrowser(Ljava/lang/String;)V

    .line 123
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0900e4

    const v3, 0x7f0900e2

    .line 24
    invoke-super {p0, p1}, Lcom/vkontakte/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LoginActivity;->setContentView(I)V

    .line 28
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/LoginActivity;->progress:Landroid/app/ProgressDialog;

    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/LoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkontakte/android/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/LoginActivity;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/vkontakte/android/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LoginActivity$1;-><init>(Lcom/vkontakte/android/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 39
    const v0, 0x7f0900e3

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LoginActivity$2;-><init>(Lcom/vkontakte/android/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LoginActivity$3;-><init>(Lcom/vkontakte/android/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    
    .line 58
    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LoginActivity$6;-><init>(Lcom/vkontakte/android/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V


    .line 60
    return-void
.end method
