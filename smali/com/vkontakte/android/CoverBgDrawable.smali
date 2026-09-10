.class public Lcom/vkontakte/android/CoverBgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CoverBgDrawable.java"


# instance fields
.field private animDuration:J

.field private animStart:J

.field private bg:Landroid/graphics/drawable/Drawable;

.field private bmp:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    const-wide/16 v3, 0x3e8

    iput-wide v3, p0, Lcom/vkontakte/android/CoverBgDrawable;->animDuration:J

    .line 19
    if-nez p1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 21
    .local v1, "pixels":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 22
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v1

    if-ge v8, v0, :cond_1

    .line 23
    aget v0, v1, v8

    shr-int/lit8 v0, v0, 0x2

    const v2, 0x3f3f3f

    and-int/2addr v0, v2

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    aput v0, v1, v8

    .line 22
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/CoverBgDrawable;->bmp:Landroid/graphics/Bitmap;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/CoverBgDrawable;->paint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/CoverBgDrawable;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 33
    iget-object v3, p0, Lcom/vkontakte/android/CoverBgDrawable;->bmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 61
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/CoverBgDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 35
    .local v1, "bnds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 37
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .local v2, "dst":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 39
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 40
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 41
    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 42
    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 49
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vkontakte/android/CoverBgDrawable;->animStart:J

    iget-wide v7, p0, Lcom/vkontakte/android/CoverBgDrawable;->animDuration:J

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/vkontakte/android/CoverBgDrawable;->animStart:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget-wide v4, p0, Lcom/vkontakte/android/CoverBgDrawable;->animDuration:J

    long-to-float v4, v4

    div-float v0, v3, v4

    .line 51
    .local v0, "a":F
    iget-object v3, p0, Lcom/vkontakte/android/CoverBgDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    invoke-virtual {p0}, Lcom/vkontakte/android/CoverBgDrawable;->invalidateSelf()V

    .line 53
    iget-object v3, p0, Lcom/vkontakte/android/CoverBgDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/CoverBgDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 54
    iget-object v3, p0, Lcom/vkontakte/android/CoverBgDrawable;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    .end local v0    # "a":F
    :goto_2
    iget-object v3, p0, Lcom/vkontakte/android/CoverBgDrawable;->bmp:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/vkontakte/android/CoverBgDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 44
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 45
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 46
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 47
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 56
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/CoverBgDrawable;->paint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 57
    iput-object v9, p0, Lcom/vkontakte/android/CoverBgDrawable;->bg:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public fadeIn(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "from"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 69
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/CoverBgDrawable;->bg:Landroid/graphics/drawable/Drawable;

    .line 72
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/CoverBgDrawable;->animStart:J

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/CoverBgDrawable;->invalidateSelf()V

    .line 74
    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/CoverBgDrawable;->bg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/CoverBgDrawable;->bmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 86
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 92
    return-void
.end method
