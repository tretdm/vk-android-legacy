.class public Lcom/vkontakte/android/ui/PhotoView;
.super Landroid/view/View;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/PhotoView$ZoomListener;,
        Lcom/vkontakte/android/ui/PhotoView$DismissListener;,
        Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;,
        Lcom/vkontakte/android/ui/PhotoView$Texture;,
        Lcom/vkontakte/android/ui/PhotoView$NavigationListener;,
        Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;
    }
.end annotation


# static fields
.field public static final PAGE_SPACING:I

.field private static final TAG:Ljava/lang/String; = "vk_photoview"

.field public static final THUMB_ANIM_DURATION:I = 0x12c


# instance fields
.field private adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

.field private animDuration:J

.field private animScale:F

.field private animStartTime:J

.field private animTx:F

.field private animTy:F

.field private bgAlpha:F

.field private bgPaint:Landroid/graphics/Paint;

.field private bitmapPaint:Landroid/graphics/Paint;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private density:F

.field private detector:Landroid/view/GestureDetector;

.field private disallowZoom:Z

.field private dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

.field private dismissed:Z

.field private dismissing:Z

.field private doubleTap:Z

.field private dragStartPointerID:I

.field private dragStartTx:F

.field private dragStartTy:F

.field private dragStartX:F

.field private dragStartY:F

.field private dragging:Z

.field private dropTouches:Z

.field private error:Lcom/vkontakte/android/ui/ErrorView;

.field private firstResume:Z

.field private fitBySmallestSide:Z

.field private inAnimDone:Z

.field private inited:Z

.field private isList:Z

.field private itrp:Landroid/view/animation/Interpolator;

.field private limitX:I

.field private limitY:I

.field private listPosition:I

.field private loadingBitmaps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private maxScale:F

.field private maxX:I

.field private maxY:I

.field private minScale:F

.field private minX:I

.field private minY:I

.field private navListener:Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

.field private outAnimDone:Z

.field private overlay:Landroid/widget/FrameLayout;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchEndTime:J

.field private pinchStartDist:F

.field private pinchStartScale:F

.field private postedPhotoSwitch:Ljava/lang/Runnable;

.field private prevCallbackPos:I

.field private prevSwitchFwd:Z

.field private progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

.field private resetOnResize:Z

.field private scale:F

.field private scaleNext:F

.field private scalePrev:F

.field private scaleStartTx:F

.field private scaleStartTy:F

.field private scroller:Landroid/widget/Scroller;

.field private secondIsNext:Z

.field private showProgress:Ljava/lang/Runnable;

.field private texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

.field private texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

.field private textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

.field private texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

.field private thumbRect:Landroid/graphics/Rect;

.field private thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

.field private touchslop:F

.field private translateX:F

.field private translateY:F

.field private viewportH:F

.field private viewportW:F

.field private windowBg:Landroid/graphics/drawable/ColorDrawable;

.field private zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 47
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 53
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    .line 57
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    .line 62
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    .line 63
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->isList:Z

    .line 64
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 65
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    .line 66
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scalePrev:F

    .line 69
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    .line 74
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->firstResume:Z

    .line 75
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    .line 76
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->resetOnResize:Z

    .line 77
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    .line 80
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 81
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    .line 82
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->windowBg:Landroid/graphics/drawable/ColorDrawable;

    .line 83
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    .line 86
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    .line 90
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    .line 92
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    .line 93
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    .line 94
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    .line 99
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoView;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 53
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    .line 57
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    .line 62
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    .line 63
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->isList:Z

    .line 64
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 65
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    .line 66
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scalePrev:F

    .line 69
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    .line 74
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->firstResume:Z

    .line 75
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    .line 76
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->resetOnResize:Z

    .line 77
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    .line 80
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 81
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    .line 82
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->windowBg:Landroid/graphics/drawable/ColorDrawable;

    .line 83
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    .line 86
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    .line 90
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    .line 92
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    .line 93
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    .line 94
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    .line 104
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoView;->init()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    return v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/ui/PhotoView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    return p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/ui/PhotoView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/ui/PhotoView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/ui/PhotoView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    return v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    return v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/ui/PhotoView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/ui/PhotoView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/ui/PhotoView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->windowBg:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/ui/PhotoView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    return v0
.end method

.method static synthetic access$2202(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->loadPhotos(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->showProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->showProgress:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    return v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/ui/PhotoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    return v0
.end method

.method static synthetic access$3000(Lcom/vkontakte/android/ui/PhotoView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$3100(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/ui/PhotoView;[I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # [I
    .param p2, "x2"    # [Lcom/vkontakte/android/ui/PhotoView$Texture;
    .param p3, "x3"    # [I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/PhotoView;->load([I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V

    return-void
.end method

.method static synthetic access$700(Lcom/vkontakte/android/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    return v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/ui/PhotoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/ui/PhotoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    return v0
.end method

.method static synthetic access$902(Lcom/vkontakte/android/ui/PhotoView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/PhotoView;
    .param p1, "x1"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    return p1
.end method

.method private animateTo(FFF)V
    .locals 3
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F

    .prologue
    .line 747
    const-string v0, "vk_photoview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    .line 749
    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    .line 750
    iput p3, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    .line 752
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    .line 753
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 754
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 755
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-interface {v0, p1, v1, v2}, Lcom/vkontakte/android/ui/PhotoView$ZoomListener;->onZoomChanged(FFF)V

    .line 756
    :cond_0
    return-void
.end method

.method private callPositionChanged(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 740
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->navListener:Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    if-eq p1, v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->navListener:Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/ui/PhotoView$NavigationListener;->onPositionChanged(I)V

    .line 742
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    .line 744
    return-void
.end method

.method private clamp(FFF)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 323
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$Texture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/PhotoView$Texture;-><init>(Lcom/vkontakte/android/ui/PhotoView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 109
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-direct {v0, p0, v3}, Lcom/vkontakte/android/ui/PhotoView$Texture;-><init>(Lcom/vkontakte/android/ui/PhotoView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 110
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$Texture;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/PhotoView$Texture;-><init>(Lcom/vkontakte/android/ui/PhotoView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    .line 118
    new-instance v0, Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/CircularProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    .line 119
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    .line 121
    new-instance v0, Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    .line 123
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->detector:Landroid/view/GestureDetector;

    .line 124
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 125
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->density:F

    .line 126
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->setFocusable(Z)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->setFocusableInTouchMode(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->requestFocus()Z

    .line 129
    const-string v0, "vk_photoview"

    const-string v1, "photo viewer init"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setBackgroundColor(I)V

    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/PhotoView$1;-><init>(Lcom/vkontakte/android/ui/PhotoView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 141
    return-void
.end method

.method private load([I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V
    .locals 2
    .param p1, "positions"    # [I
    .param p2, "textures"    # [Lcom/vkontakte/android/ui/PhotoView$Texture;
    .param p3, "thumbPositions"    # [I

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ErrorView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 1009
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$7;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/vkontakte/android/ui/PhotoView$7;-><init>(Lcom/vkontakte/android/ui/PhotoView;[Lcom/vkontakte/android/ui/PhotoView$Texture;[I[I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1150
    return-void
.end method

.method private loadPhotos(Z)V
    .locals 7
    .param p1, "fwd"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 947
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v1}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->shouldPreload()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    if-eqz p1, :cond_6

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v2, v1}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->isCached(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 948
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v1, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v1, :cond_a

    .line 949
    new-array v2, v4, [I

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    aput v1, v2, v5

    if-eqz p1, :cond_7

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    :goto_1
    aput v1, v2, v6

    new-array v3, v4, [Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    aput-object v1, v3, v5

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    :goto_2
    aput-object v1, v3, v6

    new-array v4, v4, [I

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    aput v1, v4, v5

    if-eqz p1, :cond_9

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    :goto_3
    aput v1, v4, v6

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/ui/PhotoView;->load([I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V

    .line 983
    :cond_2
    :goto_4
    return-void

    .line 947
    :cond_3
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    .line 954
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v1, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v1, :cond_5

    .line 955
    new-array v2, v6, [I

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    aput v1, v2, v5

    new-array v3, v4, [Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    aput-object v1, v3, v5

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    :goto_5
    aput-object v1, v3, v6

    new-array v4, v4, [I

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    aput v1, v4, v5

    if-eqz p1, :cond_f

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    :goto_6
    aput v1, v4, v6

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/ui/PhotoView;->load([I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V

    .line 959
    :cond_5
    if-eqz p1, :cond_10

    .line 960
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-boolean v5, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    .line 961
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 962
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 963
    .local v0, "thumb":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 964
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-boolean v6, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 965
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    .line 966
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    .line 967
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 947
    .end local v0    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 949
    :cond_7
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    goto/16 :goto_2

    :cond_9
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 951
    :cond_a
    new-array v2, v6, [I

    if-eqz p1, :cond_b

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    :goto_7
    aput v1, v2, v5

    new-array v3, v6, [Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    :goto_8
    aput-object v1, v3, v5

    new-array v4, v6, [I

    if-eqz p1, :cond_d

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    :goto_9
    aput v1, v4, v5

    invoke-direct {p0, v2, v3, v4}, Lcom/vkontakte/android/ui/PhotoView;->load([I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V

    goto/16 :goto_4

    :cond_b
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    goto :goto_8

    :cond_d
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 955
    :cond_e
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    goto/16 :goto_5

    :cond_f
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_6

    .line 971
    :cond_10
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-boolean v5, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    .line 972
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 973
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 974
    .restart local v0    # "thumb":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 975
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-boolean v6, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 976
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    .line 977
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    .line 978
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    goto/16 :goto_4
.end method

.method private postSwitch(Z)V
    .locals 5
    .param p1, "fwd"    # Z

    .prologue
    .line 876
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$5;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/PhotoView$5;-><init>(Lcom/vkontakte/android/ui/PhotoView;Z)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    const-wide/16 v3, 0x32

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 881
    return-void
.end method

.method private switchPhoto(Z)V
    .locals 8
    .param p1, "fwd"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 885
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

    .line 886
    .local v0, "f":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 888
    .end local v0    # "f":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 889
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 890
    if-eqz p1, :cond_8

    .line 891
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 895
    :goto_1
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-gez v3, :cond_1

    .line 897
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 899
    :cond_1
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v4}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 901
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 903
    :cond_2
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    .line 904
    if-eqz p1, :cond_9

    .line 905
    const-string v3, "vk_photoview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch photo >> ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 907
    .local v2, "tmp":Lcom/vkontakte/android/ui/PhotoView$Texture;
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 908
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 910
    iput-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 921
    :goto_2
    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    .line 922
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 923
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->loadPhotos(Z)V

    .line 924
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v3, v3, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v3, v3, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_a

    .line 925
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v4, v4, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 926
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v3, v6}, Lcom/vkontakte/android/ui/ClippingImageView;->setVisibility(I)V

    .line 927
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 931
    :goto_3
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    if-eq v3, p1, :cond_3

    .line 932
    const-string v3, "vk_photoview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch dir was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :cond_3
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    .line 935
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-ne v3, v4, :cond_4

    const-string v3, "vk_photoview"

    const-string v4, "OH SHIT!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-ne v3, v4, :cond_5

    const-string v3, "vk_photoview"

    const-string v4, "OH SHIT!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-ne v3, v4, :cond_6

    const-string v3, "vk_photoview"

    const-string v4, "OH SHIT!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/CircularProgressBar;->getVisibility()I

    move-result v3

    if-nez v3, :cond_7

    .line 939
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 940
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    const/16 v4, 0x12c

    invoke-static {v3, v7, v4}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 942
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 943
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 944
    return-void

    .line 893
    .end local v2    # "tmp":Lcom/vkontakte/android/ui/PhotoView$Texture;
    :cond_8
    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    goto/16 :goto_1

    .line 912
    :cond_9
    const-string v3, "vk_photoview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch photo << ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 914
    .restart local v2    # "tmp":Lcom/vkontakte/android/ui/PhotoView$Texture;
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 915
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 917
    iput-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    goto/16 :goto_2

    .line 929
    :cond_a
    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3
.end method

.method private updateMinMax(F)V
    .locals 7
    .param p1, "scale"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 213
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v3, v3, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .local v0, "iratio":F
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float v1, v2, v3

    .line 214
    .local v1, "sratio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 215
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    if-eqz v2, :cond_2

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    .line 217
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    neg-int v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    .line 218
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    .line 220
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    neg-int v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    .line 246
    :goto_0
    return-void

    .line 222
    :cond_1
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    goto :goto_0

    .line 225
    :cond_2
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    goto :goto_0

    .line 228
    :cond_3
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_4

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    if-eqz v2, :cond_6

    .line 229
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    .line 230
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    neg-int v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    .line 231
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 232
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    div-float/2addr v3, v5

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    .line 233
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    neg-int v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    goto :goto_0

    .line 235
    :cond_5
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    goto :goto_0

    .line 238
    :cond_6
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    goto :goto_0
.end method

.method private updateScale(Z)V
    .locals 13
    .param p1, "changed"    # Z

    .prologue
    .line 172
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v10, v10

    iget-object v11, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v11, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v11, v11

    div-float v5, v10, v11

    .local v5, "iratio":F
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float v8, v10, v11

    .line 173
    .local v8, "sratio":F
    cmpl-float v10, v5, v8

    if-gtz v10, :cond_0

    iget-boolean v10, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    if-eqz v10, :cond_b

    .line 174
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    .local v1, "fw":F
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    .line 175
    .local v0, "fh":F
    iget-boolean v10, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    if-eqz v10, :cond_1

    .line 176
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v1, v10

    .line 177
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v0, v10

    .line 179
    :cond_1
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v10, v10

    div-float v10, v1, v10

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    .line 180
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v10, v10

    div-float v10, v0, v10

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    .line 185
    .end local v0    # "fh":F
    .end local v1    # "fw":F
    :goto_0
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    const/high16 v10, 0x40000000    # 2.0f

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    .line 187
    :cond_2
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_3

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_3

    if-eqz p1, :cond_4

    .line 188
    :cond_3
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 189
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    .line 192
    :cond_4
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v7, v10

    .local v7, "iw":F
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v4, v10

    .local v4, "ih":F
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v3, v10

    .local v3, "i2w":F
    :goto_1
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v2, v10

    .line 193
    .local v2, "i2h":F
    :goto_2
    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    cmpl-float v10, v4, v10

    if-nez v10, :cond_6

    .line 194
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    move v7, v4

    .line 196
    :cond_6
    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    cmpl-float v10, v2, v10

    if-nez v10, :cond_8

    .line 197
    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v2

    .line 199
    :cond_8
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    if-eqz v10, :cond_a

    .line 200
    :cond_9
    div-float v6, v3, v2

    .local v6, "iratio2":F
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float v9, v10, v11

    .line 201
    .local v9, "sratio2":F
    cmpl-float v10, v6, v9

    if-lez v10, :cond_e

    .line 202
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    div-float/2addr v10, v3

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    .line 207
    .end local v6    # "iratio2":F
    .end local v9    # "sratio2":F
    :cond_a
    :goto_3
    const-string v10, "vk_photoview"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update scale, min="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", max="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", next="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", current="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 182
    .end local v2    # "i2h":F
    .end local v3    # "i2w":F
    .end local v4    # "ih":F
    .end local v7    # "iw":F
    :cond_b
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    iget-object v11, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v11, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    .line 183
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    iget-object v11, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v11, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    goto/16 :goto_0

    .line 192
    .restart local v4    # "ih":F
    .restart local v7    # "iw":F
    :cond_c
    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .restart local v3    # "i2w":F
    :cond_d
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 204
    .restart local v2    # "i2h":F
    .restart local v6    # "iratio2":F
    .restart local v9    # "sratio2":F
    :cond_e
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float/2addr v10, v2

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    goto :goto_3
.end method

.method private updateTextures()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 327
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->isList:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v1}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 328
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 329
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 330
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 331
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v0, :cond_4

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 334
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    .line 351
    :cond_4
    :goto_0
    return-void

    .line 337
    :cond_5
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-lez v0, :cond_6

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 340
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    .line 341
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    goto :goto_0

    .line 343
    :cond_6
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v1}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 345
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    .line 347
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    goto :goto_0
.end method


# virtual methods
.method public animateIn(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clipSize"    # I

    .prologue
    .line 570
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    .line 571
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    .line 573
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->windowBg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ClippingImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/ui/PhotoView$3;-><init>(Lcom/vkontakte/android/ui/PhotoView;Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 627
    return-void
.end method

.method public animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clipSize"    # I
    .param p3, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 630
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ClippingImageView;->clearAnimation()V

    .line 633
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v1, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 635
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->requestLayout()V

    .line 636
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ClippingImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/ui/PhotoView$4;-><init>(Lcom/vkontakte/android/ui/PhotoView;Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public getOverlayView()Landroid/view/View;
    .locals 6

    .prologue
    const/high16 v4, 0x428c0000    # 70.0f

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    .line 304
    :goto_0
    return-object v0

    .line 250
    :cond_0
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$2;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/PhotoView$2;-><init>(Lcom/vkontakte/android/ui/PhotoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method public getPhotoHeight()I
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    return v0
.end method

.method public getPhotoWidth()I
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1161
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 1157
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    return v0
.end method

.method public goToNext()V
    .locals 3

    .prologue
    .line 863
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sub-float/2addr v1, v2

    sget v2, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    .line 864
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoView;->postSwitch(Z)V

    .line 866
    return-void
.end method

.method public goToPrev()V
    .locals 3

    .prologue
    .line 869
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    add-float/2addr v1, v2

    sget v2, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    .line 870
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoView;->postSwitch(Z)V

    .line 873
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 770
    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v2

    .line 771
    :cond_1
    iget-wide v4, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    iget-wide v6, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 772
    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 773
    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v4, v4, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-eqz v4, :cond_0

    .line 775
    :cond_2
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    div-float/2addr v4, v8

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float v0, v2, v4

    .line 777
    .local v0, "atx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float/2addr v4, v8

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float v1, v2, v4

    .line 778
    .local v1, "aty":F
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 779
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v5, v5

    invoke-direct {p0, v0, v4, v5}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v6, v6

    invoke-direct {p0, v1, v5, v6}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v5

    invoke-direct {p0, v2, v4, v5}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    .line 783
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_1
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    move v2, v3

    .line 784
    goto/16 :goto_0

    .line 781
    :cond_3
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-direct {p0, v2, v9, v9}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1181
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    if-nez v9, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    if-eqz v9, :cond_2

    .line 1185
    const/4 v9, 0x2

    new-array v4, v9, [I

    fill-array-data v4, :array_0

    .line 1186
    .local v4, "f":[I
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/PhotoView;->getLocationOnScreen([I)V

    .line 1187
    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v4, v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1188
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1189
    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v4, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1192
    .end local v4    # "f":[I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1193
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1194
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 1195
    .local v2, "aty":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v9, v11

    iget-wide v11, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_d

    .line 1196
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1202
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1204
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v9, v11

    long-to-float v9, v9

    iget-wide v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    long-to-float v10, v10

    div-float v0, v9, v10

    .line 1205
    .local v0, "a":F
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1206
    .local v1, "ai":F
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v1

    add-float v6, v9, v10

    .line 1207
    .local v6, "ts":F
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v1

    add-float v7, v9, v10

    .line 1208
    .local v7, "tx":F
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v1

    add-float v8, v9, v10

    .line 1209
    .local v8, "ty":F
    div-float/2addr v7, v6

    .line 1210
    div-float/2addr v8, v6

    .line 1211
    move v2, v8

    .line 1212
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v9, v9

    sub-float v9, v7, v9

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_c

    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-lez v9, :cond_c

    .line 1213
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    .line 1222
    :cond_4
    :goto_1
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1223
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1224
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 1249
    .end local v0    # "a":F
    .end local v1    # "ai":F
    .end local v6    # "ts":F
    .end local v7    # "tx":F
    .end local v8    # "ty":F
    :goto_2
    const/16 v3, 0xff

    .line 1250
    .local v3, "ba":I
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    .line 1251
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x0

    .line 1252
    :cond_5
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    .line 1253
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1256
    :cond_6
    shl-int/lit8 v9, v3, 0x18

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1258
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    if-eqz v9, :cond_9

    :cond_7
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_9

    .line 1259
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/CircularProgressBar;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    if-nez v9, :cond_8

    .line 1260
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 1265
    :cond_8
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    neg-int v10, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v11, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    neg-int v11, v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v12, p0, Lcom/vkontakte/android/ui/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1267
    :cond_9
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    if-eqz v9, :cond_b

    .line 1268
    :cond_a
    const/4 v9, 0x0

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    neg-float v10, v10

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1269
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    if-eqz v9, :cond_12

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1270
    .local v5, "k":F
    :goto_3
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v10, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    div-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1271
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v9, v10

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1272
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v10, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v5

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    div-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1273
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    neg-int v10, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v11, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    neg-int v11, v11

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    iget-object v12, p0, Lcom/vkontakte/android/ui/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1275
    .end local v5    # "k":F
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1214
    .end local v3    # "ba":I
    .restart local v0    # "a":F
    .restart local v1    # "ai":F
    .restart local v6    # "ts":F
    .restart local v7    # "tx":F
    .restart local v8    # "ty":F
    :cond_c
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v9, v9

    sub-float v9, v7, v9

    neg-float v9, v9

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v10}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_4

    .line 1215
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    goto/16 :goto_1

    .line 1226
    .end local v0    # "a":F
    .end local v1    # "ai":F
    .end local v6    # "ts":F
    .end local v7    # "tx":F
    .end local v8    # "ty":F
    :cond_d
    iget-wide v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_e

    .line 1227
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 1228
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 1229
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 1230
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    .line 1231
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    .line 1232
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-direct {p0, v9}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 1234
    :cond_e
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1235
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1236
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getStartX()I

    move-result v9

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    if-ge v9, v10, :cond_f

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getStartX()I

    move-result v9

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    if-le v9, v10, :cond_f

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 1237
    :cond_f
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getStartY()I

    move-result v9

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    if-ge v9, v10, :cond_10

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getStartY()I

    move-result v9

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    if-le v9, v10, :cond_10

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrY()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 1239
    :cond_10
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 1243
    :cond_11
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1244
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1245
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 1246
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_2

    .line 1269
    .restart local v3    # "ba":I
    :cond_12
    const/high16 v5, -0x40800000    # -1.0f

    goto/16 :goto_3

    .line 1185
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 810
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-eqz v0, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/PhotoView$DismissListener;->onDismiss()V

    .line 813
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    .line 833
    :cond_0
    :goto_0
    return v9

    .line 817
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    neg-float v0, v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 818
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x44228000    # 650.0f

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->density:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 819
    const-string v0, "vk_photoview"

    const-string v1, "Switch by velocity"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    cmpl-float v0, p3, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-lez v0, :cond_3

    .line 822
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->goToPrev()V

    goto :goto_0

    .line 823
    :cond_3
    cmpg-float v0, p3, v3

    if-gez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v1}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->goToNext()V

    goto :goto_0

    .line 829
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    iget v8, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 831
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    goto :goto_0
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

    .line 144
    if-eqz p1, :cond_0

    .line 145
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    .line 146
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    .line 147
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    .line 148
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 149
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 150
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 152
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    .line 153
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 840
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 853
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 858
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 357
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 359
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 360
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 362
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 364
    :cond_2
    const/4 v5, 0x1

    .line 566
    :goto_0
    return v5

    .line 366
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v5, v5, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v5, :cond_5

    .line 367
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 368
    const/4 v5, 0x1

    goto :goto_0

    .line 370
    :cond_5
    const/4 v3, 0x0

    .line 371
    .local v3, "d":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    if-eqz v5, :cond_6

    .line 372
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    .line 373
    const/4 v5, 0x1

    goto :goto_0

    .line 375
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 376
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_8

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    if-nez v5, :cond_8

    .line 377
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    invoke-interface {v5}, Lcom/vkontakte/android/ui/PhotoView$DismissListener;->onDismiss()V

    .line 378
    :cond_7
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    .line 379
    const/4 v5, 0x1

    goto :goto_0

    .line 381
    :cond_8
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    .line 382
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    .line 383
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_9

    .line 385
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 387
    :cond_9
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-lez v5, :cond_a

    .line 388
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->goToPrev()V

    .line 389
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 391
    :cond_a
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v6, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_b

    .line 392
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->goToNext()V

    .line 393
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 395
    :cond_b
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_c

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_c

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_c

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_d

    .line 396
    :cond_c
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v8, v8

    invoke-direct {p0, v6, v7, v8}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v8, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v9, v9

    invoke-direct {p0, v7, v8, v9}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    .line 402
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_12

    .line 403
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 404
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_f

    .line 406
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    invoke-interface {v5, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 407
    .local v0, "at":F
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    .line 408
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 409
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 410
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 411
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 413
    .end local v0    # "at":F
    :cond_f
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    if-eqz v5, :cond_10

    .line 414
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 415
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    .line 417
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 418
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    .line 419
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTx:F

    .line 420
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTy:F

    .line 421
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 422
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-eq v5, v6, :cond_12

    .line 423
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_14

    .line 424
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 425
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 426
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    .line 432
    :cond_11
    :goto_1
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoView;->updateTextures()V

    .line 433
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 435
    const-string v5, "vk_photoview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Already switched "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    const-wide/16 v9, 0x12c

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-ltz v5, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_15

    .line 441
    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 427
    :cond_14
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_11

    .line 428
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 429
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 430
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    goto :goto_1

    .line 443
    :cond_15
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v5, v6, :cond_16

    .line 444
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    .line 446
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTx:F

    .line 447
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTy:F

    .line 448
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 449
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 454
    :cond_16
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    if-gtz v5, :cond_17

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->isList:Z

    if-eqz v5, :cond_20

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-nez v5, :cond_20

    .line 455
    :cond_17
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 456
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoView;->updateTextures()V

    .line 460
    :goto_2
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_19

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_18

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_19

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    if-nez v5, :cond_19

    .line 461
    :cond_18
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 462
    :cond_19
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1a

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1a

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    if-nez v5, :cond_1a

    .line 463
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    .line 464
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_21

    .line 465
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 466
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 473
    :cond_1a
    :goto_3
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTy:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 474
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_22

    .line 475
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b

    .line 476
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 477
    :cond_1b
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1c

    .line 478
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 501
    :cond_1c
    :goto_4
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_28

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-lez v5, :cond_28

    .line 502
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    .line 508
    :goto_5
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1d

    .line 510
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2a

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2a

    .line 511
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    .line 512
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 513
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 520
    :cond_1d
    :goto_6
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 521
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/ClippingImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1e

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->invalidate()V

    .line 523
    :cond_1e
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-nez v5, :cond_1f

    iget-wide v5, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2b

    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2b

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 458
    :cond_20
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    goto/16 :goto_2

    .line 468
    :cond_21
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 469
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    goto/16 :goto_3

    .line 479
    :cond_22
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    .line 480
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_24

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_23

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-eqz v5, :cond_24

    :cond_23
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    if-eqz v5, :cond_25

    .line 481
    :cond_24
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    goto/16 :goto_4

    .line 482
    :cond_25
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1c

    .line 487
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    if-eqz v5, :cond_26

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-nez v5, :cond_26

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    if-nez v5, :cond_26

    .line 488
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    invoke-interface {v5}, Lcom/vkontakte/android/ui/PhotoView$DismissListener;->onPrepareDismiss()V

    .line 489
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_27

    .line 490
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    .line 491
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 497
    :cond_26
    :goto_7
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    goto/16 :goto_4

    .line 493
    :cond_27
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    .line 494
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    goto :goto_7

    .line 503
    :cond_28
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_29

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v6, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_29

    .line 504
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    goto/16 :goto_5

    .line 506
    :cond_29
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    goto/16 :goto_5

    .line 514
    :cond_2a
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1d

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1d

    .line 515
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    .line 516
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 517
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    goto/16 :goto_6

    .line 525
    :cond_2b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2e

    .line 528
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2c

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2d

    .line 529
    :cond_2c
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    .line 530
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 532
    :cond_2d
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartDist:F

    .line 533
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartScale:F

    .line 534
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchCenterX:F

    .line 535
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchCenterY:F

    .line 536
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleStartTx:F

    .line 537
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleStartTy:F

    .line 539
    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    if-ne v5, v6, :cond_31

    .line 540
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    if-eqz v5, :cond_2f

    .line 541
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    .line 542
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 544
    :cond_2f
    const/4 v5, -0x1

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 545
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_33

    .line 546
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    .line 547
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 554
    :cond_30
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    .line 556
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    if-ne v5, v6, :cond_37

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_37

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    if-eqz v5, :cond_32

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-interface {v5, v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->allowZoom(I)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 557
    :cond_32
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    if-eqz v5, :cond_34

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 548
    :cond_33
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_30

    .line 549
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 550
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v1

    .line 551
    .local v1, "atx":F
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v2

    .line 552
    .local v2, "aty":F
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v5, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    goto :goto_8

    .line 558
    .end local v1    # "atx":F
    .end local v2    # "aty":F
    :cond_34
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-eqz v5, :cond_35

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 559
    :cond_35
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v4, v5

    .line 560
    .local v4, "pinchDist":F
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartDist:F

    div-float v5, v4, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartScale:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 561
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchCenterX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchCenterX:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleStartTx:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v8, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartScale:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 562
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchCenterY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchCenterY:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleStartTy:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v8, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartScale:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 563
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v8, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-interface {v5, v6, v7, v8}, Lcom/vkontakte/android/ui/PhotoView$ZoomListener;->onZoomChanged(FFF)V

    .line 564
    :cond_36
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 566
    .end local v4    # "pinchDist":F
    :cond_37
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/4 v3, 0x0

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 702
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 703
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 704
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 706
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 707
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 708
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    .line 713
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 710
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-direct {p0, v0, v3, v3}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;)V
    .locals 3
    .param p1, "a"    # Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    .prologue
    .line 986
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    .line 987
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    if-eqz v2, :cond_0

    .line 988
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->loadPhotos(Z)V

    .line 1001
    :goto_0
    return-void

    .line 990
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 991
    .local v0, "tt":J
    new-instance v2, Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/vkontakte/android/ui/PhotoView$6;-><init>(Lcom/vkontakte/android/ui/PhotoView;J)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    return-void
.end method

.method public setDismissListener(Lcom/vkontakte/android/ui/PhotoView$DismissListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    .line 733
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/ErrorView;->setMessage(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public setFitBySmallestSide(Z)V
    .locals 0
    .param p1, "fit"    # Z

    .prologue
    .line 1173
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    .line 1174
    return-void
.end method

.method public setLimitOffsets(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 722
    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    .line 723
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    .line 725
    return-void
.end method

.method public setNavigationListener(Lcom/vkontakte/android/ui/PhotoView$NavigationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->navListener:Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

    .line 729
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 718
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->clickListener:Landroid/view/View$OnClickListener;

    .line 719
    return-void
.end method

.method public setPosition(I)V
    .locals 6
    .param p1, "p"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 156
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-ne v0, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 160
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    .line 161
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 162
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->shouldPreload()Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [I

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    aput v1, v0, v5

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    :goto_1
    new-array v1, v3, [Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    aput-object v2, v1, v4

    new-array v2, v3, [I

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    aput v3, v2, v5

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->load([I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V

    .line 164
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    goto :goto_0

    .line 163
    :cond_2
    new-array v0, v4, [I

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    aput v1, v0, v5

    goto :goto_1
.end method

.method public setResetOnResize(Z)V
    .locals 0
    .param p1, "reset"    # Z

    .prologue
    .line 1177
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->resetOnResize:Z

    .line 1178
    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;
    .param p2, "showProgress"    # Z

    .prologue
    const/16 v0, 0x8

    .line 308
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 309
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/ClippingImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 310
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->error:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 312
    return-void
.end method

.method public setThumbBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    .line 1280
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1281
    return-void
.end method

.method public setZoomListener(Lcom/vkontakte/android/ui/PhotoView$ZoomListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    .line 737
    return-void
.end method
