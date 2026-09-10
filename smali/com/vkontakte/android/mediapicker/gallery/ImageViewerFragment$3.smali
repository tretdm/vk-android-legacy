.class Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$3;
.super Ljava/lang/Object;
.source "ImageViewerFragment.java"

# interfaces
.implements Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/IVCallback;->onDismiss()V

    .line 295
    :cond_0
    return-void
.end method

.method public onPrepareDismiss()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$3;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/IVCallback;->onPrepareDismiss()V

    .line 302
    :cond_0
    return-void
.end method
