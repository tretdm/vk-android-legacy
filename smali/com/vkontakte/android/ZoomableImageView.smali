.class public Lcom/vkontakte/android/ZoomableImageView;
.super Landroid/widget/ImageView;
.source "ZoomableImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ZoomableImageView$DoubleTapTimerTask;,
        Lcom/vkontakte/android/ZoomableImageView$MatrixAnimation;,
        Lcom/vkontakte/android/ZoomableImageView$OnNavListener;
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

.field private h:I

.field private is16:Z

.field private isClick:Z

.field private isList:Z

.field private matrix:Landroid/graphics/Matrix;

.field private matrixAnimating:Z

.field private maxScale:F

.field private minScale:F

.field private navListener:Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

.field private nextImage:Landroid/graphics/Bitmap;

.field private pcx:F

.field private pcy:F

.field private prevImage:Landroid/graphics/Bitmap;

.field private sdist:F

.field private sdx:F

.field private sdy:F

.field private selectedTagRect:Landroid/graphics/RectF;

.field private startTime:J

.field private svtx:F

.field private tags:[Lcom/vkontakte/android/PhotoTag;

.field private tagsVisible:Z

.field private touchslop:I

.field private tx:F

.field private ty:F

.field private vtx:F

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 34
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 38
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->is16:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    .line 39
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 40
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 43
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    .line 45
    new-array v0, v1, [Lcom/vkontakte/android/PhotoTag;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 47
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    .line 48
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    .line 53
    invoke-direct {p0}, Lcom/vkontakte/android/ZoomableImageView;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 34
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 38
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->is16:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    .line 39
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 40
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 43
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    .line 45
    new-array v0, v1, [Lcom/vkontakte/android/PhotoTag;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 47
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    .line 48
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/ZoomableImageView;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 34
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 38
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->is16:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    .line 39
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 40
    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 43
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    .line 45
    new-array v0, v1, [Lcom/vkontakte/android/PhotoTag;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 47
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    .line 48
    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    .line 63
    invoke-direct {p0}, Lcom/vkontakte/android/ZoomableImageView;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ZoomableImageView;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ZoomableImageView;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ZoomableImageView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ZoomableImageView;F)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ZoomableImageView;)Lcom/vkontakte/android/ZoomableImageView$OnNavListener;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->navListener:Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ZoomableImageView;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    return-void
.end method

.method private drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 637
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

    .line 638
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

    .line 639
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

    .line 640
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

    .line 641
    return-void
.end method

.method private findAndSelectTag(FF)Z
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 738
    iget-boolean v8, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    if-nez v8, :cond_0

    const/4 v8, 0x0

    .line 771
    :goto_0
    return v8

    .line 739
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    array-length v8, v8

    if-lez v8, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 741
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v9, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v10, :cond_3

    .line 756
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

    .line 757
    iget-object v9, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_2
    if-lt v8, v10, :cond_5

    .line 767
    :cond_2
    :goto_3
    const/4 v8, 0x1

    goto :goto_0

    .line 741
    .restart local v1    # "m":Landroid/graphics/Matrix;
    :cond_3
    aget-object v3, v9, v8

    .line 742
    .local v3, "t":Lcom/vkontakte/android/PhotoTag;
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->x1:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v12, v12

    mul-float v4, v11, v12

    .line 743
    .local v4, "x1":F
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->y1:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v12, v12

    mul-float v6, v11, v12

    .line 744
    .local v6, "y1":F
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->x2:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v12, v12

    mul-float v5, v11, v12

    .line 745
    .local v5, "x2":F
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->y2:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v11, v12

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v12, v12

    mul-float v7, v11, v12

    .line 746
    .local v7, "y2":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v4, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 747
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 748
    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 749
    iget v8, v3, Lcom/vkontakte/android/PhotoTag;->id:I

    iput v8, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 750
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 751
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    .line 752
    const/4 v8, 0x1

    goto :goto_0

    .line 741
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 757
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v2    # "rect":Landroid/graphics/RectF;
    .end local v3    # "t":Lcom/vkontakte/android/PhotoTag;
    .end local v4    # "x1":F
    .end local v5    # "x2":F
    .end local v6    # "y1":F
    .end local v7    # "y2":F
    :cond_5
    aget-object v3, v9, v8

    .line 758
    .restart local v3    # "t":Lcom/vkontakte/android/PhotoTag;
    iget v11, v3, Lcom/vkontakte/android/PhotoTag;->id:I

    iget v12, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    if-ne v11, v12, :cond_6

    .line 759
    iget v8, v3, Lcom/vkontakte/android/PhotoTag;->userID:I

    if-lez v8, :cond_2

    .line 760
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 761
    .local v0, "intent":Landroid/content/Intent;
    const-string v8, "wall_id"

    iget v9, v3, Lcom/vkontakte/android/PhotoTag;->userID:I

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 757
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 769
    .end local v3    # "t":Lcom/vkontakte/android/PhotoTag;
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 770
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 771
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private getPtrCount(Landroid/view/MotionEvent;)I
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 450
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

    .line 452
    :goto_0
    return v1

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "x":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPtrX(Landroid/view/MotionEvent;I)F
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "i"    # I

    .prologue
    .line 458
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

    .line 460
    :goto_0
    return v1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "x":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPtrY(Landroid/view/MotionEvent;I)F
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "i"    # I

    .prologue
    .line 466
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

    .line 468
    :goto_0
    return v1

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "x":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 67
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->is16:Z

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 69
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->touchslop:I

    .line 70
    return-void

    .line 67
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onDoubleTap()V
    .locals 3

    .prologue
    .line 485
    const/16 v2, 0x9

    new-array v0, v2, [F

    .line 486
    .local v0, "mv":[F
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 487
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 488
    .local v1, "scale":F
    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->zoomOut()V

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->zoomIn()V

    goto :goto_0
.end method

.method private postNext()V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 677
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ZoomableImageView$2;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    .line 682
    const-wide/16 v1, 0xdc

    .line 677
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 683
    return-void
.end method

.method private postPrev()V
    .locals 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    .line 687
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ZoomableImageView$3;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    .line 692
    const-wide/16 v1, 0xaa

    .line 687
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 693
    return-void
.end method

.method private setImageMatrixAnimated(Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 725
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$4;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ZoomableImageView$4;-><init>(Lcom/vkontakte/android/ZoomableImageView;Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ZoomableImageView;->post(Ljava/lang/Runnable;)Z

    .line 732
    new-instance v0, Lcom/vkontakte/android/ZoomableImageView$5;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ZoomableImageView$5;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    .line 734
    const-wide/16 v1, 0xc8

    .line 732
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    return-void
.end method

.method private translateView(F)V
    .locals 1
    .param p1, "dx"    # F

    .prologue
    .line 644
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 646
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

    .line 385
    iput v6, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 386
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .local v0, "iratio":F
    int-to-float v3, p1

    int-to-float v4, p2

    div-float v2, v3, v4

    .line 387
    .local v2, "sratio":F
    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    .line 388
    int-to-float v3, p1

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v4, v4

    div-float v1, v3, v4

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    .line 389
    .local v1, "scale":F
    int-to-float v3, p2

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 390
    iput v6, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    .line 391
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    div-float/2addr v4, v1

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 392
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 393
    int-to-float v3, p2

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 402
    :goto_0
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    iput v5, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    .line 403
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    .line 404
    iput v5, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    .line 405
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    .line 406
    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    int-to-float v3, v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 407
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    iget v5, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 408
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    iget v5, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 410
    :cond_1
    return-void

    .line 395
    .end local v1    # "scale":F
    :cond_2
    int-to-float v3, p2

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    int-to-float v4, v4

    div-float v1, v3, v4

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    .line 396
    .restart local v1    # "scale":F
    int-to-float v3, p1

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    iput v3, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    .line 397
    iput v6, p0, Lcom/vkontakte/android/ZoomableImageView;->ty:F

    .line 398
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->tx:F

    div-float/2addr v4, v1

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 399
    iget-object v3, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 400
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
    .line 650
    iget-boolean v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrixAnimating:Z

    if-eqz v1, :cond_0

    .line 651
    iget v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 659
    :goto_0
    return-void

    .line 654
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->svtx:F

    .line 655
    new-instance v0, Lcom/vkontakte/android/MethodAnimation;

    const-string v1, "setTX"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    .local v0, "ma":Lcom/vkontakte/android/MethodAnimation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/MethodAnimation;->setDuration(J)V

    .line 657
    if-eqz p2, :cond_1

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MethodAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 658
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ZoomableImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 657
    :cond_1
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNextImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPrevImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 38
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 497
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 498
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

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 500
    .local v8, "m":Landroid/graphics/Matrix;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 501
    .local v10, "paint":Landroid/graphics/Paint;
    sget-object v29, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 502
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 504
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 505
    .local v23, "txtPaint":Landroid/graphics/Paint;
    const/16 v29, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    const/high16 v29, 0x41700000    # 15.0f

    sget v30, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v29, v29, v30

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 507
    const/16 v29, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 508
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

    .line 510
    const/4 v14, 0x1

    .line 511
    .local v14, "showAllLabels":Z
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 512
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

    .line 541
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

    .line 584
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

    .line 585
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

    .line 587
    .local v15, "sratio":F
    cmpl-float v29, v7, v15

    if-lez v29, :cond_12

    .line 588
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

    .line 589
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

    .line 591
    .local v24, "ty":F
    const/16 v22, 0x0

    .line 597
    .local v22, "tx":F
    :goto_2
    const/high16 v29, 0x40000000    # 2.0f

    cmpl-float v29, v13, v29

    if-lez v29, :cond_2

    .line 598
    const/high16 v13, 0x40000000    # 2.0f

    .line 599
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

    .line 600
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

    .line 602
    :cond_2
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 603
    .restart local v10    # "paint":Landroid/graphics/Paint;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 604
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

    .line 605
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

    .line 604
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 609
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

    .line 610
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

    .line 612
    .restart local v15    # "sratio":F
    cmpl-float v29, v7, v15

    if-lez v29, :cond_13

    .line 613
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

    .line 614
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

    .line 615
    .restart local v24    # "ty":F
    const/16 v22, 0x0

    .line 621
    .restart local v22    # "tx":F
    :goto_3
    const/high16 v29, 0x40000000    # 2.0f

    cmpl-float v29, v13, v29

    if-lez v29, :cond_4

    .line 622
    const/high16 v13, 0x40000000    # 2.0f

    .line 623
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

    .line 624
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

    .line 626
    :cond_4
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 627
    .restart local v10    # "paint":Landroid/graphics/Paint;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 628
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

    .line 629
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

    .line 628
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 633
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

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 634
    return-void

    .line 512
    .restart local v8    # "m":Landroid/graphics/Matrix;
    .restart local v10    # "paint":Landroid/graphics/Paint;
    .restart local v12    # "rects":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/graphics/RectF;>;"
    .restart local v14    # "showAllLabels":Z
    .restart local v23    # "txtPaint":Landroid/graphics/Paint;
    :cond_6
    aget-object v18, v30, v29

    .line 513
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

    .line 514
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

    .line 515
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

    .line 516
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

    .line 517
    .local v28, "y2":F
    new-instance v5, Landroid/graphics/RectF;

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 518
    .local v5, "_rect":Landroid/graphics/RectF;
    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 519
    const/16 v32, 0x9

    move/from16 v0, v32

    new-array v9, v0, [F

    .line 520
    .local v9, "mv":[F
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 521
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 522
    .local v17, "strW":F
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->ascent()F

    move-result v32

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v16, v0

    .line 523
    .local v16, "strH":F
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 524
    .local v6, "bgPaint":Landroid/graphics/Paint;
    const/high16 v32, -0x70000000

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 527
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v32

    const/high16 v33, 0x40000000    # 2.0f

    div-float v33, v17, v33

    sub-float v20, v32, v33

    .line 528
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

    .line 529
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

    .line 531
    :cond_7
    const/16 v32, 0x2

    aget v32, v9, v32

    cmpg-float v32, v20, v32

    if-gez v32, :cond_8

    .line 532
    const/16 v32, 0x2

    aget v20, v9, v32

    .line 535
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

    .line 536
    .local v19, "textRect":Landroid/graphics/RectF;
    invoke-virtual {v12}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :cond_9
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-nez v33, :cond_a

    .line 537
    if-eqz v14, :cond_0

    .line 538
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 536
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

    .line 541
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

    .line 542
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

    .line 543
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

    .line 544
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

    .line 545
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

    .line 546
    .restart local v28    # "y2":F
    new-instance v5, Landroid/graphics/RectF;

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v26

    move/from16 v3, v28

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 547
    .restart local v5    # "_rect":Landroid/graphics/RectF;
    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 548
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

    .line 549
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

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v10}, Lcom/vkontakte/android/ZoomableImageView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 552
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

    .line 553
    iget v0, v11, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->top:I

    .line 554
    iget v0, v11, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->left:I

    .line 555
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 556
    iget v0, v11, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    iput v0, v11, Landroid/graphics/Rect;->right:I

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v10}, Lcom/vkontakte/android/ZoomableImageView;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 559
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

    .line 560
    :cond_c
    const/16 v29, 0x9

    move/from16 v0, v29

    new-array v9, v0, [F

    .line 561
    .restart local v9    # "mv":[F
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 562
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/PhotoTag;->userName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 563
    .restart local v17    # "strW":F
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->ascent()F

    move-result v29

    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v16, v0

    .line 564
    .restart local v16    # "strH":F
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 565
    .restart local v6    # "bgPaint":Landroid/graphics/Paint;
    const/high16 v29, -0x70000000

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 566
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 568
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v29

    const/high16 v33, 0x40000000    # 2.0f

    div-float v33, v17, v33

    sub-float v20, v29, v33

    .line 569
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

    .line 570
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

    .line 572
    :cond_d
    const/16 v29, 0x2

    aget v29, v9, v29

    cmpg-float v29, v20, v29

    if-gez v29, :cond_e

    .line 573
    const/16 v29, 0x2

    aget v20, v9, v29

    .line 576
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

    .line 577
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

    .line 578
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

    .line 579
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->selectedTagRect:Landroid/graphics/RectF;

    .line 541
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

    .line 549
    :cond_10
    const v29, 0x50ffffff

    goto/16 :goto_5

    .line 552
    :cond_11
    const/high16 v29, 0x50000000

    goto/16 :goto_6

    .line 593
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

    .line 594
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

    .line 595
    .restart local v22    # "tx":F
    const/16 v24, 0x0

    .restart local v24    # "ty":F
    goto/16 :goto_2

    .line 617
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

    .line 618
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

    .line 619
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
    .line 413
    if-eqz p1, :cond_0

    .line 414
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    .line 415
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 416
    invoke-direct {p0, p4, p5}, Lcom/vkontakte/android/ZoomableImageView;->viewResize(II)V

    .line 417
    iget-object v0, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 419
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 35
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    const/16 v31, 0x0

    .line 381
    :goto_0
    return v31

    .line 104
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/vkontakte/android/ZoomableImageView;->getPtrCount(Landroid/view/MotionEvent;)I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    if-nez v31, :cond_2

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->cx:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->cy:F

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 108
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vkontakte/android/ZoomableImageView;->startTime:J

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->clearAnimation()V

    .line 111
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 114
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 116
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 118
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    .line 123
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    move/from16 v31, v0

    if-eqz v31, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v31, v0

    if-eqz v31, :cond_6

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->findAndSelectTag(FF)Z

    move-result v31

    if-nez v31, :cond_6

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 134
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 136
    :cond_3
    new-instance v31, Ljava/util/Timer;

    invoke-direct/range {v31 .. v31}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    new-instance v32, Lcom/vkontakte/android/ZoomableImageView$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ZoomableImageView$1;-><init>(Lcom/vkontakte/android/ZoomableImageView;)V

    .line 144
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v33

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    .line 137
    invoke-virtual/range {v31 .. v34}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 148
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->clickTimer:Ljava/util/Timer;

    .line 150
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    if-eqz v31, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/Timer;->cancel()V

    .line 152
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    .line 154
    :cond_5
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->onDoubleTap()V

    .line 166
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    if-eqz v31, :cond_11

    .line 167
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

    .line 168
    .local v23, "t":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->cx:F

    move/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v32

    sub-float v31, v31, v32

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 169
    .local v18, "s":F
    div-float v24, v18, v23

    .line 171
    .local v24, "v":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    move/from16 v31, v0

    if-eqz v31, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_d

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

    if-gez v31, :cond_7

    const v31, 0x44228000    # 650.0f

    sget v32, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v31, v31, v32

    cmpl-float v31, v24, v31

    if-lez v31, :cond_d

    .line 172
    :cond_7
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

    .line 173
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_8

    .line 174
    const/16 v31, 0x96

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    .line 175
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->postPrev()V

    .line 192
    .end local v18    # "s":F
    .end local v23    # "t":F
    .end local v24    # "v":F
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    .line 194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    move/from16 v31, v0

    if-eqz v31, :cond_b

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

    if-gtz v31, :cond_a

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

    if-lez v31, :cond_b

    .line 195
    :cond_a
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    .line 197
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    move/from16 v32, v0

    sub-float v8, v31, v32

    .line 198
    .local v8, "dx":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    move/from16 v32, v0

    sub-float v9, v31, v32

    .line 199
    .local v9, "dy":F
    const/16 v31, 0x9

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 200
    .local v17, "mv":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 202
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

    .line 203
    .local v4, "bsh":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v25

    .local v25, "vh":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v26

    .line 204
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

    .line 205
    .local v14, "maxY":I
    sub-int v31, v5, v26

    move/from16 v0, v31

    neg-int v15, v0

    .local v15, "minX":I
    sub-int v31, v4, v25

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v16, v0

    .line 207
    .local v16, "minY":I
    const/16 v31, 0x0

    aget v31, v17, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_12

    .line 211
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/vkontakte/android/ZoomableImageView;->translateView(F)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 216
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 159
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
    :cond_c
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapStarted:Z

    .line 160
    new-instance v31, Ljava/util/Timer;

    invoke-direct/range {v31 .. v31}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ZoomableImageView;->doubleTapTimer:Ljava/util/Timer;

    .line 161
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

    .line 176
    .restart local v18    # "s":F
    .restart local v23    # "t":F
    .restart local v24    # "v":F
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_10

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

    if-gez v31, :cond_e

    const v31, 0x44228000    # 650.0f

    sget v32, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float v31, v31, v32

    cmpl-float v31, v24, v31

    if-lez v31, :cond_10

    .line 177
    :cond_e
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

    .line 178
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_f

    .line 179
    const/16 v31, 0xc8

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    .line 180
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->postNext()V

    goto/16 :goto_2

    .line 182
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_9

    .line 184
    const/16 v31, 0x96

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    goto/16 :goto_2

    .line 187
    .end local v18    # "s":F
    .end local v23    # "t":F
    .end local v24    # "v":F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    .line 188
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v31

    const/high16 v32, 0x3f800000    # 1.0f

    cmpl-float v31, v31, v32

    if-lez v31, :cond_9

    .line 189
    const/16 v31, 0x96

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->animateTranslate(IZ)V

    goto/16 :goto_2

    .line 219
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
    :cond_12
    const/16 v31, 0x2

    aget v31, v17, v31

    add-float v31, v31, v8

    int-to-float v0, v13

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_13

    const/16 v31, 0x2

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v13

    move/from16 v32, v0

    add-float v8, v31, v32

    .line 220
    :cond_13
    const/16 v31, 0x5

    aget v31, v17, v31

    add-float v31, v31, v9

    int-to-float v0, v14

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_14

    const/16 v31, 0x5

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v14

    move/from16 v32, v0

    add-float v9, v31, v32

    .line 222
    :cond_14
    const/16 v31, 0x2

    aget v31, v17, v31

    add-float v31, v31, v8

    int-to-float v0, v15

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_15

    const/16 v31, 0x2

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    int-to-float v0, v15

    move/from16 v32, v0

    add-float v8, v31, v32

    .line 223
    :cond_15
    const/16 v31, 0x5

    aget v31, v17, v31

    add-float v31, v31, v9

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_16

    const/16 v31, 0x5

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v9, v31, v32

    .line 225
    :cond_16
    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-lez v31, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-gtz v31, :cond_2c

    :cond_17
    const/16 v31, 0x0

    cmpg-float v31, v8, v31

    if-gez v31, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpg-float v31, v31, v32

    if-ltz v31, :cond_2c

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    move/from16 v31, v0

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_19

    const/16 v31, 0x0

    cmpl-float v31, v8, v31

    if-nez v31, :cond_2c

    .line 226
    :cond_19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    move/from16 v32, v0

    sub-float v6, v31, v32

    .line 227
    .local v6, "ddx":F
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/vkontakte/android/ZoomableImageView;->translateView(F)V

    .line 229
    move/from16 v0, v25

    if-le v0, v4, :cond_1a

    const/4 v9, 0x0

    .line 231
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v0, v1, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 243
    .end local v6    # "ddx":F
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 249
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
    :cond_1b
    invoke-direct/range {p0 .. p1}, Lcom/vkontakte/android/ZoomableImageView;->getPtrCount(Landroid/view/MotionEvent;)I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2b

    .line 250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1c

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ZoomableImageView;->isClick:Z

    .line 251
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    .line 252
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

    .line 253
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

    .line 254
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

    .line 255
    add-float v31, v27, v28

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->pcx:F

    .line 256
    add-float v31, v29, v30

    const/high16 v32, 0x40000000    # 2.0f

    div-float v31, v31, v32

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->pcy:F

    .line 258
    .end local v27    # "x1":F
    .end local v28    # "x2":F
    .end local v29    # "y1":F
    .end local v30    # "y2":F
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_22

    .line 259
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 260
    .local v12, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 261
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

    .line 262
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

    .line 263
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

    .line 264
    .local v7, "dist":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->sdist:F

    move/from16 v31, v0

    div-float v19, v7, v31

    .line 265
    .local v19, "scale":F
    const/16 v31, 0x9

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 266
    .restart local v17    # "mv":[F
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 273
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

    .line 274
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

    .line 275
    const/high16 v31, 0x3f800000    # 1.0f

    cmpg-float v31, v19, v31

    if-gez v31, :cond_21

    .line 276
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

    .line 277
    .local v22, "sratio":F
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 278
    const/16 v31, 0x2

    aget v31, v17, v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_1e

    cmpl-float v31, v11, v22

    if-lez v31, :cond_1e

    const/16 v31, 0x2

    aget v31, v17, v31

    move/from16 v0, v31

    neg-float v0, v0

    move/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 279
    :cond_1e
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

    if-gez v31, :cond_1f

    cmpl-float v31, v11, v22

    if-lez v31, :cond_1f

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

    .line 280
    :cond_1f
    const/16 v31, 0x5

    aget v31, v17, v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_20

    cmpg-float v31, v11, v22

    if-gtz v31, :cond_20

    const/16 v31, 0x0

    const/16 v32, 0x5

    aget v32, v17, v32

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 281
    :cond_20
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

    if-gez v31, :cond_21

    cmpg-float v31, v11, v22

    if-gtz v31, :cond_21

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

    .line 283
    .end local v11    # "iratio":F
    .end local v22    # "sratio":F
    :cond_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 285
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
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    const/16 v32, 0x6

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2b

    .line 286
    const/16 v31, 0x9

    move/from16 v0, v31

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 287
    .restart local v17    # "mv":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 339
    const/16 v31, 0x0

    aget v31, v17, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    move/from16 v32, v0

    cmpg-float v31, v31, v32

    if-gez v31, :cond_23

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

    .line 340
    :cond_23
    const/16 v31, 0x0

    aget v31, v17, v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    move/from16 v32, v0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_24

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

    .line 342
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 344
    const/16 v31, 0x0

    aget v19, v17, v31

    .line 345
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

    .line 347
    .local v20, "scaledHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v21, v31

    if-gtz v31, :cond_25

    .line 348
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

    .line 349
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

    .line 351
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpg-float v31, v20, v31

    if-gtz v31, :cond_26

    .line 352
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

    .line 353
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

    .line 356
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v21, v31

    if-lez v31, :cond_28

    .line 357
    const/16 v31, 0x2

    aget v31, v17, v31

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v21

    cmpg-float v31, v31, v32

    if-gez v31, :cond_27

    .line 358
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

    .line 359
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

    .line 361
    :cond_27
    const/16 v31, 0x2

    aget v31, v17, v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_28

    .line 362
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

    .line 365
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    cmpl-float v31, v20, v31

    if-lez v31, :cond_2a

    .line 366
    const/16 v31, 0x5

    aget v31, v17, v31

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v20

    cmpg-float v31, v31, v32

    if-gez v31, :cond_29

    .line 367
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

    .line 368
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

    .line 370
    :cond_29
    const/16 v31, 0x5

    aget v31, v17, v31

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-lez v31, :cond_2a

    .line 371
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

    .line 375
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrixAnimated(Landroid/graphics/Matrix;)V

    .line 376
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v31

    shr-int/lit8 v10, v31, 0x8

    .line 377
    .local v10, "idx":I
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v10, v0, :cond_2f

    const/16 v31, 0x0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrX(Landroid/view/MotionEvent;I)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdx:F

    .line 378
    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v10, v0, :cond_30

    const/16 v31, 0x0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->getPtrY(Landroid/view/MotionEvent;I)F

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->sdy:F

    .line 381
    .end local v10    # "idx":I
    .end local v17    # "mv":[F
    .end local v19    # "scale":F
    .end local v20    # "scaledHeight":F
    .end local v21    # "scaledWidth":F
    :cond_2b
    const/16 v31, 0x1

    goto/16 :goto_0

    .line 235
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
    :cond_2c
    move/from16 v0, v26

    if-le v0, v5, :cond_2d

    const/4 v8, 0x0

    .line 236
    :cond_2d
    move/from16 v0, v25

    if-le v0, v4, :cond_2e

    const/4 v9, 0x0

    .line 238
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 241
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    goto/16 :goto_3

    .line 377
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
    :cond_2f
    const/16 v31, 0x1

    goto :goto_4

    .line 378
    :cond_30
    const/16 v31, 0x1

    goto :goto_5
.end method

.method public setCanGoBack(Z)V
    .locals 0
    .param p1, "can"    # Z

    .prologue
    .line 481
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->canGoBack:Z

    .line 482
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vkontakte/android/PhotoTag;

    iput-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 75
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->currentTagID:I

    .line 77
    if-nez p1, :cond_0

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 100
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->clearAnimation()V

    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 85
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    .line 86
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->w:I

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ZoomableImageView;->h:I

    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getHeight()I

    move-result v1

    if-nez v1, :cond_2

    .line 91
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 92
    .local v0, "vr":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vkontakte/android/ZoomableImageView;->viewResize(II)V

    .line 98
    .end local v0    # "vr":Landroid/graphics/Rect;
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 99
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    goto :goto_0

    .line 95
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
    .line 477
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->isList:Z

    .line 478
    return-void
.end method

.method public setNavListener(Lcom/vkontakte/android/ZoomableImageView$OnNavListener;)V
    .locals 0
    .param p1, "nl"    # Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->navListener:Lcom/vkontakte/android/ZoomableImageView$OnNavListener;

    .line 697
    return-void
.end method

.method public setNextImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 775
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->nextImage:Landroid/graphics/Bitmap;

    .line 776
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->clickListener:Landroid/view/View$OnClickListener;

    .line 474
    return-void
.end method

.method public setPrevImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->prevImage:Landroid/graphics/Bitmap;

    .line 780
    return-void
.end method

.method public setTX(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 662
    iget v0, p0, Lcom/vkontakte/android/ZoomableImageView;->svtx:F

    iget v1, p0, Lcom/vkontakte/android/ZoomableImageView;->dvtx:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 663
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 664
    return-void
.end method

.method public setTags([Lcom/vkontakte/android/PhotoTag;)V
    .locals 1
    .param p1, "t"    # [Lcom/vkontakte/android/PhotoTag;

    .prologue
    .line 667
    if-eqz p1, :cond_0

    .line 668
    iput-object p1, p0, Lcom/vkontakte/android/ZoomableImageView;->tags:[Lcom/vkontakte/android/PhotoTag;

    .line 671
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 672
    return-void

    .line 670
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
    .line 783
    iput-boolean p1, p0, Lcom/vkontakte/android/ZoomableImageView;->tagsVisible:Z

    .line 784
    invoke-virtual {p0}, Lcom/vkontakte/android/ZoomableImageView;->invalidate()V

    .line 785
    return-void
.end method

.method public zoomIn()V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 425
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    iget v4, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 426
    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->maxScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 427
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

    .line 436
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrixAnimated(Landroid/graphics/Matrix;)V

    .line 437
    iput v6, p0, Lcom/vkontakte/android/ZoomableImageView;->vtx:F

    .line 438
    return-void

    .line 429
    :cond_0
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

    .line 430
    .local v1, "sratio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 431
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

    .line 433
    :cond_1
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
    .line 441
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 442
    .local v0, "mv":[F
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 443
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    iget v3, p0, Lcom/vkontakte/android/ZoomableImageView;->minScale:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 444
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

    .line 445
    iget-object v1, p0, Lcom/vkontakte/android/ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/ZoomableImageView;->setImageMatrixAnimated(Landroid/graphics/Matrix;)V

    .line 446
    return-void
.end method
