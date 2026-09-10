.class Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4$1;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;->run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 831
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$900(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4$1;->this$1:Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;->this$0:Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postInvalidate()V

    goto :goto_0
.end method
