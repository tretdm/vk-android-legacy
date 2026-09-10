.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;)V
    .locals 0

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1575
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setVisibility(I)V

    .line 1576
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$902(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)Z

    .line 1577
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$2600(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;I)V

    .line 1578
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 1580
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearImages()V

    .line 1582
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1584
    :cond_0
    return-void
.end method
