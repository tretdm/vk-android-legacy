.class Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->applyEnhance(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$imageIndex:I

.field private final synthetic val$inputImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$ondone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/lang/Runnable;ILcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$inputImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$ondone:Ljava/lang/Runnable;

    iput p4, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$imageIndex:I

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$inputImage:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setImageData(Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$ondone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 253
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$imageIndex:I

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$10;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->updateThumbnailForImage(Landroid/graphics/Bitmap;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 254
    return-void
.end method
