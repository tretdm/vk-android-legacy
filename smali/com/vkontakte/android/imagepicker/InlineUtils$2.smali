.class Lcom/vkontakte/android/imagepicker/InlineUtils$2;
.super Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
.source "InlineUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/InlineUtils;->applyFilter(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput p3, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$index:I

    .line 64
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    new-instance v1, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    invoke-direct {v1, p0, v2, v3}, Lcom/vkontakte/android/imagepicker/InlineUtils$2$1;-><init>(Lcom/vkontakte/android/imagepicker/InlineUtils$2;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    :cond_0
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ImagePickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setImageData(Landroid/graphics/Bitmap;)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->currentViewerFragment:Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ImagesViewerFragment;->invalidateViewer()V

    .line 93
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v6

    new-instance v0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v5, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->val$index:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;-><init>(Lcom/vkontakte/android/imagepicker/InlineUtils$2;Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)V

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 104
    :cond_3
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/InlineUtils$2;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
