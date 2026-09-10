.class public Lcom/vkontakte/android/ui/OverlayTextView;
.super Landroid/widget/TextView;
.source "OverlayTextView.java"


# instance fields
.field private overlay:Landroid/graphics/drawable/Drawable;

.field private padBtm:I

.field private padLeft:I

.field private padOverlay:Z

.field private padRight:I

.field private padTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padOverlay:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padOverlay:Z

    .line 27
    invoke-direct {p0, p2, v0}, Lcom/vkontakte/android/ui/OverlayTextView;->init(Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padOverlay:Z

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/vkontakte/android/ui/OverlayTextView;->init(Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/R$styleable;->OverlayTextView:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 39
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(I)V

    .line 43
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "r":I
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/OverlayTextView;->setWillNotDraw(Z)V

    .line 44
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 100
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 78
    .local v0, "m":Landroid/graphics/Matrix;
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 79
    .local v1, "mx":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 80
    const/4 v2, 0x2

    aget v2, v1, v2

    neg-float v2, v2

    const/4 v3, 0x5

    aget v3, v1, v3

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    iget-object v2, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 82
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padOverlay:Z

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padLeft:I

    iget v4, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padTop:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padRight:I

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padBtm:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method public setOverlay(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/OverlayTextView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 72
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->invalidate()V

    .line 73
    return-void
.end method

.method public setOverlayPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padLeft:I

    .line 63
    iput p2, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padTop:I

    .line 64
    iput p3, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padRight:I

    .line 65
    iput p4, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padBtm:I

    .line 66
    return-void
.end method

.method public setPadOverlay(Z)V
    .locals 0
    .param p1, "pad"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/OverlayTextView;->padOverlay:Z

    .line 52
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->invalidate()V

    .line 53
    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 57
    .local v0, "parent":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayTextView;->isDuplicateParentStateEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayTextView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
