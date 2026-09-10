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

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z


# instance fields
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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    .line 61
    iput-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 62
    iput-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    .line 183
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->initViewPager()V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    .line 61
    iput-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 62
    iput-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    .line 188
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->initViewPager()V

    .line 189
    return-void
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 671
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrolling:Z

    .local v2, "needPopulate":Z
    if-eqz v2, :cond_2

    .line 673
    invoke-direct {p0, v8}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 674
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 675
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v3

    .line 676
    .local v3, "oldX":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v4

    .line 677
    .local v4, "oldY":I
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 678
    .local v5, "x":I
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 679
    .local v6, "y":I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 680
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    .line 682
    :cond_1
    invoke-direct {p0, v8}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    .line 684
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    iput-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    .line 685
    iput-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrolling:Z

    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_4

    .line 693
    if-eqz v2, :cond_3

    .line 694
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 696
    :cond_3
    return-void

    .line 687
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .line 688
    .local v1, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_5

    .line 689
    const/4 v2, 0x1

    .line 690
    iput-boolean v8, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->scrolling:Z

    .line 686
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 945
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 946
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    .line 948
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 952
    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "newState"    # I

    .prologue
    .line 201
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 955
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 956
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollingCacheEnabled:Z

    .line 967
    :cond_0
    return-void
.end method


# virtual methods
.method addNewItem(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "index"    # I

    .prologue
    .line 317
    new-instance v0, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;-><init>()V

    .line 318
    .local v0, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iput p1, v0, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    .line 319
    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/vkontakte/android/ui/PagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 320
    if-gez p2, :cond_0

    .line 321
    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :goto_0
    return-void

    .line 323
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
    .line 531
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 533
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 545
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 639
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 640
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 642
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v2

    .line 643
    .local v2, "oldX":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v3

    .line 644
    .local v3, "oldY":I
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 645
    .local v6, "x":I
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 647
    .local v7, "y":I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 648
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    .line 651
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 652
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v5

    .line 653
    .local v5, "width":I
    div-int v4, v6, v5

    .line 654
    .local v4, "position":I
    rem-int v1, v6, v5

    .line 655
    .local v1, "offsetPixels":I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 656
    .local v0, "offset":F
    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 660
    .end local v0    # "offset":F
    .end local v1    # "offsetPixels":I
    .end local v4    # "position":I
    .end local v5    # "width":I
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->invalidate()V

    .line 667
    .end local v2    # "oldX":I
    .end local v3    # "oldY":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :goto_0
    return-void

    .line 666
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 330
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v7}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    move v2, v5

    .line 331
    .local v2, "needPopulate":Z
    :goto_0
    const/4 v3, -0x1

    .line 333
    .local v3, "newCurrItem":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v0, v7, :cond_3

    .line 365
    if-ltz v3, :cond_0

    .line 367
    invoke-virtual {p0, v3, v6, v5}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 368
    const/4 v2, 0x1

    .line 370
    :cond_0
    if-eqz v2, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 372
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->requestLayout()V

    .line 374
    :cond_1
    return-void

    .end local v0    # "i":I
    .end local v2    # "needPopulate":Z
    .end local v3    # "newCurrItem":I
    :cond_2
    move v2, v6

    .line 330
    goto :goto_0

    .line 334
    .restart local v0    # "i":I
    .restart local v2    # "needPopulate":Z
    .restart local v3    # "newCurrItem":I
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .line 335
    .local v1, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget-object v8, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 337
    .local v4, "newPos":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_5

    .line 333
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    :cond_5
    const/4 v7, -0x2

    if-ne v4, v7, :cond_6

    .line 342
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 343
    add-int/lit8 v0, v0, -0x1

    .line 344
    iget-object v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget v8, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    iget-object v9, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lcom/vkontakte/android/ui/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 345
    const/4 v2, 0x1

    .line 347
    iget v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    iget v8, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_4

    .line 349
    iget v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v8}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 351
    goto :goto_2

    .line 354
    :cond_6
    iget v7, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_4

    .line 355
    iget v7, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_7

    .line 357
    move v3, v4

    .line 360
    :cond_7
    iput v4, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    .line 361
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public getAdapter()Lcom/vkontakte/android/ui/PagerAdapter;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 982
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    return v0
.end method

.method infoForChild(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 554
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 549
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .line 550
    .local v1, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget-object v3, v1, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/vkontakte/android/ui/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method initViewPager()V
    .locals 3

    .prologue
    .line 192
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setWillNotDraw(Z)V

    .line 193
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 194
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 195
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mTouchSlop:I

    .line 196
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mMinimumVelocity:I

    .line 197
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mMaximumVelocity:I

    .line 198
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 559
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 560
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 563
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 709
    .local v0, "action":I
    const/4 v8, 0x3

    if-eq v0, v8, :cond_0

    if-ne v0, v6, :cond_2

    .line 712
    :cond_0
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 713
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    move v6, v7

    .line 803
    :cond_1
    :goto_0
    return v6

    .line 720
    :cond_2
    if-eqz v0, :cond_3

    .line 721
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    if-nez v8, :cond_1

    .line 725
    iget-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    if-eqz v8, :cond_3

    move v6, v7

    .line 727
    goto :goto_0

    .line 731
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 803
    :cond_4
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 743
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 744
    .local v2, "x":F
    iget v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    sub-float v1, v2, v7

    .line 745
    .local v1, "dx":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 746
    .local v3, "xDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 747
    .local v4, "y":F
    iget v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionY:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 750
    .local v5, "yDiff":F
    iget v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v3, v7

    if-lez v7, :cond_5

    cmpl-float v7, v3, v5

    if-lez v7, :cond_5

    .line 752
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 753
    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    .line 754
    iput v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    .line 755
    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_1

    .line 757
    :cond_5
    iget v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_4

    .line 763
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    goto :goto_1

    .line 774
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

    .line 775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionY:F

    .line 777
    iget v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrollState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    .line 779
    iput-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 780
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    .line 781
    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    goto :goto_1

    .line 783
    :cond_6
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    .line 784
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 785
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ViewPager;->mIsUnableToDrag:Z

    goto :goto_1

    .line 731
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
    .line 612
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    .line 613
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 614
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    .line 616
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getChildCount()I

    move-result v3

    .line 617
    .local v3, "count":I
    sub-int v7, p4, p2

    .line 619
    .local v7, "width":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 634
    return-void

    .line 620
    :cond_0
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/ui/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 622
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ViewPager;->infoForChild(Landroid/view/View;)Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    move-result-object v5

    .local v5, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    if-eqz v5, :cond_1

    .line 623
    iget v8, v5, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    mul-int v6, v7, v8

    .line 624
    .local v6, "loff":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 625
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingTop()I

    move-result v2

    .line 630
    .local v2, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    .line 631
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    .line 629
    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 619
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    .end local v5    # "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    .end local v6    # "loff":I
    :cond_1
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

    .line 572
    invoke-static {v5, p1}, Lcom/vkontakte/android/ui/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 573
    invoke-static {v5, p2}, Lcom/vkontakte/android/ui/ViewPager;->getDefaultSize(II)I

    move-result v4

    .line 572
    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/ui/ViewPager;->setMeasuredDimension(II)V

    .line 576
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 577
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 576
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildWidthMeasureSpec:I

    .line 578
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getMeasuredHeight()I

    move-result v3

    .line 579
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 578
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildHeightMeasureSpec:I

    .line 582
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    .line 583
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 584
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ViewPager;->mInLayout:Z

    .line 587
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getChildCount()I

    move-result v2

    .line 588
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 596
    return-void

    .line 589
    :cond_0
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 590
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    .line 593
    iget v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Lcom/vkontakte/android/ui/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 588
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
    .line 600
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 603
    iget v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    mul-int v0, v1, p1

    .line 604
    .local v0, "scrollPos":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 605
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    .line 606
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    .line 608
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    if-eqz v19, :cond_0

    .line 812
    const/16 v19, 0x0

    .line 926
    :goto_0
    return v19

    .line 815
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

    .line 817
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 820
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 821
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 823
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 825
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 827
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 926
    :cond_4
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    .line 833
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mInitialMotionX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    goto :goto_1

    .line 841
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 843
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 844
    .local v15, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 845
    .local v16, "xDiff":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    .line 846
    .local v17, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionY:F

    move/from16 v19, v0

    sub-float v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v18

    .line 848
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

    .line 850
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    .line 851
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    .line 852
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    .line 853
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 856
    .end local v15    # "x":F
    .end local v16    # "xDiff":F
    .end local v17    # "y":F
    .end local v18    # "yDiff":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 859
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 860
    .restart local v15    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    sub-float v5, v19, v15

    .line 861
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iput v15, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v12, v19, v5

    .line 863
    .local v12, "scrollX":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v14

    .line 865
    .local v14, "width":I
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v7, v0

    .line 867
    .local v7, "leftBound":F
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

    move/from16 v0, v19

    int-to-float v11, v0

    .line 868
    .local v11, "rightBound":F
    cmpg-float v19, v12, v7

    if-gez v19, :cond_7

    .line 869
    move v12, v7

    .line 874
    :cond_6
    :goto_2
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

    .line 875
    float-to-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 877
    float-to-int v0, v12

    move/from16 v19, v0

    div-int v8, v19, v14

    .line 878
    .local v8, "position":I
    float-to-int v0, v12

    move/from16 v19, v0

    rem-int v10, v19, v14

    .line 879
    .local v10, "positionOffsetPixels":I
    int-to-float v0, v10

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v9, v19, v20

    .line 880
    .local v9, "positionOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8, v9, v10}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto/16 :goto_1

    .line 870
    .end local v8    # "position":I
    .end local v9    # "positionOffset":F
    .end local v10    # "positionOffsetPixels":I
    :cond_7
    cmpl-float v19, v12, v11

    if-lez v19, :cond_6

    .line 871
    move v12, v11

    goto :goto_2

    .line 886
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

    .line 887
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/ui/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 888
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

    .line 889
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v19

    move/from16 v0, v19

    float-to-int v6, v0

    .line 890
    .local v6, "initialVelocity":I
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    .line 891
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mMinimumVelocity:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    .line 892
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

    if-ltz v19, :cond_a

    .line 893
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mLastMotionX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mInitialMotionX:F

    move/from16 v20, v0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_9

    .line 894
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

    .line 903
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->endDrag()V

    goto/16 :goto_1

    .line 896
    :cond_9
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

    goto :goto_3

    .line 899
    :cond_a
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

    goto :goto_3

    .line 907
    .end local v6    # "initialVelocity":I
    .end local v13    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/ViewPager;->mIsBeingDragged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 908
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

    .line 910
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/ui/ViewPager;->endDrag()V

    goto/16 :goto_1

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method populate()V
    .locals 10

    .prologue
    const/4 v7, -0x1

    .line 377
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-nez v6, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    iget-boolean v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    if-nez v6, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 397
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v6, p0}, Lcom/vkontakte/android/ui/PagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 399
    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v5, v6, -0x1

    .line 400
    .local v5, "startPos":I
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v0

    .line 401
    .local v0, "N":I
    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v8, v0, -0x1

    if-ge v6, v8, :cond_4

    iget v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v1, v6, 0x1

    .line 406
    .local v1, "endPos":I
    :goto_2
    const/4 v4, -0x1

    .line 407
    .local v4, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_5

    .line 433
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    iget v4, v6, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    .line 434
    :goto_4
    if-ge v4, v1, :cond_2

    .line 435
    add-int/lit8 v4, v4, 0x1

    .line 436
    if-le v4, v5, :cond_b

    .line 437
    :goto_5
    if-le v4, v1, :cond_c

    .line 451
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v6, p0}, Lcom/vkontakte/android/ui/PagerAdapter;->finishUpdate(Landroid/view/View;)V

    goto :goto_0

    .line 399
    .end local v0    # "N":I
    .end local v1    # "endPos":I
    .end local v2    # "i":I
    .end local v4    # "lastPos":I
    .end local v5    # "startPos":I
    :cond_3
    iget v5, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    goto :goto_1

    .line 401
    .restart local v0    # "N":I
    .restart local v5    # "startPos":I
    :cond_4
    add-int/lit8 v1, v0, -0x1

    goto :goto_2

    .line 408
    .restart local v1    # "endPos":I
    .restart local v2    # "i":I
    .restart local v4    # "lastPos":I
    :cond_5
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    .line 409
    .local v3, "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    iget v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-lt v6, v5, :cond_6

    iget v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-le v6, v1, :cond_8

    :cond_6
    iget-boolean v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->scrolling:Z

    if-nez v6, :cond_8

    .line 411
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 412
    add-int/lit8 v2, v2, -0x1

    .line 413
    iget-object v6, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget v8, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    iget-object v9, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v6, p0, v8, v9}, Lcom/vkontakte/android/ui/PagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 429
    :cond_7
    iget v4, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 414
    :cond_8
    if-ge v4, v1, :cond_7

    iget v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-le v6, v5, :cond_7

    .line 418
    add-int/lit8 v4, v4, 0x1

    .line 419
    if-ge v4, v5, :cond_9

    .line 420
    move v4, v5

    .line 422
    :cond_9
    :goto_6
    if-gt v4, v1, :cond_7

    iget v6, v3, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->position:I

    if-ge v4, v6, :cond_7

    .line 424
    invoke-virtual {p0, v4, v2}, Lcom/vkontakte/android/ui/ViewPager;->addNewItem(II)V

    .line 425
    add-int/lit8 v4, v4, 0x1

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .end local v3    # "ii":Lcom/vkontakte/android/ui/ViewPager$ItemInfo;
    :cond_a
    move v4, v7

    .line 433
    goto :goto_4

    :cond_b
    move v4, v5

    .line 436
    goto :goto_5

    .line 439
    :cond_c
    invoke-virtual {p0, v4, v7}, Lcom/vkontakte/android/ui/ViewPager;->addNewItem(II)V

    .line 440
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method public setAdapter(Lcom/vkontakte/android/ui/PagerAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/vkontakte/android/ui/PagerAdapter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/PagerAdapter;->setDataSetObserver(Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;)V

    .line 216
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    .line 218
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mObserver:Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;

    if-nez v0, :cond_1

    .line 220
    new-instance v0, Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;

    invoke-direct {v0, p0, v3}, Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;-><init>(Lcom/vkontakte/android/ui/ViewPager;Lcom/vkontakte/android/ui/ViewPager$DataSetObserver;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mObserver:Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mObserver:Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PagerAdapter;->setDataSetObserver(Lcom/vkontakte/android/ui/PagerAdapter$DataSetObserver;)V

    .line 223
    iput-boolean v4, p0, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    .line 224
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    if-ltz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 226
    iget v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v4, v1}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredCurItem:I

    .line 228
    iput-object v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 229
    iput-object v3, p0, Lcom/vkontakte/android/ui/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 234
    :cond_2
    :goto_0
    return-void

    .line 231
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

    .line 241
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ViewPager;->mPopulatePending:Z

    .line 242
    invoke-virtual {p0, p1, p2, v0}, Lcom/vkontakte/android/ui/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 243
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

    .line 246
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 247
    :cond_0
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 250
    :cond_2
    if-nez p3, :cond_3

    iget v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    invoke-direct {p0, v3}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 254
    :cond_3
    if-gez p1, :cond_7

    .line 255
    const/4 p1, 0x0

    .line 259
    :cond_4
    :goto_1
    iget v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    if-gt p1, v2, :cond_5

    iget v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_6

    .line 263
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 267
    .end local v1    # "i":I
    :cond_6
    iget v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    if-eq v2, p1, :cond_9

    .line 268
    .local v0, "dispatchSelected":Z
    :goto_3
    iput p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mCurItem:I

    .line 269
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->populate()V

    .line 270
    if-eqz p2, :cond_a

    .line 271
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->smoothScrollTo(II)V

    .line 272
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .line 256
    .end local v0    # "dispatchSelected":Z
    :cond_7
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_4

    .line 257
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mAdapter:Lcom/vkontakte/android/ui/PagerAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    goto :goto_1

    .line 264
    .restart local v1    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;

    iput-boolean v0, v2, Lcom/vkontakte/android/ui/ViewPager$ItemInfo;->scrolling:Z

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    :cond_9
    move v0, v3

    .line 267
    goto :goto_3

    .line 276
    .restart local v0    # "dispatchSelected":Z
    :cond_a
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_b

    .line 277
    iget-object v2, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 279
    :cond_b
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    .line 280
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getWidth()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/ui/ViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vkontakte/android/ui/ViewPager;->mOnPageChangeListener:Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;

    .line 286
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    .line 295
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 297
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 314
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollX()I

    move-result v2

    .line 301
    .local v2, "sx":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->getScrollY()I

    move-result v3

    .line 302
    .local v3, "sy":I
    sub-int v0, p1, v2

    .line 303
    .local v0, "dx":I
    sub-int v1, p2, v3

    .line 304
    .local v1, "dy":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ViewPager;->completeScroll()V

    goto :goto_0

    .line 309
    :cond_1
    invoke-direct {p0, v5}, Lcom/vkontakte/android/ui/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 310
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ViewPager;->mScrolling:Z

    .line 311
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/vkontakte/android/ui/ViewPager;->setScrollState(I)V

    .line 312
    iget-object v4, p0, Lcom/vkontakte/android/ui/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 313
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ViewPager;->invalidate()V

    goto :goto_0
.end method
