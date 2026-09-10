.class public Lcom/vkontakte/android/UploadErrorActivity;
.super Landroid/app/Activity;
.source "UploadErrorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public makeDlg()V
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/vkontakte/android/UploadErrorActivity;->finish()V

    .line 25
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "dlg":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 27
    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 28
    const v1, 0x7f090030

    new-instance v2, Lcom/vkontakte/android/UploadErrorActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/UploadErrorActivity$1;-><init>(Lcom/vkontakte/android/UploadErrorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    const v1, 0x7f090031

    new-instance v2, Lcom/vkontakte/android/UploadErrorActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/UploadErrorActivity$2;-><init>(Lcom/vkontakte/android/UploadErrorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 16
    const v1, 0x1030010

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/UploadErrorActivity;->setTheme(I)V

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UploadErrorActivity;->setContentView(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0}, Lcom/vkontakte/android/UploadErrorActivity;->makeDlg()V

    .line 21
    return-void
.end method
