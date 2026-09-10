.class public Lcom/vkontakte/android/SendSinglePhotoActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "SendSinglePhotoActivity.java"


# instance fields
.field bmp:Landroid/graphics/Bitmap;

.field edit:Landroid/widget/EditText;

.field image:Landroid/widget/ImageView;

.field sendBtn:Lcom/vkontakte/android/TitleBarButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SendSinglePhotoActivity;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->send()V

    return-void
.end method

.method private loadPhoto(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/SendSinglePhotoActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/SendSinglePhotoActivity$3;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void
.end method

.method private send()V
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->finish()V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UploaderService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
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

    .line 79
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "req_params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 80
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "text"

    iget-object v3, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "req_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 82
    const-string v2, "info"

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "info"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    .line 28
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v2, 0x7f03003b

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->setContentView(I)V

    .line 32
    const v2, 0x7f060129

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->edit:Landroid/widget/EditText;

    .line 33
    const v2, 0x7f060128

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->image:Landroid/widget/ImageView;

    .line 35
    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 37
    new-instance v2, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v8}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 38
    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->addViewAtRight(Landroid/view/View;)V

    .line 39
    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2}, Lcom/vkontakte/android/TitleBarButton;->setActiveBG()V

    .line 40
    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const v3, 0x33d6bf95    # 1.0E-7f

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0xb6783f

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/TitleBarButton;->setShadowLayer(FFFI)V

    .line 41
    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 43
    const/high16 v2, 0x42b60000    # 91.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 44
    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 46
    iget-object v2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    new-instance v3, Lcom/vkontakte/android/SendSinglePhotoActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$1;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v0, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v8}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 54
    .local v0, "cancelBtn":Lcom/vkontakte/android/TitleBarButton;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->addViewAtLeft(Landroid/view/View;)V

    .line 55
    invoke-virtual {v0}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 57
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 59
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 61
    new-instance v2, Lcom/vkontakte/android/SendSinglePhotoActivity$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$2;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "show_hint"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f06012a

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/SendSinglePhotoActivity;->loadPhoto(Landroid/net/Uri;)V

    .line 73
    return-void
.end method
