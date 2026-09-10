.class Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/gallery/InlineUtils;->updateThumbnailForImage(Landroid/graphics/Bitmap;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput p4, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$index:I

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->updateStyledThumb(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$activity:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gallery/InlineUtils$4;->val$index:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnail(I)V

    .line 145
    :cond_0
    return-void
.end method
