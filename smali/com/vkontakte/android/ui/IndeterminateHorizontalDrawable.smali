.class public Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IndeterminateHorizontalDrawable.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private erasePaint:Landroid/graphics/Paint;

.field private fgPaint:Landroid/graphics/Paint;

.field private maxOffset:I

.field private offset:I

.field private xbgPaint:Landroid/graphics/Paint;

.field private xfgPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    const v1, -0x7f8d6f4f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    const v1, -0xf0f10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->erasePaint:Landroid/graphics/Paint;

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->erasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->xbgPaint:Landroid/graphics/Paint;

    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->xbgPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->xfgPaint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->xfgPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->maxOffset:I

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v10, 0x41a00000    # 20.0f

    .line 46
    const/4 v6, 0x0

    .line 47
    .local v6, "acc":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v6

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 51
    .local v7, "b":Landroid/graphics/Rect;
    if-eqz v6, :cond_4

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    if-eqz v6, :cond_5

    .line 57
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 63
    :goto_1
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    const/4 v8, -0x1

    .local v8, "i":I
    :goto_2
    const/16 v0, 0x64

    if-lt v8, v0, :cond_6

    .line 68
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    .line 69
    iget v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    iget v1, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->maxOffset:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    if-eqz v6, :cond_2

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->xbgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->invalidateSelf()V

    .line 75
    :cond_3
    return-void

    .line 54
    .end local v8    # "i":I
    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 59
    :cond_5
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 60
    .local v9, "path":Landroid/graphics/Path;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 61
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_1

    .line 65
    .end local v9    # "path":Landroid/graphics/Path;
    .restart local v8    # "i":I
    :cond_6
    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    mul-int/2addr v0, v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 66
    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    mul-int/2addr v0, v8

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    add-int/lit8 v0, v8, 0x1

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    mul-int/2addr v0, v3

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    if-eqz v6, :cond_7

    iget-object v5, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->xfgPaint:Landroid/graphics/Paint;

    :goto_3
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 66
    :cond_7
    iget-object v5, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    goto :goto_3
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 85
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 90
    return-void
.end method
