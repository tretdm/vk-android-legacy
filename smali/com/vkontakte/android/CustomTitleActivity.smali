.class public Lcom/vkontakte/android/CustomTitleActivity;
.super Landroid/app/Activity;
.source "CustomTitleActivity.java"


# instance fields
.field public customTitleResID:I

.field public impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

.field public inTab:Z

.field private menuBtn:Landroid/view/View;

.field private titleHidden:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const v0, 0x7f030054

    iput v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->customTitleResID:I

    .line 22
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->inTab:Z

    .line 23
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->titleHidden:Z

    .line 18
    return-void
.end method

.method private initMenuButton()V
    .locals 6

    .prologue
    const v5, 0x7f060183

    const/4 v3, 0x0

    .line 122
    new-instance v0, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0901d1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 123
    .local v0, "btn":Lcom/vkontakte/android/TitleBarButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 125
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 126
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 127
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 129
    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    .line 130
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 141
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    new-instance v2, Lcom/vkontakte/android/CustomTitleActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/CustomTitleActivity$1;-><init>(Lcom/vkontakte/android/CustomTitleActivity;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public addViewAtLeft(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtLeft(Landroid/view/View;)V

    .line 63
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;->initMenuButton()V

    .line 64
    :cond_0
    return-void
.end method

.method public addViewAtRight(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtRight(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public hideProgress()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method protected hideTitle()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CustomTitleActivity;->requestWindowFeature(I)Z

    .line 35
    iput-boolean v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->titleHidden:Z

    .line 36
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 30
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 31
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 114
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->resizeTitle(Z)V

    .line 119
    :cond_2
    return-void

    .line 114
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sput-object p0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onPause()V

    .line 108
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onResume()V

    .line 96
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 97
    iget-object v3, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_3

    move v2, v1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    :cond_1
    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->resizeTitle(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    :goto_2
    return-void

    .line 97
    :cond_3
    const/16 v2, 0x8

    goto :goto_0

    :cond_4
    move v0, v1

    .line 100
    goto :goto_1

    .line 102
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const v4, 0x7f060074

    const/4 v3, 0x0

    .line 79
    instance-of v2, p0, Lcom/vkontakte/android/UsersSearchActivity;

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 82
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CustomTitleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 83
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 89
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return v3

    .line 86
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UsersSearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CustomTitleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 39
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->titleHidden:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 44
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;->initMenuButton()V

    .line 45
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 48
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->titleHidden:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 54
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;->initMenuButton()V

    .line 55
    :cond_0
    return-void
.end method

.method public showProgress()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "fullscreen"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoViewerActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPostActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/TabletMainActivity;->startActivityInFragment(Landroid/content/Intent;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivityFullscreen(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
