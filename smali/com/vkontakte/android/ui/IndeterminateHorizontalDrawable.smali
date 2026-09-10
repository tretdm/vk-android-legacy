.class public Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IndeterminateHorizontalDrawable.java"


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private fgPaint:Landroid/graphics/Paint;

.field private maxOffset:I

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    const v1, -0x151413

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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

    const v1, -0xcc4a1b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->maxOffset:I

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x42200000    # 40.0f

    const/high16 v9, 0x41a00000    # 20.0f

    .line 38
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    .line 39
    .local v7, "height":I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 40
    .local v6, "b":Landroid/graphics/Rect;
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 41
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, v7, 0x2

    sub-int/2addr v0, v1

    iput v0, v6, Landroid/graphics/Rect;->top:I

    .line 42
    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v7

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 45
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 46
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v6, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 47
    const/4 v8, -0x1

    .local v8, "i":I
    :goto_0
    const/16 v0, 0x64

    if-lt v8, v0, :cond_2

    .line 51
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    .line 52
    iget v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    iget v1, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->maxOffset:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->invalidateSelf()V

    .line 56
    :cond_1
    return-void

    .line 48
    :cond_2
    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    mul-int/2addr v0, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 49
    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    mul-int/2addr v0, v8

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    add-int/lit8 v0, v8, 0x1

    invoke-static {v10}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    mul-int/2addr v0, v3

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->offset:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/ui/IndeterminateHorizontalDrawable;->fgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 47
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 66
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 71
    return-void
.end method
