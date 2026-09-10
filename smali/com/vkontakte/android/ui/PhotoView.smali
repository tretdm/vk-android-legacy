.class public Lcom/vkontakte/android/ui/PhotoView;
.super Landroid/view/View;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/PhotoView$DismissListener;,
        Lcom/vkontakte/android/ui/PhotoView$NavigationListener;,
        Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;,
        Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;,
        Lcom/vkontakte/android/ui/PhotoView$Texture;,
        Lcom/vkontakte/android/ui/PhotoView$ZoomListener;
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
    .line 41
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    sput v0, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 50
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 56
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    .line 65
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    .line 66
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->isList:Z

    .line 67
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 68
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    .line 69
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scalePrev:F

    .line 72
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    .line 77
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->firstResume:Z

    .line 78
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    .line 79
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->resetOnResize:Z

    .line 80
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    .line 83
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 84
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    .line 85
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->windowBg:Landroid/graphics/drawable/ColorDrawable;

    .line 86
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    .line 89
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    .line 93
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    .line 95
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    .line 96
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    .line 97
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    .line 101
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoView;->init()V

    .line 102
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

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 56
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    .line 62
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    .line 65
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    .line 66
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->isList:Z

    .line 67
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 68
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    .line 69
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scalePrev:F

    .line 72
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    .line 77
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->firstResume:Z

    .line 78
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    .line 79
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->resetOnResize:Z

    .line 80
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    .line 83
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 84
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    .line 85
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->windowBg:Landroid/graphics/drawable/ColorDrawable;

    .line 86
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    .line 89
    iput v4, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    .line 93
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    .line 95
    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    .line 96
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    .line 97
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    .line 106
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoView;->init()V

    .line 107
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/CircularProgressBar;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/PhotoView;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/PhotoView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/PhotoView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/ClippingImageView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/PhotoView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->windowBg:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/PhotoView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ui/PhotoView;F)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/PhotoView;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    return v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/ui/PhotoView;F)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/ui/PhotoView;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    return v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->loadPhotos(Z)V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/ui/PhotoView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/ui/PhotoView;Z)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/ui/PhotoView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    return v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/ui/PhotoView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->showProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/ui/PhotoView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->showProgress:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    return v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    return v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/ui/PhotoView;F)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$32(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/ui/PhotoView;)Lcom/vkontakte/android/ui/PhotoView$Texture;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/PhotoView;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/PhotoView;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    return-wide v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/PhotoView;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/PhotoView;)F
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    return v0
.end method

.method private animateTo(FFF)V
    .locals 3
    .param p1, "newScale"    # F
    .param p2, "newTx"    # F
    .param p3, "newTy"    # F

    .prologue
    .line 728
    const-string v0, "vk_photoview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "animate to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 729
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    .line 730
    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    .line 731
    iput p3, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    .line 732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    .line 733
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    .line 734
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 735
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 736
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-interface {v0, p1, v1, v2}, Lcom/vkontakte/android/ui/PhotoView$ZoomListener;->onZoomChanged(FFF)V

    .line 737
    :cond_0
    return-void
.end method

.method private callPositionChanged(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->navListener:Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    if-eq p1, v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->navListener:Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/ui/PhotoView$NavigationListener;->onPositionChanged(I)V

    .line 723
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    .line 725
    return-void
.end method

.method private clamp(FFF)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F

    .prologue
    .line 307
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$Texture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/PhotoView$Texture;-><init>(Lcom/vkontakte/android/ui/PhotoView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 111
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/ui/PhotoView$Texture;-><init>(Lcom/vkontakte/android/ui/PhotoView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 112
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$Texture;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/PhotoView$Texture;-><init>(Lcom/vkontakte/android/ui/PhotoView;I)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    .line 120
    new-instance v0, Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/CircularProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    .line 122
    new-instance v0, Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    .line 124
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->detector:Landroid/view/GestureDetector;

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 126
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->density:F

    .line 127
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->setFocusable(Z)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->setFocusableInTouchMode(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->requestFocus()Z

    .line 130
    const-string v0, "vk_photoview"

    const-string v1, "photo viewer init"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method private load([I[Lcom/vkontakte/android/ui/PhotoView$Texture;[I)V
    .locals 7
    .param p1, "positions"    # [I
    .param p2, "textures"    # [Lcom/vkontakte/android/ui/PhotoView$Texture;
    .param p3, "thumbPositions"    # [I

    .prologue
    .line 985
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 986
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "dsfa"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk_photoview"

    const-string v3, "load"

    invoke-static {v2, v3, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 987
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/ui/PhotoView$6;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/vkontakte/android/ui/PhotoView$6;-><init>(Lcom/vkontakte/android/ui/PhotoView;[Lcom/vkontakte/android/ui/PhotoView$Texture;[I[I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1113
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1114
    return-void

    .line 985
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_0
    aget v0, p1, v2

    .local v0, "p":I
    const-string v4, "vk_photoview"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Load "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadPhotos(Z)V
    .locals 7
    .param p1, "fwd"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 928
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

    .line 929
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v1, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v1, :cond_a

    .line 930
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

    .line 964
    :cond_2
    :goto_4
    return-void

    .line 928
    :cond_3
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    .line 935
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v1, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v1, :cond_5

    .line 936
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

    .line 940
    :cond_5
    if-eqz p1, :cond_10

    .line 941
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-boolean v5, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    .line 942
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 943
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 944
    .local v0, "thumb":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 945
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-boolean v6, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 946
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    .line 947
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    .line 948
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 928
    .end local v0    # "thumb":Landroid/graphics/Bitmap;
    :cond_6
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 930
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

    .line 932
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

    .line 936
    :cond_e
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    goto/16 :goto_5

    :cond_f
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_6

    .line 952
    :cond_10
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-boolean v5, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    .line 953
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 954
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getThumb(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 955
    .restart local v0    # "thumb":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 956
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-boolean v6, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    .line 957
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    .line 958
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    .line 959
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v0, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    goto/16 :goto_4
.end method

.method private postSwitch(Z)V
    .locals 5
    .param p1, "fwd"    # Z

    .prologue
    .line 857
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$4;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/PhotoView$4;-><init>(Lcom/vkontakte/android/ui/PhotoView;Z)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    .line 861
    iget-wide v1, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    const-wide/16 v3, 0x32

    add-long/2addr v1, v3

    .line 857
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 862
    return-void
.end method

.method private switchPhoto(Z)V
    .locals 7
    .param p1, "fwd"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 866
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_7

    .line 870
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->loadingBitmaps:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 871
    if-eqz p1, :cond_8

    .line 872
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 876
    :goto_2
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-gez v2, :cond_0

    .line 878
    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 880
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v3}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 882
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v2}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 884
    :cond_1
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    .line 885
    if-eqz p1, :cond_9

    .line 886
    const-string v2, "vk_photoview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Switch photo >> ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 888
    .local v1, "tmp":Lcom/vkontakte/android/ui/PhotoView$Texture;
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 889
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 891
    iput-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 902
    :goto_3
    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    .line 903
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 904
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/PhotoView;->loadPhotos(Z)V

    .line 905
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    .line 906
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v3, v3, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 907
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/ui/ClippingImageView;->setVisibility(I)V

    .line 908
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    .line 912
    :goto_4
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    if-eq v2, p1, :cond_2

    .line 913
    const-string v2, "vk_photoview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Switch dir was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_2
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->prevSwitchFwd:Z

    .line 916
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-ne v2, v3, :cond_3

    const-string v2, "vk_photoview"

    const-string v3, "OH SHIT!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-ne v2, v3, :cond_4

    const-string v2, "vk_photoview"

    const-string v3, "OH SHIT!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v3, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-ne v2, v3, :cond_5

    const-string v2, "vk_photoview"

    const-string v3, "OH SHIT!"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    :cond_5
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/CircularProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 920
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 921
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    const/16 v3, 0x12c

    invoke-static {v2, v6, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 923
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 924
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 925
    return-void

    .line 866
    .end local v1    # "tmp":Lcom/vkontakte/android/ui/PhotoView$Texture;
    :cond_7
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;

    .line 867
    .local v0, "f":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;->cancel(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 869
    .end local v0    # "f":Lcom/vkontakte/android/ui/PhotoView$RunnableFuture;, "Lcom/vkontakte/android/ui/PhotoView$RunnableFuture<Landroid/graphics/Bitmap;>;"
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 874
    :cond_8
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    goto/16 :goto_2

    .line 893
    :cond_9
    const-string v2, "vk_photoview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Switch photo << ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 895
    .restart local v1    # "tmp":Lcom/vkontakte/android/ui/PhotoView$Texture;
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 896
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 898
    iput-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    goto/16 :goto_3

    .line 910
    :cond_a
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4
.end method

.method private updateMinMax(F)V
    .locals 7
    .param p1, "scale"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 203
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

    .line 204
    .local v1, "sratio":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_3

    .line 205
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    if-eqz v2, :cond_2

    .line 206
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

    .line 207
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    neg-int v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    .line 208
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

    .line 209
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

    .line 210
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    neg-int v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    .line 236
    :goto_0
    return-void

    .line 212
    :cond_1
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    goto :goto_0

    .line 215
    :cond_2
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    goto :goto_0

    .line 218
    :cond_3
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_4

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    if-eqz v2, :cond_6

    .line 219
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

    .line 220
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    neg-int v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    .line 221
    iget-object v2, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v2, v2, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 222
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

    .line 223
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    neg-int v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    goto :goto_0

    .line 225
    :cond_5
    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    iput v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    goto :goto_0

    .line 228
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
    .line 162
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

    .line 163
    .local v8, "sratio":F
    cmpl-float v10, v5, v8

    if-gtz v10, :cond_0

    iget-boolean v10, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    if-eqz v10, :cond_b

    .line 164
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    .local v1, "fw":F
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    .line 165
    .local v0, "fh":F
    iget-boolean v10, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    if-eqz v10, :cond_1

    .line 166
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v1, v10

    .line 167
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    mul-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v0, v10

    .line 169
    :cond_1
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v10, v10

    div-float v10, v1, v10

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    .line 170
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    int-to-float v10, v10

    div-float v10, v0, v10

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    .line 175
    .end local v0    # "fh":F
    .end local v1    # "fw":F
    :goto_0
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    const/high16 v10, 0x40000000    # 2.0f

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    .line 177
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

    .line 178
    :cond_3
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 179
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    .line 182
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

    :goto_1
    int-to-float v3, v10

    .local v3, "i2w":F
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    :goto_2
    int-to-float v2, v10

    .line 183
    .local v2, "i2h":F
    const/4 v10, 0x0

    cmpl-float v10, v7, v10

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    cmpl-float v10, v4, v10

    if-nez v10, :cond_6

    .line 184
    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    move v7, v4

    .line 186
    :cond_6
    const/4 v10, 0x0

    cmpl-float v10, v3, v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    cmpl-float v10, v2, v10

    if-nez v10, :cond_8

    .line 187
    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v2

    .line 189
    :cond_8
    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    if-eqz v10, :cond_a

    .line 190
    :cond_9
    div-float v6, v3, v2

    .local v6, "iratio2":F
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float v9, v10, v11

    .line 191
    .local v9, "sratio2":F
    cmpl-float v10, v6, v9

    if-lez v10, :cond_e

    .line 192
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    div-float/2addr v10, v3

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    .line 197
    .end local v6    # "iratio2":F
    .end local v9    # "sratio2":F
    :cond_a
    :goto_3
    const-string v10, "vk_photoview"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Update scale, min="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 200
    return-void

    .line 172
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

    .line 173
    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    iget-object v11, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v11, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    goto/16 :goto_0

    .line 182
    .restart local v4    # "ih":F
    .restart local v7    # "iw":F
    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_1

    .restart local v3    # "i2w":F
    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 194
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

    .line 311
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

    .line 312
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 313
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 314
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 315
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v0, :cond_4

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 318
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    .line 335
    :cond_4
    :goto_0
    return-void

    .line 321
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

    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texturePrev:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 324
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    .line 325
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    goto :goto_0

    .line 327
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

    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->textureNext:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    .line 331
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    goto :goto_0
.end method


# virtual methods
.method public animateIn(Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clipSize"    # I

    .prologue
    .line 551
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    .line 552
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    .line 554
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->windowBg:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ClippingImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/ui/PhotoView$2;-><init>(Lcom/vkontakte/android/ui/PhotoView;Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 608
    return-void
.end method

.method public animateOut(Landroid/graphics/Rect;ILjava/lang/Runnable;)V
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "clipSize"    # I
    .param p3, "after"    # Ljava/lang/Runnable;

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ClippingImageView;->clearAnimation()V

    .line 614
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v0, v0, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v1, v1, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->requestLayout()V

    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ClippingImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ui/PhotoView$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vkontakte/android/ui/PhotoView$3;-><init>(Lcom/vkontakte/android/ui/PhotoView;Landroid/graphics/Rect;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public getOverlayView()Landroid/view/View;
    .locals 6

    .prologue
    const/high16 v4, 0x428c0000    # 70.0f

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    .line 293
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v0, Lcom/vkontakte/android/ui/PhotoView$1;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/PhotoView$1;-><init>(Lcom/vkontakte/android/ui/PhotoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    .line 290
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 291
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

    .line 293
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method public getPhotoHeight()I
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    return v0
.end method

.method public getPhotoWidth()I
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v0, v0, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 1125
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    return v0
.end method

.method public getTranslateX()F
    .locals 1

    .prologue
    .line 1117
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    return v0
.end method

.method public getTranslateY()F
    .locals 1

    .prologue
    .line 1121
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    return v0
.end method

.method public goToNext()V
    .locals 3

    .prologue
    .line 844
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

    .line 845
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoView;->postSwitch(Z)V

    .line 847
    return-void
.end method

.method public goToPrev()V
    .locals 3

    .prologue
    .line 850
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

    .line 851
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoView;->postSwitch(Z)V

    .line 854
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

    .line 751
    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_1

    .line 765
    :cond_0
    :goto_0
    return v2

    .line 752
    :cond_1
    iget-wide v4, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    iget-wide v6, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 753
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

    .line 754
    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v4, v4, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-eqz v4, :cond_0

    .line 755
    :cond_2
    const-string v2, "vk_photoview"

    const-string v4, "Double tap"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 757
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

    .line 758
    .local v0, "atx":F
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float/2addr v2, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    div-float/2addr v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    sub-float v1, v2, v4

    .line 759
    .local v1, "aty":F
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 760
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

    .line 764
    .end local v0    # "atx":F
    .end local v1    # "aty":F
    :goto_1
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    move v2, v3

    .line 765
    goto/16 :goto_0

    .line 762
    :cond_3
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-direct {p0, v2, v9, v9}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1145
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    if-nez v9, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    if-eqz v9, :cond_2

    .line 1149
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 1150
    .local v4, "f":[I
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/PhotoView;->getLocationOnScreen([I)V

    .line 1151
    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v4, v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1152
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1153
    const/4 v9, 0x0

    const/4 v10, 0x1

    aget v10, v4, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1156
    .end local v4    # "f":[I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1157
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1158
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 1159
    .local v2, "aty":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v9, v11

    iget-wide v11, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_d

    .line 1160
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1166
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1168
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v9, v11

    long-to-float v9, v9

    iget-wide v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    long-to-float v10, v10

    div-float v0, v9, v10

    .line 1169
    .local v0, "a":F
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->itrp:Landroid/view/animation/Interpolator;

    invoke-interface {v9, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1170
    .local v1, "ai":F
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v1

    add-float v6, v9, v10

    .line 1171
    .local v6, "ts":F
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v1

    add-float v7, v9, v10

    .line 1172
    .local v7, "tx":F
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v1

    add-float v8, v9, v10

    .line 1173
    .local v8, "ty":F
    div-float/2addr v7, v6

    .line 1174
    div-float/2addr v8, v6

    .line 1175
    move v2, v8

    .line 1176
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

    .line 1177
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v9, v9, -0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    .line 1186
    :cond_4
    :goto_1
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1187
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1188
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 1213
    .end local v0    # "a":F
    .end local v1    # "ai":F
    .end local v6    # "ts":F
    .end local v7    # "tx":F
    .end local v8    # "ty":F
    :goto_2
    const/16 v3, 0xff

    .line 1214
    .local v3, "ba":I
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    .line 1215
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, 0x0

    .line 1216
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

    .line 1217
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1220
    :cond_6
    shl-int/lit8 v9, v3, 0x18

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1222
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

    .line 1223
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/CircularProgressBar;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->thumb:Z

    if-nez v9, :cond_8

    .line 1224
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 1229
    :cond_8
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v11, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/vkontakte/android/ui/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1231
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

    .line 1232
    :cond_a
    const/4 v9, 0x0

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    neg-float v10, v10

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1233
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/PhotoView;->secondIsNext:Z

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    :goto_3
    int-to-float v5, v9

    .line 1234
    .local v5, "k":F
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

    .line 1235
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v9, v10

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleNext:F

    iget v11, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    div-float/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1236
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

    .line 1237
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-object v9, v9, Lcom/vkontakte/android/ui/PhotoView$Texture;->data:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v10, v10, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/vkontakte/android/ui/PhotoView;->texture2:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget v11, v11, Lcom/vkontakte/android/ui/PhotoView$Texture;->cropHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/vkontakte/android/ui/PhotoView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1239
    .end local v5    # "k":F
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 1178
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

    .line 1179
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v9}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    goto/16 :goto_1

    .line 1190
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

    .line 1191
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animTx:F

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 1192
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animTy:F

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 1193
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 1194
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, p0, Lcom/vkontakte/android/ui/PhotoView;->bgAlpha:F

    .line 1195
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    .line 1196
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-direct {p0, v9}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 1198
    :cond_e
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1199
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1200
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

    .line 1201
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

    .line 1203
    :cond_10
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 1207
    :cond_11
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1208
    iget v9, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v10, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1209
    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 1210
    iget-object v9, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_2

    .line 1233
    .restart local v3    # "ba":I
    :cond_12
    const/4 v9, -0x1

    goto/16 :goto_3
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

    .line 791
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

    .line 792
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/PhotoView$DismissListener;->onDismiss()V

    .line 794
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    .line 814
    :cond_0
    :goto_0
    return v9

    .line 798
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

    .line 799
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x44228000    # 650.0f

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->density:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 800
    const-string v0, "vk_photoview"

    const-string v1, "Switch by velocity"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    cmpl-float v0, p3, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-lez v0, :cond_3

    .line 803
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->goToPrev()V

    goto :goto_0

    .line 804
    :cond_3
    cmpg-float v0, p3, v3

    if-gez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v1}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 805
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->goToNext()V

    goto :goto_0

    .line 810
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 811
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

    .line 812
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

    .line 134
    if-eqz p1, :cond_0

    .line 135
    sub-int v0, p4, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    .line 136
    sub-int v0, p5, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    .line 137
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    .line 138
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 139
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 140
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 142
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    .line 143
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 821
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 834
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->clickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 778
    const/4 v0, 0x1

    .line 780
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
    .line 839
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 340
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->inAnimDone:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->outAnimDone:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 341
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 343
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 345
    :cond_1
    const/4 v5, 0x1

    .line 547
    :goto_0
    return v5

    .line 347
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    iget-boolean v5, v5, Lcom/vkontakte/android/ui/PhotoView$Texture;->loaded:Z

    if-nez v5, :cond_4

    .line 348
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dropTouches:Z

    .line 349
    const/4 v5, 0x1

    goto :goto_0

    .line 351
    :cond_4
    const/4 v3, 0x0

    .line 352
    .local v3, "d":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    if-eqz v5, :cond_5

    .line 353
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->doubleTap:Z

    .line 354
    const/4 v5, 0x1

    goto :goto_0

    .line 356
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 357
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportH:F

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    if-nez v5, :cond_7

    .line 358
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    invoke-interface {v5}, Lcom/vkontakte/android/ui/PhotoView$DismissListener;->onDismiss()V

    .line 359
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    .line 360
    const/4 v5, 0x1

    goto :goto_0

    .line 362
    :cond_7
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    .line 363
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    .line 364
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_8

    .line 366
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 368
    :cond_8
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-lez v5, :cond_9

    .line 369
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->goToPrev()V

    .line 370
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 372
    :cond_9
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

    if-lez v5, :cond_a

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v6, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_a

    .line 373
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->goToNext()V

    .line 374
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 376
    :cond_a
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_b

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_b

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_b

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_c

    .line 377
    :cond_b
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

    .line 383
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_11

    .line 384
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 385
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_e

    .line 387
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

    .line 388
    .local v0, "at":F
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    .line 389
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

    .line 390
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

    .line 391
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->animScale:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 392
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 394
    .end local v0    # "at":F
    :cond_e
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    if-eqz v5, :cond_f

    .line 395
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 396
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->postedPhotoSwitch:Ljava/lang/Runnable;

    .line 398
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    .line 400
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTx:F

    .line 401
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTy:F

    .line 402
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 403
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-eq v5, v6, :cond_11

    .line 404
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v6, v6, 0x1

    if-ne v5, v6, :cond_13

    .line 405
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 406
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 407
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    .line 413
    :cond_10
    :goto_1
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoView;->updateTextures()V

    .line 414
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 416
    const-string v5, "vk_photoview"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Already switched "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    const-wide/16 v9, 0x12c

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-ltz v5, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    sub-long/2addr v5, v7

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_14

    .line 422
    :cond_12
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 408
    :cond_13
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_10

    .line 409
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 410
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 411
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    goto :goto_1

    .line 424
    :cond_14
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v5, v6, :cond_15

    .line 425
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 426
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    .line 427
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTx:F

    .line 428
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTy:F

    .line 429
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 430
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 435
    :cond_15
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    if-gtz v5, :cond_16

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->isList:Z

    if-eqz v5, :cond_1f

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-nez v5, :cond_1f

    .line 436
    :cond_16
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 437
    invoke-direct {p0}, Lcom/vkontakte/android/ui/PhotoView;->updateTextures()V

    .line 441
    :goto_2
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_18

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_17

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_18

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    if-nez v5, :cond_18

    .line 442
    :cond_17
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 443
    :cond_18
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_19

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_19

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    if-nez v5, :cond_19

    .line 444
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    .line 445
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_20

    .line 446
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 447
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 454
    :cond_19
    :goto_3
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartTy:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 455
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_21

    .line 456
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1a

    .line 457
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

    .line 458
    :cond_1a
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1b

    .line 459
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

    .line 482
    :cond_1b
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

    if-lez v5, :cond_27

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-lez v5, :cond_27

    .line 483
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    .line 489
    :goto_5
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    .line 491
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_29

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

    if-lez v5, :cond_29

    .line 492
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    .line 493
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 494
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 501
    :cond_1c
    :goto_6
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 502
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/ClippingImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->invalidate()V

    .line 504
    :cond_1d
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-nez v5, :cond_1e

    iget-wide v5, p0, Lcom/vkontakte/android/ui/PhotoView;->animStartTime:J

    iget-wide v7, p0, Lcom/vkontakte/android/ui/PhotoView;->animDuration:J

    add-long/2addr v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2a

    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2a

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 439
    :cond_1f
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    goto/16 :goto_2

    .line 449
    :cond_20
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 450
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    goto/16 :goto_3

    .line 460
    :cond_21
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1b

    .line 461
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_23

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_22

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-eqz v5, :cond_23

    :cond_22
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragging:Z

    if-eqz v5, :cond_24

    .line 462
    :cond_23
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    goto/16 :goto_4

    .line 463
    :cond_24
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1b

    .line 468
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    if-eqz v5, :cond_25

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-nez v5, :cond_25

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissed:Z

    if-nez v5, :cond_25

    .line 469
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    invoke-interface {v5}, Lcom/vkontakte/android/ui/PhotoView$DismissListener;->onPrepareDismiss()V

    .line 470
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_26

    .line 471
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    .line 472
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    .line 478
    :cond_25
    :goto_7
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    goto/16 :goto_4

    .line 474
    :cond_26
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartY:F

    .line 475
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    goto :goto_7

    .line 484
    :cond_27
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

    if-lez v5, :cond_28

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    iget-object v6, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    invoke-interface {v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_28

    .line 485
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    goto/16 :goto_5

    .line 487
    :cond_28
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->callPositionChanged(I)V

    goto/16 :goto_5

    .line 495
    :cond_29
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1c

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1c

    .line 496
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->switchPhoto(Z)V

    .line 497
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartX:F

    .line 498
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->viewportW:F

    sget v7, Lcom/vkontakte/android/ui/PhotoView;->PAGE_SPACING:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    goto/16 :goto_6

    .line 506
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_2d

    .line 509
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2b

    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->touchslop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2c

    .line 510
    :cond_2b
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    .line 511
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 513
    :cond_2c
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

    .line 514
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartScale:F

    .line 515
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

    .line 516
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

    .line 517
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleStartTx:F

    .line 518
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scaleStartTy:F

    .line 520
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    if-ne v5, v6, :cond_30

    .line 521
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    if-eqz v5, :cond_2e

    .line 522
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    .line 523
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 525
    :cond_2e
    const/4 v5, -0x1

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dragStartPointerID:I

    .line 526
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_32

    .line 527
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    .line 528
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 535
    :cond_2f
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchEndTime:J

    .line 537
    :cond_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_36

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    invoke-interface {v5, v6}, Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;->allowZoom(I)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 538
    :cond_31
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->disallowZoom:Z

    if-eqz v5, :cond_33

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 529
    :cond_32
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2f

    .line 530
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 531
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxX:I

    int-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v1

    .line 532
    .local v1, "atx":F
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->minY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxY:I

    int-to-float v7, v7

    invoke-direct {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/PhotoView;->clamp(FFF)F

    move-result v2

    .line 533
    .local v2, "aty":F
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    invoke-direct {p0, v5, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    goto :goto_8

    .line 539
    .end local v1    # "atx":F
    .end local v2    # "aty":F
    :cond_33
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissing:Z

    if-eqz v5, :cond_34

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 540
    :cond_34
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

    .line 541
    .local v4, "pinchDist":F
    iget v5, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartDist:F

    div-float v5, v4, v5

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->pinchStartScale:F

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    .line 542
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

    .line 543
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

    .line 544
    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    if-eqz v5, :cond_35

    iget-object v5, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    iget v6, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v7, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v8, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-interface {v5, v6, v7, v8}, Lcom/vkontakte/android/ui/PhotoView$ZoomListener;->onZoomChanged(FFF)V

    .line 545
    :cond_35
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->invalidate()V

    .line 547
    .end local v4    # "pinchDist":F
    :cond_36
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/4 v3, 0x0

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 683
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

    .line 684
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

    .line 685
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 687
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 688
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 689
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->maxScale:F

    iget v1, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    iget v2, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    .line 694
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 691
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->minScale:F

    invoke-direct {p0, v0, v3, v3}, Lcom/vkontakte/android/ui/PhotoView;->animateTo(FFF)V

    goto :goto_0
.end method

.method public setAdapter(Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;)V
    .locals 3
    .param p1, "a"    # Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->adapter:Lcom/vkontakte/android/ui/PhotoView$PhotoViewerAdapter;

    .line 968
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/PhotoView;->inited:Z

    if-eqz v2, :cond_0

    .line 969
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->loadPhotos(Z)V

    .line 982
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 972
    .local v0, "tt":J
    new-instance v2, Lcom/vkontakte/android/ui/PhotoView$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/vkontakte/android/ui/PhotoView$5;-><init>(Lcom/vkontakte/android/ui/PhotoView;J)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/PhotoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    return-void
.end method

.method public setDismissListener(Lcom/vkontakte/android/ui/PhotoView$DismissListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->dismissListener:Lcom/vkontakte/android/ui/PhotoView$DismissListener;

    .line 714
    return-void
.end method

.method public setFitBySmallestSide(Z)V
    .locals 0
    .param p1, "fit"    # Z

    .prologue
    .line 1137
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->fitBySmallestSide:Z

    .line 1138
    return-void
.end method

.method public setLimitOffsets(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 703
    iput p2, p0, Lcom/vkontakte/android/ui/PhotoView;->limitY:I

    .line 704
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->limitX:I

    .line 706
    return-void
.end method

.method public setNavigationListener(Lcom/vkontakte/android/ui/PhotoView$NavigationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->navListener:Lcom/vkontakte/android/ui/PhotoView$NavigationListener;

    .line 710
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->clickListener:Landroid/view/View$OnClickListener;

    .line 700
    return-void
.end method

.method public setPosition(I)V
    .locals 6
    .param p1, "p"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 146
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    if-ne v0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->listPosition:I

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->texture:Lcom/vkontakte/android/ui/PhotoView$Texture;

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateY:F

    iput v0, p0, Lcom/vkontakte/android/ui/PhotoView;->translateX:F

    .line 150
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/PhotoView;->updateScale(Z)V

    .line 151
    iget v0, p0, Lcom/vkontakte/android/ui/PhotoView;->scale:F

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/PhotoView;->updateMinMax(F)V

    .line 152
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/PhotoView;->postInvalidate()V

    .line 153
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

    .line 154
    iput p1, p0, Lcom/vkontakte/android/ui/PhotoView;->prevCallbackPos:I

    goto :goto_0

    .line 153
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
    .line 1141
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/PhotoView;->resetOnResize:Z

    .line 1142
    return-void
.end method

.method public setThumb(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/Bitmap;
    .param p2, "showProgress"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbView:Lcom/vkontakte/android/ui/ClippingImageView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ClippingImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 299
    iget-object v1, p0, Lcom/vkontakte/android/ui/PhotoView;->progressBar:Lcom/vkontakte/android/ui/CircularProgressBar;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 300
    return-void

    .line 299
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setThumbBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 1243
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->thumbRect:Landroid/graphics/Rect;

    .line 1244
    iget-object v0, p0, Lcom/vkontakte/android/ui/PhotoView;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1245
    return-void
.end method

.method public setZoomListener(Lcom/vkontakte/android/ui/PhotoView$ZoomListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/vkontakte/android/ui/PhotoView;->zoomListener:Lcom/vkontakte/android/ui/PhotoView$ZoomListener;

    .line 718
    return-void
.end method
