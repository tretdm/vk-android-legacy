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

.field private static final isShittyDevice:Z


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
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ZTE V970M"

    aput-object v4, v3, v2

    const-string v4, "LG-P880"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v5, "SP-A20i"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "deviceNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    sput-boolean v1, Lcom/vkontakte/android/ui/MenuOverlayView;->isShittyDevice:Z

    .line 78
    return-void

    :cond_0
    move v1, v2

    .line 65
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 43
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 46
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 52
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 57
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 58
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    .line 59
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 80
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 136
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 43
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 46
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 52
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 57
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 58
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    .line 59
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 80
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 141
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 43
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 46
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 52
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 57
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->sOffset:I

    .line 58
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    .line 59
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 80
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 146
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 147
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MenuOverlayView;F)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/MenuOverlayView;)F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->touchslop:F

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastScrollDirection:I

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ui/MenuOverlayView;)Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ui/MenuOverlayView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/MenuOverlayView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->canScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 501
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

    .line 213
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

    .line 219
    :cond_0
    :goto_0
    return v2

    .line 214
    :cond_1
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->findViewPager(Landroid/view/View;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    .line 215
    .local v1, "vp":Landroid/support/v4/view/ViewPager;
    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    .line 217
    :cond_2
    new-array v0, v7, [I

    .line 218
    .local v0, "scr":[I
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getLocationOnScreen([I)V

    .line 219
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

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v3

    .line 224
    :cond_1
    instance-of v5, p1, Landroid/widget/HorizontalScrollView;

    if-nez v5, :cond_2

    instance-of v5, p1, Lcom/vkontakte/android/ui/PhotoFeedView;

    if-nez v5, :cond_2

    instance-of v5, p1, Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 226
    :cond_2
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 227
    .local v2, "loc":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 228
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

    .line 230
    .end local v2    # "loc":[I
    :cond_3
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 231
    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lcom/vkontakte/android/ui/MenuOverlayView;->findHorizontalScrollView(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_0

    .line 232
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findViewPager(Landroid/view/View;)Landroid/support/v4/view/ViewPager;
    .locals 6
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    move-object p1, v3

    .line 249
    .end local p1    # "container":Landroid/view/View;
    :goto_0
    return-object p1

    .line 241
    .restart local p1    # "container":Landroid/view/View;
    :cond_0
    instance-of v4, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    goto :goto_0

    .line 242
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 243
    check-cast v0, Landroid/view/ViewGroup;

    .line 244
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

    .line 249
    goto :goto_0

    .line 245
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->findViewPager(Landroid/view/View;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    .line 246
    .local v2, "vp":Landroid/support/v4/view/ViewPager;
    if-eqz v2, :cond_4

    move-object p1, v2

    goto :goto_0

    .line 244
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 180
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    .line 181
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->touchslop:F

    .line 183
    new-instance v1, Lcom/vkontakte/android/MenuListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/MenuListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    .line 184
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    iget-object v1, v1, Lcom/vkontakte/android/MenuListView;->list:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    .line 187
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 189
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    .line 190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v0, "slp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const v2, 0x7f0201f6

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 193
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 200
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setFocusable(Z)V

    .line 201
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setFocusableInTouchMode(Z)V

    .line 204
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 206
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

    .line 209
    :cond_0
    :goto_0
    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    .line 210
    return-void

    .line 207
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMenuVisible(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x0

    .line 751
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-eqz v0, :cond_0

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/MenuListView;->setVisibility(I)V

    .line 753
    if-eqz p1, :cond_1

    const v1, -0xdcd7cd

    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setBackgroundColor(I)V

    goto :goto_0

    .line 752
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private startDragging()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 502
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/vkontakte/android/ui/MenuOverlayView;->isShittyDevice:Z

    if-nez v2, :cond_0

    .line 511
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    .line 512
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 513
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 515
    :cond_0
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, "focus":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 519
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 520
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 525
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vkontakte.andoroid.HIDE_EMOJI_POPUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method private updateDragPosition(Z)V
    .locals 4
    .param p1, "slide"    # Z

    .prologue
    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/vkontakte/android/ui/MenuOverlayView;->isShittyDevice:Z

    if-nez v0, :cond_1

    .line 531
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 532
    if-eqz p1, :cond_0

    .line 533
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v0, :cond_2

    .line 534
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

    .line 535
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setTranslationX(F)V

    .line 542
    :cond_0
    :goto_0
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->invalidate()V

    .line 547
    return-void

    .line 537
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setAlpha(F)V

    .line 538
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MenuListView;->setTranslationX(F)V

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    goto :goto_1

    .line 543
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
    .line 626
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 627
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

    .line 550
    const/16 v3, 0x1f4

    if-le p1, v3, :cond_0

    const/16 p1, 0x1f4

    .line 552
    :cond_0
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-ne v3, v11, :cond_1

    .line 623
    :goto_0
    return-void

    .line 553
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 554
    if-lez p1, :cond_b

    .line 555
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 556
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v3, v5, :cond_2

    sget-boolean v3, Lcom/vkontakte/android/ui/MenuOverlayView;->isShittyDevice:Z

    if-eqz v3, :cond_6

    .line 557
    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_4

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-ne v3, v9, :cond_3

    const/high16 v3, 0x423c0000    # 47.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    :goto_1
    sub-int v3, v5, v3

    :goto_2
    int-to-float v3, v3

    invoke-direct {v0, v3, v10, v10, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 558
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 559
    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 560
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_5

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

    .line 563
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 564
    int-to-long v5, p1

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 565
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 566
    new-instance v3, Lcom/vkontakte/android/ui/MenuOverlayView$7;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$7;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 571
    add-int/lit8 v5, p1, 0xa

    int-to-long v5, v5

    .line 566
    invoke-virtual {p0, v3, v5, v6}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 611
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :goto_4
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 612
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 613
    iput v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 614
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 557
    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_2

    .line 562
    :cond_5
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_3

    .line 573
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v1, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "translationX"

    new-array v7, v11, [F

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_9

    iget v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-ne v3, v9, :cond_8

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

    .line 575
    iget-object v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const-string v6, "translationX"

    new-array v7, v11, [F

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_a

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

    .line 576
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v3, :cond_7

    .line 577
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

    .line 578
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

    .line 580
    :cond_7
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 581
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 582
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 583
    new-instance v3, Lcom/vkontakte/android/ui/MenuOverlayView$8;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$8;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 606
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_4

    .end local v2    # "set":Landroid/animation/AnimatorSet;
    :cond_8
    move v3, v4

    .line 574
    goto/16 :goto_5

    :cond_9
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto/16 :goto_6

    .line 575
    :cond_a
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_7

    .line 609
    .end local v1    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_b
    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    goto/16 :goto_4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 264
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

    .line 630
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    sget-boolean v1, Lcom/vkontakte/android/ui/MenuOverlayView;->isShittyDevice:Z

    if-nez v1, :cond_0

    .line 631
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 641
    :goto_0
    return v0

    .line 632
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 633
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 634
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 636
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    if-ne p2, v1, :cond_2

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-eqz v1, :cond_2

    .line 637
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 639
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 640
    .local v0, "res":Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getListView()Lcom/vkontakte/android/MenuListView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 254
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 255
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 257
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 259
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

    .line 721
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 722
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 724
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 735
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
    .line 739
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 741
    const/4 v0, 0x1

    .line 743
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

    .line 150
    if-eqz p1, :cond_0

    .line 151
    sub-int v2, p4, p2

    .line 152
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

    .line 153
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v0, "llp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 156
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 157
    const/16 v3, 0x50

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3, v0}, Lcom/vkontakte/android/MenuListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .end local v0    # "llp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "width":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 161
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-ne v3, v8, :cond_3

    .line 162
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    sub-int v5, p4, p2

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 163
    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget-object v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 168
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v3, :cond_2

    .line 169
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 171
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    add-int/2addr v5, p4

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 173
    :cond_2
    return-void

    .line 164
    :cond_3
    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 165
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int v5, p4, p2

    sub-int v6, p5, p3

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 166
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
    .line 268
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 475
    :goto_0
    return v7

    .line 269
    :cond_0
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v7, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_1

    .line 270
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 273
    :cond_1
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 275
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

    .line 279
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 280
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 281
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

    .line 282
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 283
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 285
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->startDragging()V

    .line 286
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 287
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->requestLayout()V

    .line 288
    const/4 v7, 0x1

    goto :goto_0

    .line 275
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 281
    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    .line 291
    :cond_5
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v7, :cond_6

    .line 294
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7, p1}, Lcom/vkontakte/android/MenuListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 302
    const/4 v7, 0x1

    goto :goto_0

    .line 305
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 306
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 307
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    if-eqz v7, :cond_c

    .line 309
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastScrollDirection:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    .line 310
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v7, :cond_7

    .line 311
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 312
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 313
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 315
    :cond_7
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    .line 316
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

    .line 320
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 321
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 318
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    goto :goto_3

    .line 323
    :cond_9
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v8, 0x428c0000    # 70.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    if-le v7, v8, :cond_1b

    .line 324
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v8, v7

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_d

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

    if-ne v7, v10, :cond_e

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

    .line 325
    .local v3, "d":J
    const/4 v5, 0x0

    .line 326
    .local v5, "itrp":Landroid/view/animation/Interpolator;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 327
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_a

    sget-boolean v7, Lcom/vkontakte/android/ui/MenuOverlayView;->isShittyDevice:Z

    if-eqz v7, :cond_13

    .line 328
    :cond_a
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v8, v7

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_f

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

    if-ne v7, v10, :cond_10

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

    .line 329
    .local v1, "anim2":Landroid/view/animation/TranslateAnimation;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 330
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 331
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_12

    iget v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_11

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_8
    sub-int v7, v9, v7

    if-ge v8, v7, :cond_12

    .line 332
    const-wide/16 v7, 0x1f4

    cmp-long v7, v3, v7

    if-lez v7, :cond_b

    const-wide/16 v3, 0x1f4

    .line 333
    :cond_b
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 334
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 335
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 336
    invoke-virtual {v1, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 342
    :goto_9
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 343
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    new-instance v7, Lcom/vkontakte/android/ui/MenuOverlayView$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$2;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 349
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v8

    .line 344
    invoke-virtual {p0, v7, v8, v9}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :goto_a
    const/4 v7, 0x0

    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 398
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    .line 471
    .end local v3    # "d":J
    .end local v5    # "itrp":Landroid/view/animation/Interpolator;
    :goto_b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 472
    const/4 v7, 0x0

    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 475
    :cond_c
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 324
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 328
    .restart local v3    # "d":J
    .restart local v5    # "itrp":Landroid/view/animation/Interpolator;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_6

    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 331
    .restart local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_11
    const/4 v7, 0x0

    goto :goto_8

    .line 338
    :cond_12
    const-wide/16 v3, 0x12c

    .line 339
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 340
    const-wide/16 v7, 0x12c

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_9

    .line 351
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_13
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    .end local v5    # "itrp":Landroid/view/animation/Interpolator;
    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 352
    .restart local v5    # "itrp":Landroid/view/animation/Interpolator;
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_18

    iget v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    iget v9, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_17

    const/high16 v7, 0x423c0000    # 47.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    :goto_c
    sub-int v7, v9, v7

    if-ge v8, v7, :cond_18

    .line 353
    const-wide/16 v7, 0x1f4

    cmp-long v7, v3, v7

    if-lez v7, :cond_14

    const-wide/16 v3, 0x1f4

    .line 357
    :cond_14
    :goto_d
    const-wide/16 v7, 0xc8

    cmp-long v7, v3, v7

    if-gez v7, :cond_15

    const-wide/16 v3, 0xc8

    .line 358
    :cond_15
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 359
    .local v6, "set":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 360
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

    if-ne v7, v13, :cond_19

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

    .line 361
    iget-object v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const-string v9, "translationX"

    const/4 v7, 0x1

    new-array v10, v7, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v13, 0x1

    if-ne v7, v13, :cond_1a

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

    .line 362
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v7, :cond_16

    .line 363
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

    .line 364
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

    .line 366
    :cond_16
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 367
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    new-instance v7, Lcom/vkontakte/android/ui/MenuOverlayView$3;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$3;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_a

    .line 352
    .end local v2    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 355
    :cond_18
    const-wide/16 v3, 0x12c

    goto/16 :goto_d

    .line 360
    .restart local v2    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_19
    const/4 v7, 0x0

    goto/16 :goto_e

    .line 361
    :cond_1a
    const/4 v7, 0x0

    goto :goto_f

    .line 406
    .end local v2    # "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v3    # "d":J
    .end local v5    # "itrp":Landroid/view/animation/Interpolator;
    .end local v6    # "set":Landroid/animation/AnimatorSet;
    :cond_1b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 407
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_1c

    sget-boolean v7, Lcom/vkontakte/android/ui/MenuOverlayView;->isShittyDevice:Z

    if-eqz v7, :cond_1d

    .line 408
    :cond_1c
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 409
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 410
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 411
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
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

    .line 413
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 414
    const-wide/16 v7, 0x12c

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 415
    iget-object v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 416
    new-instance v7, Lcom/vkontakte/android/ui/MenuOverlayView$4;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$4;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 420
    const-wide/16 v8, 0x12c

    .line 416
    invoke-virtual {p0, v7, v8, v9}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :goto_10
    const/4 v7, 0x0

    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 463
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    goto/16 :goto_b

    .line 422
    :cond_1d
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 423
    .restart local v6    # "set":Landroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 424
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

    .line 425
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

    .line 426
    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v7, :cond_1e

    .line 427
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

    .line 428
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

    .line 430
    :cond_1e
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 431
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    new-instance v7, Lcom/vkontakte/android/ui/MenuOverlayView$5;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$5;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 460
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_10
.end method

.method public openMenu()V
    .locals 14

    .prologue
    .line 645
    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 717
    :goto_0
    return-void

    .line 646
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->animating:Z

    .line 647
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    sget-boolean v5, Lcom/vkontakte/android/ui/MenuOverlayView;->isShittyDevice:Z

    if-eqz v5, :cond_6

    .line 648
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v6, v5

    iget v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

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

    if-ne v5, v8, :cond_5

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

    .line 649
    .local v1, "anim2":Landroid/view/animation/TranslateAnimation;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 650
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 659
    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 660
    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 662
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 663
    iget-object v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 664
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 665
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition(Z)V

    .line 666
    new-instance v5, Lcom/vkontakte/android/ui/MenuOverlayView$9;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$9;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 670
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v6

    .line 666
    invoke-virtual {p0, v5, v6, v7}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 711
    .local v2, "focus":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 712
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 713
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 716
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/MenuOverlayView;->setMenuVisible(Z)V

    goto/16 :goto_0

    .line 648
    .end local v2    # "focus":Landroid/view/View;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 672
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_6
    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    if-nez v5, :cond_2

    .line 673
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 674
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

    .line 675
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

    .line 676
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

    if-ne v5, v13, :cond_7

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

    .line 677
    iget-object v8, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const-string v9, "translationX"

    const/4 v5, 0x1

    new-array v10, v5, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iget v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mode:I

    const/4 v13, 0x1

    if-ne v5, v13, :cond_8

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

    .line 674
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 678
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    new-instance v5, Lcom/vkontakte/android/ui/MenuOverlayView$10;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$10;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 707
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_3

    .line 676
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 677
    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 674
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
    .line 479
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$6;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView$6;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public updateInfo()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateUserInfo()V

    .line 748
    return-void
.end method
