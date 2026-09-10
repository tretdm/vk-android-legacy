.class public Lcom/vkontakte/android/ui/HighlightDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "HighlightDrawable.java"


# instance fields
.field private divPaint:Landroid/graphics/Paint;

.field private hlDrawable:Landroid/graphics/drawable/Drawable;

.field private isFirst:Z

.field private isSel:Z

.field private isUnread:Z

.field private state:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 16
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->state:[I

    .line 17
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isFirst:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isUnread:Z

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->divPaint:Landroid/graphics/Paint;

    .line 21
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->hlDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iget-object v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->divPaint:Landroid/graphics/Paint;

    const v1, -0x242425

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->divPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isUnread:Z

    if-eqz v0, :cond_2

    .line 34
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 35
    .local v9, "urp":Landroid/graphics/Paint;
    const v0, -0x16110b

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/HighlightDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 43
    .end local v9    # "urp":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/HighlightDrawable;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/HighlightDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 45
    .local v6, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->hlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->hlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 51
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :cond_1
    :goto_1
    return-void

    .line 38
    :cond_2
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 39
    .local v7, "p":Landroid/graphics/Paint;
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/HighlightDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 47
    .end local v7    # "p":Landroid/graphics/Paint;
    :cond_3
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isFirst:Z

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/HighlightDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 49
    .local v8, "r":Landroid/graphics/Rect;
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->divPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isSel()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel:Z

    return v0
.end method

.method public isSelected()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel:Z

    if-eqz v3, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->state:[I

    array-length v5, v4

    move v3, v2

    :goto_1
    if-lt v3, v5, :cond_2

    move v1, v2

    .line 93
    goto :goto_0

    .line 86
    :cond_2
    aget v0, v4, v3

    .line 88
    .local v0, "s":I
    const v6, 0x10100a7

    if-eq v0, v6, :cond_0

    const v6, 0x10100a1

    if-eq v0, v6, :cond_0

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 61
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 66
    return-void
.end method

.method public setFirst(Z)V
    .locals 0
    .param p1, "f"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isFirst:Z

    .line 107
    return-void
.end method

.method public setSel(Z)V
    .locals 0
    .param p1, "s"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isSel:Z

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/HighlightDrawable;->invalidateSelf()V

    .line 103
    return-void
.end method

.method public setState([I)Z
    .locals 5
    .param p1, "state"    # [I

    .prologue
    const/4 v1, 0x0

    .line 73
    iput-object p1, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->state:[I

    .line 74
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    .line 81
    :goto_1
    return v1

    .line 74
    :cond_0
    aget v0, p1, v2

    .line 76
    .local v0, "s":I
    const v4, 0x10100a7

    if-eq v0, v4, :cond_1

    const v4, 0x10100a1

    if-ne v0, v4, :cond_2

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/HighlightDrawable;->invalidateSelf()V

    .line 78
    const/4 v1, 0x1

    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setUnread(Z)V
    .locals 0
    .param p1, "unread"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/HighlightDrawable;->isUnread:Z

    .line 111
    return-void
.end method
