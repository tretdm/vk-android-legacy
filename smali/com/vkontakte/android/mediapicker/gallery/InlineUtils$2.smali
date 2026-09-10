.class final Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;
.super Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
.source "InlineUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyFilter(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field final synthetic val$force:Z

.field final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field final synthetic val$index:I

.field final synthetic val$lastFilterId:I


# direct methods
.method constructor <init>(ZLcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;II)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$force:Z

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput p4, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$lastFilterId:I

    iput p5, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$index:I

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$force:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    new-instance v1, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2$1;-><init>(Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 116
    .end local p1    # "result":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 105
    .restart local p1    # "result":Landroid/graphics/Bitmap;
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$force:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->footerView:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView;->getIsExtraActionShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_4
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$force:Z

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->getGalleryContext()Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->invalidateViewer()V

    .line 113
    :cond_5
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-eqz v0, :cond_6

    .end local p1    # "result":Landroid/graphics/Bitmap;
    :goto_1
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$index:I

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {p1, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->updateThumbnailForImage(Landroid/graphics/Bitmap;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    goto :goto_0

    .restart local p1    # "result":Landroid/graphics/Bitmap;
    :cond_6
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$2;->run(Landroid/graphics/Bitmap;)V

    return-void
.end method
