.class public Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "SmoothProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

.field private mColors:[I

.field private mGenerateBackgroundUsingColors:Z

.field private mGradients:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMirrorMode:Z

.field private mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

.field private mProgressiveStartActivated:Z

.field private mProgressiveStartSpeed:F

.field private mProgressiveStopSpeed:F

.field private mReversed:Z

.field private mSectionsCount:I

.field private mSpeed:F

.field private mStrokeSeparatorLength:I

.field private mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    invoke-direct {p0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->initValues(Landroid/content/Context;)V

    .line 623
    return-void
.end method

.method private initValues(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 649
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 650
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 651
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x7f0a000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v3

    iput-object v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 652
    const v1, 0x7f0d02ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 653
    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 654
    iget v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 655
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 656
    const v1, 0x7f0b001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 657
    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 658
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 659
    iput-boolean v3, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 660
    return-void
.end method


# virtual methods
.method public backgroundDrawable(Landroid/graphics/drawable/Drawable;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "backgroundDrawableWhenHidden"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 741
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 742
    return-object p0
.end method

.method public build()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    .locals 17

    .prologue
    .line 626
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    if-eqz v2, :cond_0

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    invoke-static {v2, v3}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBarUtils;->generateDrawableWithColors([IF)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    .line 629
    :cond_0
    new-instance v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, p0

    iget v3, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    move-object/from16 v0, p0

    iget v6, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v7, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    move-object/from16 v0, p0

    iget v8, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    move-object/from16 v0, p0

    iget v9, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mBackgroundDrawableWhenHidden:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v16}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;-><init>(Landroid/view/animation/Interpolator;II[IFFFFZZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;ZLandroid/graphics/drawable/Drawable;ZLfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$1;)V

    .line 644
    .local v1, "ret":Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable;
    return-object v1
.end method

.method public callbacks(Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "onProgressiveStopEndedListener"    # Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .prologue
    .line 736
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mOnProgressiveStopEndedListener:Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Callbacks;

    .line 737
    return-object p0
.end method

.method public color(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 683
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 684
    return-object p0
.end method

.method public colors([I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "colors"    # [I

    .prologue
    .line 688
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Your color array must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_1
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mColors:[I

    .line 691
    return-object p0
.end method

.method public generateBackgroundUsingColors()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGenerateBackgroundUsingColors:Z

    .line 747
    return-object p0
.end method

.method public gradients()Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->gradients(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public gradients(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "useGradients"    # Z

    .prologue
    .line 755
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mGradients:Z

    .line 756
    return-object p0
.end method

.method public interpolator(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Interpolator can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iput-object p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 666
    return-object p0
.end method

.method public mirrorMode(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "mirrorMode"    # Z

    .prologue
    .line 726
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mMirrorMode:Z

    .line 727
    return-object p0
.end method

.method public progressiveStart(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "progressiveStartActivated"    # Z

    .prologue
    .line 731
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartActivated:Z

    .line 732
    return-object p0
.end method

.method public progressiveStartSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "progressiveStartSpeed"    # F

    .prologue
    .line 707
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 708
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progressiveStartSpeed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStartSpeed:F

    .line 710
    return-object p0
.end method

.method public progressiveStopSpeed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "progressiveStopSpeed"    # F

    .prologue
    .line 714
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 715
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "progressiveStopSpeed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mProgressiveStopSpeed:F

    .line 717
    return-object p0
.end method

.method public reversed(Z)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 0
    .param p1, "reversed"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mReversed:Z

    .line 722
    return-object p0
.end method

.method public sectionsCount(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "sectionsCount"    # I

    .prologue
    .line 670
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SectionsCount must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSectionsCount:I

    .line 672
    return-object p0
.end method

.method public separatorLength(I)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "separatorLength"    # I

    .prologue
    .line 676
    if-gez p1, :cond_0

    .line 677
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SeparatorLength must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 678
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeSeparatorLength:I

    .line 679
    return-object p0
.end method

.method public speed(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 701
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mSpeed:F

    .line 703
    return-object p0
.end method

.method public strokeWidth(F)Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 695
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The width must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    iput p1, p0, Lfr/castorflex/android/smoothprogressbar/SmoothProgressDrawable$Builder;->mStrokeWidth:F

    .line 697
    return-object p0
.end method
