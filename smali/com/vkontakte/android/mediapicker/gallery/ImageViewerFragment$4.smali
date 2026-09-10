.class Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$4;
.super Ljava/lang/Object;
.source "ImageViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$4;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomChanged(FFF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "max"    # F
    .param p3, "min"    # F

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$4;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$4;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/entries/IVCallback;->onZoomChanged(FFF)V

    .line 311
    :cond_0
    return-void
.end method
