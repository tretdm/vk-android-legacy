.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 856
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    const/16 v1, 0x141

    invoke-virtual {v0, v1, v4}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 858
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 859
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$000(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->animateCrop()V

    .line 861
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    iget-object v2, v2, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->updateStyledThumbAsync(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 863
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17$1;->this$1:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$17;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->prepareCropper(ZZ)V

    .line 864
    return-void
.end method
