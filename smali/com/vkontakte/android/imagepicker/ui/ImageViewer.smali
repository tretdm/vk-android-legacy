.class public Lcom/vkontakte/android/imagepicker/ui/ImageViewer;
.super Landroid/view/View;
.source "ImageViewer.java"


# static fields
.field private static final DEFAULT_MAXIMUM_SCALE:I = 0x2

.field public static final DrawRectBackground:Z = false

.field public static final LoaderLogEnabled:Z = false

.field public static final MovingAnimationDuration:I = 0xfa

.field public static final PageSpacing:I

.field public static final SwitcherLogEnabled:Z

.field public static final TouchLogEnabled:Z

.field private static bg_paint:Landroid/graphics/Paint;

.field private static bg_paint_inited:Z

.field private static bitmap_paint:Landroid/graphics/Paint;

.field private static bitmap_paint_inited:Z

.field private static density:F

.field private static density_inited:Z

.field private static window_bg:Landroid/graphics/drawable/ColorDrawable;

.field private static window_bg_inited:Z


# instance fields
.field private adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

.field private animationDuration:J

.field private animationScale:F

.field private animationStartTime:J

.field private animationTranslateX:F

.field private animationTranslateY:F

.field private bg_alpha:F

.field private closeEnabled:Z

.field private currentIndex:I

.field private currentScale:F

.field private disallowZoom:Z

.field public dismissed:Z

.field public dismissing:Z

.field private doubleTapped:Z

.field private dragStartPointerId:I

.field private dragStartTranslateX:F

.field private dragStartTranslateY:F

.field private dragStartX:F

.field private dragStartY:F

.field private dragging:Z

.field private fitBySmallestSide:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private inAnimationDone:Z

.field private initialized:Z

.field private interpolator:Landroid/view/animation/Interpolator;

.field private lastBgAlpha:F

.field private limitX:I

.field private limitY:I

.field private maximumScale:F

.field private maximumX:I

.field private maximumY:I

.field private minimumScale:F

.field private minimumX:I

.field private minimumY:I

.field private needDropTouches:Z

.field private nextIndex:I

.field private nextScale:F

.field private onBackgroundUpdateListener:Lcom/vkontakte/android/imagepicker/utils/OnBackgroundUpdateListener;

.field private onDismissListener:Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;

.field private onDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private onImageClickListener:Landroid/view/View$OnClickListener;

.field private onNavigationListener:Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;

.field private onZoomListener:Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;

.field private outAnimationDone:Z

.field public overlayView:Landroid/widget/FrameLayout;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchEndTime:J

.field private pinchStartDist:F

.field private pinchStartScale:F

.field private postedPhotoSwitch:Ljava/lang/Runnable;

.field private preventInvalidate:Z

.field private previousCallbackIndex:I

.field private previousIndex:I

.field private pseudoScale:F

.field private pseudoTranslateX:F

.field private pseudoTranslateY:F

.field private pseudoViewportSize:I

.field private scaleStartTx:F

.field private scaleStartTy:F

.field screenData:[I

.field screenData2:[I

.field screenData3:[I

.field private scroller:Landroid/widget/Scroller;

.field private secondIndex:I

.field private secondIsNext:Z

.field private switchDisabled:Z

.field private thumbnailRect:Landroid/graphics/Rect;

.field private thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

.field private touchDisabled:Z

.field private touchSlop:F

.field private translateX:F

.field private translateY:F

.field private viewerHeight:I

.field private viewerWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    .line 61
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_paint_inited:Z

    .line 64
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bitmap_paint_inited:Z

    .line 67
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->window_bg_inited:Z

    .line 70
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->density_inited:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 130
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->closeEnabled:Z

    .line 299
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->lastBgAlpha:F

    .line 1726
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->screenData:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->screenData2:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->screenData3:[I

    .line 132
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->init()V

    .line 133
    return-void
.end method

.method private abortScrollerAnimation()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 350
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doOnFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Z
    .locals 1

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doOnClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchPhoto(Z)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->outAnimationDone:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    return-wide v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationDuration:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 710
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doOnDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateX:F

    return v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateY:F

    return v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoScale:F

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    return v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;I)V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onPositionChanged(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    return-object v0
.end method

.method static synthetic access$30()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->window_bg:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->outAnimationDone:Z

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_alpha:F

    return v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->inAnimationDone:Z

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onBackgroundUpdate(F)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
    .locals 1

    .prologue
    .line 813
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getLoadCallback(ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateScale(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;F)V
    .locals 0

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->inAnimationDone:Z

    return v0
.end method

.method private animateTo(FFF)V
    .locals 2
    .param p1, "newScale"    # F
    .param p2, "newTranslateX"    # F
    .param p3, "newTranslateY"    # F

    .prologue
    .line 1463
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationScale:F

    .line 1464
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateX:F

    .line 1465
    iput p3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateY:F

    .line 1466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    .line 1467
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationDuration:J

    .line 1469
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postInvalidate()V

    .line 1470
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, p1, v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onZoomChanged(FFF)V

    .line 1471
    return-void
.end method

.method private animationNotEnded()Z
    .locals 4

    .prologue
    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelPostSwitch()Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    .line 897
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clamp(FFF)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 869
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private currentIsLoaded()Z
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAnimate(F)V
    .locals 3
    .param p1, "ratio"    # F

    .prologue
    .line 339
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateX:F

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 340
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateY:F

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 341
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationScale:F

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    .line 343
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 344
    return-void
.end method

.method private doOnClick()Z
    .locals 2

    .prologue
    .line 702
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onImageClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 704
    .local v0, "doClick":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 705
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onImageClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 707
    :cond_0
    return v0

    .line 702
    .end local v0    # "doClick":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doOnDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 712
    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v11

    if-lez v7, :cond_1

    .line 744
    :cond_0
    :goto_0
    return v5

    .line 715
    :cond_1
    iget-wide v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    iget-wide v9, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationDuration:J

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    .line 718
    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    add-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 721
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 724
    :cond_2
    iput-boolean v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doubleTapped:Z

    .line 726
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_3

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 729
    .local v0, "cx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 731
    .local v1, "cy":F
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    div-float v2, v5, v7

    .line 733
    .local v2, "ratio":F
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    sub-float v3, v5, v7

    .line 734
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v1, v7

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    sub-float v4, v5, v7

    .line 736
    .local v4, "y":F
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    .line 737
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v8, v8

    invoke-direct {p0, v3, v7, v8}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v7

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    int-to-float v9, v9

    invoke-direct {p0, v4, v8, v9}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v8

    invoke-direct {p0, v5, v7, v8}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    .end local v0    # "cx":F
    .end local v1    # "cy":F
    .end local v2    # "ratio":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :goto_1
    move v5, v6

    .line 744
    goto/16 :goto_0

    .line 741
    :cond_3
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v5, v11, v11}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    goto :goto_1
.end method

.method private doOnFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 665
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchDisabled:Z

    if-eqz v0, :cond_0

    move v0, v9

    .line 697
    :goto_0
    return v0

    .line 668
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    if-eqz v0, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 670
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDismiss()Z

    move-result v0

    goto :goto_0

    .line 673
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    .line 675
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x44228000    # 650.0f

    sget v2, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->density:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    .line 677
    cmpl-float v0, p3, v3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIsNext:Z

    if-nez v0, :cond_4

    .line 679
    invoke-direct {p0, v9}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->goToPrev(Z)Z

    :cond_3
    :goto_1
    move v0, v9

    .line 686
    goto :goto_0

    .line 681
    :cond_4
    cmpg-float v0, p3, v3

    if-gez v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIsNext:Z

    if-eqz v0, :cond_3

    .line 683
    invoke-direct {p0, v9}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->goToNext(Z)Z

    goto :goto_1

    .line 690
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchEndTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 692
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 694
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postInvalidate()V

    :cond_6
    move v0, v9

    .line 697
    goto/16 :goto_0
.end method

.method private doZoom(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 432
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 434
    .local v0, "pinchDist":F
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchStartDist:F

    div-float v2, v0, v2

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchStartScale:F

    mul-float v1, v2, v3

    .line 436
    .local v1, "s":F
    iput v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    .line 437
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchCenterX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchCenterX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scaleStartTx:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchStartScale:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 438
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchCenterY:F

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchCenterY:F

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scaleStartTy:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchStartScale:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 440
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    invoke-interface {v2, v3, v4, v5}, Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;->onZoomChanged(FFF)V

    .line 443
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 444
    return-void
.end method

.method private getAnimationRatio()F
    .locals 4

    .prologue
    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getCanZoom(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLoadCallback(ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/imagepicker/utils/ActionCallback;
    .locals 1
    .param p1, "index"    # I
    .param p2, "lock"    # Ljava/util/concurrent/Semaphore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Semaphore;",
            ")",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$4;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;ILjava/util/concurrent/Semaphore;)V

    return-object v0
.end method

.method private goToNext(Z)Z
    .locals 4
    .param p1, "byVelocity"    # Z

    .prologue
    const/4 v3, 0x1

    .line 874
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    .line 875
    invoke-direct {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postSwitch(Z)V

    .line 877
    return v3
.end method

.method private goToPrev(Z)Z
    .locals 3
    .param p1, "byVelocity"    # Z

    .prologue
    .line 882
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postSwitch(Z)V

    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method private final init()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 137
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_paint_inited:Z

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_paint:Landroid/graphics/Paint;

    .line 140
    sget-object v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    sput-boolean v3, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_paint_inited:Z

    .line 145
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bitmap_paint_inited:Z

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bitmap_paint:Landroid/graphics/Paint;

    .line 148
    sget-object v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bitmap_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 150
    sput-boolean v3, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bitmap_paint_inited:Z

    .line 153
    :cond_1
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->window_bg_inited:Z

    if-nez v0, :cond_2

    .line 155
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->window_bg:Landroid/graphics/drawable/ColorDrawable;

    .line 157
    sput-boolean v3, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->window_bg_inited:Z

    .line 160
    :cond_2
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->density_inited:Z

    if-nez v0, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->density:F

    .line 164
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->density_inited:Z

    .line 167
    :cond_3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->interpolator:Landroid/view/animation/Interpolator;

    .line 168
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    .line 170
    iput-boolean v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->inAnimationDone:Z

    .line 171
    iput-boolean v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->outAnimationDone:Z

    .line 173
    iput-boolean v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIsNext:Z

    .line 175
    iput v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextScale:F

    .line 176
    iput v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    .line 177
    iput v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    .line 178
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    .line 180
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    .line 182
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    .line 184
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$1;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 198
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$2;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 209
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->gestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 212
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setFocusable(Z)V

    .line 213
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setFocusableInTouchMode(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->requestFocus()Z

    .line 215
    return-void
.end method

.method private initDragData(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartY:F

    .line 853
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartTranslateX:F

    .line 854
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartTranslateY:F

    .line 855
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartPointerId:I

    .line 856
    return-void
.end method

.method private needDropPinch()Z
    .locals 6

    .prologue
    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchEndTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationDuration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onBackgroundUpdate(F)V
    .locals 1
    .param p1, "bg_alpha"    # F

    .prologue
    .line 303
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->lastBgAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->lastBgAlpha:F

    .line 308
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onBackgroundUpdateListener:Lcom/vkontakte/android/imagepicker/utils/OnBackgroundUpdateListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onBackgroundUpdateListener:Lcom/vkontakte/android/imagepicker/utils/OnBackgroundUpdateListener;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/imagepicker/utils/OnBackgroundUpdateListener;->onUpdated(F)V

    goto :goto_0
.end method

.method private onDismiss()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 316
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;->onDismiss()V

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    .line 322
    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissed:Z

    .line 324
    return v1
.end method

.method private onPositionChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 659
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onNavigationListener:Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;

    if-eqz v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onNavigationListener:Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;->changePosition(ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 661
    :cond_0
    return-void

    .line 660
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPrepareDismiss()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;

    invoke-interface {v0}, Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;->onPrepareDismiss()V

    .line 284
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 286
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartY:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartY:F

    .line 287
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 296
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    .line 297
    return-void

    .line 291
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartY:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartY:F

    .line 292
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    goto :goto_0
.end method

.method private onZoomChanged(FFF)V
    .locals 1
    .param p1, "newScale"    # F
    .param p2, "newTranslateX"    # F
    .param p3, "newTranslateY"    # F

    .prologue
    .line 749
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;->onZoomChanged(FFF)V

    .line 751
    :cond_0
    return-void
.end method

.method private postSwitch(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    .line 902
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$5;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$5;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Z)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    .line 910
    iget-wide v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationDuration:J

    const-wide/16 v3, 0x32

    add-long/2addr v1, v3

    .line 902
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 911
    return-void
.end method

.method private switchPhoto()V
    .locals 2

    .prologue
    .line 363
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousCallbackIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 380
    :cond_0
    return-void
.end method

.method private switchPhoto(Z)V
    .locals 9
    .param p1, "forward"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 932
    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-eqz p1, :cond_4

    move v4, v5

    :goto_0
    add-int v0, v7, v4

    .line 934
    .local v0, "clearImageIndex":I
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    .line 936
    .local v1, "currentIndex":I
    :goto_1
    if-gez v1, :cond_0

    .line 937
    const/4 v1, 0x0

    .line 939
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 940
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 942
    :cond_1
    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    iput v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousCallbackIndex:I

    .line 943
    iput v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    .line 945
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    .line 946
    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_6

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    :goto_2
    iput v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    .line 948
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    .line 949
    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    if-ltz v4, :cond_2

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    :cond_2
    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    .line 951
    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onPositionChanged(I)V

    .line 953
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 955
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v2

    .line 957
    .local v2, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->clearImageData()V

    .line 960
    .end local v2    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :cond_3
    invoke-direct {p0, v6}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateScale(Z)V

    .line 961
    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    .line 963
    const/4 v4, 0x3

    new-array v3, v4, [I

    aput v1, v3, v8

    if-eqz p1, :cond_7

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    :goto_3
    aput v4, v3, v6

    const/4 v5, 0x2

    if-eqz p1, :cond_8

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    :goto_4
    aput v4, v3, v5

    .line 965
    .local v3, "indexes":[I
    invoke-virtual {p0, v3, v8}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->load([IZ)V

    .line 967
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateThumbnail()V

    .line 969
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 971
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 972
    return-void

    .end local v0    # "clearImageIndex":I
    .end local v1    # "currentIndex":I
    .end local v3    # "indexes":[I
    :cond_4
    move v4, v6

    .line 932
    goto :goto_0

    .line 934
    .restart local v0    # "clearImageIndex":I
    :cond_5
    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    goto :goto_1

    .restart local v1    # "currentIndex":I
    :cond_6
    move v4, v5

    .line 946
    goto :goto_2

    .line 963
    :cond_7
    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    goto :goto_3

    :cond_8
    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    goto :goto_4
.end method

.method private updateDragInfo(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartY:F

    .line 356
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartTranslateX:F

    .line 357
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartTranslateY:F

    .line 358
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartPointerId:I

    .line 359
    return-void
.end method

.method private updateHorizontalTranslate(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 453
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    if-nez v0, :cond_1

    .line 455
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartTranslateX:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 456
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateTextures()V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    goto :goto_0
.end method

.method private updateMinMax(F)V
    .locals 11
    .param p1, "scale"    # F

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 1111
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1161
    :goto_0
    return-void

    .line 1114
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    .line 1116
    .local v0, "entry":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 1117
    .local v1, "ratio1":F
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 1119
    .local v2, "ratio2":F
    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    :goto_1
    int-to-float v5, v6

    .line 1120
    .local v5, "viewportWidth":F
    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    :goto_2
    int-to-float v4, v6

    .line 1122
    .local v4, "viewportHeight":F
    cmpl-float v6, v1, v2

    if-lez v6, :cond_4

    .line 1124
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    div-float/2addr v6, v9

    div-float v7, v5, v9

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    .line 1125
    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    neg-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    .line 1127
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v3, v6, p1

    .line 1129
    .local v3, "scaledHeight":F
    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitY:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    .line 1131
    div-float v6, v3, v9

    div-float v7, v4, v9

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    .line 1132
    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    neg-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    goto :goto_0

    .line 1119
    .end local v3    # "scaledHeight":F
    .end local v4    # "viewportHeight":F
    .end local v5    # "viewportWidth":F
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    goto :goto_1

    .line 1120
    .restart local v5    # "viewportWidth":F
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v6

    goto :goto_2

    .line 1136
    .restart local v3    # "scaledHeight":F
    .restart local v4    # "viewportHeight":F
    :cond_3
    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    goto :goto_0

    .line 1141
    .end local v3    # "scaledHeight":F
    :cond_4
    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-gtz v6, :cond_5

    iget-boolean v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->fitBySmallestSide:Z

    if-eqz v6, :cond_7

    .line 1143
    :cond_5
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    div-float/2addr v6, v9

    div-float v7, v4, v9

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    .line 1144
    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    neg-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    .line 1146
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    cmpl-float v6, v6, v5

    if-lez v6, :cond_6

    .line 1148
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    div-float/2addr v6, v9

    div-float v7, v5, v9

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    .line 1149
    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    neg-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    goto/16 :goto_0

    .line 1153
    :cond_6
    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    goto/16 :goto_0

    .line 1158
    :cond_7
    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    goto/16 :goto_0
.end method

.method private updatePinchInfo(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 384
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchStartDist:F

    .line 385
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchStartScale:F

    .line 386
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchCenterX:F

    .line 387
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchCenterY:F

    .line 388
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scaleStartTx:F

    .line 389
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scaleStartTy:F

    .line 390
    return-void
.end method

.method private updateScale(Z)V
    .locals 1
    .param p1, "changed"    # Z

    .prologue
    .line 1027
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateScale(ZZ)V

    .line 1028
    return-void
.end method

.method private updateScale(ZZ)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "computionOnly"    # Z

    .prologue
    .line 1032
    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v11, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v11, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    .line 1034
    .local v0, "entry":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :goto_0
    if-nez v0, :cond_2

    .line 1107
    :cond_0
    :goto_1
    return-void

    .line 1032
    .end local v0    # "entry":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1037
    .restart local v0    # "entry":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :cond_2
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 1038
    .local v4, "ratio1":F
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 1040
    .local v5, "ratio2":F
    cmpl-float v10, v4, v5

    if-gtz v10, :cond_3

    iget-boolean v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->fitBySmallestSide:Z

    if-eqz v10, :cond_d

    .line 1042
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v8, v10

    .line 1043
    .local v8, "width":F
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v10

    int-to-float v2, v10

    .line 1045
    .local v2, "height":F
    iget-boolean v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->fitBySmallestSide:Z

    if-eqz v10, :cond_4

    .line 1047
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitX:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v8, v10

    .line 1048
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitY:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v2, v10

    .line 1051
    :cond_4
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v10, :cond_5

    .line 1052
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v8, v10

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    .line 1054
    :cond_5
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v2, v10

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    .line 1064
    .end local v2    # "height":F
    .end local v8    # "width":F
    :goto_2
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    .line 1065
    const/high16 v10, 0x40000000    # 2.0f

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    .line 1067
    :cond_6
    if-nez p2, :cond_0

    .line 1070
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v11, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_7

    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v11, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_7

    if-eqz p1, :cond_8

    .line 1072
    :cond_7
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    .line 1073
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationScale:F

    .line 1076
    :cond_8
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_f

    const/4 v1, 0x0

    .line 1078
    .local v1, "entry2":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :goto_3
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v10

    int-to-float v8, v10

    .line 1079
    .restart local v8    # "width":F
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v10

    int-to-float v2, v10

    .line 1080
    .restart local v2    # "height":F
    if-nez v1, :cond_10

    const/4 v10, 0x1

    :goto_4
    int-to-float v9, v10

    .line 1081
    .local v9, "width2":F
    if-nez v1, :cond_11

    const/4 v10, 0x1

    :goto_5
    int-to-float v3, v10

    .line 1083
    .local v3, "height2":F
    const/4 v10, 0x0

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    cmpl-float v10, v2, v10

    if-nez v10, :cond_a

    .line 1085
    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    move v8, v2

    .line 1088
    :cond_a
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-nez v10, :cond_c

    .line 1090
    :cond_b
    const/4 v3, 0x0

    move v9, v3

    .line 1093
    :cond_c
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1095
    div-float v6, v9, v3

    .line 1096
    .local v6, "ratio_1":F
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 1098
    .local v7, "ratio_2":F
    cmpl-float v10, v6, v7

    if-lez v10, :cond_12

    .line 1100
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextScale:F

    goto/16 :goto_1

    .line 1058
    .end local v1    # "entry2":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v2    # "height":F
    .end local v3    # "height2":F
    .end local v6    # "ratio_1":F
    .end local v7    # "ratio_2":F
    .end local v8    # "width":F
    .end local v9    # "width2":F
    :cond_d
    iget v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v10, :cond_e

    .line 1059
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    .line 1061
    :cond_e
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    goto/16 :goto_2

    .line 1076
    :cond_f
    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v11, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v1

    goto :goto_3

    .line 1080
    .restart local v1    # "entry2":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .restart local v2    # "height":F
    .restart local v8    # "width":F
    :cond_10
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v10

    goto :goto_4

    .line 1081
    .restart local v9    # "width2":F
    :cond_11
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v10

    goto :goto_5

    .line 1104
    .restart local v3    # "height2":F
    .restart local v6    # "ratio_1":F
    .restart local v7    # "ratio_2":F
    :cond_12
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextScale:F

    goto/16 :goto_1
.end method

.method private updateTextures()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 993
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchDisabled:Z

    if-eqz v0, :cond_6

    .line 995
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 996
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 998
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 999
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 1001
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    if-eq v0, v5, :cond_5

    .line 1003
    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    .line 1005
    invoke-direct {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateScale(Z)V

    .line 1023
    :cond_5
    :goto_0
    return-void

    .line 1010
    :cond_6
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-lez v0, :cond_7

    .line 1012
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    .line 1013
    iput-boolean v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIsNext:Z

    .line 1014
    invoke-direct {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateScale(Z)V

    goto :goto_0

    .line 1016
    :cond_7
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1018
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    .line 1019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIsNext:Z

    .line 1020
    invoke-direct {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateScale(Z)V

    goto :goto_0
.end method

.method private updateThumbnail()V
    .locals 3

    .prologue
    .line 976
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    .line 978
    .local v0, "entry":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsThumb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setVisibility(I)V

    .line 989
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public animateIn(Landroid/graphics/Rect;IZ)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clipSize"    # I
    .param p3, "setOnly"    # Z

    .prologue
    .line 1616
    if-eqz p1, :cond_0

    .line 1618
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    .line 1619
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1622
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->inAnimationDone:Z

    .line 1624
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->window_bg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1626
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$11;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)V

    .line 1639
    .local v0, "ender":Ljava/lang/Runnable;
    if-eqz p3, :cond_1

    .line 1641
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1715
    :goto_0
    return-void

    .line 1646
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$12;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$12;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clipSize"    # I
    .param p3, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 1475
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->inAnimationDone:Z

    if-nez v0, :cond_0

    .line 1612
    :goto_0
    return-void

    .line 1478
    :cond_0
    const v0, 0x3f7fbe77    # 0.999f

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onBackgroundUpdate(F)V

    .line 1480
    if-nez p1, :cond_1

    .line 1482
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$9;

    invoke-direct {v2, p0, p3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$9;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Ljava/lang/Runnable;)V

    .line 1494
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailAnimationDuration()I

    move-result v3

    .line 1482
    invoke-virtual {v1, v0, v2, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 1499
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1501
    .local v4, "animationStarted":J
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$10;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Landroid/graphics/Rect;IJLjava/lang/Runnable;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1600
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v7

    .line 1602
    .local v7, "entry":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1604
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1607
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setVisibility(I)V

    .line 1608
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->clearAnimation()V

    .line 1610
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->requestLayout()V

    .line 1611
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 915
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    .line 919
    .local v0, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->clearImageData()V

    .line 921
    .end local v0    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :cond_0
    return-void
.end method

.method public clearImages()V
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearImage(I)V

    .line 926
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearImage(I)V

    .line 927
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clearImage(I)V

    .line 928
    return-void
.end method

.method public clearMinimumScale(Z)V
    .locals 3
    .param p1, "reset"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1372
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    .line 1373
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    .line 1374
    iput v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoTranslateY:F

    iput v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoTranslateX:F

    .line 1375
    iput v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoScale:F

    .line 1377
    if-eqz p1, :cond_0

    .line 1379
    iput v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 1380
    iput v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 1383
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateScale(ZZ)V

    .line 1385
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v0, v1, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    .line 1387
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$8;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;)V

    .line 1394
    const-wide/16 v1, 0xfa

    .line 1387
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1395
    return-void
.end method

.method public dropTouches()Z
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->needDropTouches:Z

    return v0
.end method

.method public getCurrentImage()Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentScale()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    return v0
.end method

.method public getLimitX()I
    .locals 1

    .prologue
    .line 1307
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitX:I

    return v0
.end method

.method public getLimitY()I
    .locals 1

    .prologue
    .line 1312
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitY:I

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    return v0
.end method

.method public getOverlayView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    .line 1238
    :goto_0
    return-object v0

    .line 1168
    :cond_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$6;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    .line 1234
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    const v1, -0xff5600

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1236
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1238
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method public getScaleForSize(I)F
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportMaximumSize()I

    move-result v0

    .line 1415
    .local v0, "viewportSize":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    return v0
.end method

.method public getViewerHeight()I
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getViewerOffset()I
    .locals 1

    .prologue
    .line 219
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v0

    return v0
.end method

.method public getViewportMaximumSize()I
    .locals 2

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getViewportMinimumSize()I
    .locals 2

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->viewerWidth:I

    return v0
.end method

.method public invalidateOverlayView()V
    .locals 1

    .prologue
    .line 1426
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->preventInvalidate:Z

    if-nez v0, :cond_0

    .line 1427
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1428
    :cond_0
    return-void
.end method

.method public load([IZ)V
    .locals 6
    .param p1, "indexes"    # [I
    .param p2, "sync"    # Z

    .prologue
    const/4 v5, 0x0

    .line 759
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/util/concurrent/Semaphore;

    .line 761
    .local v0, "lock":[Ljava/util/concurrent/Semaphore;
    new-instance v1, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$3;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;[I[Ljava/util/concurrent/Semaphore;Z)V

    .line 790
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_0

    .line 792
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    aput-object v3, v0, v5

    .line 794
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 798
    :try_start_0
    const-string v3, "ImageViewer, near 798"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v2

    .line 804
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "Error blocking highload thread"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 809
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invokeHighload(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1731
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->inAnimationDone:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->outAnimationDone:Z

    if-nez v3, :cond_1

    .line 1864
    :cond_0
    :goto_0
    return-void

    .line 1742
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1743
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1745
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 1747
    .local v14, "aty":F
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1752
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getAnimationRatio()F

    move-result v12

    .line 1753
    .local v12, "a":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->interpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    .line 1755
    .local v13, "ai":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v13

    add-float v19, v3, v4

    .line 1756
    .local v19, "ts":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v13

    add-float v20, v3, v4

    .line 1757
    .local v20, "tx":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v13

    add-float v21, v3, v4

    .line 1759
    .local v21, "ty":F
    div-float v20, v20, v19

    .line 1760
    div-float v21, v21, v19

    .line 1761
    move/from16 v14, v21

    .line 1763
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v3, v3

    sub-float v3, v20, v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-lez v3, :cond_9

    .line 1765
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onPositionChanged(I)V

    .line 1772
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1773
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1774
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 1810
    .end local v12    # "a":F
    .end local v13    # "ai":F
    .end local v19    # "ts":F
    .end local v20    # "tx":F
    .end local v21    # "ty":F
    :cond_4
    :goto_2
    const/16 v15, 0xff

    .line 1812
    .local v15, "ba":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doubleTapped:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v3, :cond_6

    .line 1814
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1815
    const/4 v14, 0x0

    .line 1817
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_alpha:F

    .line 1818
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 1820
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_alpha:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onBackgroundUpdate(F)V

    .line 1823
    :cond_6
    shl-int/lit8 v3, v15, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1825
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v16

    .line 1827
    .local v16, "item":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :goto_3
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1829
    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v9, v3, 0x2

    .line 1830
    .local v9, "x":I
    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v22, v3, 0x2

    .line 1832
    .local v22, "y":I
    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    int-to-float v4, v9

    move/from16 v0, v22

    int-to-float v5, v0

    sget-object v6, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bitmap_paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1834
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchDisabled:Z

    if-nez v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1836
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v0, v22

    neg-int v6, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v8

    neg-int v10, v9

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v11

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->drawLobster(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/imagepicker/entries/StyleEntry;)V

    .line 1840
    .end local v9    # "x":I
    .end local v22    # "y":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->isPositionAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIndex:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getItemAt(I)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v17

    .line 1842
    .local v17, "item2":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchDisabled:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1844
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1846
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->secondIsNext:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :goto_5
    int-to-float v0, v3

    move/from16 v18, v0

    .line 1848
    .local v18, "k":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v3

    sget v4, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1849
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1850
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v3

    sget v4, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v18

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextScale:F

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1852
    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v9, v3, 0x2

    .line 1853
    .restart local v9    # "x":I
    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v22, v3, 0x2

    .line 1855
    .restart local v22    # "y":I
    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    int-to-float v4, v9

    move/from16 v0, v22

    int-to-float v5, v0

    sget-object v6, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bitmap_paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1857
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchDisabled:Z

    if-nez v3, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1859
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v0, v22

    neg-int v6, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropWidth()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCropHeight()I

    move-result v8

    neg-int v10, v9

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v11

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->drawLobster(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/imagepicker/entries/StyleEntry;)V

    .line 1863
    .end local v9    # "x":I
    .end local v18    # "k":F
    .end local v22    # "y":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1767
    .end local v15    # "ba":I
    .end local v16    # "item":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v17    # "item2":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .restart local v12    # "a":F
    .restart local v13    # "ai":F
    .restart local v19    # "ts":F
    .restart local v20    # "tx":F
    .restart local v21    # "ty":F
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v3, v3

    sub-float v3, v20, v3

    neg-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    .line 1769
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onPositionChanged(I)V

    goto/16 :goto_1

    .line 1778
    .end local v12    # "a":F
    .end local v13    # "ai":F
    .end local v19    # "ts":F
    .end local v20    # "tx":F
    .end local v21    # "ty":F
    :cond_a
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    .line 1780
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 1781
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationTranslateY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 1782
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    .line 1783
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->bg_alpha:F

    .line 1784
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    .line 1785
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    .line 1788
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_e

    .line 1790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1792
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    if-ge v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    if-le v3, v4, :cond_c

    .line 1793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 1795
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    if-ge v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    if-le v3, v4, :cond_d

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 1798
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 1802
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1803
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1804
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 1806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_4

    .line 1807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_2

    .line 1825
    .restart local v15    # "ba":I
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1840
    .restart local v16    # "item":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 1846
    .restart local v17    # "item2":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :cond_11
    const/4 v3, -0x1

    goto/16 :goto_5
.end method

.method public onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x1

    .line 1444
    if-eqz p1, :cond_0

    .line 1446
    sub-int v0, p4, p2

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setViewportWidth(I)V

    .line 1447
    sub-int v0, p5, p3

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->setViewportHeight(I)V

    .line 1449
    invoke-direct {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateScale(Z)V

    .line 1450
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    .line 1452
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 1453
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 1456
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->initialized:Z

    .line 1457
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, -0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 467
    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->preventInvalidate:Z

    if-eqz v5, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v3

    .line 470
    :cond_1
    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchDisabled:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-eq v5, v12, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->initialized:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->needDropTouches:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->inAnimationDone:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->outAnimationDone:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 472
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dropTouches()Z

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 475
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->needDropTouches:Z

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-le v5, v3, :cond_4

    move v1, v3

    .line 482
    .local v1, "multitouch":Z
    :goto_1
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIsLoaded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 483
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dropTouches()Z

    move-result v3

    goto :goto_0

    .end local v1    # "multitouch":Z
    :cond_4
    move v1, v4

    .line 480
    goto :goto_1

    .line 485
    .restart local v1    # "multitouch":Z
    :cond_5
    if-nez v1, :cond_6

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doubleTapped:Z

    if-eqz v5, :cond_6

    .line 486
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doubleTapped:Z

    goto :goto_0

    .line 488
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_b

    .line 490
    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewerHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissed:Z

    if-nez v5, :cond_7

    .line 491
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDismiss()Z

    move-result v3

    goto :goto_0

    .line 493
    :cond_7
    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissed:Z

    if-nez v5, :cond_0

    .line 496
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragging:Z

    .line 497
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    .line 499
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    .line 501
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v11

    .line 506
    .local v0, "halfedWidth":F
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v0

    if-lez v5, :cond_8

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-lez v5, :cond_8

    .line 507
    invoke-direct {p0, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->goToPrev(Z)Z

    move-result v3

    goto/16 :goto_0

    .line 509
    :cond_8
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_9

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v6}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_9

    .line 510
    invoke-direct {p0, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->goToNext(Z)Z

    move-result v3

    goto/16 :goto_0

    .line 512
    :cond_9
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_a

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_a

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_a

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    .line 513
    :cond_a
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v8, v8

    invoke-direct {p0, v6, v7, v8}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v8, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    int-to-float v9, v9

    invoke-direct {p0, v7, v8, v9}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    .line 516
    .end local v0    # "halfedWidth":F
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_e

    .line 518
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->abortScrollerAnimation()V

    .line 520
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 522
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getAnimationRatio()F

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 523
    .local v2, "ratio":F
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationStartTime:J

    .line 525
    invoke-direct {p0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doAnimate(F)V

    .line 528
    .end local v2    # "ratio":F
    :cond_c
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateDragInfo(Landroid/view/MotionEvent;)V

    .line 530
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousCallbackIndex:I

    if-eq v5, v12, :cond_d

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousCallbackIndex:I

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-eq v5, v6, :cond_e

    .line 532
    :cond_d
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchPhoto()V

    .line 533
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->cancelPostSwitch()Z

    .line 537
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_17

    if-nez v1, :cond_17

    .line 539
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->needDropPinch()Z

    move-result v5

    if-nez v5, :cond_0

    .line 542
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v5, v6, :cond_f

    .line 544
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateDragInfo(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 549
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateHorizontalTranslate(F)V

    .line 551
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_11

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v5, :cond_11

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v5, :cond_11

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_10

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_11

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragging:Z

    if-nez v5, :cond_11

    .line 552
    :cond_10
    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 554
    :cond_11
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_12

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v5, :cond_12

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v5, :cond_12

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_12

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragging:Z

    if-nez v5, :cond_12

    .line 556
    iput-boolean v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragging:Z

    .line 558
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_1b

    .line 560
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    .line 561
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 570
    :cond_12
    :goto_2
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartTranslateY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 572
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_13

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-eqz v5, :cond_1c

    .line 574
    :cond_13
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_14

    .line 575
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 577
    :cond_14
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_15

    .line 578
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v7, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 588
    :cond_15
    :goto_3
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_20

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    if-lez v5, :cond_20

    .line 590
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onPositionChanged(I)V

    .line 601
    :goto_4
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_16

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchDisabled:Z

    if-eqz v5, :cond_16

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v5, :cond_16

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v5, :cond_16

    .line 603
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_22

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_22

    .line 605
    invoke-direct {p0, v3}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchPhoto(Z)V

    .line 606
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    .line 607
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 617
    :cond_16
    :goto_5
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidate()V

    .line 619
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getVisibility()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_17

    .line 620
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidateOverlayView()V

    .line 623
    :cond_17
    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    if-nez v5, :cond_18

    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    if-nez v1, :cond_0

    .line 626
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_24

    .line 628
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1a

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_23

    .line 629
    :cond_1a
    iput-boolean v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->disallowZoom:Z

    goto/16 :goto_0

    .line 565
    :cond_1b
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    .line 566
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    goto/16 :goto_2

    .line 582
    :cond_1c
    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v5, :cond_1e

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1e

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1d

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    if-eqz v5, :cond_1e

    :cond_1d
    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragging:Z

    if-eqz v5, :cond_1f

    .line 583
    :cond_1e
    iput v10, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    goto/16 :goto_3

    .line 584
    :cond_1f
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchSlop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_15

    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchDisabled:Z

    if-nez v5, :cond_15

    .line 585
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onPrepareDismiss()V

    goto/16 :goto_3

    .line 592
    :cond_20
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_21

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    invoke-virtual {v6}, Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_21

    .line 594
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onPositionChanged(I)V

    goto/16 :goto_4

    .line 598
    :cond_21
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onPositionChanged(I)V

    goto/16 :goto_4

    .line 609
    :cond_22
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_16

    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16

    .line 611
    invoke-direct {p0, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchPhoto(Z)V

    .line 612
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartX:F

    .line 613
    iget v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->PageSpacing:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    goto/16 :goto_5

    .line 631
    :cond_23
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updatePinchInfo(Landroid/view/MotionEvent;)V

    .line 634
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    if-ne v5, v6, :cond_26

    .line 636
    iget-boolean v5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->disallowZoom:Z

    if-eqz v5, :cond_25

    .line 637
    iput-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->disallowZoom:Z

    goto/16 :goto_0

    .line 639
    :cond_25
    iput v12, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dragStartPointerId:I

    .line 641
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->resetScale(Z)V

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pinchEndTime:J

    .line 646
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    invoke-direct {p0, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getCanZoom(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 648
    iget-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->disallowZoom:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->dismissing:Z

    if-nez v4, :cond_0

    .line 651
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->doZoom(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 1433
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->preventInvalidate:Z

    if-nez v0, :cond_0

    .line 1435
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1437
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 1439
    :cond_0
    return-void
.end method

.method public resetScale(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 394
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    if-eqz p1, :cond_2

    .line 396
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v2, v4, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    .line 397
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 401
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    .line 403
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    int-to-float v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v0

    .line 404
    .local v0, "atx":F
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    iget v3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    int-to-float v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->clamp(FFF)F

    move-result v1

    .line 406
    .local v1, "aty":F
    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v2, v0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/imagepicker/utils/ImageViewerAdapter;

    .line 1298
    return-void
.end method

.method public setCloseEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1245
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->closeEnabled:Z

    .line 1246
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1264
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    .line 1265
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->nextIndex:I

    .line 1266
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->previousIndex:I

    .line 1267
    return-void
.end method

.method public setCurrentScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 1276
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    .line 1278
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->updateMinMax(F)V

    .line 1279
    return-void
.end method

.method public setLimitOffsets(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1337
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitX:I

    .line 1338
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->limitY:I

    .line 1339
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 1271
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    .line 1272
    return-void
.end method

.method public setMinimumScale(IF)V
    .locals 3
    .param p1, "pseudoViewportSize"    # I
    .param p2, "scale"    # F

    .prologue
    .line 1353
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    .line 1355
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoTranslateX:F

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoTranslateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    .line 1357
    new-instance v0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer$7;-><init>(Lcom/vkontakte/android/imagepicker/ui/ImageViewer;IF)V

    .line 1367
    const-wide/16 v1, 0xfa

    .line 1357
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1368
    return-void
.end method

.method public setMinimumSize(IIIIF)V
    .locals 2
    .param p1, "minX"    # I
    .param p2, "minY"    # I
    .param p3, "maxX"    # I
    .param p4, "maxY"    # I
    .param p5, "scale"    # F

    .prologue
    const/4 v1, 0x0

    .line 1399
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1402
    :cond_0
    iput p5, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    .line 1403
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumX:I

    .line 1404
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumY:I

    .line 1405
    iput p3, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumX:I

    .line 1406
    iput p4, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->maximumY:I

    .line 1408
    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v0, v1, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->animateTo(FFF)V

    goto :goto_0
.end method

.method public setOnBackgroundUpdateListener(Lcom/vkontakte/android/imagepicker/utils/OnBackgroundUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/imagepicker/utils/OnBackgroundUpdateListener;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onBackgroundUpdateListener:Lcom/vkontakte/android/imagepicker/utils/OnBackgroundUpdateListener;

    .line 1328
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onImageClickListener:Landroid/view/View$OnClickListener;

    .line 1422
    return-void
.end method

.method public setOnDismissListener(Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/imagepicker/utils/OnDismissListener;

    .line 1323
    return-void
.end method

.method public setOnNavigationListener(Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;)V
    .locals 0
    .param p1, "navigationListener"    # Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;

    .prologue
    .line 1317
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onNavigationListener:Lcom/vkontakte/android/imagepicker/utils/OnNavigationListener;

    .line 1318
    return-void
.end method

.method public setOnZoomListener(Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/imagepicker/utils/OnZoomListener;

    .line 1333
    return-void
.end method

.method public setPreventInvalidate(Z)V
    .locals 0
    .param p1, "prevent"    # Z

    .prologue
    .line 1257
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->preventInvalidate:Z

    .line 1259
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->postInvalidate()V

    .line 1260
    return-void
.end method

.method public setPseudoScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 1292
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoScale:F

    .line 1293
    return-void
.end method

.method public setPseudoTranslate(FF)V
    .locals 0
    .param p1, "tx"    # F
    .param p2, "ty"    # F

    .prologue
    .line 1283
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoTranslateX:F

    .line 1284
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->pseudoTranslateY:F

    .line 1286
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateX:F

    .line 1287
    iput p2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->translateY:F

    .line 1288
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 412
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->switchDisabled:Z

    .line 413
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    .line 268
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/ui/ViewWithClipping;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 270
    return-void
.end method

.method public setThumbnailRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1250
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    .line 1252
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->invalidateOverlayView()V

    .line 1253
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 417
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchDisabled:Z

    .line 419
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->touchDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->currentScale:F

    iget v2, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->resetScale(Z)V

    .line 421
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 417
    goto :goto_0
.end method

.method public setViewportHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->viewerHeight:I

    .line 230
    return-void
.end method

.method public setViewportWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->viewerWidth:I

    .line 240
    return-void
.end method

.method public updateThumbnailRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    .line 1721
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1722
    return-void
.end method
