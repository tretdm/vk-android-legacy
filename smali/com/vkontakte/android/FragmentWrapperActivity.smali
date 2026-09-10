.class public Lcom/vkontakte/android/FragmentWrapperActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "FragmentWrapperActivity.java"


# instance fields
.field contentView:Landroid/widget/FrameLayout;

.field private menu:Lcom/vkontakte/android/ui/MenuOverlayView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FragmentWrapperActivity;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/FragmentWrapperActivity;->openFromMenu(Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FragmentWrapperActivity;)Lcom/vkontakte/android/ui/MenuOverlayView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FragmentWrapperActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTextViewMarquee(Landroid/widget/TextView;)V

    return-void
.end method

.method private openFromMenu(Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 2
    .param p1, "fclass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "back"    # Z

    .prologue
    .line 245
    if-eqz p3, :cond_0

    .line 246
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 247
    invoke-static {p1, p2, p0}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 255
    :goto_0
    return-void

    .line 250
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v1, "args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 253
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FragmentWrapperActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setTextViewMarquee(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 316
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 317
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 318
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 319
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 320
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 321
    return-void
.end method

.method private setTitleMarquee()V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/vkontakte/android/FragmentWrapperActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FragmentWrapperActivity$2;-><init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V

    .line 312
    const-wide/16 v2, 0x64

    .line 290
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setupMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 129
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "intro"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, "intro":I
    and-int/lit8 v3, v1, 0x3

    if-lez v3, :cond_0

    .line 232
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v3, Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/MenuOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 134
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 135
    .local v0, "decorView":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "vr":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 137
    iget-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 138
    iget-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object v3, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->getListView()Lcom/vkontakte/android/MenuListView;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/FragmentWrapperActivity$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/FragmentWrapperActivity$1;-><init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->updateMenuMode()V

    goto :goto_0
.end method

.method private updateMenuMode()V
    .locals 2

    .prologue
    .line 258
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 260
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V

    goto :goto_0
.end method


# virtual methods
.method protected initFragment()V
    .locals 9

    .prologue
    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "class"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "fn":Ljava/lang/String;
    const-string v6, "_settings"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v6, v7, :cond_0

    .line 84
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/FragmentWrapperActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->finish()V

    .line 104
    .end local v2    # "fn":Ljava/lang/String;
    :goto_0
    return-void

    .line 88
    .restart local v2    # "fn":Ljava/lang/String;
    :cond_0
    new-instance v4, Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-direct {v4}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 89
    .local v4, "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f09001b

    const-string v8, "content"

    invoke-virtual {v6, v7, v4, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 90
    new-instance v1, Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;-><init>()V

    .line 91
    .local v1, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f09001b

    const-string v8, "content"

    invoke-virtual {v6, v7, v1, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fn":Ljava/lang/String;
    .end local v4    # "sf":Lcom/actionbarsherlock/app/SherlockFragment;
    :catch_0
    move-exception v5

    .line 100
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    const v6, 0x7f080068

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->finish()V

    goto :goto_0

    .line 94
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v2    # "fn":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "com.vkontakte.android.fragments."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/app/SherlockFragment;

    .line 96
    .local v3, "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "args"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/actionbarsherlock/app/SherlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f09001b

    const-string v8, "news"

    invoke-virtual {v6, v7, v3, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 236
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkontakte/android/fragments/BackListener;

    if-eqz v1, :cond_0

    .line 237
    check-cast v0, Lcom/vkontakte/android/fragments/BackListener;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    invoke-interface {v0}, Lcom/vkontakte/android/fragments/BackListener;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 109
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->updateMenuMode()V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "overlaybar"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const-wide/16 v1, 0x9

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/FragmentWrapperActivity;->requestWindowFeature(J)V

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "fn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f02027a

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setFormat(I)V

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "in_anim"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "out_anim"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "in_anim"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "out_anim"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/FragmentWrapperActivity;->overridePendingTransition(II)V

    .line 65
    :cond_3
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 67
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->initFragment()V

    .line 71
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    :cond_4
    const-string v1, "PhotoViewerFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "AudioPlayerFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 75
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setupMenu()V

    .line 76
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 77
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 324
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->onBackPressed()V

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 279
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 280
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 281
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 285
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 286
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    .line 275
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 276
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 270
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 271
    return-void
.end method
