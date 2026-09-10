.class public Lcom/vkontakte/android/ZoomableImageView;
.super Landroid/widget/ImageView;
.source "ZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;,
        Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;,
        Lcom/vkontakte/android/ZoomableImageView$OnNavListener;,
        Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canGoBack:Z

.field private clickListener:Landroid/view/View$OnClickListener;

.field private clickTimer:Ljava/util/Timer;

.field private currentTagID:I

.field private cx:F

.field private cy:F

.field private doubleTapStarted:Z

.field private doubleTapTimer:Ljava/util/Timer;

.field private dvtx:F

.field private enableOverscroll:Z

.field private h:I

.field private is16:Z

.field private isClick:Z

.field private isList:Z

.field public lockVerticalMovement:Z

.field private matrix:Landroid/graphics/Matrix;

.field private matrixAnimating:Z

.field private maxScale:F

.field private minScale:F

.field private navListener:Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

.field private nextImage:Landroid/graphics/Bitmap;

.field private pcx:F

.field private pcy:F

.field private prevImage:Landroid/graphics/Bitmap;

.field private scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

.field private sdist:F

.field private sdx:F

.field private sdy:F

.field private selectedTagRect:Landroid/graphics/RectF;

.field public shouldInterceptNextTouchEvent:Z

.field private startTime:J

.field private svtx:F

.field private tags:[Lcom/vkontakte/android/PhotoTag;

.field private tagsVisible:Z

.field private touchslop:I

.field private translationY:I

.field private tx:F

.field private ty:F

.field private vtx:F

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 32
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->is16:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    .line 37
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 41
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    .line 43
    new-array v0, v1, [Lcom/vkontakte/android/PhotoTag;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 45
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    .line 46
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->shouldInterceptNextTouchEvent:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->lockVerticalMovement:Z

    .line 49
    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->translationY:I

    .line 51
    iput-boolean v4, p0, Lcom/vkontakte/android/ZoomableImageView;->enableOverscroll:Z

    .line 55
    invoke-direct {p0}, Lcom/vkontakte/android/ZoomableImageView;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 32
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->is16:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    .line 37
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 41
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    .line 43
    new-array v0, v1, [Lcom/vkontakte/android/PhotoTag;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 45
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    .line 46
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->shouldInterceptNextTouchEvent:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->lockVerticalMovement:Z

    .line 49
    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->translationY:I

    .line 51
    iput-boolean v4, p0, Lcom/vkontakte/android/ZoomableImageView;->enableOverscroll:Z

    .line 60
    invoke-direct {p0}, Lcom/vkontakte/android/ZoomableImageView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 32
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->is16:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    .line 37
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 38
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 41
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    .line 43
    new-array v0, v1, [Lcom/vkontakte/android/PhotoTag;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 45
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    .line 46
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->shouldInterceptNextTouchEvent:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->lockVerticalMovement:Z

    .line 49
    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->translationY:I

    .line 51
    iput-boolean v4, p0, Lcom/vkontakte/android/ZoomableImageView;->enableOverscroll:Z

    .line 65
    invoke-direct {p0}, Lcom/vkontakte/android/ZoomableImageView;->init()V

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ZoomableImageView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ZoomableImageView;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ZoomableImageView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ZoomableImageView;F)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ZoomableImageView;)Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ZoomableImageView;)F
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ZoomableImageView;)Lcom/vkontakte/android/ZoomableImageView$OnNavListener;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->navListener:Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ZoomableImageView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 681
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 682
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 683
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 684
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 685
    return-void
.end method

.method private findAndSelectTag(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 822
    iget-boolean v8, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 855
    :goto_0
    return v8

    .line 823
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    array-length v8, v8

    if-lez v8, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 825
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v9, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v10, :cond_3

    .line 840
    .end local v1    # "m":Landroid/graphics/Matrix;
    :cond_1
    iget v8, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    iget-object v8, p0, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    invoke-virtual {v8, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 841
    iget-object v9, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v10, :cond_5

    .line 851
    :cond_2
    :goto_3
    const/4 v8, 0x1

    goto :goto_0

    .line 825
    .restart local v1    # "m":Landroid/graphics/Matrix;
    :cond_3
    aget-object v3, v9, v8

    .line 826
    .local v3, "t":Lcom/vkontakte/android/PhotoTag;
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->x1:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v12, v12

    mul-float v4, v11, v12

    .line 827
    .local v4, "x1":F
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->y1:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v12, v12

    mul-float v6, v11, v12

    .line 828
    .local v6, "y1":F
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->x2:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v12, v12

    mul-float v5, v11, v12

    .line 829
    .local v5, "x2":F
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->y2:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v12, v12

    mul-float v7, v11, v12

    .line 830
    .local v7, "y2":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 831
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 832
    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 833
    iget v8, v3, Lcom/vkontakte/android/PhotoTag;->id:I

    iput v8, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 834
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 835
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    .line 836
    const/4 v8, 0x1

    goto :goto_0

    .line 825
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 841
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v2    # "rect":Landroid/graphics/RectF;
    .end local v3    # "t":Lcom/vkontakte/android/PhotoTag;
    .end local v4    # "x1":F
    .end local v5    # "x2":F
    .end local v6    # "y1":F
    .end local v7    # "y2":F
    :cond_5
    aget-object v3, v9, v8

    .line 842
    .restart local v3    # "t":Lcom/vkontakte/android/PhotoTag;
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->id:I

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    if-ne v11, v12, :cond_6

    .line 843
    iget v8, v3, Lcom/vkontakte/android/PhotoTag;->userID:I

    if-lez v8, :cond_2

    .line 844
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 845
    .local v0, "intent":Landroid/content/Intent;
    const-string v8, "wall_id"

    iget v9, v3, Lcom/vkontakte/android/PhotoTag;->userID:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 846
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 841
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 853
    .end local v3    # "t":Lcom/vkontakte/android/PhotoTag;
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 854
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 855
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private getPtrCount(Landroid/view/MotionEvent;)I
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 494
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 496
    :goto_0
    return v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "x":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPtrX(Landroid/view/MotionEvent;I)F
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "i"    # I

    .prologue
    .line 502
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getX"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 504
    :goto_0
    return v1

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "x":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPtrY(Landroid/view/MotionEvent;I)F
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "i"    # I

    .prologue
    .line 510
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getY"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 512
    :goto_0
    return v1

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "x":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 69
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->is16:Z

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 71
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->touchslop:I

    .line 72
    return-void

    .line 69
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDoubleTap()V
    .locals 3

    .prologue
    .line 529
    const/16 v2, 0x9

    new-array v0, v2, [F

    .line 530
    .local v0, "mv":[F
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 531
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 532
    .local v1, "scale":F
    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->zoomOut()V

    .line 536
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->zoomIn()V

    goto :goto_0
.end method

.method private postNext()V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 755
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ZoomableImageView$2;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    .line 763
    const-wide/16 v1, 0xdc

    .line 755
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 764
    return-void
.end method

.method private postPrev()V
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    .line 768
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ZoomableImageView$3;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    .line 776
    const-wide/16 v1, 0xaa

    .line 768
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 777
    return-void
.end method

.method private setImageMatrixAnimated(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 809
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$4;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ZoomableImageView$4;-><init>(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ZoomableImageView;->post(Ljava/lang/Runnable;)Z

    .line 816
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ZoomableImageView$5;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    .line 818
    const-wide/16 v1, 0xc8

    .line 816
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 819
    return-void
.end method

.method private translateView(F)V
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 688
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 689
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 690
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    iget v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;->onPositionChanged(F)V

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    goto :goto_0
.end method

.method private viewResize(II)V
    .locals 8
    .param p1, "vw"    # I
    .param p2, "vh"    # I

    .prologue
    const/high16 v7, 0x40800000    # 4.0f

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 410
    iput v6, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 411
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 412
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    invoke-interface {v3, v4}, Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;->onPositionChanged(F)V

    .line 414
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .local v0, "iratio":F
    int-to-float v3, p1

    int-to-float v4, p2

    div-float v2, v3, v4

    .line 415
    .local v2, "sratio":F
    cmpl-float v3, v0, v2

    if-lez v3, :cond_3

    .line 416
    int-to-float v3, p1

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v4, v4

    div-float v1, v3, v4

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    .line 417
    .local v1, "scale":F
    int-to-float v3, p2

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 418
    iput v6, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    .line 419
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    div-float/2addr v4, v1

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 420
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 421
    int-to-float v3, p2

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 430
    :goto_0
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    iput v5, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 431
    :cond_1
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    .line 432
    iput v5, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    .line 433
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    .line 434
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 435
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    iget v5, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 436
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    iget v5, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 438
    :cond_2
    return-void

    .line 423
    .end local v1    # "scale":F
    :cond_3
    int-to-float v3, p2

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    div-float v1, v3, v4

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    .line 424
    .restart local v1    # "scale":F
    int-to-float v3, p1

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    .line 425
    iput v6, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 426
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    div-float/2addr v4, v1

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 427
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 428
    int-to-float v3, p1

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    goto :goto_0
.end method


# virtual methods
.method public animateTranslate(IZ)V
    .locals 3
    .param p1, "dur"    # I
    .param p2, "s"    # Z

    .prologue
    .line 722
    iget-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    if-eqz v1, :cond_1

    .line 723
    iget v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 724
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    invoke-interface {v1, v2}, Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;->onPositionChanged(F)V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->svtx:F

    .line 730
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "setTX"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    .local v0, "ma":Lcom/vkontakte/android/MethodAnimation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 732
    if-eqz p2, :cond_2

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 733
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ZoomableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 732
    :cond_2
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_1
.end method

.method public canScrollDown()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 697
    iget-object v4, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 702
    :cond_0
    :goto_0
    return v2

    .line 698
    :cond_1
    const/16 v4, 0x9

    new-array v0, v4, [F

    .line 699
    .local v0, "m":[F
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 700
    const/4 v4, 0x5

    aget v4, v0, v4

    iget-object v5, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    aget v6, v0, v3

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 702
    .local v1, "xx":F
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public canScrollLeft()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 706
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 710
    :cond_0
    :goto_0
    return v2

    .line 707
    :cond_1
    const/16 v3, 0x9

    new-array v0, v3, [F

    .line 708
    .local v0, "m":[F
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 709
    const/4 v3, 0x2

    aget v1, v0, v3

    .line 710
    .local v1, "xx":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-gez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canScrollRight()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 714
    iget-object v4, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 718
    :cond_0
    :goto_0
    return v2

    .line 715
    :cond_1
    const/16 v4, 0x9

    new-array v0, v4, [F

    .line 716
    .local v0, "m":[F
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 717
    const/4 v4, 0x2

    aget v4, v0, v4

    iget-object v5, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    aget v6, v0, v3

    mul-float/2addr v5, v6

    add-float v1, v4, v5

    .line 718
    .local v1, "xx":F
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-lez v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNextImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPrevImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public lockVerticalMovemvnt(Z)V
    .locals 0
    .param p1, "l"    # Z

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->lockVerticalMovement:Z

    .line 873
    return-void
.end method

.method public navigateNext()V
    .locals 2

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    .line 451
    const/16 v0, 0xfa

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    .line 452
    invoke-direct {p0}, Lcom/vkontakte/android/ZoomableImageView;->postNext()V

    .line 453
    return-void
.end method

.method public navigatePrev()V
    .locals 2

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    .line 457
    const/16 v0, 0xfa

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    .line 458
    invoke-direct {p0}, Lcom/vkontakte/android/ZoomableImageView;->postPrev()V

    .line 459
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 38
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->translationY:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 541
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 544
    .local v8, "m":Landroid/graphics/Matrix;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 545
    .local v10, "paint":Landroid/graphics/Paint;
    sget-object v29, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 546
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 548
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 549
    .local v23, "txtPaint":Landroid/graphics/Paint;
    const/16 v29, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 550
    const/high16 v29, 0x41700000    # 15.0f

    sget v30, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v29, v29, v30

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 551
    const/16 v29, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 552
    const/high16 v29, 0x40000000    # 2.0f

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    const/high16 v32, -0x1000000

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 554
    const/4 v14, 0x1

    .line 555
    .local v14, "showAllLabels":Z
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 556
    .local v12, "rects":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/RectF;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    const/16 v29, 0x0

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v31

    if-lt v0, v1, :cond_6

    .line 585
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    const/16 v29, 0x0

    move/from16 v30, v29

    :goto_1
    move/from16 v0, v30

    move/from16 v1, v32

    if-lt v0, v1, :cond_b

    .line 628
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v12    # "rects":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/RectF;>;"
    .end local v14    # "showAllLabels":Z
    .end local v23    # "txtPaint":Landroid/graphics/Paint;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    if-eqz v29, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_3

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v7, v29, v30

    .local v7, "iratio":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v15, v29, v30

    .line 631
    .local v15, "sratio":F
    cmpl-float v29, v7, v15

    if-lez v29, :cond_12

    .line 632
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v13, v29, v30

    .line 633
    .local v13, "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v13

    sub-float v29, v29, v30

    const/high16 v30, 0x40000000    # 2.0f

    div-float v24, v29, v30

    .line 635
    .local v24, "ty":F
    const/16 v22, 0x0

    .line 641
    .local v22, "tx":F
    :goto_2
    const/high16 v29, 0x40000000    # 2.0f

    cmpl-float v29, v13, v29

    if-lez v29, :cond_2

    .line 642
    const/high16 v13, 0x40000000    # 2.0f

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    mul-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v22, v29, v30

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    mul-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v24, v29, v30

    .line 646
    :cond_2
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 647
    .restart local v10    # "paint":Landroid/graphics/Paint;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    new-instance v30, Landroid/graphics/Rect;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    invoke-direct/range {v30 .. v34}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 649
    new-instance v31, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, v22

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v33, v33, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v13

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v13

    add-float v34, v34, v24

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v24

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 648
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 653
    .end local v7    # "iratio":F
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v13    # "scale":F
    .end local v15    # "sratio":F
    .end local v22    # "tx":F
    .end local v24    # "ty":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_5

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v7, v29, v30

    .restart local v7    # "iratio":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v15, v29, v30

    .line 656
    .restart local v15    # "sratio":F
    cmpl-float v29, v7, v15

    if-lez v29, :cond_13

    .line 657
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v13, v29, v30

    .line 658
    .restart local v13    # "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v13

    sub-float v29, v29, v30

    const/high16 v30, 0x40000000    # 2.0f

    div-float v24, v29, v30

    .line 659
    .restart local v24    # "ty":F
    const/16 v22, 0x0

    .line 665
    .restart local v22    # "tx":F
    :goto_3
    const/high16 v29, 0x40000000    # 2.0f

    cmpl-float v29, v13, v29

    if-lez v29, :cond_4

    .line 666
    const/high16 v13, 0x40000000    # 2.0f

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    mul-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v22, v29, v30

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    mul-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x40000000    # 2.0f

    div-float v24, v29, v30

    .line 670
    :cond_4
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 671
    .restart local v10    # "paint":Landroid/graphics/Paint;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v29, v0

    new-instance v30, Landroid/graphics/Rect;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    invoke-direct/range {v30 .. v34}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 673
    new-instance v31, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, v22

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v33

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v33, v33, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v13

    add-float v33, v33, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    mul-float v34, v34, v13

    add-float v34, v34, v24

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v24

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 672
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 677
    .end local v7    # "iratio":F
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v13    # "scale":F
    .end local v15    # "sratio":F
    .end local v22    # "tx":F
    .end local v24    # "ty":F
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v29, v0

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->translationY:I

    move/from16 v30, v0

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 678
    return-void

    .line 556
    .restart local v8    # "m":Landroid/graphics/Matrix;
    .restart local v10    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "rects":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/RectF;>;"
    .restart local v14    # "showAllLabels":Z
    .restart local v23    # "txtPaint":Landroid/graphics/Paint;
    :cond_6
    aget-object v18, v30, v29

    .line 557
    .local v18, "t":Lcom/vkontakte/android/PhotoTag;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->x1:F

    move/from16 v32, v0

    const/high16 v33, 0x42c80000    # 100.0f

    div-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v25, v32, v33

    .line 558
    .local v25, "x1":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->y1:F

    move/from16 v32, v0

    const/high16 v33, 0x42c80000    # 100.0f

    div-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v27, v32, v33

    .line 559
    .local v27, "y1":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->x2:F

    move/from16 v32, v0

    const/high16 v33, 0x42c80000    # 100.0f

    div-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v26, v32, v33

    .line 560
    .local v26, "x2":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->y2:F

    move/from16 v32, v0

    const/high16 v33, 0x42c80000    # 100.0f

    div-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v28, v32, v33

    .line 561
    .local v28, "y2":F
    new-instance v5, Landroid/graphics/RectF;

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 562
    .local v5, "_rect":Landroid/graphics/RectF;
    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 563
    const/16 v32, 0x9

    move/from16 v0, v32

    new-array v9, v0, [F

    .line 564
    .local v9, "mv":[F
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 565
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 566
    .local v17, "strW":F
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->ascent()F

    move-result v32

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v16, v0

    .line 567
    .local v16, "strH":F
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 568
    .local v6, "bgPaint":Landroid/graphics/Paint;
    const/high16 v32, -0x70000000

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 571
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v32

    const/high16 v33, 0x40000000    # 2.0f

    div-float v33, v17, v33

    sub-float v20, v32, v33

    .line 572
    .local v20, "textX":F
    add-float v32, v20, v17

    const/16 v33, 0x2

    aget v33, v9, v33

    sub-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v34, 0x0

    aget v34, v9, v34

    mul-float v33, v33, v34

    cmpl-float v32, v32, v33

    if-lez v32, :cond_7

    .line 573
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v9, v33

    mul-float v32, v32, v33

    sub-float v32, v32, v17

    const/16 v33, 0x2

    aget v33, v9, v33

    add-float v20, v32, v33

    .line 575
    :cond_7
    const/16 v32, 0x2

    aget v32, v9, v32

    cmpg-float v32, v20, v32

    if-gez v32, :cond_8

    .line 576
    const/16 v32, 0x2

    aget v20, v9, v32

    .line 579
    :cond_8
    new-instance v19, Landroid/graphics/RectF;

    const/high16 v32, 0x41200000    # 10.0f

    sget v33, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v32, v32, v33

    sub-float v32, v20, v32

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    sget v35, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v34, v34, v35

    add-float v33, v33, v34

    add-float v34, v20, v17

    const/high16 v35, 0x41200000    # 10.0f

    sget v36, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v35, v35, v36

    add-float v34, v34, v35

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    sget v37, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v36, v36, v37

    add-float v35, v35, v36

    add-float v35, v35, v16

    const/high16 v36, 0x41200000    # 10.0f

    sget v37, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v36, v36, v37

    add-float v35, v35, v36

    move-object/from16 v0, v19

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 580
    .local v19, "textRect":Landroid/graphics/RectF;
    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_9
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_a

    .line 581
    if-eqz v14, :cond_0

    .line 582
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 580
    :cond_a
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/RectF;

    .local v21, "tr":Landroid/graphics/RectF;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v33

    if-eqz v33, :cond_9

    const/4 v14, 0x0

    goto :goto_4

    .line 585
    .end local v5    # "_rect":Landroid/graphics/RectF;
    .end local v6    # "bgPaint":Landroid/graphics/Paint;
    .end local v9    # "mv":[F
    .end local v16    # "strH":F
    .end local v17    # "strW":F
    .end local v18    # "t":Lcom/vkontakte/android/PhotoTag;
    .end local v19    # "textRect":Landroid/graphics/RectF;
    .end local v20    # "textX":F
    .end local v21    # "tr":Landroid/graphics/RectF;
    .end local v25    # "x1":F
    .end local v26    # "x2":F
    .end local v27    # "y1":F
    .end local v28    # "y2":F
    :cond_b
    aget-object v18, v31, v30

    .line 586
    .restart local v18    # "t":Lcom/vkontakte/android/PhotoTag;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->x1:F

    move/from16 v29, v0

    const/high16 v33, 0x42c80000    # 100.0f

    div-float v29, v29, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v25, v29, v33

    .line 587
    .restart local v25    # "x1":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->y1:F

    move/from16 v29, v0

    const/high16 v33, 0x42c80000    # 100.0f

    div-float v29, v29, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v27, v29, v33

    .line 588
    .restart local v27    # "y1":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->x2:F

    move/from16 v29, v0

    const/high16 v33, 0x42c80000    # 100.0f

    div-float v29, v29, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v26, v29, v33

    .line 589
    .restart local v26    # "x2":F
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->y2:F

    move/from16 v29, v0

    const/high16 v33, 0x42c80000    # 100.0f

    div-float v29, v29, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v28, v29, v33

    .line 590
    .restart local v28    # "y2":F
    new-instance v5, Landroid/graphics/RectF;

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 591
    .restart local v5    # "_rect":Landroid/graphics/RectF;
    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 592
    new-instance v11, Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v33, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v34, v0

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v29

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 593
    .local v11, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    move/from16 v29, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->id:I

    move/from16 v33, v0

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_10

    const v29, -0x5f000001

    :goto_5
    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v10}, Lcom/vkontakte/android/ZoomableImageView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    move/from16 v29, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->id:I

    move/from16 v33, v0

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    const/high16 v29, -0x60000000

    :goto_6
    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->top:I

    .line 598
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->left:I

    .line 599
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 600
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->right:I

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v10}, Lcom/vkontakte/android/ZoomableImageView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 603
    if-nez v14, :cond_c

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/PhotoTag;->id:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    move/from16 v33, v0

    move/from16 v0, v29

    move/from16 v1, v33

    if-ne v0, v1, :cond_f

    .line 604
    :cond_c
    const/16 v29, 0x9

    move/from16 v0, v29

    new-array v9, v0, [F

    .line 605
    .restart local v9    # "mv":[F
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 606
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 607
    .restart local v17    # "strW":F
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->ascent()F

    move-result v29

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v16, v0

    .line 608
    .restart local v16    # "strH":F
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 609
    .restart local v6    # "bgPaint":Landroid/graphics/Paint;
    const/high16 v29, -0x70000000

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 612
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v29

    const/high16 v33, 0x40000000    # 2.0f

    div-float v33, v17, v33

    sub-float v20, v29, v33

    .line 613
    .restart local v20    # "textX":F
    add-float v29, v20, v17

    const/16 v33, 0x2

    aget v33, v9, v33

    sub-float v29, v29, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/16 v34, 0x0

    aget v34, v9, v34

    mul-float v33, v33, v34

    cmpl-float v29, v29, v33

    if-lez v29, :cond_d

    .line 614
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const/16 v33, 0x0

    aget v33, v9, v33

    mul-float v29, v29, v33

    sub-float v29, v29, v17

    const/16 v33, 0x2

    aget v33, v9, v33

    add-float v20, v29, v33

    .line 616
    :cond_d
    const/16 v29, 0x2

    aget v29, v9, v29

    cmpg-float v29, v20, v29

    if-gez v29, :cond_e

    .line 617
    const/16 v29, 0x2

    aget v20, v9, v29

    .line 620
    :cond_e
    new-instance v19, Landroid/graphics/RectF;

    const/high16 v29, 0x41200000    # 10.0f

    sget v33, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v29, v29, v33

    sub-float v29, v20, v29

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    sget v35, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v34, v34, v35

    add-float v33, v33, v34

    add-float v34, v20, v17

    const/high16 v35, 0x41200000    # 10.0f

    sget v36, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v35, v35, v36

    add-float v34, v34, v35

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v35, v0

    const/high16 v36, 0x40000000    # 2.0f

    sget v37, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v36, v36, v37

    add-float v35, v35, v36

    add-float v35, v35, v16

    const/high16 v36, 0x41200000    # 10.0f

    sget v37, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v36, v36, v37

    add-float v35, v35, v36

    move-object/from16 v0, v19

    move/from16 v1, v29

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 621
    .restart local v19    # "textRect":Landroid/graphics/RectF;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v29

    const/high16 v33, 0x40000000    # 2.0f

    div-float v29, v29, v33

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/RectF;->height()F

    move-result v33

    const/high16 v34, 0x40000000    # 2.0f

    div-float v33, v33, v34

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v29

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 622
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v33, v0

    const/high16 v34, 0x41980000    # 19.0f

    sget v35, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v34, v34, v35

    add-float v33, v33, v34

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v20

    move/from16 v3, v33

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 623
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    .line 585
    .end local v6    # "bgPaint":Landroid/graphics/Paint;
    .end local v9    # "mv":[F
    .end local v16    # "strH":F
    .end local v17    # "strW":F
    .end local v19    # "textRect":Landroid/graphics/RectF;
    .end local v20    # "textX":F
    :cond_f
    add-int/lit8 v29, v30, 0x1

    move/from16 v30, v29

    goto/16 :goto_1

    .line 593
    :cond_10
    const v29, 0x50ffffff

    goto/16 :goto_5

    .line 596
    :cond_11
    const/high16 v29, 0x50000000

    goto/16 :goto_6

    .line 637
    .end local v5    # "_rect":Landroid/graphics/RectF;
    .end local v8    # "m":Landroid/graphics/Matrix;
    .end local v10    # "paint":Landroid/graphics/Paint;
    .end local v11    # "rect":Landroid/graphics/Rect;
    .end local v12    # "rects":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/RectF;>;"
    .end local v14    # "showAllLabels":Z
    .end local v18    # "t":Lcom/vkontakte/android/PhotoTag;
    .end local v23    # "txtPaint":Landroid/graphics/Paint;
    .end local v25    # "x1":F
    .end local v26    # "x2":F
    .end local v27    # "y1":F
    .end local v28    # "y2":F
    .restart local v7    # "iratio":F
    .restart local v15    # "sratio":F
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v13, v29, v30

    .line 638
    .restart local v13    # "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v13

    sub-float v29, v29, v30

    const/high16 v30, 0x40000000    # 2.0f

    div-float v22, v29, v30

    .line 639
    .restart local v22    # "tx":F
    const/16 v24, 0x0

    .restart local v24    # "ty":F
    goto/16 :goto_2

    .line 661
    .end local v13    # "scale":F
    .end local v22    # "tx":F
    .end local v24    # "ty":F
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v13, v29, v30

    .line 662
    .restart local v13    # "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v13

    sub-float v29, v29, v30

    const/high16 v30, 0x40000000    # 2.0f

    div-float v22, v29, v30

    .line 663
    .restart local v22    # "tx":F
    const/16 v24, 0x0

    .restart local v24    # "ty":F
    goto/16 :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "vw"    # I
    .param p5, "vh"    # I

    .prologue
    .line 441
    if-eqz p1, :cond_0

    .line 442
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    .line 443
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 444
    invoke-direct {p0, p4, p5}, Lcom/vkontakte/android/ZoomableImageView;->viewResize(II)V

    .line 445
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 447
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    const/16 v31, 0x0

    .line 406
    :goto_0
    return v31

    .line 106
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/vkontakte/android/ZoomableImageView;->getPtrCount(Landroid/view/MotionEvent;)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_22

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    if-nez v31, :cond_2

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->cx:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->cy:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 110
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vkontakte/android/ZoomableImageView;->startTime:J

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->clearAnimation()V

    .line 113
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 116
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 118
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 120
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    .line 125
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 126
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    move/from16 v31, v0

    if-eqz v31, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    if-eqz v31, :cond_7

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->findAndSelectTag(FF)Z

    move-result v31

    if-nez v31, :cond_7

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 136
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 138
    :cond_4
    new-instance v31, Ljava/util/Timer;

    invoke-direct/range {v31 .. v31}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    new-instance v32, Lcom/vkontakte/android/ZoomableImageView$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ZoomableImageView$1;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    .line 146
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    .line 139
    invoke-virtual/range {v31 .. v34}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 147
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 150
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 152
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_6

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 154
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    .line 156
    :cond_6
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->onDoubleTap()V

    .line 168
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_14

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkontakte/android/ZoomableImageView;->startTime:J

    move-wide/from16 v33, v0

    sub-long v31, v31, v33

    move-wide/from16 v0, v31

    long-to-float v0, v0

    move/from16 v31, v0

    const/high16 v32, 0x447a0000    # 1000.0f

    div-float v23, v31, v32

    .line 170
    .local v23, "t":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->cx:F

    move/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v32

    sub-float v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 171
    .local v18, "s":F
    div-float v24, v18, v23

    .line 173
    .local v24, "v":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    move/from16 v31, v0

    if-eqz v31, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x3

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-gez v31, :cond_8

    const v31, 0x44228000    # 650.0f

    sget v32, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v31, v31, v32

    cmpl-float v31, v24, v31

    if-lez v31, :cond_10

    .line 174
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_9

    .line 176
    const/16 v31, 0x96

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    .line 177
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->postPrev()V

    .line 194
    .end local v18    # "s":F
    .end local v23    # "t":F
    .end local v24    # "v":F
    :cond_a
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_22

    .line 196
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->cx:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->touchslop:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-gtz v31, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->cy:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->touchslop:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_c

    .line 197
    :cond_b
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    .line 200
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    move/from16 v32, v0

    sub-float v8, v31, v32

    .line 201
    .local v8, "dx":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    move/from16 v32, v0

    sub-float v9, v31, v32

    .line 202
    .local v9, "dy":F
    const/16 v31, 0x9

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 203
    .local v17, "mv":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    aget v32, v17, v32

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v5, v0

    .local v5, "bsw":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    aget v32, v17, v32

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v4, v0

    .line 207
    .local v4, "bsh":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v25

    .local v25, "vh":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v26

    .line 208
    .local v26, "vw":I
    div-int/lit8 v31, v26, 0x2

    div-int/lit8 v32, v5, 0x2

    sub-int v31, v31, v32

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v13

    .local v13, "maxX":I
    div-int/lit8 v31, v25, 0x2

    div-int/lit8 v32, v4, 0x2

    sub-int v31, v31, v32

    const/16 v32, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 209
    .local v14, "maxY":I
    sub-int v31, v5, v26

    move/from16 v0, v31

    neg-int v15, v0

    .local v15, "minX":I
    sub-int v31, v4, v25

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v16, v0

    .line 215
    .local v16, "minY":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    const/16 v32, 0x2

    aget v32, v17, v32

    add-float v32, v32, v8

    int-to-float v0, v13

    move/from16 v33, v0

    cmpl-float v32, v32, v33

    if-gtz v32, :cond_d

    const/16 v32, 0x2

    aget v32, v17, v32

    add-float v32, v32, v8

    int-to-float v0, v15

    move/from16 v33, v0

    cmpg-float v32, v32, v33

    if-gez v32, :cond_15

    :cond_d
    const/16 v32, 0x0

    :goto_3
    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 217
    const/16 v31, 0x0

    aget v31, v17, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_16

    .line 221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->enableOverscroll:Z

    move/from16 v31, v0

    if-eqz v31, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/vkontakte/android/ZoomableImageView;->translateView(F)V

    .line 223
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 226
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 161
    .end local v4    # "bsh":I
    .end local v5    # "bsw":I
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v13    # "maxX":I
    .end local v14    # "maxY":I
    .end local v15    # "minX":I
    .end local v16    # "minY":I
    .end local v17    # "mv":[F
    .end local v25    # "vh":I
    .end local v26    # "vw":I
    :cond_f
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    .line 162
    new-instance v31, Ljava/util/Timer;

    invoke-direct/range {v31 .. v31}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    new-instance v32, Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;-><init>(Lcom/vkontakte/android/ZoomableImageView;Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    invoke-virtual/range {v31 .. v34}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    .line 178
    .restart local v18    # "s":F
    .restart local v23    # "t":F
    .restart local v24    # "v":F
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x3

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-gez v31, :cond_11

    const v31, 0x44228000    # 650.0f

    sget v32, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v31, v31, v32

    cmpl-float v31, v24, v31

    if-lez v31, :cond_13

    .line 179
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v32, v0

    add-float v31, v31, v32

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_12

    .line 181
    const/16 v31, 0xc8

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    .line 182
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->postNext()V

    goto/16 :goto_2

    .line 184
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_a

    .line 186
    const/16 v31, 0x96

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    goto/16 :goto_2

    .line 189
    .end local v18    # "s":F
    .end local v23    # "t":F
    .end local v24    # "v":F
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_a

    .line 191
    const/16 v31, 0x96

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    goto/16 :goto_2

    .line 215
    .restart local v4    # "bsh":I
    .restart local v5    # "bsw":I
    .restart local v8    # "dx":F
    .restart local v9    # "dy":F
    .restart local v13    # "maxX":I
    .restart local v14    # "maxY":I
    .restart local v15    # "minX":I
    .restart local v16    # "minY":I
    .restart local v17    # "mv":[F
    .restart local v25    # "vh":I
    .restart local v26    # "vw":I
    :cond_15
    const/16 v32, 0x1

    goto/16 :goto_3

    .line 229
    :cond_16
    const/16 v31, 0x2

    aget v31, v17, v31

    add-float v31, v31, v8

    int-to-float v0, v13

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_17

    const/16 v31, 0x2

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v13

    move/from16 v32, v0

    add-float v8, v31, v32

    .line 230
    :cond_17
    const/16 v31, 0x5

    aget v31, v17, v31

    add-float v31, v31, v9

    int-to-float v0, v14

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_18

    .line 231
    const/16 v31, 0x5

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v14

    move/from16 v32, v0

    add-float v9, v31, v32

    .line 234
    :cond_18
    const/16 v31, 0x2

    aget v31, v17, v31

    add-float v31, v31, v8

    int-to-float v0, v15

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_19

    const/16 v31, 0x2

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v15

    move/from16 v32, v0

    add-float v8, v31, v32

    .line 235
    :cond_19
    const/16 v31, 0x5

    aget v31, v17, v31

    add-float v31, v31, v9

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_1a

    .line 236
    const/16 v31, 0x5

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v9, v31, v32

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    if-le v4, v0, :cond_1a

    .line 239
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->shouldInterceptNextTouchEvent:Z

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->lockVerticalMovement:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    const/4 v9, 0x0

    .line 245
    :cond_1b
    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-lez v31, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-gtz v31, :cond_33

    :cond_1c
    const/16 v31, 0x0

    cmpg-float v31, v8, v31

    if-gez v31, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-ltz v31, :cond_33

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_1e

    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-nez v31, :cond_33

    .line 246
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    move/from16 v32, v0

    sub-float v6, v31, v32

    .line 247
    .local v6, "ddx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->enableOverscroll:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1f

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkontakte/android/ZoomableImageView;->translateView(F)V

    .line 249
    :cond_1f
    move/from16 v0, v25

    if-le v0, v4, :cond_20

    const/4 v9, 0x0

    .line 251
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 266
    .end local v6    # "ddx":F
    :cond_21
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 272
    .end local v4    # "bsh":I
    .end local v5    # "bsw":I
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v13    # "maxX":I
    .end local v14    # "maxY":I
    .end local v15    # "minX":I
    .end local v16    # "minY":I
    .end local v17    # "mv":[F
    .end local v25    # "vh":I
    .end local v26    # "vw":I
    :cond_22
    invoke-direct/range {p0 .. p1}, Lcom/vkontakte/android/ZoomableImageView;->getPtrCount(Landroid/view/MotionEvent;)I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_32

    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    move/from16 v31, v0

    if-eqz v31, :cond_23

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    .line 274
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_24

    .line 275
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrX(Landroid/view/MotionEvent;I)F

    move-result v27

    .local v27, "x1":F
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrY(Landroid/view/MotionEvent;I)F

    move-result v29

    .line 276
    .local v29, "y1":F
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrX(Landroid/view/MotionEvent;I)F

    move-result v28

    .local v28, "x2":F
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrY(Landroid/view/MotionEvent;I)F

    move-result v30

    .line 277
    .local v30, "y2":F
    sub-float v31, v28, v27

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    sub-float v33, v30, v29

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    .line 278
    add-float v31, v27, v28

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->pcx:F

    .line 279
    add-float v31, v29, v30

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->pcy:F

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v31

    check-cast v31, Landroid/view/ViewGroup;

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 283
    .end local v27    # "x1":F
    .end local v28    # "x2":F
    .end local v29    # "y1":F
    .end local v30    # "y2":F
    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_29

    .line 284
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 285
    .local v12, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 286
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrX(Landroid/view/MotionEvent;I)F

    move-result v27

    .restart local v27    # "x1":F
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrY(Landroid/view/MotionEvent;I)F

    move-result v29

    .line 287
    .restart local v29    # "y1":F
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrX(Landroid/view/MotionEvent;I)F

    move-result v28

    .restart local v28    # "x2":F
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrY(Landroid/view/MotionEvent;I)F

    move-result v30

    .line 288
    .restart local v30    # "y2":F
    sub-float v31, v28, v27

    move/from16 v0, v31

    float-to-double v0, v0

    move-wide/from16 v31, v0

    sub-float v33, v30, v29

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v31 .. v34}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v31

    move-wide/from16 v0, v31

    double-to-float v7, v0

    .line 289
    .local v7, "dist":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    move/from16 v31, v0

    div-float v19, v7, v31

    .line 290
    .local v19, "scale":F
    const/16 v31, 0x9

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 291
    .restart local v17    # "mv":[F
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    aget v32, v17, v32

    mul-float v31, v31, v32

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v5, v0

    .restart local v5    # "bsw":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    aget v32, v17, v32

    mul-float v31, v31, v32

    mul-float v31, v31, v19

    move/from16 v0, v31

    float-to-int v4, v0

    .line 299
    .restart local v4    # "bsh":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->pcx:F

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->pcy:F

    move/from16 v32, v0

    move/from16 v0, v19

    move/from16 v1, v19

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 300
    const/high16 v31, 0x3f800000    # 1.0f

    cmpg-float v31, v19, v31

    if-gez v31, :cond_28

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v11, v31, v32

    .local v11, "iratio":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v22, v31, v32

    .line 302
    .local v22, "sratio":F
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 303
    const/16 v31, 0x2

    aget v31, v17, v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_25

    cmpl-float v31, v11, v22

    if-lez v31, :cond_25

    const/16 v31, 0x2

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 304
    :cond_25
    const/16 v31, 0x2

    aget v31, v17, v31

    int-to-float v0, v5

    move/from16 v32, v0

    add-float v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_26

    cmpl-float v31, v11, v22

    if-lez v31, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x2

    aget v32, v17, v32

    int-to-float v0, v5

    move/from16 v33, v0

    add-float v32, v32, v33

    sub-float v31, v31, v32

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 305
    :cond_26
    const/16 v31, 0x5

    aget v31, v17, v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_27

    cmpg-float v31, v11, v22

    if-gtz v31, :cond_27

    const/16 v31, 0x0

    const/16 v32, 0x5

    aget v32, v17, v32

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 306
    :cond_27
    const/16 v31, 0x5

    aget v31, v17, v31

    int-to-float v0, v4

    move/from16 v32, v0

    add-float v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_28

    cmpg-float v31, v11, v22

    if-gtz v31, :cond_28

    const/16 v31, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x5

    aget v33, v17, v33

    int-to-float v0, v4

    move/from16 v34, v0

    add-float v33, v33, v34

    sub-float v32, v32, v33

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 308
    .end local v11    # "iratio":F
    .end local v22    # "sratio":F
    :cond_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 310
    .end local v4    # "bsh":I
    .end local v5    # "bsw":I
    .end local v7    # "dist":F
    .end local v12    # "m":Landroid/graphics/Matrix;
    .end local v17    # "mv":[F
    .end local v19    # "scale":F
    .end local v27    # "x1":F
    .end local v28    # "x2":F
    .end local v29    # "y1":F
    .end local v30    # "y2":F
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_32

    .line 311
    const/16 v31, 0x9

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 312
    .restart local v17    # "mv":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 364
    const/16 v31, 0x0

    aget v31, v17, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v17, v33

    div-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    move/from16 v33, v0

    const/16 v34, 0x0

    aget v34, v17, v34

    div-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 365
    :cond_2a
    const/16 v31, 0x0

    aget v31, v17, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    move/from16 v32, v0

    const/16 v33, 0x0

    aget v33, v17, v33

    div-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    move/from16 v33, v0

    const/16 v34, 0x0

    aget v34, v17, v34

    div-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 367
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 369
    const/16 v31, 0x0

    aget v19, v17, v31

    .line 370
    .restart local v19    # "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v21, v31, v19

    .local v21, "scaledWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v20, v31, v19

    .line 372
    .local v20, "scaledHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v21, v31

    if-gtz v31, :cond_2c

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget v32, v17, v32

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x40000000    # 2.0f

    div-float v33, v21, v33

    sub-float v32, v32, v33

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 376
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v20, v31

    if-gtz v31, :cond_2d

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x5

    aget v33, v17, v33

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v33

    div-int/lit8 v33, v33, 0x2

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x40000000    # 2.0f

    div-float v34, v20, v34

    sub-float v33, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 381
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v21, v31

    if-lez v31, :cond_2f

    .line 382
    const/16 v31, 0x2

    aget v31, v17, v31

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v21

    cmpg-float v31, v31, v32

    if-gez v31, :cond_2e

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget v32, v17, v32

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v21

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 386
    :cond_2e
    const/16 v31, 0x2

    aget v31, v17, v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_2f

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget v32, v17, v32

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 390
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v20, v31

    if-lez v31, :cond_31

    .line 391
    const/16 v31, 0x5

    aget v31, v17, v31

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v20

    cmpg-float v31, v31, v32

    if-gez v31, :cond_30

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x5

    aget v33, v17, v33

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v33, v33, v20

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 395
    :cond_30
    const/16 v31, 0x5

    aget v31, v17, v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_31

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x5

    aget v33, v17, v33

    move/from16 v0, v33

    neg-float v0, v0

    move/from16 v33, v0

    invoke-virtual/range {v31 .. v33}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 400
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrixAnimated(Landroid/graphics/Matrix;)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    shr-int/lit8 v10, v31, 0x8

    .line 402
    .local v10, "idx":I
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v10, v0, :cond_36

    const/16 v31, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrX(Landroid/view/MotionEvent;I)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 403
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v10, v0, :cond_37

    const/16 v31, 0x0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrY(Landroid/view/MotionEvent;I)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 406
    .end local v10    # "idx":I
    .end local v17    # "mv":[F
    .end local v19    # "scale":F
    .end local v20    # "scaledHeight":F
    .end local v21    # "scaledWidth":F
    :cond_32
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 255
    .restart local v4    # "bsh":I
    .restart local v5    # "bsw":I
    .restart local v8    # "dx":F
    .restart local v9    # "dy":F
    .restart local v13    # "maxX":I
    .restart local v14    # "maxY":I
    .restart local v15    # "minX":I
    .restart local v16    # "minY":I
    .restart local v17    # "mv":[F
    .restart local v25    # "vh":I
    .restart local v26    # "vw":I
    :cond_33
    move/from16 v0, v26

    if-le v0, v5, :cond_34

    const/4 v8, 0x0

    .line 256
    :cond_34
    move/from16 v0, v25

    if-le v0, v4, :cond_35

    const/4 v9, 0x0

    .line 258
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 261
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    move-object/from16 v31, v0

    if-eqz v31, :cond_21

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;->onPositionChanged(F)V

    goto/16 :goto_4

    .line 402
    .end local v4    # "bsh":I
    .end local v5    # "bsw":I
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v13    # "maxX":I
    .end local v14    # "maxY":I
    .end local v15    # "minX":I
    .end local v16    # "minY":I
    .end local v25    # "vh":I
    .end local v26    # "vw":I
    .restart local v10    # "idx":I
    .restart local v19    # "scale":F
    .restart local v20    # "scaledHeight":F
    .restart local v21    # "scaledWidth":F
    :cond_36
    const/16 v31, 0x1

    goto :goto_5

    .line 403
    :cond_37
    const/16 v31, 0x1

    goto :goto_6
.end method

.method public setCanGoBack(Z)V
    .locals 0
    .param p1, "can"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    .line 526
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 76
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vkontakte/android/PhotoTag;

    iput-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 77
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 79
    if-nez p1, :cond_0

    .line 81
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 102
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 85
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->clearAnimation()V

    .line 86
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 87
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    .line 88
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    .line 92
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 93
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v0, "vr":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->viewResize(II)V

    .line 100
    .end local v0    # "vr":Landroid/graphics/Rect;
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->viewResize(II)V

    goto :goto_1
.end method

.method public setIsList(Z)V
    .locals 0
    .param p1, "isList"    # Z

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    .line 522
    return-void
.end method

.method public setNavListener(Lcom/vkontakte/android/ZoomableImageView$OnNavListener;)V
    .locals 0
    .param p1, "nl"    # Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

    .prologue
    .line 780
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->navListener:Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

    .line 781
    return-void
.end method

.method public setNextImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 859
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    .line 860
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 518
    return-void
.end method

.method public setOnScrollListener(Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    .line 882
    return-void
.end method

.method public setOverscrollEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 885
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->enableOverscroll:Z

    .line 886
    return-void
.end method

.method public setPrevImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 864
    return-void
.end method

.method public setTX(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 737
    iget v0, p0, Lcom/vkontakte/android/ZoomableImageView;->svtx:F

    iget v1, p0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 738
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    iget v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;->onPositionChanged(F)V

    .line 741
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 742
    return-void
.end method

.method public setTags([Lcom/vkontakte/android/PhotoTag;)V
    .locals 1
    .param p1, "t"    # [Lcom/vkontakte/android/PhotoTag;

    .prologue
    .line 745
    if-eqz p1, :cond_0

    .line 746
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 749
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 750
    return-void

    .line 748
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/vkontakte/android/PhotoTag;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    goto :goto_0
.end method

.method public setTagsVisible(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 867
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    .line 868
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 869
    return-void
.end method

.method public translateY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 876
    iput p1, p0, Lcom/vkontakte/android/ZoomableImageView;->translationY:I

    .line 877
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->postInvalidate()V

    .line 878
    return-void
.end method

.method public zoomIn()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 465
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 466
    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 467
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 476
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrixAnimated(Landroid/graphics/Matrix;)V

    .line 477
    iput v6, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 478
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->scrollListener:Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;

    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    invoke-interface {v2, v3}, Lcom/vkontakte/android/ZoomableImageView$OnScrollListener;->onPositionChanged(F)V

    .line 481
    :cond_0
    return-void

    .line 469
    :cond_1
    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .local v0, "iratio":F
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 470
    .local v1, "sratio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 471
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public zoomOut()V
    .locals 6

    .prologue
    .line 484
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 485
    .local v0, "mv":[F
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_0

    .line 490
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 487
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 488
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 489
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrixAnimated(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
