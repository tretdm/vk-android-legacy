.class public Lcom/vkontakte/android/StatusActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "StatusActivity.java"


# instance fields
.field cancelBtn:Lcom/vkontakte/android/TitleBarButton;

.field edit:Landroid/widget/EditText;

.field sendBtn:Lcom/vkontakte/android/TitleBarButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method

.method private changeConfig(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x3

    const/4 v6, -0x2

    const/4 v4, -0x3

    const/4 v2, 0x0

    .line 107
    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v3, :cond_0

    .line 108
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    const/4 v1, 0x1

    .line 110
    .local v1, "thin":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 111
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 112
    if-eqz v1, :cond_3

    move v3, v6

    :goto_2
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 113
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 116
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_4

    :goto_3
    int-to-float v3, v4

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 117
    if-eqz v1, :cond_5

    :goto_4
    int-to-float v2, v6

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "thin":Z
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 108
    goto :goto_0

    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "thin":Z
    :cond_2
    move v3, v5

    .line 111
    goto :goto_1

    :cond_3
    move v3, v2

    .line 112
    goto :goto_2

    :cond_4
    move v4, v5

    .line 116
    goto :goto_3

    :cond_5
    move v6, v2

    .line 117
    goto :goto_4
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "can_edit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vkontakte/android/StatusActivity;->changeConfig(Landroid/content/res/Configuration;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    .line 24
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    .line 26
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "can_edit"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 28
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 29
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 30
    const/high16 v2, 0x41200000    # 10.0f

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 31
    .local v1, "padding":I
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 32
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 33
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StatusActivity;->setContentView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "can_edit"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    new-instance v2, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v8}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 37
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StatusActivity;->addViewAtRight(Landroid/view/View;)V

    .line 38
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2}, Lcom/vkontakte/android/TitleBarButton;->setActiveBG()V

    .line 39
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const v3, 0x33d6bf95    # 1.0E-7f

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0xb6783f

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/TitleBarButton;->setShadowLayer(FFFI)V

    .line 40
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 42
    const/high16 v2, 0x42b60000    # 91.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 43
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 45
    new-instance v2, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v8}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/vkontakte/android/StatusActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 46
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/StatusActivity;->addViewAtLeft(Landroid/view/View;)V

    .line 47
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 49
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 50
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 51
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 53
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    new-instance v3, Lcom/vkontakte/android/StatusActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/StatusActivity$1;-><init>(Lcom/vkontakte/android/StatusActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    new-instance v3, Lcom/vkontakte/android/StatusActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/StatusActivity$2;-><init>(Lcom/vkontakte/android/StatusActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v2, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/StatusActivity$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/StatusActivity$3;-><init>(Lcom/vkontakte/android/StatusActivity;)V

    .line 71
    const-wide/16 v4, 0x64

    .line 67
    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vkontakte/android/StatusActivity;->changeConfig(Landroid/content/res/Configuration;)V

    .line 75
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public sendIt()V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "pdlg":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/vkontakte/android/StatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 82
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 83
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "status.set"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 84
    const-string v2, "text"

    iget-object v3, p0, Lcom/vkontakte/android/StatusActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/vkontakte/android/StatusActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/vkontakte/android/StatusActivity$4;-><init>(Lcom/vkontakte/android/StatusActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 98
    invoke-virtual {v1, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 99
    return-void
.end method
