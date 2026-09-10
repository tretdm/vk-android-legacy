.class public Lcom/vkontakte/android/ui/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private erasePaint:Landroid/graphics/Paint;

.field private level:I

.field private pbPaint:Landroid/graphics/Paint;

.field private pbgPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/4 v3, 0x1

    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->erasePaint:Landroid/graphics/Paint;

    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->erasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->erasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    const/high16 v12, 0x40400000    # 3.0f

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x461c4000    # 10000.0f

    div-float v7, v0, v5

    .line 50
    .local v7, "progr":F
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 51
    .local v8, "rect":Landroid/graphics/Rect;
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

    .line 52
    .local v6, "cs":I
    iget-object v0, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 53
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

    .line 54
    .local v1, "pb":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 55
    mul-float/2addr v3, v7

    iget-object v5, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->pbPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 56
    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 58
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, -0x1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/vkontakte/android/ui/CircularProgressDrawable;->level:I

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CircularProgressDrawable;->invalidateSelf()V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 77
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 83
    return-void
.end method
