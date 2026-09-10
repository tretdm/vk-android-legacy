.class Lcom/vkontakte/android/NewVideoPlayerActivity$15;
.super Landroid/webkit/WebChromeClient;
.source "NewVideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewVideoPlayerActivity;->playExternal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field customView:Landroid/view/View;

.field final synthetic this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

.field private final synthetic val$canShowProgress:[Z

.field private final synthetic val$progress:Lcom/vkontakte/android/ui/CircularProgressBar;

.field private final synthetic val$webWrap:Landroid/widget/FrameLayout;

.field private final synthetic val$wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Lcom/vkontakte/android/ui/CircularProgressBar;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$wv:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$webWrap:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$progress:Lcom/vkontakte/android/ui/CircularProgressBar;

    iput-object p5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$canShowProgress:[Z

    .line 768
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 809
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 810
    .local v0, "progr":Landroid/widget/ProgressBar;
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->this$0:Lcom/vkontakte/android/NewVideoPlayerActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setBackgroundResource(I)V

    .line 812
    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 813
    return-object v0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 789
    const-string v0, "vk"

    const-string v1, "On hide custom view"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-nez v0, :cond_1

    .line 796
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$webWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 792
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 793
    iput-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customView:Landroid/view/View;

    .line 794
    iput-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 795
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$wv:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progr"    # I

    .prologue
    const/4 v2, 0x0

    .line 799
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$progress:Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/CircularProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$progress:Lcom/vkontakte/android/ui/CircularProgressBar;

    const/16 v1, 0x12c

    invoke-static {v0, v2, v1}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 801
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$canShowProgress:[Z

    aput-boolean v2, v0, v2

    .line 805
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$progress:Lcom/vkontakte/android/ui/CircularProgressBar;

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/CircularProgressBar;->setProgress(D)V

    .line 806
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$progress:Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/CircularProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$canShowProgress:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$progress:Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    const/4 v3, -0x1

    .line 773
    const-string v0, "vk"

    const-string v1, "on show custom view"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 775
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 785
    :goto_0
    return-void

    .line 777
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customView:Landroid/view/View;

    .line 778
    iput-object p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 779
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$wv:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->val$webWrap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;->customView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
