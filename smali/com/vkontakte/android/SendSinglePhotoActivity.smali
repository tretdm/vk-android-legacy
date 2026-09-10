.class public Lcom/vkontakte/android/SendSinglePhotoActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "SendSinglePhotoActivity.java"


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field cancelBtn:Lcom/vkontakte/android/TitleBarButton;

.field edit:Landroid/widget/EditText;

.field image:Landroid/widget/ImageView;

.field sendBtn:Lcom/vkontakte/android/TitleBarButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SendSinglePhotoActivity;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->send()V

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

    .line 125
    sget-boolean v3, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v3, :cond_0

    .line 126
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1

    const/4 v1, 0x1

    .line 128
    .local v1, "thin":Z
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 129
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 130
    if-eqz v1, :cond_3

    move v3, v6

    :goto_2
    int-to-float v3, v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 131
    iget-object v3, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v3, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v3}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v1, :cond_4

    :goto_3
    int-to-float v3, v4

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 135
    if-eqz v1, :cond_5

    :goto_4
    int-to-float v2, v6

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "thin":Z
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 126
    goto :goto_0

    .restart local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v1    # "thin":Z
    :cond_2
    move v3, v5

    .line 129
    goto :goto_1

    :cond_3
    move v3, v2

    .line 130
    goto :goto_2

    :cond_4
    move v4, v5

    .line 134
    goto :goto_3

    :cond_5
    move v6, v2

    .line 135
    goto :goto_4
.end method

.method private loadPhoto(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 117
    return-void
.end method

.method private send()V
    .locals 5

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->finish()V

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "file"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "req_params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 82
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "text"

    iget-object v3, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    const-string v2, "info"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->changeConfig(Landroid/content/res/Configuration;)V

    .line 122
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    .line 30
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->setContentView(I)V

    .line 34
    const v1, 0x7f06012a

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    .line 35
    const v1, 0x7f060129

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->image:Landroid/widget/ImageView;

    .line 37
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 39
    new-instance v1, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v7}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 40
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->addViewAtRight(Landroid/view/View;)V

    .line 41
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v1}, Lcom/vkontakte/android/TitleBarButton;->setActiveBG()V

    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const v2, 0x33d6bf95    # 1.0E-7f

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const v5, -0xb6783f

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vkontakte/android/TitleBarButton;->setShadowLayer(FFFI)V

    .line 43
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v1}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 45
    const/high16 v1, 0x42b60000    # 91.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 46
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 48
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    new-instance v2, Lcom/vkontakte/android/SendSinglePhotoActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$1;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    new-instance v1, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v7}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->addViewAtLeft(Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v1}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 58
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 59
    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 60
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 61
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->cancelBtn:Lcom/vkontakte/android/TitleBarButton;

    new-instance v2, Lcom/vkontakte/android/SendSinglePhotoActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$2;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "show_hint"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f06012b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/SendSinglePhotoActivity;->loadPhoto(Landroid/net/Uri;)V

    .line 75
    return-void
.end method
