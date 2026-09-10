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

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$6(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/OverlayTextView;->clearAnimation()V

    .line 626
    iget-object v0, p0, Lcom/vkontakte/android/NewsView$10;->this$0:Lcom/vkontakte/android/NewsView;

    invoke-static {v0}, Lcom/vkontakte/android/NewsView;->access$6(Lcom/vkontakte/android/NewsView;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->setVisibility(I)V

    .line 627
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 621
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 615
    return-void
.end method
