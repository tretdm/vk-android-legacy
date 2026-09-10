.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

.field private final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->val$after:Ljava/lang/Runnable;

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1571
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setVisibility(I)V

    .line 1572
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$33(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V

    .line 1573
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$29(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;I)V

    .line 1574
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 1576
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->this$2:Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;->access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;)Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearImages()V

    .line 1578
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10$1$1;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1580
    :cond_0
    return-void
.end method
