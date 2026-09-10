.class public Lcom/vkontakte/android/StatusActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "StatusActivity.java"


# instance fields
.field edit:Landroid/widget/EditText;

.field sendBtn:Lcom/vkontakte/android/TitleBarButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40400000    # 3.0f

    .line 22
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    .line 24
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "can_edit"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 26
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 27
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 28
    const/high16 v3, 0x41200000    # 10.0f

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 29
    .local v2, "padding":I
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 30
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setGravity(I)V

    .line 31
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/StatusActivity;->setContentView(Landroid/view/View;)V

    .line 33
    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "can_edit"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    new-instance v3, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v9}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 35
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/StatusActivity;->addViewAtRight(Landroid/view/View;)V

    .line 36
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->setActiveBG()V

    .line 37
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const v4, 0x33d6bf95    # 1.0E-7f

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const v7, -0xb6783f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/vkontakte/android/TitleBarButton;->setShadowLayer(FFFI)V

    .line 38
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 39
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 40
    const/high16 v3, 0x42b60000    # 91.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 41
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 43
    new-instance v0, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3, v9}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 44
    .local v0, "cancelBtn":Lcom/vkontakte/android/TitleBarButton;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/StatusActivity;->addViewAtLeft(Landroid/view/View;)V

    .line 45
    invoke-virtual {v0}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 47
    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 48
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 49
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 51
    new-instance v3, Lcom/vkontakte/android/StatusActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/StatusActivity$1;-><init>(Lcom/vkontakte/android/StatusActivity;)V

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    new-instance v4, Lcom/vkontakte/android/StatusActivity$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/StatusActivity$2;-><init>(Lcom/vkontakte/android/StatusActivity;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    new-instance v4, Lcom/vkontakte/android/StatusActivity$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/StatusActivity$3;-><init>(Lcom/vkontakte/android/StatusActivity;)V

    .line 69
    const-wide/16 v5, 0x64

    .line 65
    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .end local v0    # "cancelBtn":Lcom/vkontakte/android/TitleBarButton;
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public sendIt()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "pdlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 79
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "status.set"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 80
    const-string v2, "text"

    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 81
    new-instance v2, Lcom/vkontakte/android/StatusActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/StatusActivity$4;-><init>(Lcom/vkontakte/android/StatusActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 94
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 95
    return-void
.end method
