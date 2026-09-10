.class Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;
.super Landroid/view/View;
.source "ImageViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckView"
.end annotation


# static fields
.field private static bitmap_checked:Landroid/graphics/Bitmap;

.field private static bitmap_unchecked:Landroid/graphics/Bitmap;

.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private isChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 229
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->isChecked:Z

    .line 231
    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->paint:Landroid/graphics/Paint;

    .line 234
    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 235
    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 236
    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 239
    :cond_0
    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 241
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    .line 243
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ee

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_unchecked:Landroid/graphics/Bitmap;

    .line 244
    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_unchecked:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_unchecked:Landroid/graphics/Bitmap;

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201ef

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    .line 247
    sget-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    .line 249
    .end local v0    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getIsChecked()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->isChecked:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->isChecked:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_checked:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 265
    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->bitmap_unchecked:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIsChecked(Z)V
    .locals 0
    .param p1, "isChecked"    # Z

    .prologue
    .line 258
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ui/holders/ImageViewHolder$CheckView;->isChecked:Z

    .line 259
    return-void
.end method
