.class public Lcom/vkontakte/android/FragmentWrapperActivity;
.super Landroid/app/Activity;
.source "FragmentWrapperActivity.java"


# instance fields
.field contentView:Landroid/widget/FrameLayout;

.field private drawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

.field private drawerOpen:Z

.field private menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

.field private menuList:Lcom/vkontakte/android/MenuListView;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerOpen:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/FragmentWrapperActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FragmentWrapperActivity;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerOpen:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/FragmentWrapperActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/FragmentWrapperActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerOpen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/FragmentWrapperActivity;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/FragmentWrapperActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/FragmentWrapperActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/FragmentWrapperActivity;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTextViewMarquee(Landroid/widget/TextView;)V

    return-void
.end method

.method private setTextViewMarquee(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 303
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 304
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 305
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 306
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 307
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 308
    return-void
.end method

.method private setTitleMarquee()V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/vkontakte/android/FragmentWrapperActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FragmentWrapperActivity$2;-><init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setupMenu(Landroid/view/View;)V
    .locals 7
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "intro"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "intro":I
    and-int/lit8 v1, v0, 0x3

    if-lez v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v1, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    .line 144
    new-instance v1, Lcom/vkontakte/android/MenuListView;

    invoke-direct {v1, p0, v3}, Lcom/vkontakte/android/MenuListView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    .line 146
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->addView(Landroid/view/View;)V

    .line 147
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    iget-object v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    new-instance v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {p0}, Lcom/vkontakte/android/MenuListView;->getRecommendedWidth(Landroid/content/Context;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->setContentView(Landroid/view/View;)V

    .line 150
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    new-instance v2, Lcom/vkontakte/android/FragmentWrapperActivity$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/FragmentWrapperActivity$1;-><init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V

    iput-object v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 217
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->updateMenuMode()V

    goto :goto_0
.end method

.method private updateMenuMode()V
    .locals 5

    .prologue
    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/TabletAwareDrawerLayout;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    new-instance v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-static {p0}, Lcom/vkontakte/android/MenuListView;->getRecommendedWidth(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method protected initFragment()V
    .locals 9

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "class"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "fn":Ljava/lang/String;
    const-string v6, "_settings"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-ge v6, v7, :cond_0

    .line 91
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/SettingsActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/FragmentWrapperActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->finish()V

    .line 111
    .end local v2    # "fn":Ljava/lang/String;
    :goto_0
    return-void

    .line 95
    .restart local v2    # "fn":Ljava/lang/String;
    :cond_0
    new-instance v4, Landroid/app/Fragment;

    invoke-direct {v4}, Landroid/app/Fragment;-><init>()V

    .line 96
    .local v4, "sf":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f080014

    const-string v8, "content"

    invoke-virtual {v6, v7, v4, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 97
    new-instance v1, Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-direct {v1}, Lcom/vkontakte/android/fragments/SettingsFragment;-><init>()V

    .line 98
    .local v1, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f080014

    const-string v8, "content"

    invoke-virtual {v6, v7, v1, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fn":Ljava/lang/String;
    .end local v4    # "sf":Landroid/app/Fragment;
    :catch_0
    move-exception v5

    .line 107
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const v6, 0x7f0d00d0

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 109
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->finish()V

    goto :goto_0

    .line 101
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v2    # "fn":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.vkontakte.android.fragments."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 102
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    .line 103
    .local v3, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "args"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f080014

    const-string v8, "news"

    invoke-virtual {v6, v7, v3, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 222
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vkontakte/android/fragments/BackListener;

    if-eqz v1, :cond_0

    .line 223
    check-cast v0, Lcom/vkontakte/android/fragments/BackListener;

    .end local v0    # "f":Landroid/app/Fragment;
    invoke-interface {v0}, Lcom/vkontakte/android/fragments/BackListener;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 116
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->updateMenuMode()V

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menuList:Lcom/vkontakte/android/MenuListView;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 120
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "overlaybar"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->requestWindowFeature(I)Z

    .line 42
    const v1, 0x7f0e0016

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTheme(I)V

    .line 44
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "class"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "fn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0201ea

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "in_anim"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "out_anim"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    :cond_1
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

    .line 71
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 73
    const-string v1, "PhotoViewerFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "AudioPlayerFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PhotoListFragment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->setupMenu(Landroid/view/View;)V

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->initFragment()V

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->isTaskRoot()Z

    move-result v1

    if-nez v1, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 84
    return-void

    .line 76
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->onBackPressed()V

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 267
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 268
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-boolean v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerOpen:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 262
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 272
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 273
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerOpen:Z

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 254
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/FragmentWrapperActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->title:Ljava/lang/CharSequence;

    .line 255
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 256
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->drawerOpen:Z

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->title:Ljava/lang/CharSequence;

    .line 248
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 249
    return-void
.end method
