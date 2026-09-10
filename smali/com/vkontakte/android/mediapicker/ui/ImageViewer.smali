.class public Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
.super Landroid/view/View;
.source "ImageViewer.java"


# static fields
.field private static final DEFAULT_MAXIMUM_SCALE:I = 0x2

.field public static final DRAW_RECT_BACKGROUND:Z = false

.field public static final MOVING_ANIMATION_DURATION:I = 0xfa

.field public static final PAGE_SPACING:I

.field private static bg_paint:Landroid/graphics/Paint;

.field private static bg_paint_inited:Z

.field private static bitmap_paint:Landroid/graphics/Paint;

.field private static bitmap_paint_inited:Z

.field private static density:F

.field private static density_inited:Z

.field private static window_bg:Landroid/graphics/drawable/ColorDrawable;

.field private static window_bg_inited:Z


# instance fields
.field private adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

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

.field private onBackgroundUpdateListener:Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;

.field private onDismissListener:Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;

.field private onDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private onImageClickListener:Landroid/view/View$OnClickListener;

.field private onNavigationListener:Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;

.field private onZoomListener:Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;

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

.field private thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

.field private touchDisabled:Z

.field private touchSlopX:F

.field private touchSlopY:F

.field private translateX:F

.field private translateY:F

.field private viewerHeight:I

.field private viewerWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    .line 56
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_paint_inited:Z

    .line 59
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bitmap_paint_inited:Z

    .line 62
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->window_bg_inited:Z

    .line 65
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->density_inited:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    const/4 v0, -0x1

    .line 125
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->closeEnabled:Z

    .line 295
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->lastBgAlpha:F

    .line 1730
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->screenData:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->screenData2:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->screenData3:[I

    .line 127
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->init()V

    .line 128
    return-void

    .line 1730
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private abortScrollerAnimation()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 346
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doOnFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doOnClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    return v0
.end method

.method static synthetic access$1202(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    return p1
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    return v0
.end method

.method static synthetic access$1302(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    return p1
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchPhoto(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->outAnimationDone:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->outAnimationDone:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationDuration:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->interpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateX:F

    return v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doOnDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateY:F

    return v0
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    return p1
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoScale:F

    return v0
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    return v0
.end method

.method static synthetic access$2502(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    return p1
.end method

.method static synthetic access$2600(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onPositionChanged(I)V

    return-void
.end method

.method static synthetic access$2700()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->window_bg:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_alpha:F

    return v0
.end method

.method static synthetic access$2900(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onBackgroundUpdate(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Lcom/vkontakte/android/mediapicker/entries/IVAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/concurrent/Semaphore;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getLoadCallback(ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateScale(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    return v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # F

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->inAnimationDone:Z

    return v0
.end method

.method static synthetic access$902(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/ui/ImageViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->inAnimationDone:Z

    return p1
.end method

.method private animateTo(FFF)V
    .locals 2
    .param p1, "newScale"    # F
    .param p2, "newTranslateX"    # F
    .param p3, "newTranslateY"    # F

    .prologue
    .line 1467
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationScale:F

    .line 1468
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateX:F

    .line 1469
    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateY:F

    .line 1470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    .line 1471
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationDuration:J

    .line 1473
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postInvalidate()V

    .line 1474
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, p1, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onZoomChanged(FFF)V

    .line 1475
    return-void
.end method

.method private animationNotEnded()Z
    .locals 4

    .prologue
    .line 864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationDuration:J

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
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

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
    .line 325
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageLoaded()Z

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
    .line 335
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateX:F

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 336
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateY:F

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 337
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationScale:F

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    .line 339
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 340
    return-void
.end method

.method private doOnClick()Z
    .locals 2

    .prologue
    .line 702
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onImageClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 704
    .local v0, "doClick":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 705
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onImageClickListener:Landroid/view/View$OnClickListener;

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
    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

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
    iget-wide v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    iget-wide v9, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationDuration:J

    add-long/2addr v7, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    .line 718
    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    add-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    sub-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 721
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 724
    :cond_2
    iput-boolean v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doubleTapped:Z

    .line 726
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

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
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    div-float v2, v5, v7

    .line 733
    .local v2, "ratio":F
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    sub-float v3, v5, v7

    .line 734
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v7, v1, v7

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    sub-float v4, v5, v7

    .line 736
    .local v4, "y":F
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    .line 737
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v8, v8

    invoke-direct {p0, v3, v7, v8}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v7

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    int-to-float v9, v9

    invoke-direct {p0, v4, v8, v9}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v8

    invoke-direct {p0, v5, v7, v8}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

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
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v5, v11, v11}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

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

    .line 663
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchDisabled:Z

    if-eqz v0, :cond_0

    move v0, v9

    .line 697
    :goto_0
    return v0

    .line 666
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    if-eqz v0, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 668
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDismiss()Z

    move-result v0

    goto :goto_0

    .line 671
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

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

    sget v2, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->density:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    .line 677
    cmpl-float v0, p3, v3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIsNext:Z

    if-nez v0, :cond_4

    .line 679
    invoke-direct {p0, v9}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->goToPrev(Z)Z

    :cond_3
    :goto_1
    move v0, v9

    .line 686
    goto :goto_0

    .line 681
    :cond_4
    cmpg-float v0, p3, v3

    if-gez v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIsNext:Z

    if-eqz v0, :cond_3

    .line 683
    invoke-direct {p0, v9}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->goToNext(Z)Z

    goto :goto_1

    .line 690
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchEndTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 692
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 694
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postInvalidate()V

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

    .line 428
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

    .line 430
    .local v0, "pinchDist":F
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchStartDist:F

    div-float v2, v0, v2

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchStartScale:F

    mul-float v1, v2, v3

    .line 432
    .local v1, "s":F
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    .line 433
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchCenterX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchCenterX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scaleStartTx:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchStartScale:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 434
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchCenterY:F

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchCenterY:F

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scaleStartTy:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchStartScale:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 436
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;

    if-eqz v2, :cond_0

    .line 437
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    invoke-interface {v2, v3, v4, v5}, Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;->onZoomChanged(FFF)V

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 440
    return-void
.end method

.method private getAnimationRatio()F
    .locals 4

    .prologue
    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getCanZoom(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLoadCallback(ILjava/util/concurrent/Semaphore;)Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
    .locals 1
    .param p1, "index"    # I
    .param p2, "lock"    # Ljava/util/concurrent/Semaphore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Semaphore;",
            ")",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$4;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;ILjava/util/concurrent/Semaphore;)V

    return-object v0
.end method

.method private goToNext(Z)Z
    .locals 4
    .param p1, "byVelocity"    # Z

    .prologue
    const/4 v3, 0x1

    .line 874
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

    .line 875
    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postSwitch(Z)V

    .line 877
    return v3
.end method

.method private goToPrev(Z)Z
    .locals 3
    .param p1, "byVelocity"    # Z

    .prologue
    .line 882
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

    .line 883
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postSwitch(Z)V

    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method private final init()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    .line 132
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_paint_inited:Z

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_paint:Landroid/graphics/Paint;

    .line 135
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    sput-boolean v3, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_paint_inited:Z

    .line 140
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bitmap_paint_inited:Z

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bitmap_paint:Landroid/graphics/Paint;

    .line 143
    sget-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bitmap_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 145
    sput-boolean v3, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bitmap_paint_inited:Z

    .line 148
    :cond_1
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->window_bg_inited:Z

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->window_bg:Landroid/graphics/drawable/ColorDrawable;

    .line 152
    sput-boolean v3, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->window_bg_inited:Z

    .line 155
    :cond_2
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->density_inited:Z

    if-nez v0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->density:F

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->density_inited:Z

    .line 162
    :cond_3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->interpolator:Landroid/view/animation/Interpolator;

    .line 163
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    .line 165
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->inAnimationDone:Z

    .line 166
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->outAnimationDone:Z

    .line 168
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIsNext:Z

    .line 170
    iput v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextScale:F

    .line 171
    iput v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    .line 172
    iput v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    .line 173
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    .line 175
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    .line 176
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopY:F

    .line 178
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    .line 180
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 194
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$2;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 205
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->gestureDetector:Landroid/view/GestureDetector;

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->gestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 208
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setFocusable(Z)V

    .line 209
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setFocusableInTouchMode(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->requestFocus()Z

    .line 211
    return-void
.end method

.method private initDragData(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartY:F

    .line 853
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartTranslateX:F

    .line 854
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartTranslateY:F

    .line 855
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartPointerId:I

    .line 856
    return-void
.end method

.method private needDropPinch()Z
    .locals 6

    .prologue
    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchEndTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationDuration:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBackgroundUpdate(F)V
    .locals 1
    .param p1, "bg_alpha"    # F

    .prologue
    .line 299
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->lastBgAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->lastBgAlpha:F

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onBackgroundUpdateListener:Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onBackgroundUpdateListener:Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;->onUpdated(F)V

    goto :goto_0
.end method

.method private onDismiss()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 312
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;->onDismiss()V

    .line 317
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    .line 318
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissed:Z

    .line 320
    return v1
.end method

.method private onPositionChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 655
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onNavigationListener:Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;

    if-eqz v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onNavigationListener:Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;->changePosition(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 657
    :cond_0
    return-void

    .line 656
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPrepareDismiss()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;->onPrepareDismiss()V

    .line 280
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 282
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartY:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartY:F

    .line 283
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 292
    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    .line 293
    return-void

    .line 287
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartY:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartY:F

    .line 288
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    goto :goto_0
.end method

.method private onZoomChanged(FFF)V
    .locals 1
    .param p1, "newScale"    # F
    .param p2, "newTranslateX"    # F
    .param p3, "newTranslateY"    # F

    .prologue
    .line 749
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;->onZoomChanged(FFF)V

    .line 751
    :cond_0
    return-void
.end method

.method private postSwitch(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    .line 902
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$5;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Z)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postedPhotoSwitch:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationDuration:J

    const-wide/16 v3, 0x32

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 911
    return-void
.end method

.method private switchPhoto()V
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousCallbackIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousCallbackIndex:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-eq v0, v1, :cond_0

    .line 376
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
    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-eqz p1, :cond_4

    move v4, v5

    :goto_0
    add-int v0, v7, v4

    .line 934
    .local v0, "clearImageIndex":I
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    .line 936
    .local v1, "currentIndex":I
    :goto_1
    if-gez v1, :cond_0

    .line 937
    const/4 v1, 0x0

    .line 939
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 940
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 942
    :cond_1
    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    iput v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousCallbackIndex:I

    .line 943
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    .line 945
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    .line 946
    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_6

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    :goto_2
    iput v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    .line 948
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    .line 949
    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    if-ltz v4, :cond_2

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    :cond_2
    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    .line 951
    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onPositionChanged(I)V

    .line 953
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 955
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v2

    .line 957
    .local v2, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->clearImageData()V

    .line 960
    .end local v2    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_3
    invoke-direct {p0, v6}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateScale(Z)V

    .line 961
    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    .line 963
    const/4 v4, 0x3

    new-array v3, v4, [I

    aput v1, v3, v8

    if-eqz p1, :cond_7

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    :goto_3
    aput v4, v3, v6

    const/4 v5, 0x2

    if-eqz p1, :cond_8

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    :goto_4
    aput v4, v3, v5

    .line 965
    .local v3, "indexes":[I
    invoke-virtual {p0, v3, v8}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->load([IZ)V

    .line 967
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateThumbnail()V

    .line 969
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 971
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

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
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    goto :goto_1

    .restart local v1    # "currentIndex":I
    :cond_6
    move v4, v5

    .line 946
    goto :goto_2

    .line 963
    :cond_7
    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    goto :goto_3

    :cond_8
    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    goto :goto_4
.end method

.method private updateDragInfo(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    .line 351
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartY:F

    .line 352
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartTranslateX:F

    .line 353
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartTranslateY:F

    .line 354
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartPointerId:I

    .line 355
    return-void
.end method

.method private updateHorizontalTranslate(F)V
    .locals 2
    .param p1, "x"    # F

    .prologue
    .line 449
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    if-nez v0, :cond_1

    .line 451
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartTranslateX:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 452
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateTextures()V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    goto :goto_0
.end method

.method private updateMinMax(F)V
    .locals 11
    .param p1, "scale"    # F

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    .line 1113
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1163
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    .line 1118
    .local v0, "entry":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 1119
    .local v1, "ratio1":F
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 1121
    .local v2, "ratio2":F
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    int-to-float v5, v6

    .line 1122
    .local v5, "viewportWidth":F
    :goto_1
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    int-to-float v4, v6

    .line 1124
    .local v4, "viewportHeight":F
    :goto_2
    cmpl-float v6, v1, v2

    if-lez v6, :cond_4

    .line 1126
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    div-float/2addr v6, v9

    div-float v7, v5, v9

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    .line 1127
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    neg-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    .line 1129
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v3, v6, p1

    .line 1131
    .local v3, "scaledHeight":F
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitY:I

    int-to-float v6, v6

    sub-float v6, v4, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_3

    .line 1133
    div-float v6, v3, v9

    div-float v7, v4, v9

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    .line 1134
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    neg-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    goto :goto_0

    .line 1121
    .end local v3    # "scaledHeight":F
    .end local v4    # "viewportHeight":F
    .end local v5    # "viewportWidth":F
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    int-to-float v5, v6

    goto :goto_1

    .line 1122
    .restart local v5    # "viewportWidth":F
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v6

    int-to-float v4, v6

    goto :goto_2

    .line 1138
    .restart local v3    # "scaledHeight":F
    .restart local v4    # "viewportHeight":F
    :cond_3
    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    goto/16 :goto_0

    .line 1143
    .end local v3    # "scaledHeight":F
    :cond_4
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-gtz v6, :cond_5

    iget-boolean v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->fitBySmallestSide:Z

    if-eqz v6, :cond_7

    .line 1145
    :cond_5
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    div-float/2addr v6, v9

    div-float v7, v4, v9

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    .line 1146
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    neg-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    .line 1148
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    cmpl-float v6, v6, v5

    if-lez v6, :cond_6

    .line 1150
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    div-float/2addr v6, v9

    div-float v7, v5, v9

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    .line 1151
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    neg-int v6, v6

    iput v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    goto/16 :goto_0

    .line 1155
    :cond_6
    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    goto/16 :goto_0

    .line 1160
    :cond_7
    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    goto/16 :goto_0
.end method

.method private updatePinchInfo(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
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

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchStartDist:F

    .line 381
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchStartScale:F

    .line 382
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchCenterX:F

    .line 383
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v6

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchCenterY:F

    .line 384
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scaleStartTx:F

    .line 385
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scaleStartTy:F

    .line 386
    return-void
.end method

.method private updateScale(Z)V
    .locals 1
    .param p1, "changed"    # Z

    .prologue
    .line 1029
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateScale(ZZ)V

    .line 1030
    return-void
.end method

.method private updateScale(ZZ)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "computionOnly"    # Z

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getCurrentImage()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    .line 1036
    .local v0, "entry":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-nez v0, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 1040
    .local v4, "ratio1":F
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v5, v10, v11

    .line 1042
    .local v5, "ratio2":F
    cmpl-float v10, v4, v5

    if-gtz v10, :cond_2

    iget-boolean v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->fitBySmallestSide:Z

    if-eqz v10, :cond_c

    .line 1044
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v8, v10

    .line 1045
    .local v8, "width":F
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v10

    int-to-float v2, v10

    .line 1047
    .local v2, "height":F
    iget-boolean v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->fitBySmallestSide:Z

    if-eqz v10, :cond_3

    .line 1049
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitX:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v8, v10

    .line 1050
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitY:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v2, v10

    .line 1053
    :cond_3
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v10, :cond_4

    .line 1054
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v8, v10

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    .line 1056
    :cond_4
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v2, v10

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    .line 1066
    .end local v2    # "height":F
    .end local v8    # "width":F
    :goto_1
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 1067
    const/high16 v10, 0x40000000    # 2.0f

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    .line 1069
    :cond_5
    if-nez p2, :cond_0

    .line 1072
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v11, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_6

    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v11, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_6

    if-eqz p1, :cond_7

    .line 1074
    :cond_6
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    .line 1075
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationScale:F

    .line 1078
    :cond_7
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_e

    const/4 v1, 0x0

    .line 1080
    .local v1, "entry2":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :goto_2
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v10

    int-to-float v8, v10

    .line 1081
    .restart local v8    # "width":F
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v10

    int-to-float v2, v10

    .line 1082
    .restart local v2    # "height":F
    if-nez v1, :cond_f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1083
    .local v9, "width2":F
    :goto_3
    if-nez v1, :cond_10

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1085
    .local v3, "height2":F
    :goto_4
    const/4 v10, 0x0

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    cmpl-float v10, v2, v10

    if-nez v10, :cond_9

    .line 1087
    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    move v8, v2

    .line 1090
    :cond_9
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-nez v10, :cond_b

    .line 1092
    :cond_a
    const/4 v3, 0x0

    move v9, v3

    .line 1095
    :cond_b
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1097
    div-float v6, v9, v3

    .line 1098
    .local v6, "ratio_1":F
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 1100
    .local v7, "ratio_2":F
    cmpl-float v10, v6, v7

    if-lez v10, :cond_11

    .line 1102
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextScale:F

    goto/16 :goto_0

    .line 1060
    .end local v1    # "entry2":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v2    # "height":F
    .end local v3    # "height2":F
    .end local v6    # "ratio_1":F
    .end local v7    # "ratio_2":F
    .end local v8    # "width":F
    .end local v9    # "width2":F
    :cond_c
    iget v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v10, :cond_d

    .line 1061
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    .line 1063
    :cond_d
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    goto/16 :goto_1

    .line 1078
    :cond_e
    iget-object v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v11, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v1

    goto :goto_2

    .line 1082
    .restart local v1    # "entry2":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .restart local v2    # "height":F
    .restart local v8    # "width":F
    :cond_f
    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v10

    int-to-float v9, v10

    goto :goto_3

    .line 1083
    .restart local v9    # "width2":F
    :cond_10
    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v10

    int-to-float v3, v10

    goto :goto_4

    .line 1106
    .restart local v3    # "height2":F
    .restart local v6    # "ratio_1":F
    .restart local v7    # "ratio_2":F
    :cond_11
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextScale:F

    goto/16 :goto_0
.end method

.method private updateTextures()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 993
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchDisabled:Z

    if-eqz v0, :cond_6

    .line 995
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 996
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 998
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 999
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 1001
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    if-eq v0, v5, :cond_5

    .line 1003
    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    .line 1005
    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateScale(Z)V

    .line 1025
    :cond_5
    :goto_0
    return-void

    .line 1010
    :cond_6
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    if-eq v0, v1, :cond_7

    .line 1012
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    .line 1013
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIsNext:Z

    .line 1015
    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateScale(Z)V

    goto :goto_0

    .line 1017
    :cond_7
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    if-eq v0, v1, :cond_5

    .line 1019
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIsNext:Z

    .line 1022
    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateScale(Z)V

    goto :goto_0
.end method

.method private updateThumbnail()V
    .locals 3

    .prologue
    .line 976
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    .line 978
    .local v0, "entry":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsThumb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setVisibility(I)V

    .line 989
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public animateIn(Landroid/graphics/Rect;IZ)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clipSize"    # I
    .param p3, "setOnly"    # Z

    .prologue
    .line 1620
    if-eqz p1, :cond_0

    .line 1622
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    .line 1623
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1626
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->inAnimationDone:Z

    .line 1628
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->window_bg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1630
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$11;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$11;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)V

    .line 1643
    .local v0, "ender":Ljava/lang/Runnable;
    if-eqz p3, :cond_1

    .line 1645
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1719
    :goto_0
    return-void

    .line 1650
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$12;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clipSize"    # I
    .param p3, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 1479
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->inAnimationDone:Z

    if-nez v0, :cond_0

    .line 1616
    :goto_0
    return-void

    .line 1482
    :cond_0
    const v0, 0x3f7fbe77    # 0.999f

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onBackgroundUpdate(F)V

    .line 1484
    if-nez p1, :cond_1

    .line 1486
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v2, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$9;

    invoke-direct {v2, p0, p3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$9;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getThumbnailAnimationDuration()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 1503
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1505
    .local v5, "animationStarted":J
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$10;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Landroid/graphics/Rect;ILjava/lang/Runnable;J)V

    invoke-virtual {v8, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1604
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v7

    .line 1606
    .local v7, "entry":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1608
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1611
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setVisibility(I)V

    .line 1612
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->clearAnimation()V

    .line 1614
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->requestLayout()V

    .line 1615
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method

.method public clearImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 915
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    .line 919
    .local v0, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->clearImageData()V

    .line 921
    .end local v0    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_0
    return-void
.end method

.method public clearImages()V
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearImage(I)V

    .line 926
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearImage(I)V

    .line 927
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clearImage(I)V

    .line 928
    return-void
.end method

.method public clearMinimumScale(Z)V
    .locals 3
    .param p1, "reset"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1371
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    .line 1372
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    .line 1373
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoTranslateY:F

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoTranslateX:F

    .line 1374
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoScale:F

    .line 1376
    if-eqz p1, :cond_0

    .line 1378
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 1379
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 1382
    :cond_0
    invoke-direct {p0, v2, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateScale(ZZ)V

    .line 1384
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v0, v1, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

    .line 1386
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$8;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1394
    return-void
.end method

.method public dropTouches()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->needDropTouches:Z

    return v0
.end method

.method public getCurrentImage()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

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
    .line 250
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    return v0
.end method

.method public getIsCurrentImageLoaded()Z
    .locals 2

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getCurrentImage()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v0

    .line 1311
    .local v0, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    return v0
.end method

.method public getOverlayView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    .line 1240
    :goto_0
    return-object v0

    .line 1170
    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$6;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$6;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    .line 1236
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    const v1, -0xff5600

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1238
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1240
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method public getScaleForSize(I)F
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportMaximumSize()I

    move-result v0

    .line 1414
    .local v0, "viewportSize":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    return v0
.end method

.method public getViewerHeight()I
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerOffset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getViewerOffset()I
    .locals 1

    .prologue
    .line 215
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v0

    return v0
.end method

.method public getViewportMaximumSize()I
    .locals 2

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getViewportMinimumSize()I
    .locals 2

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->viewerWidth:I

    return v0
.end method

.method public invalidateOverlayView()V
    .locals 1

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->preventInvalidate:Z

    if-nez v0, :cond_0

    .line 1426
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1427
    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1462
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->inAnimationDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->outAnimationDone:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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

    const/4 v3, 0x0

    aput-object v3, v0, v5

    .line 761
    .local v0, "lock":[Ljava/util/concurrent/Semaphore;
    new-instance v1, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$3;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;[I[Ljava/util/concurrent/Semaphore;Z)V

    .line 790
    .local v1, "runnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_0

    .line 792
    new-instance v3, Ljava/util/concurrent/Semaphore;

    invoke-direct {v3, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    aput-object v3, v0, v5

    .line 794
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 798
    :try_start_0
    const-string v3, "ImageViewer, near 798"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

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

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 809
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->invokeHighload(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1735
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->inAnimationDone:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->outAnimationDone:Z

    if-nez v3, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1738
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    .line 1746
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1747
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1749
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 1751
    .local v13, "aty":F
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1756
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getAnimationRatio()F

    move-result v11

    .line 1757
    .local v11, "a":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->interpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    .line 1759
    .local v12, "ai":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v12

    add-float v18, v3, v4

    .line 1760
    .local v18, "ts":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v12

    add-float v19, v3, v4

    .line 1761
    .local v19, "tx":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v12

    add-float v20, v3, v4

    .line 1763
    .local v20, "ty":F
    div-float v19, v19, v18

    .line 1764
    div-float v20, v20, v18

    .line 1765
    move/from16 v13, v20

    .line 1767
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v3, v3

    sub-float v3, v19, v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-lez v3, :cond_a

    .line 1769
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onPositionChanged(I)V

    .line 1776
    :cond_4
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1777
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 1814
    .end local v11    # "a":F
    .end local v12    # "ai":F
    .end local v18    # "ts":F
    .end local v19    # "tx":F
    .end local v20    # "ty":F
    :cond_5
    :goto_2
    const/16 v14, 0xff

    .line 1816
    .local v14, "ba":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doubleTapped:Z

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v3, :cond_7

    .line 1818
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1819
    const/4 v13, 0x0

    .line 1821
    :cond_6
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_alpha:F

    .line 1822
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_alpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 1824
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_alpha:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onBackgroundUpdate(F)V

    .line 1827
    :cond_7
    shl-int/lit8 v3, v14, 0x18

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getCurrentImage()Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v15

    .line 1831
    .local v15, "item":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    if-eqz v15, :cond_8

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1833
    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v8, v3, 0x2

    .line 1834
    .local v8, "x":I
    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v21, v3, 0x2

    .line 1836
    .local v21, "y":I
    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    int-to-float v4, v8

    move/from16 v0, v21

    int-to-float v5, v0

    sget-object v6, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bitmap_paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1838
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchDisabled:Z

    if-nez v3, :cond_8

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1840
    const/4 v4, 0x0

    move/from16 v0, v21

    neg-int v3, v0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v7

    neg-int v9, v8

    invoke-virtual {v15}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v10

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->drawLobster(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/mediapicker/entries/StyleEntry;)V

    .line 1844
    .end local v8    # "x":I
    .end local v21    # "y":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->isPositionAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIndex:I

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getItemAt(I)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-result-object v16

    .line 1846
    .local v16, "item2":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchDisabled:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1848
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    neg-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1850
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->secondIsNext:Z

    if-eqz v3, :cond_11

    const/high16 v17, 0x3f800000    # 1.0f

    .line 1852
    .local v17, "k":F
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v3

    sget v4, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1853
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    div-float/2addr v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1854
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v3

    sget v4, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextScale:F

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1856
    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v8, v3, 0x2

    .line 1857
    .restart local v8    # "x":I
    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v21, v3, 0x2

    .line 1859
    .restart local v21    # "y":I
    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    int-to-float v4, v8

    move/from16 v0, v21

    int-to-float v5, v0

    sget-object v6, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bitmap_paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1861
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchDisabled:Z

    if-nez v3, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1863
    const/4 v4, 0x0

    move/from16 v0, v21

    neg-int v5, v0

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropWidth()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropHeight()I

    move-result v7

    neg-int v9, v8

    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v10

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v10}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->drawLobster(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/mediapicker/entries/StyleEntry;)V

    .line 1867
    .end local v8    # "x":I
    .end local v17    # "k":F
    .end local v21    # "y":I
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1771
    .end local v14    # "ba":I
    .end local v15    # "item":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v16    # "item2":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .restart local v11    # "a":F
    .restart local v12    # "ai":F
    .restart local v18    # "ts":F
    .restart local v19    # "tx":F
    .restart local v20    # "ty":F
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v3, v3

    sub-float v3, v19, v3

    neg-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    .line 1773
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onPositionChanged(I)V

    goto/16 :goto_1

    .line 1782
    .end local v11    # "a":F
    .end local v12    # "ai":F
    .end local v18    # "ts":F
    .end local v19    # "tx":F
    .end local v20    # "ty":F
    :cond_b
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    .line 1784
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 1785
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationTranslateY:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 1786
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    .line 1787
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->bg_alpha:F

    .line 1788
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    .line 1789
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    .line 1792
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    if-ge v3, v4, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartX()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    if-le v3, v4, :cond_d

    .line 1797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 1799
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    if-ge v3, v4, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getStartY()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    if-le v3, v4, :cond_e

    .line 1800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 1802
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 1806
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1807
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1808
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 1810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_5

    .line 1811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_2

    .line 1844
    .restart local v14    # "ba":I
    .restart local v15    # "item":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1850
    .restart local v16    # "item2":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_11
    const/high16 v17, -0x40800000    # -1.0f

    goto/16 :goto_4
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

    .line 1443
    if-eqz p1, :cond_0

    .line 1445
    sub-int v0, p4, p2

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setViewportWidth(I)V

    .line 1446
    sub-int v0, p5, p3

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->setViewportHeight(I)V

    .line 1448
    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateScale(Z)V

    .line 1449
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    .line 1451
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 1452
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 1455
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->initialized:Z

    .line 1456
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

    .line 463
    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->preventInvalidate:Z

    if-eqz v5, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v3

    .line 466
    :cond_1
    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchDisabled:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-eq v5, v12, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->initialized:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->needDropTouches:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->inAnimationDone:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->outAnimationDone:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dropTouches()Z

    .line 470
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 471
    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->needDropTouches:Z

    goto :goto_0

    .line 476
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-le v5, v3, :cond_4

    move v1, v3

    .line 478
    .local v1, "multitouch":Z
    :goto_1
    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIsLoaded()Z

    move-result v5

    if-nez v5, :cond_5

    .line 479
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dropTouches()Z

    move-result v3

    goto :goto_0

    .end local v1    # "multitouch":Z
    :cond_4
    move v1, v4

    .line 476
    goto :goto_1

    .line 481
    .restart local v1    # "multitouch":Z
    :cond_5
    if-nez v1, :cond_6

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doubleTapped:Z

    if-eqz v5, :cond_6

    .line 482
    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doubleTapped:Z

    goto :goto_0

    .line 484
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_b

    .line 486
    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewerHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissed:Z

    if-nez v5, :cond_7

    .line 487
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDismiss()Z

    move-result v3

    goto :goto_0

    .line 489
    :cond_7
    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissed:Z

    if-nez v5, :cond_0

    .line 492
    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragging:Z

    .line 493
    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    .line 495
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    .line 497
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v11

    .line 502
    .local v0, "halfedWidth":F
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    cmpl-float v5, v5, v0

    if-lez v5, :cond_8

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-lez v5, :cond_8

    .line 503
    invoke-direct {p0, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->goToPrev(Z)Z

    move-result v3

    goto/16 :goto_0

    .line 505
    :cond_8
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_9

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v6}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_9

    .line 506
    invoke-direct {p0, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->goToNext(Z)Z

    move-result v3

    goto/16 :goto_0

    .line 508
    :cond_9
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_a

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_a

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_a

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    .line 509
    :cond_a
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v8, v8

    invoke-direct {p0, v6, v7, v8}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    int-to-float v9, v9

    invoke-direct {p0, v7, v8, v9}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

    .line 512
    .end local v0    # "halfedWidth":F
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_e

    .line 514
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->abortScrollerAnimation()V

    .line 516
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 518
    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->interpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getAnimationRatio()F

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 519
    .local v2, "ratio":F
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationStartTime:J

    .line 521
    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doAnimate(F)V

    .line 524
    .end local v2    # "ratio":F
    :cond_c
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateDragInfo(Landroid/view/MotionEvent;)V

    .line 526
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousCallbackIndex:I

    if-eq v5, v12, :cond_d

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousCallbackIndex:I

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-eq v5, v6, :cond_e

    .line 528
    :cond_d
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchPhoto()V

    .line 529
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->cancelPostSwitch()Z

    .line 533
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_17

    if-nez v1, :cond_17

    .line 535
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->needDropPinch()Z

    move-result v5

    if-nez v5, :cond_0

    .line 538
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v5, v6, :cond_f

    .line 540
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateDragInfo(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 545
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateHorizontalTranslate(F)V

    .line 547
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_11

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v5, :cond_11

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v5, :cond_11

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopY:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_10

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_11

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragging:Z

    if-nez v5, :cond_11

    .line 548
    :cond_10
    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 550
    :cond_11
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_12

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v5, :cond_12

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v5, :cond_12

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_12

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragging:Z

    if-nez v5, :cond_12

    .line 552
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragging:Z

    .line 554
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_1b

    .line 556
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    .line 557
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 566
    :cond_12
    :goto_2
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartTranslateY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 568
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_13

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-eqz v5, :cond_1c

    .line 570
    :cond_13
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_14

    .line 571
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 573
    :cond_14
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_15

    .line 574
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v7, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v11

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 584
    :cond_15
    :goto_3
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_20

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    if-lez v5, :cond_20

    .line 586
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onPositionChanged(I)V

    .line 597
    :goto_4
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_16

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchDisabled:Z

    if-eqz v5, :cond_16

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoViewportSize:I

    if-nez v5, :cond_16

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v5, :cond_16

    .line 599
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_22

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_22

    .line 601
    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchPhoto(Z)V

    .line 602
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    .line 603
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 613
    :cond_16
    :goto_5
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidate()V

    .line 615
    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getVisibility()I

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_17

    .line 616
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidateOverlayView()V

    .line 619
    :cond_17
    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    if-nez v5, :cond_18

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animationNotEnded()Z

    move-result v5

    if-eqz v5, :cond_19

    :cond_18
    if-nez v1, :cond_0

    .line 622
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_24

    .line 624
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1a

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_23

    .line 625
    :cond_1a
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->disallowZoom:Z

    goto/16 :goto_0

    .line 561
    :cond_1b
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    .line 562
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    goto/16 :goto_2

    .line 578
    :cond_1c
    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->closeEnabled:Z

    if-eqz v5, :cond_1e

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopX:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_1e

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopY:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1d

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    if-eqz v5, :cond_1e

    :cond_1d
    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragging:Z

    if-nez v5, :cond_1e

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getIsCurrentImageLoaded()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 579
    :cond_1e
    iput v10, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    goto/16 :goto_3

    .line 580
    :cond_1f
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchSlopY:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_15

    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchDisabled:Z

    if-nez v5, :cond_15

    .line 581
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onPrepareDismiss()V

    goto/16 :goto_3

    .line 588
    :cond_20
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_21

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    invoke-virtual {v6}, Lcom/vkontakte/android/mediapicker/entries/IVAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_21

    .line 590
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onPositionChanged(I)V

    goto/16 :goto_4

    .line 594
    :cond_21
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onPositionChanged(I)V

    goto/16 :goto_4

    .line 605
    :cond_22
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    cmpl-float v5, v5, v10

    if-lez v5, :cond_16

    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16

    .line 607
    invoke-direct {p0, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchPhoto(Z)V

    .line 608
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartX:F

    .line 609
    iget v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getViewportWidth()I

    move-result v6

    sget v7, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->PAGE_SPACING:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    goto/16 :goto_5

    .line 627
    :cond_23
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updatePinchInfo(Landroid/view/MotionEvent;)V

    .line 630
    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    if-ne v5, v6, :cond_26

    .line 632
    iget-boolean v5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->disallowZoom:Z

    if-eqz v5, :cond_25

    .line 633
    iput-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->disallowZoom:Z

    goto/16 :goto_0

    .line 635
    :cond_25
    iput v12, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dragStartPointerId:I

    .line 637
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->resetScale(Z)V

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pinchEndTime:J

    .line 642
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

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    invoke-direct {p0, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getCanZoom(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 644
    iget-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->disallowZoom:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->dismissing:Z

    if-nez v4, :cond_0

    .line 647
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->doZoom(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->preventInvalidate:Z

    if-nez v0, :cond_0

    .line 1434
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1436
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 1438
    :cond_0
    return-void
.end method

.method public resetScale(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x0

    .line 390
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    if-eqz p1, :cond_2

    .line 392
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v2, v4, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

    .line 393
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 395
    :cond_2
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 397
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    .line 399
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    int-to-float v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v0

    .line 400
    .local v0, "atx":F
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    int-to-float v4, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->clamp(FFF)F

    move-result v1

    .line 402
    .local v1, "aty":F
    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumScale:F

    invoke-direct {p0, v2, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/vkontakte/android/mediapicker/entries/IVAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->adapter:Lcom/vkontakte/android/mediapicker/entries/IVAdapter;

    .line 1300
    return-void
.end method

.method public setCloseEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1247
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->closeEnabled:Z

    .line 1248
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1266
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    .line 1267
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->nextIndex:I

    .line 1268
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->previousIndex:I

    .line 1269
    return-void
.end method

.method public setCurrentScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 1278
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    .line 1280
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->updateMinMax(F)V

    .line 1281
    return-void
.end method

.method public setLimitOffsets(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1336
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitX:I

    .line 1337
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->limitY:I

    .line 1338
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 1273
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    .line 1274
    return-void
.end method

.method public setMinimumScale(IF)V
    .locals 3
    .param p1, "pseudoViewportSize"    # I
    .param p2, "scale"    # F

    .prologue
    .line 1352
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    .line 1354
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoScale:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoTranslateX:F

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoTranslateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

    .line 1356
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer$7;-><init>(Lcom/vkontakte/android/mediapicker/ui/ImageViewer;IF)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1367
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

    .line 1398
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    cmpl-float v0, p5, v0

    if-nez v0, :cond_0

    .line 1408
    :goto_0
    return-void

    .line 1401
    :cond_0
    iput p5, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    .line 1402
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumX:I

    .line 1403
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumY:I

    .line 1404
    iput p3, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumX:I

    .line 1405
    iput p4, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->maximumY:I

    .line 1407
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    invoke-direct {p0, v0, v1, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->animateTo(FFF)V

    goto :goto_0
.end method

.method public setOnBackgroundUpdateListener(Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onBackgroundUpdateListener:Lcom/vkontakte/android/mediapicker/entries/IVBackgroundListener;

    .line 1327
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onImageClickListener:Landroid/view/View$OnClickListener;

    .line 1421
    return-void
.end method

.method public setOnDismissListener(Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onDismissListener:Lcom/vkontakte/android/mediapicker/entries/IVDismissListener;

    .line 1322
    return-void
.end method

.method public setOnNavigationListener(Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;)V
    .locals 0
    .param p1, "navigationListener"    # Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onNavigationListener:Lcom/vkontakte/android/mediapicker/entries/IVNavigationListener;

    .line 1317
    return-void
.end method

.method public setOnZoomListener(Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->onZoomListener:Lcom/vkontakte/android/mediapicker/entries/IVZoomListener;

    .line 1332
    return-void
.end method

.method public setPreventInvalidate(Z)V
    .locals 0
    .param p1, "prevent"    # Z

    .prologue
    .line 1259
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->preventInvalidate:Z

    .line 1261
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->postInvalidate()V

    .line 1262
    return-void
.end method

.method public setPseudoScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 1294
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoScale:F

    .line 1295
    return-void
.end method

.method public setPseudoTranslate(FF)V
    .locals 0
    .param p1, "tx"    # F
    .param p2, "ty"    # F

    .prologue
    .line 1285
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoTranslateX:F

    .line 1286
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->pseudoTranslateY:F

    .line 1288
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateX:F

    .line 1289
    iput p2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->translateY:F

    .line 1290
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 408
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->switchDisabled:Z

    .line 409
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setThumb(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->getOverlayView()Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailView:Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/ViewWithClipping;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 266
    return-void
.end method

.method public setThumbnailRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    .line 1254
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->invalidateOverlayView()V

    .line 1255
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    .line 413
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchDisabled:Z

    .line 415
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->touchDisabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->currentScale:F

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->minimumScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->resetScale(Z)V

    .line 417
    :cond_0
    return-void

    .line 413
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setViewportHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->viewerHeight:I

    .line 226
    return-void
.end method

.method public setViewportWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->viewerWidth:I

    .line 236
    return-void
.end method

.method public updateThumbnailRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->thumbnailRect:Landroid/graphics/Rect;

    .line 1725
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/ImageViewer;->overlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1726
    return-void
.end method
