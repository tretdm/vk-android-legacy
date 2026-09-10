.class public Lcom/vkontakte/android/ui/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;,
        Lcom/vkontakte/android/ui/ViewPager$ItemInfo;,
        Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;,
        Lcom/vkontakte/android/ui/ViewPager$SimpleOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VKViewPager"

.field private static final USE_CACHE:Z


# instance fields
.field private loop:Z

.field private loopBack:Z

.field private mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mIsBeingDragged:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;

.field private mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    .line 65
    iput-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 66
    iput-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 124
    iput v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    .line 126
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPager;->loopBack:Z

    .line 189
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->initViewPager()V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    .line 65
    iput-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 66
    iput-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 124
    iput v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    .line 126
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/ViewPager;->loopBack:Z

    .line 194
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->initViewPager()V

    .line 195
    return-void
.end method

.method private checkZoomableImageView(FFF)Z
    .locals 6
    .param p1, "dx"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1074
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/vkontakte/android/PhotoViewerActivity;

    if-nez v2, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return v1

    .line 1075
    :cond_1
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DX "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    float-to-int v2, p2

    float-to-int v3, p3

    invoke-direct {p0, p0, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->findZoomableImageView(Landroid/view/View;II)Lcom/vkontakte/android/ZoomableImageView;

    move-result-object v0

    .line 1077
    .local v0, "v":Lcom/vkontakte/android/ZoomableImageView;
    if-eqz v0, :cond_0

    .line 1078
    cmpg-float v2, p1, v5

    if-gez v2, :cond_2

    .line 1079
    invoke-virtual {v0}, Lcom/vkontakte/android/ZoomableImageView;->canScrollRight()Z

    move-result v1

    goto :goto_0

    .line 1080
    :cond_2
    cmpl-float v2, p1, v5

    if-lez v2, :cond_0

    .line 1081
    invoke-virtual {v0}, Lcom/vkontakte/android/ZoomableImageView;->canScrollLeft()Z

    move-result v1

    goto :goto_0
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 701
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrolling:Z

    .local v2, "needPopulate":Z
    if-eqz v2, :cond_2

    .line 703
    invoke-direct {p0, v8}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 704
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 705
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v3

    .line 706
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v4

    .line 707
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 708
    .local v5, "x":I
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 709
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 710
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    .line 712
    :cond_1
    invoke-direct {p0, v8}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    .line 714
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    .line 715
    iput-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrolling:Z

    .line 716
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_4

    .line 723
    if-eqz v2, :cond_3

    .line 724
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 726
    :cond_3
    return-void

    .line 717
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .line 718
    .local v1, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_5

    .line 719
    const/4 v2, 0x1

    .line 720
    iput-boolean v8, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->scrolling:Z

    .line 716
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 980
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 981
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    .line 983
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 985
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 987
    :cond_0
    return-void
.end method

.method private findHorizontalScrollView(Landroid/view/View;II)Z
    .locals 7
    .param p1, "container"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1029
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v3

    .line 1030
    :cond_1
    instance-of v5, p1, Landroid/widget/HorizontalScrollView;

    if-nez v5, :cond_2

    instance-of v5, p1, Lcom/vkontakte/android/ui/PhotoFeedView;

    if-nez v5, :cond_2

    instance-of v5, p1, Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 1032
    :cond_2
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1033
    .local v2, "loc":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1034
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

    .line 1044
    .end local v2    # "loc":[I
    :cond_3
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 1045
    check-cast v0, Landroid/view/ViewGroup;

    .line 1046
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1047
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lcom/vkontakte/android/ui/ViewPager;->findHorizontalScrollView(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_0

    .line 1046
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findZoomableImageView(Landroid/view/View;II)Lcom/vkontakte/android/ZoomableImageView;
    .locals 8
    .param p1, "container"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1054
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-object v4

    .line 1055
    :cond_1
    instance-of v5, p1, Lcom/vkontakte/android/ZoomableImageView;

    if-eqz v5, :cond_2

    .line 1056
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 1057
    .local v2, "loc":[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1058
    aget v5, v2, v6

    if-lt p2, v5, :cond_2

    aget v5, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p2, v5, :cond_2

    aget v5, v2, v7

    if-lt p3, v5, :cond_2

    aget v5, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-gt p3, v5, :cond_2

    move-object v4, p1

    .line 1059
    check-cast v4, Lcom/vkontakte/android/ZoomableImageView;

    .line 1060
    .local v4, "zv":Lcom/vkontakte/android/ZoomableImageView;
    goto :goto_0

    .line 1063
    .end local v2    # "loc":[I
    .end local v4    # "zv":Lcom/vkontakte/android/ZoomableImageView;
    :cond_2
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 1064
    check-cast v0, Landroid/view/ViewGroup;

    .line 1065
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 1066
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2, p3}, Lcom/vkontakte/android/ui/ViewPager;->findZoomableImageView(Landroid/view/View;II)Lcom/vkontakte/android/ZoomableImageView;

    move-result-object v3

    .line 1067
    .local v3, "v":Lcom/vkontakte/android/ZoomableImageView;
    if-eqz v3, :cond_3

    move-object v4, v3

    goto :goto_0

    .line 1065
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 207
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 990
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 991
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollingCacheEnabled:Z

    .line 1002
    :cond_0
    return-void
.end method


# virtual methods
.method addNewItem(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 323
    new-instance v0, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;-><init>()V

    .line 324
    .local v0, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iput p1, v0, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    .line 325
    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/vkontakte/android/ui/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 326
    if-gez p2, :cond_0

    .line 327
    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 550
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 562
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 662
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 663
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 665
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v2

    .line 666
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v3

    .line 667
    .local v3, "oldY":I
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 668
    .local v6, "x":I
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 670
    .local v7, "y":I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 671
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    .line 674
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v5

    .line 676
    .local v5, "width":I
    div-int v4, v6, v5

    .line 677
    .local v4, "position":I
    rem-int v1, v6, v5

    .line 678
    .local v1, "offsetPixels":I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 679
    .local v0, "offset":F
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 683
    .end local v0    # "offset":F
    .end local v1    # "offsetPixels":I
    .end local v4    # "position":I
    .end local v5    # "width":I
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->invalidate()V

    .line 697
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_0
    return-void

    .line 688
    :cond_3
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    iget-object v9, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 689
    invoke-virtual {p0, v10, v10}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 691
    :cond_4
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 692
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8, v10}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItem(IZ)V

    .line 696
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 336
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    move v2, v5

    .line 337
    .local v2, "needPopulate":Z
    :goto_0
    const/4 v3, -0x1

    .line 339
    .local v3, "newCurrItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_3

    .line 371
    if-ltz v3, :cond_0

    .line 373
    invoke-virtual {p0, v3, v6, v5}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 374
    const/4 v2, 0x1

    .line 376
    :cond_0
    if-eqz v2, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 378
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->requestLayout()V

    .line 380
    :cond_1
    return-void

    .end local v0    # "i":I
    .end local v2    # "needPopulate":Z
    .end local v3    # "newCurrItem":I
    :cond_2
    move v2, v6

    .line 336
    goto :goto_0

    .line 340
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    .restart local v3    # "newCurrItem":I
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .line 341
    .local v1, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget-object v8, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 343
    .local v4, "newPos":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_5

    .line 339
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 347
    :cond_5
    const/4 v7, -0x2

    if-ne v4, v7, :cond_6

    .line 348
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 349
    add-int/lit8 v0, v0, -0x1

    .line 350
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget v8, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    iget-object v9, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lcom/vkontakte/android/ui/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 351
    const/4 v2, 0x1

    .line 353
    iget v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    iget v8, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_4

    .line 355
    iget v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 357
    goto :goto_2

    .line 360
    :cond_6
    iget v7, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_4

    .line 361
    iget v7, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_7

    .line 363
    move v3, v4

    .line 366
    :cond_7
    iput v4, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    .line 367
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public getAdapter()Lcom/vkontakte/android/ui/PagerAdapter;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    return v0
.end method

.method infoForChild(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 571
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 566
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .line 567
    .local v1, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget-object v3, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/vkontakte/android/ui/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method initViewPager()V
    .locals 3

    .prologue
    .line 198
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setWillNotDraw(Z)V

    .line 199
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 200
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 201
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mTouchSlop:I

    .line 202
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mMinimumVelocity:I

    .line 203
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mMaximumVelocity:I

    .line 204
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 576
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 577
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-eqz v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 580
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 739
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {p0, p0, v8, v9}, Lcom/vkontakte/android/ui/ViewPager;->findHorizontalScrollView(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 838
    :cond_0
    :goto_0
    return v6

    .line 744
    :cond_1
    const/4 v8, 0x3

    if-eq v0, v8, :cond_2

    if-ne v0, v7, :cond_3

    .line 747
    :cond_2
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 748
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    goto :goto_0

    .line 755
    :cond_3
    if-eqz v0, :cond_5

    .line 756
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    if-eqz v8, :cond_4

    move v6, v7

    .line 758
    goto :goto_0

    .line 760
    :cond_4
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    if-nez v8, :cond_0

    .line 766
    :cond_5
    packed-switch v0, :pswitch_data_0

    .line 838
    :cond_6
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 778
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 779
    .local v2, "x":F
    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    sub-float v1, v2, v6

    .line 780
    .local v1, "dx":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 781
    .local v3, "xDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 782
    .local v4, "y":F
    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionY:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 785
    .local v5, "yDiff":F
    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v3, v6

    if-lez v6, :cond_7

    cmpl-float v6, v3, v5

    if-lez v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-direct {p0, v1, v6, v8}, Lcom/vkontakte/android/ui/ViewPager;->checkZoomableImageView(FFF)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 787
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 788
    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    .line 789
    iput v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    .line 790
    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 792
    :cond_7
    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    .line 798
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    goto :goto_1

    .line 809
    .end local v1    # "dx":F
    .end local v2    # "x":F
    .end local v3    # "xDiff":F
    .end local v4    # "y":F
    .end local v5    # "yDiff":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mInitialMotionX:F

    iput v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    .line 810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionY:F

    .line 812
    iget v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    .line 814
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 815
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    .line 816
    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    goto :goto_1

    .line 818
    :cond_8
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    .line 819
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 820
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    goto :goto_1

    .line 766
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 629
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    .line 630
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 631
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    .line 633
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getChildCount()I

    move-result v3

    .line 634
    .local v3, "count":I
    sub-int v7, p4, p2

    .line 636
    .local v7, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 657
    return-void

    .line 637
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 639
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ViewPager;->infoForChild(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    move-result-object v5

    .local v5, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    if-eqz v5, :cond_3

    .line 640
    iget v8, v5, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    mul-int v6, v7, v8

    .line 641
    .local v6, "loff":I
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v8, :cond_1

    iget-boolean v8, v5, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->isLoopItem:Z

    if-eqz v8, :cond_1

    iget v8, v5, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-nez v8, :cond_1

    .line 642
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v8

    mul-int v6, v7, v8

    .line 644
    :cond_1
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v8, :cond_2

    iget-boolean v8, v5, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->isLoopItem:Z

    if-eqz v8, :cond_2

    iget v8, v5, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    iget-object v9, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v9}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_2

    .line 645
    neg-int v6, v7

    .line 647
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 648
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingTop()I

    move-result v2

    .line 653
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    .line 654
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    .line 652
    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 636
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    .end local v6    # "loff":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 589
    invoke-static {v5, p1}, Lcom/vkontakte/android/ui/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 590
    invoke-static {v5, p2}, Lcom/vkontakte/android/ui/ViewPager;->getDefaultSize(II)I

    move-result v4

    .line 589
    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/ui/ViewPager;->setMeasuredDimension(II)V

    .line 593
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 594
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 593
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildWidthMeasureSpec:I

    .line 595
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getMeasuredHeight()I

    move-result v3

    .line 596
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 595
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildHeightMeasureSpec:I

    .line 599
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    .line 600
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 601
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    .line 604
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getChildCount()I

    move-result v2

    .line 605
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 613
    return-void

    .line 606
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 607
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 610
    iget v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 605
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 617
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 620
    iget v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    mul-int v0, v1, p1

    .line 621
    .local v0, "scrollPos":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    .line 623
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    .line 625
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 844
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    if-eqz v19, :cond_0

    .line 847
    const/16 v19, 0x0

    .line 961
    :goto_0
    return v19

    .line 850
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v19

    if-nez v19, :cond_2

    .line 852
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 855
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 856
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 858
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 860
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 862
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 961
    :cond_4
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    .line 868
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    .line 871
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mInitialMotionX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    goto :goto_1

    .line 876
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 878
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 879
    .local v15, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 880
    .local v16, "xDiff":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 881
    .local v17, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 883
    .local v18, "yDiff":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    cmpl-float v19, v16, v19

    if-lez v19, :cond_5

    cmpl-float v19, v16, v18

    if-lez v19, :cond_5

    .line 885
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 886
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    .line 887
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    .line 888
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 891
    .end local v15    # "x":F
    .end local v16    # "xDiff":F
    .end local v17    # "y":F
    .end local v18    # "yDiff":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 894
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 895
    .restart local v15    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v5, v19, v15

    .line 896
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v12, v19, v5

    .line 898
    .local v12, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v14

    .line 900
    .local v14, "width":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->loopBack:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    neg-int v0, v14

    move/from16 v19, v0

    :goto_2
    move/from16 v0, v19

    int-to-float v7, v0

    .line 902
    .local v7, "leftBound":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    mul-int v19, v19, v14

    :goto_3
    move/from16 v0, v19

    int-to-float v11, v0

    .line 903
    .local v11, "rightBound":F
    cmpg-float v19, v12, v7

    if-gez v19, :cond_9

    .line 904
    move v12, v7

    .line 909
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    float-to-int v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v20, v12, v20

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    .line 910
    float-to-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 912
    float-to-int v0, v12

    move/from16 v19, v0

    div-int v8, v19, v14

    .line 913
    .local v8, "position":I
    float-to-int v0, v12

    move/from16 v19, v0

    rem-int v10, v19, v14

    .line 914
    .local v10, "positionOffsetPixels":I
    int-to-float v0, v10

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v9, v19, v20

    .line 915
    .local v9, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8, v9, v10}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_1

    .line 900
    .end local v7    # "leftBound":F
    .end local v8    # "position":I
    .end local v9    # "positionOffset":F
    .end local v10    # "positionOffsetPixels":I
    .end local v11    # "rightBound":F
    :cond_7
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto :goto_2

    .line 902
    .restart local v7    # "leftBound":F
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    mul-int v19, v19, v14

    goto/16 :goto_3

    .line 905
    .restart local v11    # "rightBound":F
    :cond_9
    cmpl-float v19, v12, v11

    if-lez v19, :cond_6

    .line 906
    move v12, v11

    goto/16 :goto_4

    .line 921
    .end local v5    # "deltaX":F
    .end local v7    # "leftBound":F
    .end local v11    # "rightBound":F
    .end local v12    # "scrollX":F
    .end local v14    # "width":I
    .end local v15    # "x":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 922
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 923
    .local v13, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mMaximumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 924
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 925
    .local v6, "initialVelocity":I
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    .line 926
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mMinimumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_a

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mInitialMotionX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-ltz v19, :cond_c

    .line 928
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mInitialMotionX:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_b

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 938
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->endDrag()V

    goto/16 :goto_1

    .line 931
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_5

    .line 934
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_5

    .line 942
    .end local v6    # "initialVelocity":I
    .end local v13    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->endDrag()V

    goto/16 :goto_1

    .line 862
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method populate()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, -0x1

    .line 383
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-nez v6, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    if-nez v6, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 403
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v6, p0}, Lcom/vkontakte/android/ui/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 405
    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-lez v6, :cond_6

    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v5, v6, -0x1

    .line 406
    .local v5, "startPos":I
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v0

    .line 407
    .local v0, "N":I
    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v8, v0, -0x1

    if-ge v6, v8, :cond_7

    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v1, v6, 0x1

    .line 412
    .local v1, "endPos":I
    :goto_2
    const/4 v4, -0x1

    .line 413
    .local v4, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_8

    .line 439
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    iget v4, v6, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    .line 440
    :goto_4
    if-ge v4, v1, :cond_2

    .line 441
    add-int/lit8 v4, v4, 0x1

    .line 442
    if-le v4, v5, :cond_e

    .line 443
    :goto_5
    if-le v4, v1, :cond_f

    .line 450
    :cond_2
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_10

    .line 452
    :cond_3
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_4

    .line 453
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0, v10, v6}, Lcom/vkontakte/android/ui/ViewPager;->addNewItem(II)V

    .line 454
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    iput-boolean v11, v6, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->isLoopItem:Z

    .line 456
    :cond_4
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->loopBack:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-nez v6, :cond_5

    .line 457
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/vkontakte/android/ui/ViewPager;->addNewItem(II)V

    .line 458
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    iput-boolean v11, v6, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->isLoopItem:Z

    .line 468
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v6, p0}, Lcom/vkontakte/android/ui/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    goto/16 :goto_0

    .line 405
    .end local v0    # "N":I
    .end local v1    # "endPos":I
    .end local v2    # "i":I
    .end local v4    # "lastPos":I
    .end local v5    # "startPos":I
    :cond_6
    iget v5, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    goto/16 :goto_1

    .line 407
    .restart local v0    # "N":I
    .restart local v5    # "startPos":I
    :cond_7
    add-int/lit8 v1, v0, -0x1

    goto/16 :goto_2

    .line 414
    .restart local v1    # "endPos":I
    .restart local v2    # "i":I
    .restart local v4    # "lastPos":I
    :cond_8
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .line 415
    .local v3, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iget v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-lt v6, v5, :cond_9

    iget v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-le v6, v1, :cond_b

    :cond_9
    iget-boolean v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->scrolling:Z

    if-nez v6, :cond_b

    .line 417
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    add-int/lit8 v2, v2, -0x1

    .line 419
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget v8, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    iget-object v9, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v6, p0, v8, v9}, Lcom/vkontakte/android/ui/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 435
    :cond_a
    iget v4, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 420
    :cond_b
    if-ge v4, v1, :cond_a

    iget v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-le v6, v5, :cond_a

    .line 424
    add-int/lit8 v4, v4, 0x1

    .line 425
    if-ge v4, v5, :cond_c

    .line 426
    move v4, v5

    .line 428
    :cond_c
    :goto_7
    if-gt v4, v1, :cond_a

    iget v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-ge v4, v6, :cond_a

    .line 430
    invoke-virtual {p0, v4, v2}, Lcom/vkontakte/android/ui/ViewPager;->addNewItem(II)V

    .line 431
    add-int/lit8 v4, v4, 0x1

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .end local v3    # "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    :cond_d
    move v4, v7

    .line 439
    goto/16 :goto_4

    :cond_e
    move v4, v5

    .line 442
    goto/16 :goto_5

    .line 445
    :cond_f
    invoke-virtual {p0, v4, v7}, Lcom/vkontakte/android/ui/ViewPager;->addNewItem(II)V

    .line 446
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 450
    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .restart local v3    # "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iput-boolean v10, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->isLoopItem:Z

    goto/16 :goto_6
.end method

.method public setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/vkontakte/android/ui/PagerAdapter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/PagerAdapter;->setDataSetObserver(Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;)V

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    .line 224
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mObserver:Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;

    invoke-direct {v0, p0, v3}, Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;-><init>(Lcom/vkontakte/android/ui/ViewPager;Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mObserver:Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mObserver:Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PagerAdapter;->setDataSetObserver(Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;)V

    .line 229
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    .line 230
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    if-ltz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 232
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v4, v1}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    .line 234
    iput-object v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 235
    iput-object v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 240
    :cond_2
    :goto_0
    return-void

    .line 237
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .param p1, "item"    # I
    .param p2, "smooth"    # Z

    .prologue
    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    .line 248
    invoke-virtual {p0, p1, p2, v0}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 249
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 252
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 253
    :cond_0
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    if-nez p3, :cond_3

    iget v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 260
    :cond_3
    if-gez p1, :cond_8

    .line 261
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPager;->loopBack:Z

    if-eqz v2, :cond_7

    const/4 p1, -0x1

    .line 265
    :cond_4
    :goto_1
    iget v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    if-gt p1, v2, :cond_5

    iget v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_6

    .line 269
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_a

    .line 273
    .end local v1    # "i":I
    :cond_6
    iget v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-eq v2, p1, :cond_b

    .line 274
    .local v0, "dispatchSelected":Z
    :goto_3
    iput p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    .line 275
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 276
    if-eqz p2, :cond_c

    .line 277
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->smoothScrollTo(II)V

    .line 278
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .end local v0    # "dispatchSelected":Z
    :cond_7
    move p1, v3

    .line 261
    goto :goto_1

    .line 262
    :cond_8
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_4

    .line 263
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result p1

    :goto_4
    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    goto :goto_4

    .line 270
    .restart local v1    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    iput-boolean v0, v2, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->scrolling:Z

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_b
    move v0, v3

    .line 273
    goto :goto_3

    .line 282
    .restart local v0    # "dispatchSelected":Z
    :cond_c
    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_d

    .line 283
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 285
    :cond_d
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    .line 286
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public setLoop(Z)V
    .locals 0
    .param p1, "l"    # Z

    .prologue
    .line 1005
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ViewPager;->loop:Z

    .line 1006
    return-void
.end method

.method public setLoopBack(Z)V
    .locals 0
    .param p1, "l"    # Z

    .prologue
    .line 1009
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ViewPager;->loopBack:Z

    .line 1010
    return-void
.end method

.method public setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    .line 292
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 303
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 320
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v2

    .line 307
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v3

    .line 308
    .local v3, "sy":I
    sub-int v0, p1, v2

    .line 309
    .local v0, "dx":I
    sub-int v1, p2, v3

    .line 310
    .local v1, "dy":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    goto :goto_0

    .line 315
    :cond_1
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 316
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrolling:Z

    .line 317
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    .line 318
    iget-object v4, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 319
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->invalidate()V

    goto :goto_0
.end method
