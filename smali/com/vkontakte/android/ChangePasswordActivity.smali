.class public Lcom/vkontakte/android/ChangePasswordActivity;
.super Landroid/app/Activity;
.source "ChangePasswordActivity.java"


# instance fields
.field private dlg:Landroid/app/AlertDialog;

.field private textListener:Landroid/text/TextWatcher;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Lcom/vkontakte/android/ChangePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ChangePasswordActivity$1;-><init>(Lcom/vkontakte/android/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->textListener:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ChangePasswordActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ChangePasswordActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ChangePasswordActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ChangePasswordActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ChangePasswordActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ChangePasswordActivity;->changePassword(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private changePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "old"    # Ljava/lang/String;
    .param p2, "nw"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Lcom/vkontakte/android/api/AccountChangePassword;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/AccountChangePassword;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/ChangePasswordActivity$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChangePasswordActivity$4;-><init>(Lcom/vkontakte/android/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountChangePassword;->setCallback(Lcom/vkontakte/android/api/AccountChangePassword$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 124
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f080088

    const v5, 0x7f080087

    const v4, 0x7f080086

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f03001e

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/ChangePasswordActivity;->textListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/ChangePasswordActivity;->textListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/vkontakte/android/ChangePasswordActivity;->textListener:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ChangePasswordActivity;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01cd

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    new-instance v1, Lcom/vkontakte/android/ChangePasswordActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChangePasswordActivity$2;-><init>(Lcom/vkontakte/android/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/ChangePasswordActivity;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ChangePasswordActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChangePasswordActivity$3;-><init>(Lcom/vkontakte/android/ChangePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method
