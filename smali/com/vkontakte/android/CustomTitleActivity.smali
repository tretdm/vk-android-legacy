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

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const v0, 0x7f03004d

    iput v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->customTitleResID:I

    .line 23
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->inTab:Z

    .line 24
    iput-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->titleHidden:Z

    .line 19
    return-void
.end method

.method private initMenuButton()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 120
    new-instance v0, Lcom/vkontakte/android/TitleBarButton;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0901d0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2, v3}, Lcom/vkontakte/android/TitleBarButton;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    .local v0, "btn":Lcom/vkontakte/android/TitleBarButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 123
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 124
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 125
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/TitleBarButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-static {v0}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 127
    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    .line 128
    const v2, 0x7f060198

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    new-instance v2, Lcom/vkontakte/android/CustomTitleActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/CustomTitleActivity$1;-><init>(Lcom/vkontakte/android/CustomTitleActivity;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/TitleBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 138
    return-void

    .line 137
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addViewAtLeft(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtLeft(Landroid/view/View;)V

    .line 64
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;->initMenuButton()V

    .line 65
    :cond_0
    return-void
.end method

.method public addViewAtRight(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->addViewAtRight(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method public hideProgress()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method protected hideTitle()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CustomTitleActivity;->requestWindowFeature(I)Z

    .line 36
    iput-boolean v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->titleHidden:Z

    .line 37
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 31
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 32
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_0
    return-void

    .line 111
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sput-object p0, Lcom/vkontakte/android/Global;->currentContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onPause()V

    .line 105
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onResume()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 97
    iget-object v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->menuBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :cond_1
    return-void

    .line 97
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 5

    .prologue
    const v4, 0x7f06006a

    const/4 v3, 0x0

    .line 80
    instance-of v2, p0, Lcom/vkontakte/android/UsersSearchActivity;

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 83
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CustomTitleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 84
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/CustomTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 90
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return v3

    .line 87
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/UsersSearchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CustomTitleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 40
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->titleHidden:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(I)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 45
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;->initMenuButton()V

    .line 46
    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    new-instance v0, Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->customTitleResID:I

    iget-boolean v2, p0, Lcom/vkontakte/android/CustomTitleActivity;->inTab:Z

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    iget-boolean v1, p0, Lcom/vkontakte/android/CustomTitleActivity;->titleHidden:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->titleHidden:Z

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/CustomTitleActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/CustomTitleActivityImpl;->createContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 55
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;->initMenuButton()V

    .line 56
    :cond_0
    return-void
.end method

.method public showProgress()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
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

    .line 142
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/TabletMainActivity;

    if-eqz v0, :cond_0

    .line 143
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

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewPostActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/CustomTitleActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/TabletMainActivity;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/TabletMainActivity;->startActivityInFragment(Landroid/content/Intent;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startActivityFullscreen(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    return-void
.end method
