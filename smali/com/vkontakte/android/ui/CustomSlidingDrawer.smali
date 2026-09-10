.class public Lcom/vkontakte/android/ui/CustomSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "CustomSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/CustomSlidingDrawer$1;,
        Lcom/vkontakte/android/ui/CustomSlidingDrawer$SlidingHandler;,
        Lcom/vkontakte/android/ui/CustomSlidingDrawer$DrawerToggler;,
        Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;,
        Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerCloseListener;,
        Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private downY:F

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z

.field private touchslop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "handleId"    # I
    .param p5, "contentId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    iput v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleId:I

    .line 104
    iput v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContentId:I

    .line 109
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 110
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 127
    new-instance v3, Lcom/vkontakte/android/ui/CustomSlidingDrawer$SlidingHandler;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$SlidingHandler;-><init>(Lcom/vkontakte/android/ui/CustomSlidingDrawer;Lcom/vkontakte/android/ui/CustomSlidingDrawer$1;)V

    iput-object v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 221
    sget-object v3, Lcom/vkontakte/android/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 223
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 224
    .local v2, "orientation":I
    if-ne v2, v4, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    .line 225
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    .line 226
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    .line 227
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAllowSingleTap:Z

    .line 228
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimateOnClick:Z

    .line 230
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->touchslop:F

    .line 232
    invoke-virtual {v0, v4, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 233
    if-nez p4, :cond_1

    .line 234
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move v3, v5

    .line 224
    goto :goto_0

    .line 238
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    .line 239
    if-nez p5, :cond_2

    .line 240
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The content attribute is required and must refer to a valid child."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_2
    if-ne p4, p5, :cond_3

    .line 245
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The content and handle attributes must refer to different children."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 249
    :cond_3
    iput p4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleId:I

    .line 250
    iput p5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContentId:I

    .line 252
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 253
    .local v1, "density":F
    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTapThreshold:I

    .line 254
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumTapVelocity:I

    .line 255
    const/high16 v3, 0x43160000    # 150.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    .line 256
    const/high16 v3, 0x43480000    # 200.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    .line 257
    const/high16 v3, 0x44fa0000    # 2000.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumAcceleration:I

    .line 258
    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v1

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityUnits:I

    .line 260
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 263
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_4

    .line 264
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->setWillNotDraw(Z)V

    .line 265
    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handle"    # Landroid/view/View;
    .param p3, "content"    # Landroid/view/View;

    .prologue
    .line 183
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    .line 184
    iput-object p2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 185
    iput-object p3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    .line 186
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 187
    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/CustomSlidingDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/CustomSlidingDrawer;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/CustomSlidingDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/CustomSlidingDrawer;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/ui/CustomSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/CustomSlidingDrawer;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 537
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->prepareTracking(I)V

    .line 538
    iget v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->performFling(IFZ)V

    .line 539
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 542
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->prepareTracking(I)V

    .line 543
    iget v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->performFling(IFZ)V

    .line 544
    return-void
.end method

.method private checkListView()Z
    .locals 4

    .prologue
    const v3, 0x102000a

    const/4 v1, 0x0

    .line 384
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 386
    .local v0, "list":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 388
    .end local v0    # "list":Landroid/widget/ListView;
    :cond_0
    return v1
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 888
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->moveHandle(I)V

    .line 889
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 892
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    .line 897
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerCloseListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerCloseListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 737
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->incrementAnimation()V

    .line 739
    iget v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 740
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    .line 741
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->closeDrawer()V

    .line 752
    :cond_0
    :goto_1
    return-void

    .line 739
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 742
    :cond_2
    iget v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 743
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    .line 744
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 746
    :cond_3
    iget v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->moveHandle(I)V

    .line 747
    iget-wide v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mCurrentAnimationTime:J

    .line 748
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 755
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 756
    .local v1, "now":J
    iget-wide v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v4, v6, v7

    .line 757
    .local v4, "t":F
    iget v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationPosition:F

    .line 758
    .local v3, "position":F
    iget v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 759
    .local v5, "v":F
    iget v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 760
    .local v0, "a":F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationPosition:F

    .line 761
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 762
    iput-wide v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationLastTime:J

    .line 763
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 621
    iget-object v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 623
    .local v3, "handle":Landroid/view/View;
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 624
    if-ne p1, v9, :cond_0

    .line 625
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 626
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate()V

    .line 686
    :goto_0
    return-void

    .line 627
    :cond_0
    if-ne p1, v8, :cond_1

    .line 628
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 630
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate()V

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 633
    .local v6, "top":I
    sub-int v1, p1, v6

    .line 634
    .local v1, "deltaY":I
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    .line 635
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 639
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 641
    iget-object v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 642
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 644
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 645
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 647
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 648
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 650
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_4

    .line 651
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 636
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    .line 637
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    .line 653
    .restart local v2    # "frame":Landroid/graphics/Rect;
    .restart local v5    # "region":Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 656
    .end local v1    # "deltaY":I
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    .end local v6    # "top":I
    :cond_5
    if-ne p1, v9, :cond_6

    .line 657
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 658
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 659
    :cond_6
    if-ne p1, v8, :cond_7

    .line 660
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 662
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 664
    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 665
    .local v4, "left":I
    sub-int v0, p1, v4

    .line 666
    .local v0, "deltaX":I
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_9

    .line 667
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 671
    :cond_8
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 673
    iget-object v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 674
    .restart local v2    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 676
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 677
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 679
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 680
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 683
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 668
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_9
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_8

    .line 669
    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 903
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->moveHandle(I)V

    .line 904
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 906
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    .line 912
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerOpenListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerOpenListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 547
    int-to-float v2, p1

    iput v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationPosition:F

    .line 548
    iput p2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 550
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 551
    if-nez p3, :cond_0

    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 556
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 557
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 558
    iput v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 586
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 587
    .local v0, "now":J
    iput-wide v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationLastTime:J

    .line 588
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mCurrentAnimationTime:J

    .line 589
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    .line 590
    iget-object v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 591
    iget-object v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 592
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->stopTracking()V

    .line 593
    return-void

    .line 551
    .end local v0    # "now":J
    :cond_2
    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 562
    :cond_3
    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 563
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 564
    iput v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 568
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    .line 572
    :cond_5
    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 573
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 574
    iput v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 568
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 579
    :cond_7
    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 580
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 581
    iput v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 689
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 720
    :goto_0
    return-void

    .line 695
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    .line 696
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 697
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_4

    .line 698
    iget v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleHeight:I

    .line 699
    .local v0, "childHeight":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 700
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 702
    iget v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 716
    .end local v0    # "childHeight":I
    .end local v3    # "height":I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 717
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 719
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 705
    :cond_4
    iget-object v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 706
    .local v1, "childWidth":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 707
    .local v4, "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 709
    iget v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 596
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    .line 597
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 598
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 599
    .local v2, "opening":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 600
    iget v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedAcceleration:F

    .line 601
    iget v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimatedVelocity:F

    .line 602
    iget v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationPosition:F

    .line 604
    iget v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->moveHandle(I)V

    .line 605
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    .line 606
    iget-object v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 608
    .local v0, "now":J
    iput-wide v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimationLastTime:J

    .line 609
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mCurrentAnimationTime:J

    .line 610
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    .line 618
    .end local v0    # "now":J
    :goto_2
    return-void

    .end local v2    # "opening":Z
    :cond_0
    move v2, v3

    .line 598
    goto :goto_0

    .line 602
    .restart local v2    # "opening":Z
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    .line 612
    :cond_2
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 613
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    .line 614
    iget-object v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    :cond_3
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 723
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 724
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    .line 726
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 734
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->prepareContent()V

    .line 840
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

    .line 841
    .local v0, "scrollListener":Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 842
    invoke-interface {v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 844
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->animateClose(I)V

    .line 846
    if-eqz v0, :cond_1

    .line 847
    invoke-interface {v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 849
    :cond_1
    return-void

    .line 844
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->prepareContent()V

    .line 862
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

    .line 863
    .local v0, "scrollListener":Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 864
    invoke-interface {v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 866
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->animateOpen(I)V

    .line 868
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 870
    if-eqz v0, :cond_1

    .line 871
    invoke-interface {v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 873
    :cond_1
    return-void

    .line 866
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->animateOpen()V

    .line 799
    :goto_0
    return-void

    .line 797
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->closeDrawer()V

    .line 825
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate()V

    .line 826
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->requestLayout()V

    .line 827
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 319
    .local v1, "drawingTime":J
    iget-object v3, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 320
    .local v3, "handle":Landroid/view/View;
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    .line 322
    .local v4, "isVertical":Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 324
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 325
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 327
    if-eqz v4, :cond_2

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 330
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 333
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 334
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 336
    iget-object v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 334
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .line 339
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 340
    iget-object v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mLocked:Z

    .line 983
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_1

    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_3

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 877
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 878
    const-class v0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 879
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 883
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 884
    const-class v0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 885
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 393
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 449
    :cond_0
    :goto_0
    return v7

    .line 397
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 399
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 400
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 402
    .local v6, "y":F
    iget-object v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 403
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 405
    .local v2, "handle":Landroid/view/View;
    if-nez v0, :cond_2

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->downY:F

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 411
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DownY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->downY:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_3

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_3

    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->checkListView()Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->downY:F

    cmpl-float v9, v9, v6

    if-gez v9, :cond_0

    .line 419
    :cond_3
    const/4 v9, 0x2

    if-eq v0, v9, :cond_4

    if-ne v0, v8, :cond_5

    .line 420
    :cond_4
    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->downY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->touchslop:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_0

    .line 426
    :cond_5
    iput-boolean v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    .line 430
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->prepareContent()V

    .line 433
    iget-object v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_6

    .line 434
    iget-object v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 437
    :cond_6
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_7

    .line 438
    iget-object v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 439
    .local v4, "top":I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTouchDelta:I

    .line 440
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->prepareTracking(I)V

    .line 446
    .end local v4    # "top":I
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move v7, v8

    .line 449
    goto/16 :goto_0

    .line 442
    :cond_7
    iget-object v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 443
    .local v3, "left":I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTouchDelta:I

    .line 444
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 346
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 381
    :goto_0
    return-void

    .line 350
    :cond_0
    sub-int v7, p4, p2

    .line 351
    .local v7, "width":I
    sub-int v6, p5, p3

    .line 353
    .local v6, "height":I
    iget-object v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 355
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 356
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 361
    .local v0, "childHeight":I
    iget-object v4, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    .line 363
    .local v4, "content":Landroid/view/View;
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 364
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 365
    .local v1, "childLeft":I
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    .line 367
    .local v2, "childTop":I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 378
    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 379
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleHeight:I

    .line 380
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 365
    .end local v2    # "childTop":I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    .line 370
    .end local v1    # "childLeft":I
    :cond_2
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    .line 371
    .restart local v1    # "childLeft":I
    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 373
    .restart local v2    # "childTop":I
    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 370
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 290
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 291
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 293
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 294
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 296
    .local v3, "heightSpecSize":I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 297
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    .line 301
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 303
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 305
    .local v1, "height":I
    iget-object v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 313
    .end local v1    # "height":I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->setMeasuredDimension(II)V

    .line 314
    return-void

    .line 308
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 309
    .local v4, "width":I
    iget-object v7, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 454
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    .line 455
    const/4 v9, 0x1

    .line 533
    :goto_0
    return v9

    .line 458
    :cond_0
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_1

    .line 459
    iget-object v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 461
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 533
    .end local v0    # "action":I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_18

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 463
    .restart local v0    # "action":I
    :pswitch_0
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2
    float-to-int v9, v9

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2

    .line 467
    :pswitch_1
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->downY:F

    .line 468
    iget-object v5, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 469
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 471
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 472
    .local v8, "yVelocity":F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 475
    .local v7, "xVelocity":F
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mVertical:Z

    .line 476
    .local v6, "vertical":Z
    if-eqz v6, :cond_a

    .line 477
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_9

    const/4 v2, 0x1

    .line 478
    .local v2, "negative":Z
    :goto_3
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_4

    .line 479
    neg-float v7, v7

    .line 481
    :cond_4
    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_5

    .line 482
    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 494
    :cond_5
    :goto_4
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 495
    .local v4, "velocity":F
    if-eqz v2, :cond_6

    .line 496
    neg-float v4, v4

    .line 499
    :cond_6
    iget-object v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 500
    .local v3, "top":I
    iget-object v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 502
    .local v1, "left":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_16

    .line 503
    if-eqz v6, :cond_d

    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_8

    :cond_7
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_f

    .line 510
    :cond_8
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_13

    .line 511
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->playSoundEffect(I)V

    .line 513
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_11

    .line 514
    if-eqz v6, :cond_10

    .end local v3    # "top":I
    :goto_5
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 477
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v4    # "velocity":F
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 485
    :cond_a
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_c

    const/4 v2, 0x1

    .line 486
    .restart local v2    # "negative":Z
    :goto_6
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b

    .line 487
    neg-float v8, v8

    .line 489
    :cond_b
    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    .line 490
    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_4

    .line 485
    .end local v2    # "negative":Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 503
    .restart local v1    # "left":I
    .restart local v2    # "negative":Z
    .restart local v3    # "top":I
    .restart local v4    # "velocity":F
    :cond_d
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_8

    :cond_e
    iget-boolean v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_8

    .line 523
    :cond_f
    if-eqz v6, :cond_15

    .end local v3    # "top":I
    :goto_7
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3    # "top":I
    :cond_10
    move v3, v1

    .line 514
    goto :goto_5

    .line 516
    :cond_11
    if-eqz v6, :cond_12

    .end local v3    # "top":I
    :goto_8
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v3    # "top":I
    :cond_12
    move v3, v1

    goto :goto_8

    .line 519
    :cond_13
    if-eqz v6, :cond_14

    .end local v3    # "top":I
    :goto_9
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3    # "top":I
    :cond_14
    move v3, v1

    goto :goto_9

    :cond_15
    move v3, v1

    .line 523
    goto :goto_7

    .line 526
    :cond_16
    if-eqz v6, :cond_17

    .end local v3    # "top":I
    :goto_a
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3    # "top":I
    :cond_17
    move v3, v1

    goto :goto_a

    .line 533
    .end local v0    # "action":I
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v3    # "top":I
    .end local v4    # "velocity":F
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "vertical":Z
    .end local v7    # "xVelocity":F
    .end local v8    # "yVelocity":F
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->openDrawer()V

    .line 810
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate()V

    .line 811
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->requestLayout()V

    .line 813
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 814
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerCloseListener;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerCloseListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerCloseListener;

    .line 933
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerOpenListener;

    .prologue
    .line 923
    iput-object p1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerOpenListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerOpenListener;

    .line 924
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .param p1, "onDrawerScrollListener"    # Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

    .prologue
    .line 944
    iput-object p1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mOnDrawerScrollListener:Lcom/vkontakte/android/ui/CustomSlidingDrawer$OnDrawerScrollListener;

    .line 945
    return-void
.end method

.method public setTopOffset(I)V
    .locals 0
    .param p1, "off"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mTopOffset:I

    .line 269
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->openDrawer()V

    .line 780
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->invalidate()V

    .line 781
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->requestLayout()V

    .line 782
    return-void

    .line 778
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/CustomSlidingDrawer;->mLocked:Z

    .line 974
    return-void
.end method
