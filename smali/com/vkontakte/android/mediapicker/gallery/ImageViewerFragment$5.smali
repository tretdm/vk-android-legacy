.class Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$5;
.super Ljava/lang/Object;
.source "ImageViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$5;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdated(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$5;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$5;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$5;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$3(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$5;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$3(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    move-result-object v1

    iget-boolean v1, v1, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissed:Z

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    const p1, 0x3f7d70a4    # 0.99f

    .end local p1    # "ratio":F
    :cond_1
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/IVCallback;->onBackgroundUpdate(F)V

    .line 320
    :cond_2
    return-void
.end method
