.class public Lcom/vkontakte/android/IconBgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IconBgDrawable.java"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 15
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 49
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 69
    return-void
.end method

.method public setBounds(IIII)V
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 30
    iget-object v3, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 31
    .local v1, "bw":I
    iget-object v3, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 32
    .local v0, "bh":I
    sub-int v3, p4, p2

    if-ge v3, v0, :cond_0

    add-int p4, p2, v0

    .line 34
    :cond_0
    sub-int v2, p4, p2

    .line 35
    .local v2, "rh":I
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    iget-object v3, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v4, v2, 0x2

    add-int/2addr v4, p2

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    add-int v5, p1, v1

    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, p2

    div-int/lit8 v7, v0, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v3, p1, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 38
    iget-object v3, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 39
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 20
    iget-object v4, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 21
    .local v1, "bw":I
    iget-object v4, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 22
    .local v0, "bh":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 23
    .local v3, "rh":I
    new-instance v2, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v1

    iget v7, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    .local v2, "r":Landroid/graphics/Rect;
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bounds "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v4, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 26
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 74
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/IconBgDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method
