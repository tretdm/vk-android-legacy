.class public Lcom/vkontakte/android/ui/OverlayImageView;
.super Landroid/widget/ImageView;
.source "OverlayImageView.java"


# instance fields
.field private overlay:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/OverlayImageView;->init(Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/vkontakte/android/ui/OverlayImageView;->init(Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/vkontakte/android/ui/OverlayImageView;->init(Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/R$styleable;->OverlayImageView:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "a":Landroid/content/res/TypedArray;
    const v2, 0x7f020201

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 36
    .local v1, "r":I
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/OverlayImageView;->setOverlay(I)V

    .line 40
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "r":I
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/OverlayImageView;->setWillNotDraw(Z)V

    .line 41
    return-void
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    .line 44
    iget-object v1, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 46
    .local v0, "pad":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 47
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/OverlayImageView;->setPadding(IIII)V

    .line 49
    .end local v0    # "pad":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 71
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setOverlay(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/OverlayImageView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 77
    invoke-direct {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->updatePadding()V

    .line 78
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/OverlayImageView;->invalidate()V

    .line 79
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/ImageView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/OverlayImageView;->overlay:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
