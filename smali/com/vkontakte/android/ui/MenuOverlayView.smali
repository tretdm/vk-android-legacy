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

    .line 111
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 38
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 39
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 58
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 112
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 38
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 39
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 58
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 117
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 38
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 39
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 40
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 46
    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    .line 58
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$1;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 122
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->init()V

    .line 123
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/MenuOverlayView;F)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/MenuOverlayView;)F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->touchslop:F

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastScrollDirection:I

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/MenuOverlayView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/MenuOverlayView;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/MenuOverlayView;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/MenuOverlayView;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/MenuOverlayView;->canScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/MenuOverlayView;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/MenuOverlayView;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/MenuOverlayView;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->startDragging()V

    return-void
.end method

.method private canScroll(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x42400000    # 48.0f

    .line 244
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->findViewPager(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v0

    .line 245
    .local v0, "vp":Lcom/vkontakte/android/ui/ViewPager;
    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getHeight()I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ViewPager;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findViewPager(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager;
    .locals 6
    .param p1, "container"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    move-object p1, v3

    .line 259
    .end local p1    # "container":Landroid/view/View;
    :goto_0
    return-object p1

    .line 251
    .restart local p1    # "container":Landroid/view/View;
    :cond_0
    instance-of v4, p1, Lcom/vkontakte/android/ui/ViewPager;

    if-eqz v4, :cond_1

    check-cast p1, Lcom/vkontakte/android/ui/ViewPager;

    goto :goto_0

    .line 252
    :cond_1
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 253
    check-cast v0, Landroid/view/ViewGroup;

    .line 254
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

    .line 259
    goto :goto_0

    .line 255
    .restart local v0    # "g":Landroid/view/ViewGroup;
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->findViewPager(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager;

    move-result-object v2

    .line 256
    .local v2, "vp":Lcom/vkontakte/android/ui/ViewPager;
    if-eqz v2, :cond_4

    move-object p1, v2

    goto :goto_0

    .line 254
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 146
    const v1, -0xd1d1d2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->setBackgroundColor(I)V

    .line 147
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    .line 148
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->touchslop:F

    .line 150
    new-instance v1, Lcom/vkontakte/android/MenuListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/MenuListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    .line 151
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    new-instance v2, Lcom/vkontakte/android/ui/MenuOverlayView$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$2;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MenuListView;->setListener(Lcom/vkontakte/android/MenuListView$Listener;)V

    .line 217
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    .line 219
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 221
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    .line 222
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 223
    .local v0, "slp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->addView(Landroid/view/View;)V

    .line 232
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setFocusable(Z)V

    .line 233
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/MenuOverlayView;->setFocusableInTouchMode(Z)V

    .line 236
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 238
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

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 355
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 356
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 357
    .local v0, "anim":Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->setRepeatCount(I)V

    .line 358
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 359
    new-instance v0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;

    .end local v0    # "anim":Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 360
    .restart local v0    # "anim":Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->setRepeatCount(I)V

    .line 361
    const/high16 v1, -0x3e800000    # -16.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;->offset:I

    .line 362
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 368
    .end local v0    # "anim":Lcom/vkontakte/android/ui/MenuOverlayView$SlideAnimation;
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    .line 365
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 366
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private updateDragPosition()V
    .locals 6

    .prologue
    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->mSetTranslationX:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 373
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

    .line 375
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

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 404
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 405
    return-void
.end method

.method public closeMenu(I)V
    .locals 7
    .param p1, "d"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 381
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "md "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    :goto_0
    int-to-float v1, v1

    invoke-direct {v0, v1, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 383
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 384
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 385
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 386
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
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

    invoke-direct {v0, v1, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 389
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 390
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 391
    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 393
    iput v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 394
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    .line 396
    new-instance v1, Lcom/vkontakte/android/ui/MenuOverlayView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ui/MenuOverlayView$3;-><init>(Lcom/vkontakte/android/ui/MenuOverlayView;)V

    .line 400
    add-int/lit8 v2, p1, 0xa

    int-to-long v2, v2

    .line 396
    invoke-virtual {p0, v1, v2, v3}, Lcom/vkontakte/android/ui/MenuOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    return-void

    .line 382
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_0

    .line 388
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 263
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 267
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 409
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 410
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v2, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    .line 412
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 422
    :cond_0
    :goto_0
    return v1

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 420
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

    .line 421
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

    .line 426
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 427
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->backConsumed:Z

    .line 436
    :cond_0
    :goto_0
    return v1

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 434
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

    .line 435
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
    .line 126
    if-eqz p1, :cond_0

    .line 127
    sub-int v1, p4, p2

    .line 128
    .local v1, "width":I
    const/high16 v2, 0x43870000    # 270.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    .line 129
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v2, :cond_0

    .line 132
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 133
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 135
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 137
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 138
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 139
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 142
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "width":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 143
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x12c

    const/high16 v4, 0x41800000    # 16.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 271
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    if-eqz v2, :cond_2

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 273
    :cond_0
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->dropAllEvents:Z

    .line 351
    :cond_1
    :goto_0
    return v5

    .line 278
    :cond_2
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_3

    .line 279
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 282
    :cond_3
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 284
    :cond_4
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 288
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 289
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    .line 290
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    iput v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 291
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 292
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 294
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->startDragging()V

    .line 295
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 299
    :cond_5
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    if-eqz v2, :cond_6

    .line 300
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 304
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v5, :cond_1

    .line 305
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->disableScrollNow:Z

    .line 306
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    if-eqz v2, :cond_1

    .line 308
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastScrollDirection:I

    if-eq v2, v5, :cond_8

    .line 309
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_7

    .line 310
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu(I)V

    .line 314
    :goto_1
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->closing:Z

    goto :goto_0

    .line 312
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->closeMenu()V

    goto :goto_1

    .line 317
    :cond_8
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    if-le v2, v3, :cond_a

    .line 318
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v3, v3

    invoke-direct {v0, v2, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v1, v2, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 319
    .local v1, "anim2":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 320
    invoke-virtual {v1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 321
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_9

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    if-ge v2, v3, :cond_9

    .line 322
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 323
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    div-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 324
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 325
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v2, v2

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lastFlingSpeed:F

    div-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 330
    :goto_2
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->menuOpen:Z

    .line 331
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 333
    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 334
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    .line 347
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :goto_3
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrolling:Z

    .line 348
    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->scrollOffset:I

    goto/16 :goto_0

    .line 327
    .restart local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_9
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 328
    invoke-virtual {v1, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    goto :goto_2

    .line 336
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "anim2":Landroid/view/animation/TranslateAnimation;
    :cond_a
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    int-to-float v2, v2

    invoke-direct {v0, v2, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 337
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 338
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 339
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MenuOverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 340
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    iget v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v2, v3, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 341
    .restart local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 342
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 343
    iget-object v2, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->shadowView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    iput v7, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->padding:I

    .line 345
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MenuOverlayView;->updateDragPosition()V

    goto :goto_3
.end method

.method public updateInfo()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/vkontakte/android/ui/MenuOverlayView;->lv:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateUserInfo()V

    .line 441
    return-void
.end method
