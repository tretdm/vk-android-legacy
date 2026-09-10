.class public Lcom/vkontakte/android/ui/MenuOverlayView;
.super Landroid/widget/FrameLayout;
.source "MenuOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    }
.end annotation


# static fields
.field private static final CONTENT_VIEW:I = 0x2

.field private static final DIR_LEFT:I = -0x1

.field private static final DIR_NONE:I = 0x0

.field private static final DIR_RIGHT:I = 0x1


# instance fields
.field private backConsumed:Z

.field private closing:Z

.field private disableScrollNow:Z

.field private dropAllEvents:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private lastFlingSpeed:F

.field private lastScrollDirection:I

.field listView:Landroid/widget/ListView;

.field private lv:Lcom/vkontakte/android/MenuListView;

.field private mSetTranslationX:Ljava/lang/reflect/Method;

.field private menuOpen:Z

.field private menuWidth:I

.field private padding:I

.field private sOffset:I

.field private scrollOffset:I

.field private scrolling:Z

.field private shadowView:Landroid/view/View;

.field private touchslop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 40
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 43
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 49
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 54
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 62
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 118
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 40
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 43
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 49
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 54
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 62
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 123
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 40
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 43
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 49
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 54
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 62
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 128
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 129
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MenuOverlayView;F)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->startDragging()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/MenuOverlayView;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->touchslop:F

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastScrollDirection:I

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ui/MenuOverlayView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/MenuOverlayView;)Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/MenuOverlayView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->canScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    return-void
.end method

.method private canScroll(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    .line 269
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->findHorizontalScrollView(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v1

    .line 270
    :cond_1
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->findViewPager(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v0

    .line 271
    .local v0, "vp":Lcom/vkontakte/android/ui/ViewPager;
    if-nez v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getHeight()I

    move-result v4

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_3

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private findHorizontalScrollView(Landroid/view/View;II)Z
    .locals 7
    .param p1, "container"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v3

    .line 277
    :cond_1
    instance-of v5, p1, Landroid/widget/HorizontalScrollView;

    if-nez v5, :cond_2

    instance-of v5, p1, Lcom/vkontakte/android/ui/PhotoFeedView;

    if-nez v5, :cond_2

    instance-of v5, p1, Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 279
    :cond_2
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 280
    .local v2, "loc":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 281
    aget v5, v2, v3

    if-lt p2, v5, :cond_0

    aget v5, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p2, v5, :cond_0

    aget v5, v2, v4

    if-lt p3, v5, :cond_0

    aget v5, v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p3, v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 283
    .end local v2    # "loc":[I
    :cond_3
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 284
    check-cast v0, Landroid/view/ViewGroup;

    .line 285
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lcom/vkontakte/android/ui/MenuOverlayView;->findHorizontalScrollView(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_0

    .line 285
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findViewPager(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager;
    .locals 6
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    move-object p1, v3

    .line 302
    .end local p1    # "container":Landroid/view/View;
    :goto_0
    return-object p1

    .line 294
    .restart local p1    # "container":Landroid/view/View;
    :cond_0
    instance-of v4, p1, Lcom/vkontakte/android/ui/ViewPager;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/vkontakte/android/ui/ViewPager;

    goto :goto_0

    .line 295
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 296
    check-cast v0, Landroid/view/ViewGroup;

    .line 297
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lt v1, v4, :cond_3

    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_2
    move-object p1, v3

    .line 302
    goto :goto_0

    .line 298
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->findViewPager(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v2

    .line 299
    .local v2, "vp":Lcom/vkontakte/android/ui/ViewPager;
    if-eqz v2, :cond_4

    move-object p1, v2

    goto :goto_0

    .line 297
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 156
    const v1, -0xd1d1d2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setBackgroundColor(I)V

    .line 157
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    .line 158
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->touchslop:F

    .line 160
    new-instance v1, Lcom/vkontakte/android/MenuListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/MenuListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    .line 161
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    new-instance v2, Lcom/vkontakte/android/ui/MenuOverlayView$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$2;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 241
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    iget-object v1, v1, Lcom/vkontakte/android/MenuListView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    .line 244
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 246
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    .line 247
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 248
    .local v0, "slp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const v2, 0x7f0201d5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 250
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 257
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setFocusable(Z)V

    .line 258
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setFocusableInTouchMode(Z)V

    .line 259
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MenuListView;->setVisibility(I)V

    .line 261
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 263
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setTranslationX"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startDragging()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x2

    .line 413
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 414
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 415
    .local v0, "anim":Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->setRepeatCount(I)V

    .line 416
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;

    .end local v0    # "anim":Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 418
    .restart local v0    # "anim":Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->setRepeatCount(I)V

    .line 419
    const/high16 v1, -0x3e800000    # -16.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->offset:I

    .line 420
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 426
    .end local v0    # "anim":Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/vkontakte/android/ExtendedTabBar;

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ExtendedTabBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ExtendedTabBar;->setShowTitleOverlay(Z)V

    .line 428
    :cond_0
    return-void

    .line 422
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    .line 423
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 424
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private updateDragPosition()V
    .locals 6

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->invalidate()V

    .line 440
    return-void

    .line 436
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 468
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 469
    return-void
.end method

.method public closeMenu(I)V
    .locals 6
    .param p1, "d"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 444
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    :goto_0
    int-to-float v1, v1

    invoke-direct {v0, v1, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 445
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 446
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 447
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 448
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 450
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    :goto_1
    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, -0x3e800000    # -16.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 451
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 452
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 453
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 454
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 455
    iput v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 456
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    .line 458
    new-instance v1, Lcom/vkontakte/android/ui/MenuOverlayView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$5;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 464
    add-int/lit8 v2, p1, 0xa

    int-to-long v2, v2

    .line 458
    invoke-virtual {p0, v1, v2, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    return-void

    .line 444
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_0

    .line 450
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 307
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 309
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 311
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 473
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 474
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v2, :cond_1

    .line 475
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 476
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 486
    :cond_0
    :goto_0
    return v1

    .line 482
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 484
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 485
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 490
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 491
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 500
    :cond_0
    :goto_0
    return v1

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 498
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/MainActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 499
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 132
    if-eqz p1, :cond_0

    .line 133
    sub-int v0, p4, p2

    .line 134
    .local v0, "width":I
    const/high16 v1, 0x43870000    # 270.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 135
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .end local v0    # "width":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 149
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 151
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    add-int/2addr v2, p2

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    add-int/2addr v4, p4

    sub-int v5, p5, p3

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 153
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x41800000    # 16.0f

    const-wide/16 v10, 0x12c

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 315
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_0

    .line 316
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 319
    :cond_0
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 321
    :cond_1
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 325
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 326
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 327
    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iput v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 328
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 329
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 331
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->startDragging()V

    .line 332
    iget-object v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 333
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 409
    :cond_2
    :goto_0
    return v7

    .line 337
    :cond_3
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v4, :cond_4

    .line 340
    iget-object v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v4, p1}, Lcom/vkontakte/android/MenuListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 348
    iget-object v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    check-cast v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/RefreshableListView;->scrollDown()V

    goto :goto_0

    .line 352
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-ne v4, v7, :cond_2

    .line 353
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 354
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    if-eqz v4, :cond_2

    .line 356
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastScrollDirection:I

    if-eq v4, v7, :cond_6

    .line 357
    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_5

    .line 358
    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    div-float/2addr v4, v5

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 362
    :goto_1
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    goto :goto_0

    .line 360
    :cond_5
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    goto :goto_1

    .line 365
    :cond_6
    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v5, 0x428c0000    # 70.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    if-le v4, v5, :cond_9

    .line 366
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v5, v5

    invoke-direct {v0, v4, v5, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v4, v5, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 367
    .local v1, "anim2":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 368
    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 369
    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_8

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    if-ge v4, v5, :cond_8

    .line 370
    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    div-float/2addr v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-long v2, v4

    .line 371
    .local v2, "d":J
    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    const-wide/16 v2, 0x1f4

    .line 372
    :cond_7
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 373
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 374
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 375
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 380
    .end local v2    # "d":J
    :goto_2
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 381
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 382
    iget-object v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    iput v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 384
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    .line 385
    new-instance v4, Lcom/vkontakte/android/ui/MenuOverlayView$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$3;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 387
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v5

    .line 385
    invoke-virtual {p0, v4, v5, v6}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :goto_3
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 406
    iput v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    goto/16 :goto_0

    .line 377
    .restart local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_8
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 378
    invoke-virtual {v1, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_2

    .line 389
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_9
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v4, v4

    invoke-direct {v0, v4, v8, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 390
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 391
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 392
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 393
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {v0, v4, v5, v8, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 394
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 395
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 396
    iget-object v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 397
    iput v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 398
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    .line 399
    new-instance v4, Lcom/vkontakte/android/ui/MenuOverlayView$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$4;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {p0, v4, v10, v11}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method public updateInfo()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateUserInfo()V

    .line 505
    return-void
.end method
