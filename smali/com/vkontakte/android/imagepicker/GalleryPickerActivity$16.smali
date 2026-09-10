.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->applyCrop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$coords:[F

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;[F)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$coords:[F

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;)Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 742
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->hideCropperAction()V

    .line 744
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    if-nez v2, :cond_0

    .line 793
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v2, v2, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->setPreventInvalidateViewer(Z)V

    .line 749
    new-instance v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$1;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 765
    .local v0, "after":Ljava/lang/Runnable;
    new-instance v1, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-direct {v1, p0, v2, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$2;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/Runnable;)V

    .line 779
    .local v1, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v2

    if-nez v2, :cond_2

    .line 780
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$coords:[F

    invoke-virtual {v3, v2, v4, v1}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->crop(Landroid/graphics/Bitmap;[FLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    goto :goto_0

    .line 782
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    new-instance v4, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-direct {v4, p0, v5, v0}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16$3;-><init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$16;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v6, v4, v6}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;Z)V

    goto :goto_0
.end method
