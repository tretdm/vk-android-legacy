.class Lcom/vkontakte/android/fragments/NewsFragment$7;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment;->updateNewPostsBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$600(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/OverlayTextView;->clearAnimation()V

    .line 411
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$7;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsFragment;->access$600(Lcom/vkontakte/android/fragments/NewsFragment;)Lcom/vkontakte/android/ui/OverlayTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->setVisibility(I)V

    .line 413
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 406
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 400
    return-void
.end method
