.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SmoothProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;,
        Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;
    }
.end annotation


# static fields
.field private static final FRAME_DURATION:J = 0x10L

.field private static final OFFSET_PER_FRAME:F = 0.01f


# instance fields
.field private final fBackgroundRect:Landroid/graphics/Rect;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mCallbacks:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private mColors:[I

.field private mColorsIndex:I

.field private mCurrentOffset:F

.field private mCurrentSections:I

.field private mFinishing:Z

.field private mFinishingOffset:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLinearGradientColors:[I

.field private mLinearGradientPositions:[F

.field private mMaxOffset:F

.field private mMirrorMode:Z

.field private mNewTurn:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressiveStartActivated:Z

.field private mProgressiveStartSpeed:F

.field private mProgressiveStopSpeed:F

.field private mReversed:Z

.field private mRunning:Z

.field private mSectionsCount:I

.field private mSeparatorLength:I

.field private mSpeed:F

.field private mStartSection:I

.field private mStrokeWidth:F

.field private final mUpdater:Ljava/lang/Runnable;

.field private mUseGradients:Z


# direct methods
.method private constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;Z)V
    .locals 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "sectionsCount"    # I
    .param p3, "separatorLength"    # I
    .param p4, "colors"    # [I
    .param p5, "strokeWidth"    # F
    .param p6, "speed"    # F
    .param p7, "progressiveStartSpeed"    # F
    .param p8, "progressiveStopSpeed"    # F
    .param p9, "reversed"    # Z
    .param p10, "mirrorMode"    # Z
    .param p11, "callbacks"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;
    .param p12, "progressiveStartActivated"    # Z
    .param p13, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p14, "useGradients"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 34
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    .line 556
    new-instance v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;

    invoke-direct {v1, p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;-><init>(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 79
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    iput p2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 82
    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 83
    iput p3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    .line 84
    iput p6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    .line 85
    iput p7, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    .line 86
    iput p8, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    .line 87
    iput-boolean p9, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    .line 88
    iput-object p4, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 90
    iput-boolean p10, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 92
    move-object/from16 v0, p13

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    iput p5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    .line 95
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    .line 97
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 101
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iput-boolean p12, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    .line 104
    iput-object p11, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 106
    move/from16 v0, p14

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    .line 107
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/animation/Interpolator;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [I
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # F
    .param p8, "x7"    # F
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;
    .param p12, "x11"    # Z
    .param p13, "x12"    # Landroid/graphics/drawable/Drawable;
    .param p14, "x13"    # Z
    .param p15, "x14"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;

    .prologue
    .line 23
    invoke-direct/range {p0 .. p14}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method static synthetic access$000(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    return v0
.end method

.method static synthetic access$016(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    return v0
.end method

.method static synthetic access$100(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    return v0
.end method

.method static synthetic access$200(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$216(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$224(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;F)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    sub-float/2addr v0, p1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    return v0
.end method

.method static synthetic access$300(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    return v0
.end method

.method static synthetic access$400(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    return v0
.end method

.method static synthetic access$500(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)F
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .prologue
    .line 23
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    return v0
.end method

.method static synthetic access$602(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    return p1
.end method

.method static synthetic access$700(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    .prologue
    .line 23
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private checkColorIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 592
    if-ltz p1, :cond_0

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 593
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index %d not valid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :cond_1
    return-void
.end method

.method private decrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I

    .prologue
    .line 455
    add-int/lit8 p1, p1, -0x1

    .line 456
    if-gez p1, :cond_0

    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 457
    :cond_0
    return p1
.end method

.method private drawBackground(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "fromX"    # F
    .param p3, "toX"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 442
    .local v0, "count":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 444
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 446
    return-void
.end method

.method private drawBackgroundIfNeeded(Landroid/graphics/Canvas;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstX"    # F
    .param p3, "lastX"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 370
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 373
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 375
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 376
    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_1
    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 377
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 380
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 381
    iget-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v1, :cond_3

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 384
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v4, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 385
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 386
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v4, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    goto :goto_1

    .line 389
    :cond_3
    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->fBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v4, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 394
    :cond_4
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isStarting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    :cond_5
    cmpl-float v1, p2, p3

    if-lez v1, :cond_6

    .line 397
    move v0, p2

    .line 398
    .local v0, "temp":F
    move p2, p3

    .line 399
    move p3, v0

    .line 402
    .end local v0    # "temp":F
    :cond_6
    cmpl-float v1, p2, v4

    if-lez v1, :cond_7

    .line 403
    iget-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v1, :cond_9

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 406
    iget-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v1, :cond_8

    .line 407
    invoke-direct {p0, p1, v4, p2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 408
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 409
    invoke-direct {p0, p1, v4, p2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 415
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 420
    :cond_7
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    .line 421
    iget-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v1, :cond_b

    .line 422
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 423
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    iget-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v1, :cond_a

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, p3, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 426
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 427
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {p0, p1, p3, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 433
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 411
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0, p1, v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 412
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 413
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0, p1, v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto :goto_2

    .line 417
    :cond_9
    invoke-direct {p0, p1, v4, p2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto :goto_3

    .line 429
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p3

    invoke-direct {p0, p1, v4, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    .line 430
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v1, p3

    invoke-direct {p0, p1, v4, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto :goto_4

    .line 435
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, p3, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackground(Landroid/graphics/Canvas;FF)V

    goto/16 :goto_0
.end method

.method private drawGradient(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 257
    const/high16 v5, 0x3f800000    # 1.0f

    iget v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v6, v6

    div-float v12, v5, v6

    .line 258
    .local v12, "xSectionWidth":F
    iget v8, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 260
    .local v8, "currentIndexColor":I
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 261
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    iget-object v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v5, v6

    .line 262
    add-int/lit8 v9, v8, -0x1

    .line 263
    .local v9, "firstColorIndex":I
    if-gez v9, :cond_0

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v5, v5

    add-int/2addr v9, v5

    .line 265
    :cond_0
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    const/4 v6, 0x0

    iget-object v7, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v7, v7, v9

    aput v7, v5, v6

    .line 267
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v10, v5, :cond_1

    .line 269
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    int-to-float v6, v10

    mul-float/2addr v6, v12

    iget v7, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    add-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    .line 270
    .local v11, "position":F
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    add-int/lit8 v6, v10, 0x1

    aput v11, v5, v6

    .line 271
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    add-int/lit8 v6, v10, 0x1

    iget-object v7, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v7, v7, v8

    aput v7, v5, v6

    .line 273
    add-int/lit8 v5, v8, 0x1

    iget-object v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v6, v6

    rem-int v8, v5, v6

    .line 267
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 275
    .end local v11    # "position":F
    :cond_1
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    iget-object v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v7, v7, v8

    aput v7, v5, v6

    .line 277
    iget-boolean v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    :goto_1
    int-to-float v1, v5

    .line 278
    .local v1, "left":F
    :goto_2
    iget-boolean v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    :goto_3
    int-to-float v3, v5

    .line 280
    .local v3, "right":F
    :goto_4
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v2, v5, v6

    .line 281
    .local v2, "top":F
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v4, v5, v6

    .line 282
    .local v4, "bottom":F
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    iget-object v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    iget-boolean v7, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v7, :cond_6

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :goto_5
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 286
    .local v0, "linearGradient":Landroid/graphics/LinearGradient;
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 287
    return-void

    .line 277
    .end local v0    # "linearGradient":Landroid/graphics/LinearGradient;
    .end local v1    # "left":F
    .end local v2    # "top":F
    .end local v3    # "right":F
    .end local v4    # "bottom":F
    :cond_2
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v1, v5

    goto :goto_2

    .line 278
    .restart local v1    # "left":F
    :cond_4
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v3, v5

    goto :goto_4

    .line 282
    .restart local v2    # "top":F
    .restart local v3    # "right":F
    .restart local v4    # "bottom":F
    :cond_6
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_5
.end method

.method private drawLine(Landroid/graphics/Canvas;IFFFFI)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "canvasWidth"    # I
    .param p3, "startX"    # F
    .param p4, "startY"    # F
    .param p5, "stopX"    # F
    .param p6, "stopY"    # F
    .param p7, "currentIndexColor"    # I

    .prologue
    .line 354
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    aget v1, v1, p7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-nez v0, :cond_0

    .line 357
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 367
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v0, :cond_1

    .line 360
    int-to-float v0, p2

    add-float v1, v0, p3

    int-to-float v0, p2

    add-float v3, v0, p5

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    int-to-float v0, p2

    sub-float v1, v0, p3

    int-to-float v0, p2

    sub-float v3, v0, p5

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 364
    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v1, v0, p3

    mul-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    sub-float v3, v0, p5

    iget-object v5, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p4

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawStrokes(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 290
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-eqz v2, :cond_0

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 295
    :cond_0
    const/16 v17, 0x0

    .line 296
    .local v17, "prevValue":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 297
    .local v4, "boundsWidth":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-eqz v2, :cond_1

    div-int/lit8 v4, v4, 0x2

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    add-int v21, v2, v3

    .line 299
    .local v21, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    .line 300
    .local v10, "centerY":I
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v3, v3

    div-float v24, v2, v3

    .line 304
    .local v24, "xSectionWidth":F
    const/4 v13, 0x0

    .line 305
    .local v13, "firstX":F
    const/4 v15, 0x0

    .line 313
    .local v15, "lastX":F
    move-object/from16 v0, p0

    iget v9, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 315
    .local v9, "currentIndexColor":I
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ne v2, v3, :cond_2

    .line 316
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v13, v2

    .line 319
    :cond_2
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-gt v14, v2, :cond_7

    .line 320
    int-to-float v2, v14

    mul-float v2, v2, v24

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    add-float v23, v2, v3

    .line 321
    .local v23, "xOffset":F
    const/4 v2, 0x0

    sub-float v3, v23, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 322
    .local v16, "prev":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, v23

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 324
    .local v18, "ratioSectionWidth":F
    move/from16 v0, v21

    int-to-float v2, v0

    mul-float v2, v2, v18

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 v19, v0

    .line 326
    .local v19, "sectionWidth":F
    add-float v2, v19, v16

    move/from16 v0, v21

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v2, v2

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 331
    .local v20, "spaceLength":F
    :goto_1
    cmpl-float v2, v19, v20

    if-lez v2, :cond_6

    sub-float v11, v19, v20

    .line 332
    .local v11, "drawLength":F
    :goto_2
    add-float v12, v17, v11

    .line 333
    .local v12, "end":F
    cmpl-float v2, v12, v17

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    if-lt v14, v2, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v22

    .line 335
    .local v22, "xFinishingOffset":F
    move/from16 v0, v21

    int-to-float v2, v0

    mul-float v2, v2, v22

    int-to-float v3, v4

    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 336
    .local v5, "startX":F
    int-to-float v2, v4

    invoke-static {v2, v12}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 337
    .local v7, "endX":F
    int-to-float v6, v10

    int-to-float v8, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawLine(Landroid/graphics/Canvas;IFFFFI)V

    .line 338
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    if-ne v14, v2, :cond_3

    .line 339
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    int-to-float v2, v2

    sub-float v13, v5, v2

    .line 342
    .end local v5    # "startX":F
    .end local v7    # "endX":F
    .end local v22    # "xFinishingOffset":F
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    if-ne v14, v2, :cond_4

    .line 343
    add-float v15, v17, v19

    .line 346
    :cond_4
    add-float v17, v12, v20

    .line 347
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->incrementColor(I)I

    move-result v9

    .line 319
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 329
    .end local v11    # "drawLength":F
    .end local v12    # "end":F
    .end local v20    # "spaceLength":F
    :cond_5
    const/16 v20, 0x0

    .restart local v20    # "spaceLength":F
    goto :goto_1

    .line 331
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 350
    .end local v16    # "prev":F
    .end local v18    # "ratioSectionWidth":F
    .end local v19    # "sectionWidth":F
    .end local v20    # "spaceLength":F
    .end local v23    # "xOffset":F
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v15}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawBackgroundIfNeeded(Landroid/graphics/Canvas;FF)V

    .line 351
    return-void
.end method

.method private incrementColor(I)I
    .locals 1
    .param p1, "colorIndex"    # I

    .prologue
    .line 449
    add-int/lit8 p1, p1, 0x1

    .line 450
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    .line 451
    :cond_0
    return p1
.end method

.method private resetProgressiveStart(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 479
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->checkColorIndex(I)V

    .line 481
    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    .line 482
    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 483
    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishingOffset:F

    .line 484
    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 485
    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 486
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 487
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 229
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    .line 230
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 233
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    if-eqz v0, :cond_1

    .line 234
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    invoke-direct {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->decrementColor(I)I

    move-result v0

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mNewTurn:Z

    .line 237
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 240
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-le v0, v1, :cond_0

    .line 241
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->stop()V

    .line 254
    :goto_0
    return-void

    .line 245
    :cond_0
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v0, v1, :cond_1

    .line 246
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    .line 250
    :cond_1
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-eqz v0, :cond_2

    .line 251
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawGradient(Landroid/graphics/Canvas;)V

    .line 253
    :cond_2
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->drawStrokes(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getColors()[I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 509
    const/4 v0, -0x2

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStrokeWidth:F

    return v0
.end method

.method public isFinishing()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    return v0
.end method

.method public isStarting()Z
    .locals 2

    .prologue
    .line 549
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentSections:I

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public progressiveStart()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->progressiveStart(I)V

    .line 466
    return-void
.end method

.method public progressiveStart(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->resetProgressiveStart(I)V

    .line 475
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->start()V

    .line 476
    return-void
.end method

.method public progressiveStop()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mFinishing:Z

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mStartSection:I

    .line 495
    return-void
.end method

.method protected refreshLinearGradientOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-eqz v0, :cond_0

    .line 215
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    .line 216
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 219
    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientColors:[I

    .line 220
    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mLinearGradientPositions:[F

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 540
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 541
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 500
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setCallbacks(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;)V
    .locals 0
    .param p1, "callbacks"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .prologue
    .line 585
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 586
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->setColors([I)V

    .line 129
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 504
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 505
    return-void
.end method

.method public setColors([I)V
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 119
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Colors cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColorsIndex:I

    .line 122
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mColors:[I

    .line 123
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 124
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 125
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 113
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 115
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 116
    return-void
.end method

.method public setMirrorMode(Z)V
    .locals 1
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 178
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    if-ne v0, p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMirrorMode:Z

    .line 180
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setProgressiveStartActivated(Z)V
    .locals 0
    .param p1, "progressiveStartActivated"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    .line 203
    return-void
.end method

.method public setProgressiveStartSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 138
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpeedProgressiveStart must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartSpeed:F

    .line 140
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 141
    return-void
.end method

.method public setProgressiveStopSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 144
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SpeedProgressiveStop must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStopSpeed:F

    .line 146
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 147
    return-void
.end method

.method public setReversed(Z)V
    .locals 1
    .param p1, "reversed"    # Z

    .prologue
    .line 172
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    if-ne v0, p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mReversed:Z

    .line 174
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setSectionsCount(I)V
    .locals 2
    .param p1, "sectionsCount"    # I

    .prologue
    .line 150
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    .line 152
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSectionsCount:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    .line 153
    iget v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mMaxOffset:F

    rem-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCurrentOffset:F

    .line 154
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 155
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 156
    return-void
.end method

.method public setSeparatorLength(I)V
    .locals 2
    .param p1, "separatorLength"    # I

    .prologue
    .line 159
    if-gez p1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSeparatorLength:I

    .line 162
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 163
    return-void
.end method

.method public setSpeed(F)V
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 132
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mSpeed:F

    .line 134
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 135
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 2
    .param p1, "strokeWidth"    # F

    .prologue
    .line 166
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The strokeWidth must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    .line 169
    return-void
.end method

.method public setUseGradients(Z)V
    .locals 1
    .param p1, "useGradients"    # Z

    .prologue
    .line 206
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    if-ne v0, p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUseGradients:Z

    .line 209
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->refreshLinearGradientOptions()V

    .line 210
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 516
    iget-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mProgressiveStartActivated:Z

    if-eqz v0, :cond_0

    .line 517
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->resetProgressiveStart(I)V

    .line 519
    :cond_0
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    invoke-interface {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;->onStart()V

    .line 523
    :cond_2
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 524
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mCallbacks:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    invoke-interface {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;->onStop()V

    .line 533
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mRunning:Z

    .line 534
    iget-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
