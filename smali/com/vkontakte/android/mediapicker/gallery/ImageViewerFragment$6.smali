.class Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$6;
.super Ljava/lang/Object;
.source "ImageViewerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$6;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$6;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment$6;->this$0:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->access$1(Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;)Lcom/vkontakte/android/mediapicker/entries/IVCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/IVCallback;->onClick(Landroid/view/View;)V

    .line 329
    :cond_0
    return-void
.end method
