.class Lcom/vkontakte/android/ui/PhotoView$4$1$1;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/PhotoView$4$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/ui/PhotoView$4$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/PhotoView$4$1;)V
    .locals 0

    .prologue
    .line 682
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView$4$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$4$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$2000(Lcom/vkontakte/android/ui/PhotoView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$4$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-static {v0}, Lcom/vkontakte/android/ui/PhotoView;->access$1800(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setVisibility(I)V

    .line 686
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$4$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/PhotoView;->access$702(Lcom/vkontakte/android/ui/PhotoView;Z)Z

    .line 687
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$4$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4;->this$0:Lcom/vkontakte/android/ui/PhotoView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 688
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$4$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView$4$1$1;->this$2:Lcom/vkontakte/android/ui/PhotoView$4$1;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4$1;->this$1:Lcom/vkontakte/android/ui/PhotoView$4;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$4;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 689
    :cond_0
    return-void
.end method
