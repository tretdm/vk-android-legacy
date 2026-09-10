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
    .line 35
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FragmentWrapperActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/FragmentWrapperActivity;->openFromMenu(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FragmentWrapperActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTextViewMarquee(Landroid/widget/TextView;)V

    return-void
.end method

.method private openFromMenu(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "fclass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 200
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FragmentWrapperActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method private setTextViewMarquee(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 250
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 251
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 252
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 253
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 254
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 255
    return-void
.end method

.method private setTitleMarquee()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/vkontakte/android/FragmentWrapperActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FragmentWrapperActivity$2;-><init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V

    .line 246
    const-wide/16 v2, 0x64

    .line 237
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setupMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v2, Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/MenuOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    .line 104
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 105
    .local v0, "decorView":Landroid/widget/FrameLayout;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 106
    .local v1, "vr":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 107
    iget-object v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 108
    iget-object v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 110
    iget-object v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getListView()Lcom/vkontakte/android/MenuListView;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/FragmentWrapperActivity$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/FragmentWrapperActivity$1;-><init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 193
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->updateMenuMode()V

    .line 194
    return-void
.end method

.method private updateMenuMode()V
    .locals 2

    .prologue
    .line 205
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    if-eqz v0, :cond_0

    .line 206
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

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->menu:Lcom/vkontakte/android/ui/MenuOverlayView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 99
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->updateMenuMode()V

    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f080012

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "fn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f020244

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 62
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->setFormat(I)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "overlaybar"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    const-wide/16 v4, 0x9

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/FragmentWrapperActivity;->requestWindowFeature(J)V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "in_anim"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "out_anim"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "in_anim"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "out_anim"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/FragmentWrapperActivity;->overridePendingTransition(II)V

    .line 74
    :cond_3
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    .line 75
    iget-object v4, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setId(I)V

    .line 76
    iget-object v4, p0, Lcom/vkontakte/android/FragmentWrapperActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/FragmentWrapperActivity;->setContentView(Landroid/view/View;)V

    .line 79
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "com.vkontakte.android.fragments."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/actionbarsherlock/app/SherlockFragment;

    .line 81
    .local v2, "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/actionbarsherlock/app/SherlockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f080012

    const-string v6, "news"

    invoke-virtual {v4, v5, v2, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->isTaskRoot()Z

    move-result v4

    if-nez v4, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 91
    :cond_4
    const-string v4, "PhotoViewerFragment"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "AudioPlayerFragment"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 92
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setupMenu()V

    .line 93
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 94
    return-void

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "x":Ljava/lang/Exception;
    const v4, 0x7f06004e

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 258
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->onBackPressed()V

    .line 260
    const/4 v0, 0x1

    .line 262
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
    .line 226
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 227
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 228
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 232
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 233
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    .line 222
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 223
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    invoke-direct {p0}, Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V

    .line 218
    return-void
.end method
