.class Lcom/vkontakte/android/imagepicker/ui/ImageViewer$8;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearMinimumScale(Z)V
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
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$8;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$8;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$8;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$8;->this$0:Lcom/vkontakte/android/imagepicker/ui/ImageViewer;

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$28(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$26(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->access$8(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V

    .line 1393
    return-void
.end method
