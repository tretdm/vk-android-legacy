.class Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "EmojiPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/EmojiPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundDrawable"
.end annotation


# static fields
.field private static final ARROW_SIZE:I

.field private static final PADDING:I


# instance fields
.field private arrowX:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    .line 231
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 229
    const/16 v0, 0xc8

    iput v0, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->arrowX:I

    .line 234
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x55000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 238
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 242
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 243
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 244
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 245
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 246
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v2, v12, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 247
    sget v4, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sget v5, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 248
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 249
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 250
    .local v1, "path":Landroid/graphics/Path;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 251
    iget v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->arrowX:I

    sget v5, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 252
    iget v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->arrowX:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sget v6, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    iget v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->arrowX:I

    sget v5, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 255
    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 259
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "path":Landroid/graphics/Path;
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget v7, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    invoke-direct {v5, v12, v12, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    sget v11, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 261
    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    sget v7, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sub-int/2addr v6, v7

    sget v7, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    sub-int/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v5, v12, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sget v9, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sub-int/2addr v8, v9

    sget v9, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    sub-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 263
    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    sget v6, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sget v7, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sget v9, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sub-int/2addr v8, v9

    sget v9, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v12, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sget v9, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    add-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sget v10, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    add-int/2addr v9, v10

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    sget v11, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sub-int/2addr v10, v11

    sget v11, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    sub-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 265
    iget-object v4, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget v7, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sub-int/2addr v6, v7

    sget v7, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sget v10, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sub-int/2addr v9, v10

    sget v10, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    sub-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sget v8, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sub-int/2addr v7, v8

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sget v9, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    add-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    sget v11, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sub-int/2addr v10, v11

    sget v11, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    sub-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 266
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 275
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 291
    sget v0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sget v1, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sget v2, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sget v3, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->PADDING:I

    sget v4, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->ARROW_SIZE:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 292
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 282
    return-void
.end method

.method public setArrowX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 269
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->arrowX:I

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/EmojiPopup$BackgroundDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 271
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 288
    return-void
.end method
