.class Lcom/vkontakte/android/NewsView$10;
.super Ljava/lang/Object;
.source "NewsView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewsView;->updateNewPostsBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, -0x1

    .line 592
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/RefreshableListView;->clearAnimation()V

    .line 593
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 594
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v1, 0x421c0000    # 39.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 595
    iget-object v1, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    iget-object v1, v1, Lcom/vkontakte/android/NewsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 588
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 582
    return-void
.end method
