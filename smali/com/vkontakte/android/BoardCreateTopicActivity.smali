.class public Lcom/vkontakte/android/BoardCreateTopicActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "BoardCreateTopicActivity.java"


# instance fields
.field private sendBtn:Lcom/vkontakte/android/TitleBarButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/BoardCreateTopicActivity;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->send()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/BoardCreateTopicActivity;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->updateButton()V

    return-void
.end method

.method private send()V
    .locals 6

    .prologue
    .line 98
    const v2, 0x7f06003d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "title":Ljava/lang/String;
    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "text":Ljava/lang/String;
    new-instance v2, Lcom/vkontakte/android/api/BoardAddTopic;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "gid"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v3, v1, v0}, Lcom/vkontakte/android/api/BoardAddTopic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v3, Lcom/vkontakte/android/BoardCreateTopicActivity$6;

    invoke-direct {v3, p0, v1, v0}, Lcom/vkontakte/android/BoardCreateTopicActivity$6;-><init>(Lcom/vkontakte/android/BoardCreateTopicActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/BoardAddTopic;->setCallback(Lcom/vkontakte/android/api/BoardAddTopic$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 120
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 121
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 122
    return-void
.end method

.method private updateButton()V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f06003d

    const/high16 v9, 0x42a00000    # 80.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x0

    .line 23
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f03000d

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/BoardCreateTopicActivity;->setContentView(I)V

    .line 27
    const v2, 0x7f06003c

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 29
    new-instance v2, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v7}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    .line 30
    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/BoardCreateTopicActivity;->addViewAtRight(Landroid/view/View;)V

    .line 31
    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2}, Lcom/vkontakte/android/TitleBarButton;->setActiveBG()V

    .line 32
    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    const v3, 0x33d6bf95    # 1.0E-7f

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0xb6783f

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/vkontakte/android/TitleBarButton;->setShadowLayer(FFFI)V

    .line 33
    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 34
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 35
    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 36
    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {v2, v7}, Lcom/vkontakte/android/TitleBarButton;->setEnabled(Z)V

    .line 37
    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 39
    new-instance v0, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v7}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 40
    .local v0, "cancelBtn":Lcom/vkontakte/android/TitleBarButton;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/BoardCreateTopicActivity;->addViewAtLeft(Landroid/view/View;)V

    .line 41
    invoke-virtual {v0}, Lcom/vkontakte/android/TitleBarButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 43
    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 44
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 45
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/BoardCreateTopicActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/BoardCreateTopicActivity$1;-><init>(Lcom/vkontakte/android/BoardCreateTopicActivity;)V

    .line 51
    const-wide/16 v4, 0x64

    .line 47
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    iget-object v2, p0, Lcom/vkontakte/android/BoardCreateTopicActivity;->sendBtn:Lcom/vkontakte/android/TitleBarButton;

    new-instance v3, Lcom/vkontakte/android/BoardCreateTopicActivity$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/BoardCreateTopicActivity$2;-><init>(Lcom/vkontakte/android/BoardCreateTopicActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v2, Lcom/vkontakte/android/BoardCreateTopicActivity$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/BoardCreateTopicActivity$3;-><init>(Lcom/vkontakte/android/BoardCreateTopicActivity;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/BoardCreateTopicActivity$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/BoardCreateTopicActivity$4;-><init>(Lcom/vkontakte/android/BoardCreateTopicActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    const v2, 0x7f06003f

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/BoardCreateTopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    new-instance v3, Lcom/vkontakte/android/BoardCreateTopicActivity$5;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/BoardCreateTopicActivity$5;-><init>(Lcom/vkontakte/android/BoardCreateTopicActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    return-void
.end method
