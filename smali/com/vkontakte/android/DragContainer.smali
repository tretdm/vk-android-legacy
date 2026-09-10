.class public Lcom/vkontakte/android/DragContainer;
.super Landroid/widget/FrameLayout;
.source "DragContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/DragContainer$OnDragListener;,
        Lcom/vkontakte/android/DragContainer$ResizingInterpolator;
    }
.end annotation


# instance fields
.field anim:Z

.field blackPaint:Landroid/graphics/Paint;

.field btn:Landroid/graphics/Bitmap;

.field dragAreaWidth:I

.field dragOffset:F

.field dragging:Z

.field isClick:Z

.field public l:Lcom/vkontakte/android/DragContainer$OnDragListener;

.field offset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const/high16 v0, 0x423c0000    # 47.0f

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/DragContainer;->dragAreaWidth:I

    .line 19
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    .line 21
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->isClick:Z

    .line 22
    const v0, 0xffffff

    iput v0, p0, Lcom/vkontakte/android/DragContainer;->offset:I

    .line 23
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->anim:Z

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DragContainer;->blackPaint:Landroid/graphics/Paint;

    .line 29
    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/high16 v0, 0x423c0000    # 47.0f

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/DragContainer;->dragAreaWidth:I

    .line 19
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    .line 21
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->isClick:Z

    .line 22
    const v0, 0xffffff

    iput v0, p0, Lcom/vkontakte/android/DragContainer;->offset:I

    .line 23
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->anim:Z

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DragContainer;->blackPaint:Landroid/graphics/Paint;

    .line 34
    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/high16 v0, 0x423c0000    # 47.0f

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/DragContainer;->dragAreaWidth:I

    .line 19
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    .line 21
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->isClick:Z

    .line 22
    const v0, 0xffffff

    iput v0, p0, Lcom/vkontakte/android/DragContainer;->offset:I

    .line 23
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->anim:Z

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/DragContainer;->blackPaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->init()V

    .line 40
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DragContainer;->setWillNotDraw(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/DragContainer;->btn:Landroid/graphics/Bitmap;

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/DragContainer;->blackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    iget-boolean v0, p0, Lcom/vkontakte/android/DragContainer;->anim:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/DragContainer;->l:Lcom/vkontakte/android/DragContainer$OnDragListener;

    invoke-interface {v1}, Lcom/vkontakte/android/DragContainer$OnDragListener;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/DragContainer;->offset:I

    .line 134
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/DragContainer;->offset:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/vkontakte/android/DragContainer;->blackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/DragContainer;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/DragContainer;->offset:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/DragContainer;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3f7fbe77    # 0.999f

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/DragContainer;->btn:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    if-nez v3, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/vkontakte/android/DragContainer;->dragOffset:F

    .line 52
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    .line 53
    iget-object v3, p0, Lcom/vkontakte/android/DragContainer;->l:Lcom/vkontakte/android/DragContainer$OnDragListener;

    invoke-interface {v3}, Lcom/vkontakte/android/DragContainer$OnDragListener;->onStartDrag()V

    .line 54
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->isClick:Z

    .line 57
    :cond_0
    iget-boolean v3, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    if-nez v3, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 101
    :cond_1
    :goto_0
    return v2

    .line 58
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    if-eqz v3, :cond_4

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x64

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    iget-boolean v3, p0, Lcom/vkontakte/android/DragContainer;->isClick:Z

    if-eqz v3, :cond_3

    iput-boolean v6, p0, Lcom/vkontakte/android/DragContainer;->isClick:Z

    .line 60
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/DragContainer;->l:Lcom/vkontakte/android/DragContainer$OnDragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/DragContainer;->dragOffset:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/vkontakte/android/DragContainer$OnDragListener;->setX(I)V

    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/DragContainer;->dragOffset:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/DragContainer;->offset:I

    .line 63
    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->invalidate()V

    .line 65
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 66
    iget-boolean v3, p0, Lcom/vkontakte/android/DragContainer;->isClick:Z

    if-eqz v3, :cond_5

    .line 67
    iget-object v3, p0, Lcom/vkontakte/android/DragContainer;->l:Lcom/vkontakte/android/DragContainer$OnDragListener;

    invoke-interface {v3, v2}, Lcom/vkontakte/android/DragContainer$OnDragListener;->openActivity(Z)V

    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/DragContainer;->dragOffset:F

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 69
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 70
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;

    invoke-direct {v1, p0, v9}, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;-><init>(Lcom/vkontakte/android/DragContainer;Lcom/vkontakte/android/DragContainer$ResizingInterpolator;)V

    .line 71
    .local v1, "re":Lcom/vkontakte/android/DragContainer$ResizingInterpolator;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/DragContainer;->dragOffset:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial:I

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 73
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DragContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    new-instance v3, Lcom/vkontakte/android/DragContainer$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/DragContainer$1;-><init>(Lcom/vkontakte/android/DragContainer;)V

    .line 79
    const-wide/16 v4, 0x64

    .line 75
    invoke-virtual {p0, v3, v4, v5}, Lcom/vkontakte/android/DragContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    new-instance v3, Lcom/vkontakte/android/DragContainer$2;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/DragContainer$2;-><init>(Lcom/vkontakte/android/DragContainer;)V

    .line 83
    const-wide/16 v4, 0x1f4

    .line 80
    invoke-virtual {p0, v3, v4, v5}, Lcom/vkontakte/android/DragContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    iput-boolean v6, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    goto/16 :goto_0

    .line 86
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v1    # "re":Lcom/vkontakte/android/DragContainer$ResizingInterpolator;
    :cond_6
    iput-boolean v2, p0, Lcom/vkontakte/android/DragContainer;->anim:Z

    .line 87
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 88
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;

    invoke-direct {v1, p0, v9}, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;-><init>(Lcom/vkontakte/android/DragContainer;Lcom/vkontakte/android/DragContainer$ResizingInterpolator;)V

    .line 89
    .restart local v1    # "re":Lcom/vkontakte/android/DragContainer$ResizingInterpolator;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/DragContainer;->dragOffset:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial2:I

    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/DragContainer;->getWidth()I

    move-result v3

    iget v4, v1, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial2:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->initial:I

    .line 91
    iput-boolean v6, v1, Lcom/vkontakte/android/DragContainer$ResizingInterpolator;->forward:Z

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/DragContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    iput-boolean v6, p0, Lcom/vkontakte/android/DragContainer;->dragging:Z

    .line 96
    new-instance v3, Lcom/vkontakte/android/DragContainer$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/DragContainer$3;-><init>(Lcom/vkontakte/android/DragContainer;)V

    .line 98
    const-wide/16 v4, 0x96

    .line 96
    invoke-virtual {p0, v3, v4, v5}, Lcom/vkontakte/android/DragContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
