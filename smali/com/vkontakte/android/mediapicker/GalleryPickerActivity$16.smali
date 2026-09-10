.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->reloadImage(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLjava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$after:Ljava/lang/Runnable;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$index:I

.field private final synthetic val$noInvalidateReset:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLjava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-boolean p3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$noInvalidateReset:Z

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$after:Ljava/lang/Runnable;

    iput p5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$index:I

    .line 773
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 3
    .param p1, "result"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .prologue
    const/4 v2, 0x0

    .line 778
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-nez v0, :cond_2

    .line 803
    :cond_1
    :goto_0
    return-void

    .line 784
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$noInvalidateReset:Z

    if-nez v0, :cond_3

    .line 785
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 787
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 788
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 790
    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 792
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->updateStyledThumbAsync(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 799
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v1

    iget v1, v1, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentImageIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnail(I)V

    .line 801
    if-eqz p1, :cond_1

    .line 802
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$index:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->loadNeighborImages(I)V

    goto :goto_0

    .line 796
    :cond_5
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->remove(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$16;->run(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    return-void
.end method
