.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateIn(Landroid/graphics/Rect;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    .line 1626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1631
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1632
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1633
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$33(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V

    .line 1634
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$34(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V

    .line 1635
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 1636
    return-void
.end method
