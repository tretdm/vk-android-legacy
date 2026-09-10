.class public Lcom/vkontakte/android/ui/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private dimBg:Z

.field private erasePaint:Landroid/graphics/Paint;

.field private level:I

.field private pad:Z

.field private pbPaint:Landroid/graphics/Paint;

.field private pbgPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x1

    .line 22
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->dimBg:Z

    .line 20
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pad:Z

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 24
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->erasePaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->erasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x461c4000    # 10000.0f

    div-float v7, v0, v5

    .line 70
    .local v7, "progr":F
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 71
    .local v8, "rect":Landroid/graphics/Rect;
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pad:Z

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v6, v0

    .line 72
    .local v6, "cs":I
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->dimBg:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 74
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    div-int/lit8 v5, v6, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget v5, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v5, v9

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v5, v9

    int-to-float v5, v5

    iget v9, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    div-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    div-int/lit8 v11, v6, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v1, v0, v5, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    .local v1, "pb":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 76
    mul-float/2addr v3, v7

    iget-object v5, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 78
    return-void

    .line 71
    .end local v1    # "pb":Landroid/graphics/RectF;
    .end local v6    # "cs":I
    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v5, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    float-to-int v5, v5

    sub-int v6, v0, v5

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->level:I

    .line 64
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->invalidateSelf()V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 97
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 103
    return-void
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "ringColor"    # I
    .param p2, "fillColor"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    return-void
.end method

.method public setDimBackground(Z)V
    .locals 0
    .param p1, "dim"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->dimBg:Z

    .line 51
    return-void
.end method

.method public setPad(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pad:Z

    .line 60
    return-void
.end method

.method public setThickness(I)V
    .locals 2
    .param p1, "t"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    return-void
.end method
