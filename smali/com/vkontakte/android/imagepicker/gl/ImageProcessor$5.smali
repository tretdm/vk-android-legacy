.class Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;
.super Ljava/lang/Object;
.source "ImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->filter(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/imagepicker/utils/ActionCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

.field private final synthetic val$bitmapCallback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$bitmapEntry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

.field private final synthetic val$filter_id:I

.field private final synthetic val$texture_id:I

.field private final synthetic val$texture_styles:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;III)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->this$0:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$bitmapCallback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$bitmapEntry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    iput p4, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$filter_id:I

    iput p5, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$texture_id:I

    iput p6, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$texture_styles:I

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 263
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getAreFiltersSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$bitmapCallback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$bitmapEntry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->instance()Lcom/vkontakte/android/imagepicker/gl/FilterStorage;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$filter_id:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->getFilter(I)Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;

    move-result-object v0

    .line 271
    .local v0, "filter":Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->instance()Lcom/vkontakte/android/imagepicker/gl/FilterStorage;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$texture_id:I

    iget v6, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$texture_styles:I

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$bitmapEntry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/vkontakte/android/imagepicker/gl/FilterStorage;->getTexture(IILandroid/graphics/Bitmap;Z)Lcom/vkontakte/android/imagepicker/gl/GLTexture;

    move-result-object v1

    .line 273
    .local v1, "texture":Lcom/vkontakte/android/imagepicker/gl/GLTexture;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->getFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$bitmapCallback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;->val$bitmapEntry:Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->texture()I

    move-result v2

    .line 284
    .local v2, "texture_id":I
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/gl/GLFilterContext;->renderForTexture(I)V

    goto :goto_0
.end method
