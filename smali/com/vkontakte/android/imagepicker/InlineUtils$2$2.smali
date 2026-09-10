.class Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;
.super Ljava/lang/Object;
.source "InlineUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/InlineUtils$2;->run(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/imagepicker/InlineUtils$2;

.field private final synthetic val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

.field private final synthetic val$index:I

.field private final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/InlineUtils$2;Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->this$1:Lcom/vkontakte/android/imagepicker/InlineUtils$2;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->val$result:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput p5, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->val$index:I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->val$result:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->updateStyledThumb(Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->val$activity:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/InlineUtils$2$2;->val$index:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateThumbnail(I)V

    .line 102
    return-void
.end method
