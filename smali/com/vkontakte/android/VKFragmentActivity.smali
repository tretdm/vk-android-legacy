.class public Lcom/vkontakte/android/VKFragmentActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "VKFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/VKFragmentActivity;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/vkontakte/android/VKFragmentActivity;->setTextViewMarquee(Landroid/widget/TextView;)V

    return-void
.end method

.method private setTextViewMarquee(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "t"    # Landroid/widget/TextView;

    .prologue
    const/4 v1, 0x1

    .line 86
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 87
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 88
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 89
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 90
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 91
    return-void
.end method

.method private setTitleMarquee()V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/VKFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/VKFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/VKFragmentActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/VKFragmentActivity$1;-><init>(Lcom/vkontakte/android/VKFragmentActivity;)V

    .line 82
    const-wide/16 v2, 0x64

    .line 60
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;->setTitleMarquee()V

    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/vkontakte/android/VKFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02027a

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 21
    invoke-virtual {p0}, Lcom/vkontakte/android/VKFragmentActivity;->isTaskRoot()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/VKFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/vkontakte/android/VKFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 23
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/vkontakte/android/VKFragmentActivity;->onBackPressed()V

    .line 28
    const/4 v0, 0x1

    .line 30
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
    .line 34
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 35
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->onActivityPaused()V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 40
    invoke-static {p0}, Lcom/vkontakte/android/AppStateTracker;->onActivityResumed(Landroid/app/Activity;)V

    .line 41
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "res"    # I

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    .line 55
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;->setTitleMarquee()V

    .line 56
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    invoke-direct {p0}, Lcom/vkontakte/android/VKFragmentActivity;->setTitleMarquee()V

    .line 51
    return-void
.end method
