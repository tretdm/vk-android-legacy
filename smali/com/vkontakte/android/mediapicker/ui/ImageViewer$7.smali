.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setMinimumScale(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

.field private final synthetic val$pseudoViewportSize:I

.field private final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;IF)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->val$pseudoViewportSize:I

    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->val$scale:F

    .line 1356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->val$pseudoViewportSize:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$24(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;I)V

    .line 1363
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->val$scale:F

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$25(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$26(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V

    invoke-static {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$8(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V

    .line 1364
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;->val$scale:F

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$27(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V

    .line 1365
    return-void
.end method
