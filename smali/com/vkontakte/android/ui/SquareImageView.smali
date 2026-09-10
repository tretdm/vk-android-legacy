.class public Lcom/vkontakte/android/ui/SquareImageView;
.super Landroid/widget/ImageView;
.source "SquareImageView.java"


# instance fields
.field private opB:I

.field private opL:I

.field private opR:I

.field private opT:I

.field private overlay:Landroid/graphics/drawable/Drawable;

.field private padding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/SquareImageView;->opL:I

    .line 21
    invoke-direct {p0}, Lcom/vkontakte/android/ui/SquareImageView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/SquareImageView;->opL:I

    .line 26
    invoke-direct {p0}, Lcom/vkontakte/android/ui/SquareImageView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/SquareImageView;->opL:I

    .line 31
    invoke-direct {p0}, Lcom/vkontakte/android/ui/SquareImageView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/ui/SquareImageView;->overlay:Landroid/graphics/drawable/Drawable;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .local v0, "pad":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/vkontakte/android/ui/SquareImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 38
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/vkontakte/android/ui/SquareImageView;->setPadding(IIII)V

    .line 39
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 64
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/ui/SquareImageView;->overlay:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/ui/SquareImageView;->opT:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingBottom()I

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/SquareImageView;->opB:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/ui/SquareImageView;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    return-void
.end method

.method public onMeasure(II)V
    .locals 8
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/AlbumScrollView;

    .line 43
    .local v1, "sv":Lcom/vkontakte/android/ui/AlbumScrollView;
    iget v3, v1, Lcom/vkontakte/android/ui/AlbumScrollView;->heightMSpec:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/ui/AlbumScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int v0, v3, v4

    .line 44
    .local v0, "sh":I
    iget v3, v1, Lcom/vkontakte/android/ui/AlbumScrollView;->widthMSpec:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 45
    .local v2, "sw":I
    iget v3, p0, Lcom/vkontakte/android/ui/SquareImageView;->opL:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingLeft()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/SquareImageView;->opL:I

    .line 47
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingRight()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/SquareImageView;->opR:I

    .line 48
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingTop()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/SquareImageView;->opT:I

    .line 49
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/SquareImageView;->getPaddingBottom()I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/SquareImageView;->opB:I

    .line 51
    :cond_0
    if-ge v0, v2, :cond_1

    .line 52
    invoke-virtual {p0, v0, v0}, Lcom/vkontakte/android/ui/SquareImageView;->setMeasuredDimension(II)V

    .line 53
    iput v5, p0, Lcom/vkontakte/android/ui/SquareImageView;->padding:I

    .line 58
    :goto_0
    iget v3, p0, Lcom/vkontakte/android/ui/SquareImageView;->opL:I

    iget v4, p0, Lcom/vkontakte/android/ui/SquareImageView;->opT:I

    iget v5, p0, Lcom/vkontakte/android/ui/SquareImageView;->padding:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/SquareImageView;->opR:I

    iget v6, p0, Lcom/vkontakte/android/ui/SquareImageView;->opB:I

    iget v7, p0, Lcom/vkontakte/android/ui/SquareImageView;->padding:I

    add-int/2addr v6, v7

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/vkontakte/android/ui/SquareImageView;->setPadding(IIII)V

    .line 59
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/vkontakte/android/ui/SquareImageView;->setMeasuredDimension(II)V

    .line 56
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/vkontakte/android/ui/SquareImageView;->padding:I

    goto :goto_0
.end method
