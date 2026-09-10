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
    .line 17
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 19
    const v0, 0x7f03004d

    iput v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->customTitleResID:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->inTab:Z

    .line 17
    return-void
.end method

.method private initMenuButton()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0901d0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    .local v0, "btn":Lcom/vkontakte/android/TitleBarButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 106
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 107
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 108
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 110
    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    .line 111
    const v2, 0x7f060198

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CustomTitleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    new-instance v2, Lcom/vkontakte/android/CustomTitleListActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/CustomTitleListActivity$1;-><init>(Lcom/vkontakte/android/CustomTitleListActivity;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
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

    .line 121
    return-void

    .line 120
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addViewAtLeft(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtLeft(Landroid/view/View;)V

    .line 55
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->initMenuButton()V

    .line 56
    :cond_0
    return-void
.end method

.method public addViewAtRight(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtRight(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public hideProgress()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 28
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 29
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_0
    return-void

    .line 98
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sput-object p0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onPause()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/CustomTitleListActivity;->menuBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    return-void

    .line 73
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const v4, 0x7f06006a

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 86
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CustomTitleListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 87
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 92
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v3

    .line 90
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UsersSearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CustomTitleListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 32
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleListActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleListActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 36
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->initMenuButton()V

    .line 37
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 40
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleListActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleListActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleListActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;)V

    .line 44
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleListActivity;->initMenuButton()V

    .line 45
    :cond_0
    return-void
.end method

.method public showProgress()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method
