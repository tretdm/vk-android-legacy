.class public Lcom/vkontakte/android/ui/MenuOverlayView;
.super Landroid/widget/FrameLayout;
.source "MenuOverlayView.java"


# static fields
.field private static final CONTENT_VIEW:I = 0x2

.field private static final DIR_LEFT:I = -0x1

.field private static final DIR_NONE:I = 0x0

.field private static final DIR_RIGHT:I = 0x1

.field private static final HALF_OPEN_WIDTH:I = 0x2f

.field public static final MODE_FULL_VISIBLE:I = 0x2

.field public static final MODE_HALF_VISIBLE:I = 0x1

.field public static final MODE_HIDDEN:I


# instance fields
.field private animating:Z

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

.field private mode:I

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

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 42
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 45
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 51
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 56
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 57
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 71
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 127
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 42
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 45
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 51
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 56
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 57
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 71
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 132
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 42
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 43
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 45
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 51
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 56
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 57
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 71
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 137
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 138
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MenuOverlayView;F)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/MenuOverlayView;)F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->touchslop:F

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastScrollDirection:I

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ui/MenuOverlayView;)Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ui/MenuOverlayView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/MenuOverlayView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->canScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->startDragging()V

    return-void
.end method

.method private canScroll(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/vkontakte/android/ui/MenuOverlayView;->findHorizontalScrollView(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v2

    .line 205
    :cond_1
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->findViewPager(Landroid/view/View;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    .line 206
    .local v1, "vp":Landroid/support/v4/view/ViewPager;
    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    .line 208
    :cond_2
    new-array v0, v7, [I

    .line 209
    .local v0, "scr":[I
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getLocationOnScreen([I)V

    .line 210
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aget v5, v0, v3

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    aget v5, v0, v3

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    aget v5, v0, v2

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    aget v5, v0, v2

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    :cond_3
    move v2, v3

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

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v3

    .line 215
    :cond_1
    instance-of v5, p1, Landroid/widget/HorizontalScrollView;

    if-nez v5, :cond_2

    instance-of v5, p1, Lcom/vkontakte/android/ui/PhotoFeedView;

    if-nez v5, :cond_2

    instance-of v5, p1, Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 217
    :cond_2
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 218
    .local v2, "loc":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 219
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

    .line 221
    .end local v2    # "loc":[I
    :cond_3
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Landroid/view/ViewGroup;

    .line 223
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lcom/vkontakte/android/ui/MenuOverlayView;->findHorizontalScrollView(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_0

    .line 223
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findViewPager(Landroid/view/View;)Landroid/support/v4/view/ViewPager;
    .locals 6
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    move-object p1, v3

    .line 240
    .end local p1    # "container":Landroid/view/View;
    :goto_0
    return-object p1

    .line 232
    .restart local p1    # "container":Landroid/view/View;
    :cond_0
    instance-of v4, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    goto :goto_0

    .line 233
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 234
    check-cast v0, Landroid/view/ViewGroup;

    .line 235
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

    .line 240
    goto :goto_0

    .line 236
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->findViewPager(Landroid/view/View;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    .line 237
    .local v2, "vp":Landroid/support/v4/view/ViewPager;
    if-eqz v2, :cond_4

    move-object p1, v2

    goto :goto_0

    .line 235
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 171
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    .line 172
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->touchslop:F

    .line 174
    new-instance v1, Lcom/vkontakte/android/MenuListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/MenuListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    .line 175
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    iget-object v1, v1, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    .line 178
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 180
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    .line 181
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v0, "slp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const v2, 0x7f0201c6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 184
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 191
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setFocusable(Z)V

    .line 192
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setFocusableInTouchMode(Z)V

    .line 195
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 197
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

    .line 200
    :cond_0
    :goto_0
    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    .line 201
    return-void

    .line 198
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMenuVisible(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x0

    .line 742
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-eqz v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/MenuListView;->setVisibility(I)V

    .line 744
    if-eqz p1, :cond_1

    const v1, -0xdcd7cd

    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setBackgroundColor(I)V

    goto :goto_0

    .line 743
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private startDragging()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 493
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 502
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    .line 503
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 504
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 506
    :cond_0
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    .line 507
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 508
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 510
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 511
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 516
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private updateDragPosition(Z)V
    .locals 4
    .param p1, "slide"    # Z

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 522
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 523
    if-eqz p1, :cond_0

    .line 524
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v1, v1

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    const v2, 0x3e99999a    # 0.3f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setAlpha(F)V

    .line 526
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setTranslationX(F)V

    .line 533
    :cond_0
    :goto_0
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->invalidate()V

    .line 538
    return-void

    .line 528
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setAlpha(F)V

    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setTranslationX(F)V

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    goto :goto_1

    .line 534
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int v2, v0, v2

    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    const/high16 v0, 0x423c0000    # 47.0f

    invoke-static {v0}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 617
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 618
    return-void
.end method

.method public closeMenu(I)V
    .locals 13
    .param p1, "d"    # I

    .prologue
    const/high16 v12, -0x3e800000    # -16.0f

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 541
    const/16 v3, 0x1f4

    if-le p1, v3, :cond_0

    const/16 p1, 0x1f4

    .line 543
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-ne v3, v11, :cond_1

    .line 614
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 545
    if-lez p1, :cond_a

    .line 546
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 547
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v3, v5, :cond_5

    .line 548
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_3

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-ne v3, v9, :cond_2

    const/high16 v3, 0x423c0000    # 47.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    :goto_1
    sub-int v3, v5, v3

    :goto_2
    int-to-float v3, v3

    invoke-direct {v0, v3, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 549
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 550
    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 551
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 553
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_4

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    :goto_3
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v0, v3, v5, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 554
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 555
    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 556
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 557
    new-instance v3, Lcom/vkontakte/android/ui/MenuOverlayView$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$7;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 562
    add-int/lit8 v5, p1, 0xa

    int-to-long v5, v5

    .line 557
    invoke-virtual {p0, v3, v5, v6}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :goto_4
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 603
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 604
    iput v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 605
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 548
    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_2

    .line 553
    :cond_4
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_3

    .line 564
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v1, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    new-array v7, v11, [F

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_8

    iget v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-ne v3, v9, :cond_7

    const/high16 v3, 0x423c0000    # 47.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    :goto_5
    sub-int v3, v8, v3

    :goto_6
    int-to-float v3, v3

    aput v3, v7, v4

    aput v10, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v5, p1

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    iget-object v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v11, [F

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_9

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    :goto_7
    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int/2addr v3, v8

    int-to-float v3, v3

    aput v3, v7, v4

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v5, p1

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v3, :cond_6

    .line 568
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    const v7, 0x3e99999a    # 0.3f

    aput v7, v6, v4

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v5, p1

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const-string v5, "translationX"

    new-array v6, v9, [F

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    aput v7, v6, v4

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v5, p1

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_6
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 572
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 573
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 574
    new-instance v3, Lcom/vkontakte/android/ui/MenuOverlayView$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$8;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 597
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_4

    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :cond_7
    move v3, v4

    .line 565
    goto/16 :goto_5

    :cond_8
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto/16 :goto_6

    .line 566
    :cond_9
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_7

    .line 600
    .end local v1    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_a
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    goto/16 :goto_4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 255
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "time"    # J

    .prologue
    const/4 v3, 0x0

    .line 621
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 622
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 632
    :goto_0
    return v0

    .line 623
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 624
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 625
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    if-ne p2, v1, :cond_2

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-eqz v1, :cond_2

    .line 628
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 630
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 631
    .local v0, "res":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getListView()Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 245
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 248
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 250
    :cond_3
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 712
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 713
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v1, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 715
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 726
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 732
    const/4 v0, 0x1

    .line 734
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/high16 v9, 0x423c0000    # 47.0f

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 141
    if-eqz p1, :cond_0

    .line 142
    sub-int v2, p4, p2

    .line 143
    .local v2, "width":I
    const/high16 v3, 0x43870000    # 270.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    const/high16 v4, 0x428c0000    # 70.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 144
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v0, "llp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 146
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 147
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 148
    const/16 v3, 0x50

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 149
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .end local v0    # "llp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "width":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 152
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-ne v3, v8, :cond_3

    .line 153
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    sub-int v5, p4, p2

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 154
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget-object v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 159
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_2

    .line 160
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 162
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    add-int/2addr v5, p4

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 164
    :cond_2
    return-void

    .line 155
    :cond_3
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 156
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int v5, p4, p2

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 157
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 259
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 466
    :goto_0
    return v7

    .line 260
    :cond_0
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_1

    .line 261
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 264
    :cond_1
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 266
    :cond_2
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_1
    sub-int v7, v9, v7

    int-to-float v7, v7

    cmpl-float v7, v8, v7

    if-lez v7, :cond_5

    .line 270
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 271
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 272
    iget v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_2
    sub-int v7, v8, v7

    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 273
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 274
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 276
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->startDragging()V

    .line 277
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 278
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 279
    const/4 v7, 0x1

    goto :goto_0

    .line 266
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 272
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 282
    :cond_5
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v7, :cond_6

    .line 285
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7, p1}, Lcom/vkontakte/android/MenuListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    const/4 v7, 0x1

    goto :goto_0

    .line 296
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 297
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 298
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    if-eqz v7, :cond_b

    .line 300
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastScrollDirection:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    .line 301
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v7, :cond_7

    .line 302
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 303
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 304
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 306
    :cond_7
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    .line 307
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v7, v7

    iget v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    div-float/2addr v7, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 311
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 312
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 309
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    goto :goto_3

    .line 314
    :cond_9
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v8, 0x428c0000    # 70.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    if-le v7, v8, :cond_1a

    .line 315
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v8, v7

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_c

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_4
    sub-int v7, v9, v7

    int-to-float v7, v7

    div-float/2addr v8, v7

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_d

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_5
    sub-int v7, v9, v7

    int-to-float v7, v7

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    div-float/2addr v7, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v9

    mul-float/2addr v7, v8

    float-to-long v3, v7

    .line 316
    .local v3, "d":J
    const/4 v5, 0x0

    .line 317
    .local v5, "itrp":Landroid/view/animation/Interpolator;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 318
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_12

    .line 319
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v8, v7

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_e

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_6
    sub-int v7, v9, v7

    int-to-float v7, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v8, v7, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v8, v7

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_f

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_7
    sub-int v7, v9, v7

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v8, v7, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 320
    .local v1, "anim2":Landroid/view/animation/TranslateAnimation;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 321
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 322
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_11

    iget v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_10

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_8
    sub-int v7, v9, v7

    if-ge v8, v7, :cond_11

    .line 323
    const-wide/16 v7, 0x1f4

    cmp-long v7, v3, v7

    if-lez v7, :cond_a

    const-wide/16 v3, 0x1f4

    .line 324
    :cond_a
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 325
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 326
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 327
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 333
    :goto_9
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 334
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 335
    new-instance v7, Lcom/vkontakte/android/ui/MenuOverlayView$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$2;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 340
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v8

    .line 335
    invoke-virtual {p0, v7, v8, v9}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 388
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :goto_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 389
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    .line 462
    .end local v3    # "d":J
    .end local v5    # "itrp":Landroid/view/animation/Interpolator;
    :goto_b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 463
    const/4 v7, 0x0

    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 466
    :cond_b
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 315
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 319
    .restart local v3    # "d":J
    .restart local v5    # "itrp":Landroid/view/animation/Interpolator;
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_6

    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 322
    .restart local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_10
    const/4 v7, 0x0

    goto :goto_8

    .line 329
    :cond_11
    const-wide/16 v3, 0x12c

    .line 330
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 331
    const-wide/16 v7, 0x12c

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_9

    .line 342
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_12
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .end local v5    # "itrp":Landroid/view/animation/Interpolator;
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 343
    .restart local v5    # "itrp":Landroid/view/animation/Interpolator;
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_17

    iget v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_16

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_c
    sub-int v7, v9, v7

    if-ge v8, v7, :cond_17

    .line 344
    const-wide/16 v7, 0x1f4

    cmp-long v7, v3, v7

    if-lez v7, :cond_13

    const-wide/16 v3, 0x1f4

    .line 348
    :cond_13
    :goto_d
    const-wide/16 v7, 0xc8

    cmp-long v7, v3, v7

    if-gez v7, :cond_14

    const-wide/16 v3, 0xc8

    .line 349
    :cond_14
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 350
    .local v6, "set":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v2, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "translationX"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v13, 0x1

    if-ne v7, v13, :cond_18

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_e
    sub-int v7, v12, v7

    int-to-float v7, v7

    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const-string v9, "translationX"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v13, 0x1

    if-ne v7, v13, :cond_19

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_f
    sub-int v7, v12, v7

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sub-int/2addr v7, v12

    int-to-float v7, v7

    aput v7, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v7, :cond_15

    .line 354
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const-string v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_15
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 358
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    new-instance v7, Lcom/vkontakte/android/ui/MenuOverlayView$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$3;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_a

    .line 343
    .end local v2    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_16
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 346
    :cond_17
    const-wide/16 v3, 0x12c

    goto/16 :goto_d

    .line 351
    .restart local v2    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 352
    :cond_19
    const/4 v7, 0x0

    goto :goto_f

    .line 397
    .end local v2    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "d":J
    .end local v5    # "itrp":Landroid/view/animation/Interpolator;
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_1a
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 398
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-ge v7, v8, :cond_1b

    .line 399
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 400
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 401
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 402
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 403
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 404
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 405
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 406
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 407
    new-instance v7, Lcom/vkontakte/android/ui/MenuOverlayView$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$4;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 411
    const-wide/16 v8, 0x12c

    .line 407
    invoke-virtual {p0, v7, v8, v9}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :goto_10
    const/4 v7, 0x0

    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 454
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    goto/16 :goto_b

    .line 413
    :cond_1b
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 414
    .restart local v6    # "set":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .restart local v2    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const-string v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v7, :cond_1c

    .line 418
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const-string v8, "alpha"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const v11, 0x3e99999a    # 0.3f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const-string v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_1c
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 422
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 423
    new-instance v7, Lcom/vkontakte/android/ui/MenuOverlayView$5;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$5;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_10
.end method

.method public openMenu()V
    .locals 14

    .prologue
    .line 636
    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 708
    :goto_0
    return-void

    .line 637
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 638
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_5

    .line 639
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v6, v5

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    const/high16 v5, 0x423c0000    # 47.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    :goto_1
    sub-int v5, v7, v5

    int-to-float v5, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v6, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v6, v5

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    const/high16 v5, 0x423c0000    # 47.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    :goto_2
    sub-int v5, v7, v5

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v1, v6, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 640
    .local v1, "anim2":Landroid/view/animation/TranslateAnimation;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 641
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 650
    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 651
    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 653
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 654
    iget-object v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 655
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 656
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    .line 657
    new-instance v5, Lcom/vkontakte/android/ui/MenuOverlayView$9;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$9;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 661
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v6

    .line 657
    invoke-virtual {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 701
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_1
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 702
    .local v2, "focus":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 703
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 704
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 707
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    goto/16 :goto_0

    .line 639
    .end local v2    # "focus":Landroid/view/View;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 663
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_5
    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v5, :cond_1

    .line 664
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 665
    .local v4, "set":Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v6, v5, [Landroid/animation/Animator;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x1

    .line 666
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const-string v8, "translationX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v7, 0x2

    .line 667
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const-string v9, "translationX"

    const/4 v5, 0x1

    new-array v10, v5, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v13, 0x1

    if-ne v5, v13, :cond_6

    const/high16 v5, 0x423c0000    # 47.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    :goto_4
    sub-int v5, v12, v5

    int-to-float v5, v5

    aput v5, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v7, 0x3

    .line 668
    iget-object v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const-string v9, "translationX"

    const/4 v5, 0x1

    new-array v10, v5, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v13, 0x1

    if-ne v5, v13, :cond_7

    const/high16 v5, 0x423c0000    # 47.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    :goto_5
    sub-int v5, v12, v5

    const/high16 v12, 0x41800000    # 16.0f

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    sub-int/2addr v5, v12

    int-to-float v5, v5

    aput v5, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v6, v7

    .line 665
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 669
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 670
    new-instance v5, Lcom/vkontakte/android/ui/MenuOverlayView$10;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$10;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_3

    .line 667
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 668
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 665
    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setMode(I)V
    .locals 1
    .param p1, "m"    # I

    .prologue
    .line 470
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$6;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView$6;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method

.method public updateInfo()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateUserInfo()V

    .line 739
    return-void
.end method
