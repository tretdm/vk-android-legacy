.class public Lcom/vkontakte/android/NotificationActivity;
.super Landroid/app/Activity;
.source "NotificationActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/NotificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NotificationActivity;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationActivity;->canceled()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/NotificationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NotificationActivity;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkontakte/android/NotificationActivity;->opened()V

    return-void
.end method

.method private canceled()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method private opened()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0d0073

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 17
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/NotificationActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NotificationActivity$1;-><init>(Lcom/vkontakte/android/NotificationActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 28
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string v2, "link"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    const v2, 0x7f0d0364

    new-instance v3, Lcom/vkontakte/android/NotificationActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NotificationActivity$3;-><init>(Lcom/vkontakte/android/NotificationActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/NotificationActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NotificationActivity$2;-><init>(Lcom/vkontakte/android/NotificationActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 55
    return-void

    .line 17
    .end local v0    # "alert":Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NotificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d01b9

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 46
    .restart local v0    # "alert":Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v2, Lcom/vkontakte/android/NotificationActivity$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NotificationActivity$4;-><init>(Lcom/vkontakte/android/NotificationActivity;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
