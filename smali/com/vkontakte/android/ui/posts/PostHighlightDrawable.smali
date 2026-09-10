.class public Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PostHighlightDrawable.java"


# instance fields
.field public extendBottom:I

.field public extendTop:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 15
    iput v0, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->extendTop:I

    iput v0, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->extendBottom:I

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->paint:Landroid/graphics/Paint;

    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->paint:Landroid/graphics/Paint;

    const v1, 0x668cd5fa

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x41080000    # 8.5f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 25
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 28
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 29
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 30
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 31
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 32
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 33
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->paint:Landroid/graphics/Paint;

    int-to-float v1, p1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 51
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 37
    .local v0, "nrect":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->extendBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 38
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/vkontakte/android/ui/posts/PostHighlightDrawable;->extendTop:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 39
    invoke-super {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 40
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 57
    return-void
.end method
