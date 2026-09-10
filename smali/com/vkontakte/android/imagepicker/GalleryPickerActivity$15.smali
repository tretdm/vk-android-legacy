.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->reloadImage(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
        "<",
        "Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$after:Ljava/lang/Runnable;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$after:Ljava/lang/Runnable;

    iput p4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$index:I

    .line 676
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 3
    .param p1, "result"    # Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .prologue
    const/4 v2, 0x0

    .line 681
    if-eqz p1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    if-nez v0, :cond_2

    .line 701
    :cond_1
    :goto_0
    return-void

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 689
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$after:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 690
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$after:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 692
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 693
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->updateStyledThumbAsync(Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 697
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v1, v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentImageIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateThumbnail(I)V

    .line 699
    if-eqz p1, :cond_1

    .line 700
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$index:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->loadNeighborImages(I)V

    goto :goto_0

    .line 695
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->removeStyledThumb(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$15;->run(Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    return-void
.end method
