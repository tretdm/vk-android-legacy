.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;
.super Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;
.source "GalleryPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 255
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerFooterView$CropperCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCropApply()V
    .locals 6

    .prologue
    .line 260
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$0(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Lcom/vkontakte/android/mediapicker/entries/GalleryContext;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/mediapicker/entries/GalleryContext;->currentViewerFragment:Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/gallery/ImageViewerFragment;->getCropData()[F

    move-result-object v0

    .line 261
    .local v0, "coords":[F
    const/4 v3, 0x6

    new-array v1, v3, [I

    .line 263
    .local v1, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 266
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$10(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)I

    move-result v5

    invoke-static {v3, v4, v5, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$11(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;ZI[I)V

    .line 267
    return-void

    .line 264
    :cond_0
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v1, v2

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onCropReset()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$5;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$9(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 273
    return-void
.end method
