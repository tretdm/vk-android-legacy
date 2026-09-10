.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 754
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    const/16 v1, 0x141

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->updateEditorActionEnabled(IZ)V

    .line 756
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 757
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->animateCrop()V

    .line 759
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->updateStyledThumbAsync(Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 761
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;->this$1:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->prepareCropper(Z)V

    .line 762
    return-void
.end method
