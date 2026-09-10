.class public Lcom/vkontakte/android/CustomTitleListActivity;
.super Landroid/app/ListActivity;
.source "CustomTitleListActivity.java"


# instance fields
.field public customTitleResID:I

.field public impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

.field public inTab:Z

.field private menuBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 18
    const v0, 0x7f030054

    iput v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->customTitleResID:I

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->inTab:Z

    .line 16
    return-void
.end method

.method private initMenuButton()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0901d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 109
    .local v0, "btn":Lcom/vkontakte/android/TitleBarButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 111
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 112
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 113
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 115
    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    .line 116
    const v2, 0x7f060183

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CustomTitleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    new-instance v2, Lcom/vkontakte/android/CustomTitleListActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/CustomTitleListActivity$1;-><init>(Lcom/vkontakte/android/CustomTitleListActivity;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addViewAtLeft(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtLeft(Landroid/view/View;)V

    .line 54
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->initMenuButton()V

    .line 55
    :cond_0
    return-void
.end method

.method public addViewAtRight(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtRight(Landroid/view/View;)V

    .line 50
    return-void
.end method

.method public hideProgress()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 27
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 28
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 100
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->resizeTitle(Z)V

    .line 105
    :cond_2
    return-void

    .line 100
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sput-object p0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onPause()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->resizeTitle(Z)V

    .line 77
    :cond_2
    return-void

    .line 72
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const v4, 0x7f060074

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 88
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CustomTitleListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 89
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 94
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v3

    .line 92
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UsersSearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CustomTitleListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleListActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleListActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 35
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->initMenuButton()V

    .line 36
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleListActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleListActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 43
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->initMenuButton()V

    .line 44
    :cond_0
    return-void
.end method

.method public showProgress()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
