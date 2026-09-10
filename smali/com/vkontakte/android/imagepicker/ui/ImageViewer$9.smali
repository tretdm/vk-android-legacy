.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$9;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

.field private final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$9;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$9;->val$after:Ljava/lang/Runnable;

    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$9;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$29(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;I)V

    .line 1489
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$9;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$9;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1493
    :cond_0
    return-void
.end method
