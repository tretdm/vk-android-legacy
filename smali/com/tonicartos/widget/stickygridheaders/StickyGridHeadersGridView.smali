.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
.super Landroid/widget/GridView;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$WindowRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/GridView;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final MATCHED_STICKIED_HEADER:I = -0x2

.field private static final NO_MATCHED_HEADER:I = -0x1

.field protected static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field protected static final TOUCH_MODE_DOWN:I = 0x0

.field protected static final TOUCH_MODE_FINISHED_LONG_PRESS:I = -0x2

.field protected static final TOUCH_MODE_REST:I = -0x1

.field protected static final TOUCH_MODE_TAP:I = 0x1


# instance fields
.field protected mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

.field private mAreHeadersSticky:Z

.field private mClipToPaddingHasBeenSet:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Z

.field private mColumnWidth:I

.field private mCurrentHeaderId:J

.field protected mDataChanged:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mHeaderBottomPosition:I

.field private mHorizontalSpacing:I

.field private mMaskStickyHeaderRegion:Z

.field protected mMotionHeaderPosition:I

.field private mMotionY:F

.field private mNumColumns:I

.field private mNumColumnsSet:Z

.field private mNumMeasuredColumns:I

.field private mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

.field private mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

.field public mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

.field private mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mStickiedHeader:Landroid/view/View;

.field protected mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 121
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 71
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    .line 75
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 76
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;

    invoke-direct {v1, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$1;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 96
    iput v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    .line 105
    iput v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    .line 114
    iput-boolean v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 127
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 130
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumnsSet:Z

    if-nez v1, :cond_0

    .line 131
    const/4 v1, -0x1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumns:I

    .line 134
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 135
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchSlop:I

    .line 136
    return-void
.end method

.method static synthetic access$0(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->reset()V

    return-void
.end method

.method static synthetic access$1(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J
    .locals 2

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->headerViewPositionToId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)I
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private findMotionHeader(F)I
    .locals 9
    .param p1, "y"    # F

    .prologue
    .line 490
    iget-object v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_1

    .line 491
    const/4 v6, -0x2

    .line 510
    :cond_0
    :goto_0
    return v6

    .line 494
    :cond_1
    const/4 v6, 0x0

    .line 495
    .local v6, "vi":I
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v7

    if-le v2, v7, :cond_2

    .line 510
    const/4 v6, -0x1

    goto :goto_0

    .line 496
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 497
    .local v3, "id":J
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_3

    .line 498
    invoke-virtual {p0, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 500
    .local v1, "headerWrapper":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 501
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    .line 502
    .local v5, "top":I
    int-to-float v7, v0

    cmpg-float v7, p1, v7

    if-gtz v7, :cond_3

    int-to-float v7, v5

    cmpl-float v7, p1, v7

    if-gez v7, :cond_0

    .line 506
    .end local v0    # "bottom":I
    .end local v1    # "headerWrapper":Landroid/view/View;
    .end local v5    # "top":I
    :cond_3
    iget v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int/2addr v2, v7

    .line 507
    iget v7, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int/2addr v6, v7

    goto :goto_1
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private headerViewPositionToId(I)J
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 521
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 522
    iget-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 524
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private measureHeader()V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 528
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-nez v3, :cond_0

    .line 547
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    .line 533
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    .line 532
    sub-int/2addr v3, v4

    .line 533
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    .line 532
    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 534
    .local v2, "widthMeasureSpec":I
    const/4 v0, 0x0

    .line 536
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 537
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 538
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 544
    :goto_1
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 545
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    .line 546
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 545
    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 541
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 550
    const/4 v0, 0x0

    iput v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 552
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 553
    return-void
.end method

.method private scrollChanged(I)V
    .locals 20
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;

    .line 561
    .local v7, "firstItem":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;
    if-eqz v7, :cond_0

    .line 566
    move/from16 v15, p1

    .line 568
    .local v15, "selectedHeaderPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v18, v0

    sub-int v3, p1, v18

    .line 569
    .local v3, "beforeRowPosition":I
    if-gez v3, :cond_2

    .line 570
    move/from16 v3, p1

    .line 573
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v18, v0

    add-int v14, p1, v18

    .line 574
    .local v14, "secondRowPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-lt v14, v0, :cond_3

    .line 575
    move/from16 v14, p1

    .line 578
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 599
    .local v12, "newHeaderId":J
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v12

    if-eqz v18, :cond_4

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v19, v0

    .line 600
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-virtual {v0, v15, v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 602
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->measureHeader()V

    .line 603
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 606
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildCount()I

    move-result v5

    .line 607
    .local v5, "childCount":I
    if-eqz v5, :cond_0

    .line 608
    const/16 v16, 0x0

    .line 609
    .local v16, "viewToWatch":Landroid/view/View;
    const v17, 0x1869f

    .line 612
    .local v17, "watchingChildDistance":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-lt v10, v5, :cond_9

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v9

    .line 637
    .local v9, "headerHeight":I
    if-eqz v16, :cond_11

    .line 638
    if-nez p1, :cond_d

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-super {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v18

    if-lez v18, :cond_d

    .line 639
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 640
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 580
    .end local v5    # "childCount":I
    .end local v9    # "headerHeight":I
    .end local v10    # "i":I
    .end local v12    # "newHeaderId":J
    .end local v16    # "viewToWatch":Landroid/view/View;
    .end local v17    # "watchingChildDistance":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    if-gez v18, :cond_7

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 582
    .restart local v12    # "newHeaderId":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 583
    .local v8, "firstSecondRowView":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v18

    if-gtz v18, :cond_6

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 585
    move v15, v14

    goto/16 :goto_1

    .line 587
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    goto/16 :goto_1

    .line 590
    .end local v8    # "firstSecondRowView":Landroid/view/View;
    .end local v12    # "newHeaderId":J
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v11

    .line 591
    .local v11, "margin":I
    if-lez v11, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .line 593
    .restart local v12    # "newHeaderId":J
    move v15, v3

    goto/16 :goto_1

    .line 595
    .end local v12    # "newHeaderId":J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getHeaderId(I)J

    move-result-wide v12

    .restart local v12    # "newHeaderId":J
    goto/16 :goto_1

    .line 613
    .end local v11    # "margin":I
    .restart local v5    # "childCount":I
    .restart local v10    # "i":I
    .restart local v16    # "viewToWatch":Landroid/view/View;
    .restart local v17    # "watchingChildDistance":I
    :cond_9
    move-object/from16 v0, p0

    invoke-super {v0, v10}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;

    .line 616
    .local v4, "child":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 617
    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    sub-int v6, v18, v19

    .line 622
    .local v6, "childDistance":I
    :goto_3
    if-gez v6, :cond_c

    .line 612
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    move/from16 v18, v0

    add-int v10, v10, v18

    goto/16 :goto_2

    .line 619
    .end local v6    # "childDistance":I
    :cond_b
    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getTop()I

    move-result v6

    .restart local v6    # "childDistance":I
    goto :goto_3

    .line 626
    :cond_c
    invoke-virtual {v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getView()Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 627
    move/from16 v0, v17

    if-ge v6, v0, :cond_a

    .line 628
    move-object/from16 v16, v4

    .line 629
    move/from16 v17, v6

    goto :goto_4

    .line 642
    .end local v4    # "child":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;
    .end local v6    # "childDistance":I
    .restart local v9    # "headerHeight":I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    .line 643
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v18

    .line 644
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    add-int v19, v19, v9

    .line 643
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e

    .line 646
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v18

    add-int v18, v18, v9

    .line 645
    :goto_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 647
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v18, v0

    goto :goto_5

    .line 649
    :cond_f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 651
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v18, v0

    if-gez v18, :cond_10

    .end local v9    # "headerHeight":I
    :goto_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0

    .line 652
    .restart local v9    # "headerHeight":I
    :cond_10
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto :goto_6

    .line 656
    :cond_11
    move-object/from16 v0, p0

    iput v9, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    .line 657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 658
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    goto/16 :goto_0
.end method


# virtual methods
.method public areHeadersSticky()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 666
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 667
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 670
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 671
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_4

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v9, 0x1

    .line 673
    .local v9, "drawStickiedHeader":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderHeight()I

    move-result v13

    .line 674
    .local v13, "headerHeight":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    sub-int v20, v2, v13

    .line 678
    .local v20, "top":I
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_1

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 689
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 692
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 693
    .local v15, "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    .line 694
    .local v21, "vi":I
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v17

    .local v17, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLastVisiblePosition()I

    move-result v2

    move/from16 v0, v17

    if-le v0, v2, :cond_5

    .line 704
    const/16 v17, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-lt v0, v2, :cond_7

    .line 740
    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v2, :cond_b

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 748
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 749
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 748
    if-eq v2, v3, :cond_3

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    .line 751
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 750
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 752
    .local v22, "widthMeasureSpec":I
    const/4 v2, 0x0

    .line 753
    const/4 v3, 0x0

    .line 752
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 754
    .local v16, "heightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v5

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 755
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 759
    .end local v16    # "heightMeasureSpec":I
    .end local v22    # "widthMeasureSpec":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    add-int v3, v20, v13

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 762
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    if-eqz v2, :cond_c

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 768
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v20

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 771
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    .line 772
    const/high16 v2, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHeaderBottomPosition:I

    int-to-float v7, v7

    mul-float/2addr v2, v7

    int-to-float v7, v13

    div-float/2addr v2, v7

    float-to-int v7, v2

    .line 773
    const/4 v8, 0x4

    move-object/from16 v2, p1

    .line 771
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 774
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 777
    :goto_4
    return-void

    .line 672
    .end local v9    # "drawStickiedHeader":Z
    .end local v13    # "headerHeight":I
    .end local v15    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "i":I
    .end local v20    # "top":I
    .end local v21    # "vi":I
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 695
    .restart local v9    # "drawStickiedHeader":Z
    .restart local v13    # "headerHeight":I
    .restart local v15    # "headerPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "i":I
    .restart local v20    # "top":I
    .restart local v21    # "vi":I
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getItemIdAtPosition(I)J

    move-result-wide v18

    .line 696
    .local v18, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v18, v2

    if-nez v2, :cond_6

    .line 697
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int v17, v17, v2

    .line 700
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    add-int v21, v21, v2

    goto/16 :goto_1

    .line 706
    .end local v18    # "id":J
    :cond_7
    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 705
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;

    .line 709
    .local v11, "frame":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;
    :try_start_0
    invoke-virtual {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .local v12, "header":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;

    .line 715
    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$HeaderFillerView;->getHeaderId()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mCurrentHeaderId:J

    .line 714
    cmp-long v2, v2, v4

    if-nez v2, :cond_9

    .line 716
    invoke-virtual {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getTop()I

    move-result v2

    if-gez v2, :cond_9

    .line 717
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eqz v2, :cond_9

    const/4 v14, 0x1

    .line 718
    .local v14, "headerIsStickied":Z
    :goto_5
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    if-eqz v14, :cond_a

    .line 704
    :cond_8
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 710
    .end local v12    # "header":Landroid/view/View;
    .end local v14    # "headerIsStickied":Z
    :catch_0
    move-exception v10

    .line 711
    .local v10, "e":Ljava/lang/Exception;
    goto :goto_4

    .line 717
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "header":Landroid/view/View;
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 721
    .restart local v14    # "headerIsStickied":Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    .line 722
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 721
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 723
    .restart local v22    # "widthMeasureSpec":I
    const/4 v2, 0x0

    .line 724
    const/4 v3, 0x0

    .line 723
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 725
    .restart local v16    # "heightMeasureSpec":I
    move/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v12, v0, v1}, Landroid/view/View;->measure(II)V

    .line 726
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getRight()I

    move-result v4

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getHeight()I

    move-result v5

    .line 726
    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getTop()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 733
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v11}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;->getTop()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 736
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_6

    .line 742
    .end local v11    # "frame":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$ReferenceView;
    .end local v12    # "header":Landroid/view/View;
    .end local v14    # "headerIsStickied":Z
    .end local v16    # "heightMeasureSpec":I
    .end local v22    # "widthMeasureSpec":I
    :cond_b
    if-nez v9, :cond_2

    goto/16 :goto_4

    .line 765
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_3
.end method

.method public getHeaderAt(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 151
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    .line 159
    :goto_0
    return-object v0

    .line 156
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStickiedHeader()Landroid/view/View;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mStickiedHeader:Landroid/view/View;

    return-object v0
.end method

.method public getStickyHeaderIsTranscluent()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 179
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 178
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 180
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 186
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 185
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 193
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->translatePosition(I)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;

    move-result-object v1

    iget v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper$Position;->mPosition:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    .line 192
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 194
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 781
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumns:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 783
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mColumnWidth:I

    if-lez v2, :cond_4

    .line 784
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 785
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingLeft()I

    move-result v3

    .line 784
    sub-int/2addr v2, v3

    .line 785
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getPaddingRight()I

    move-result v3

    .line 784
    sub-int/2addr v2, v3

    .line 785
    const/4 v3, 0x0

    .line 784
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 786
    .local v0, "gridWidth":I
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mColumnWidth:I

    div-int v1, v0, v2

    .line 789
    .local v1, "numFittedColumns":I
    if-lez v1, :cond_3

    .line 790
    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 808
    .end local v0    # "gridWidth":I
    :cond_0
    :goto_1
    iput v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    .line 816
    .end local v1    # "numFittedColumns":I
    :goto_2
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    invoke-virtual {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->setNumColumns(I)V

    .line 820
    :cond_1
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->measureHeader()V

    .line 822
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 823
    return-void

    .line 791
    .restart local v0    # "gridWidth":I
    .restart local v1    # "numFittedColumns":I
    :cond_2
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mColumnWidth:I

    mul-int/2addr v2, v1

    .line 792
    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHorizontalSpacing:I

    mul-int/2addr v3, v4

    .line 791
    add-int/2addr v2, v3

    .line 792
    if-le v2, v0, :cond_0

    .line 793
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 801
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 806
    .end local v0    # "gridWidth":I
    .end local v1    # "numFittedColumns":I
    :cond_4
    const/4 v1, 0x2

    .restart local v1    # "numFittedColumns":I
    goto :goto_1

    .line 812
    .end local v1    # "numFittedColumns":I
    :cond_5
    iget v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumns:I

    iput v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumMeasuredColumns:I

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 199
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 203
    move-object v0, p1

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    .line 205
    .local v0, "ss":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 206
    iget-boolean v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    iput-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 208
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    .line 209
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 215
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;

    invoke-direct {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 216
    .local v0, "ss":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;
    iget-boolean v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    iput-boolean v2, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$SavedState;->areHeadersSticky:Z

    .line 217
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 228
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 229
    invoke-direct {p0, p2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->scrollChanged(I)V

    .line 231
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 239
    :cond_0
    iput p2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    .line 240
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 245
    .local v0, "action":I
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    .line 344
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 247
    :pswitch_0
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    if-nez v5, :cond_1

    .line 248
    new-instance v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    invoke-direct {v5, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    iput-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    .line 250
    :cond_1
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    .line 251
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v7

    int-to-long v7, v7

    .line 250
    invoke-virtual {p0, v5, v7, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 254
    .local v4, "y":I
    int-to-float v5, v4

    iput v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionY:F

    .line 255
    int-to-float v5, v4

    invoke-direct {p0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->findMotionHeader(F)I

    move-result v5

    iput v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    .line 256
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    if-eq v5, v9, :cond_0

    .line 257
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollState:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_0

    .line 262
    iput v10, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    move v5, v6

    .line 263
    goto :goto_1

    .line 265
    .end local v4    # "y":I
    :pswitch_1
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    if-eq v5, v9, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionY:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 269
    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 270
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 271
    .local v2, "header":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 272
    invoke-virtual {v2, v10}, Landroid/view/View;->setPressed(Z)V

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 275
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_3

    .line 276
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    :cond_3
    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    goto :goto_0

    .line 282
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "header":Landroid/view/View;
    :pswitch_2
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    const/4 v7, -0x2

    if-ne v5, v7, :cond_4

    move v5, v6

    .line 283
    goto :goto_1

    .line 285
    :cond_4
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-eq v5, v9, :cond_0

    .line 286
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    if-eq v5, v9, :cond_0

    .line 290
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    invoke-virtual {p0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 291
    .restart local v2    # "header":Landroid/view/View;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_a

    .line 292
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-eqz v5, :cond_5

    .line 293
    invoke-virtual {v2, v10}, Landroid/view/View;->setPressed(Z)V

    .line 296
    :cond_5
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    if-nez v5, :cond_6

    .line 297
    new-instance v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;)V

    iput-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    .line 300
    :cond_6
    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPerformHeaderClick:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;

    .line 301
    .local v3, "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMotionHeaderPosition:I

    iput v5, v3, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->mClickMotionPosition:I

    .line 302
    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->rememberWindowAttachCount()V

    .line 304
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v5, :cond_7

    .line 305
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-eq v5, v6, :cond_d

    .line 306
    :cond_7
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 307
    .restart local v1    # "handler":Landroid/os/Handler;
    if-eqz v1, :cond_8

    .line 308
    iget v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForTap:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderTap;

    :goto_2
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    :cond_8
    iget-boolean v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v5, :cond_c

    .line 315
    iput v6, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    .line 316
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 317
    invoke-virtual {p0, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    .line 318
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v5, :cond_9

    .line 319
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 321
    :cond_9
    new-instance v5, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$2;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;)V

    iput-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 332
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 333
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v7, v7

    .line 332
    invoke-virtual {p0, v5, v7, v8}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v3    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_a
    :goto_3
    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    move v5, v6

    .line 342
    goto/16 :goto_1

    .line 309
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v3    # "performHeaderClick":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;
    :cond_b
    iget-object v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mPendingCheckForLongPress:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$CheckForHeaderLongPress;

    goto :goto_2

    .line 335
    :cond_c
    iput v9, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mTouchMode:I

    goto :goto_3

    .line 337
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_d
    iget-boolean v5, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataChanged:Z

    if-nez v5, :cond_a

    .line 338
    invoke-virtual {v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$PerformHeaderClick;->run()V

    goto :goto_3

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performHeaderClick(Landroid/view/View;J)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 348
    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    if-eqz v2, :cond_1

    .line 349
    invoke-virtual {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->playSoundEffect(I)V

    .line 350
    if-eqz p1, :cond_0

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;->onHeaderClick(Landroid/widget/AdapterView;Landroid/view/View;J)V

    .line 357
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public performHeaderLongPress(Landroid/view/View;J)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # J

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;->onHeaderLongClick(Landroid/widget/AdapterView;Landroid/view/View;J)Z

    move-result v0

    .line 367
    :cond_0
    if-eqz v0, :cond_2

    .line 368
    if-eqz p1, :cond_1

    .line 369
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 371
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->performHapticFeedback(I)Z

    .line 374
    :cond_2
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 383
    :cond_0
    iget-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    if-nez v1, :cond_1

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 388
    :cond_1
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 389
    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;

    .line 399
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    .local v0, "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    :goto_0
    new-instance v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 400
    invoke-direct {v1, v2, p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;-><init>(Landroid/content/Context;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;)V

    .line 399
    iput-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    .line 401
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 402
    invoke-direct {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->reset()V

    .line 403
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-super {p0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 404
    return-void

    .line 390
    .end local v0    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_2
    instance-of v1, p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    if-eqz v1, :cond_3

    .line 392
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;

    .line 393
    check-cast p1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    .line 392
    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)V

    .restart local v0    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    goto :goto_0

    .line 396
    .end local v0    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;

    invoke-direct {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;-><init>(Landroid/widget/ListAdapter;)V

    .restart local v0    # "baseAdapter":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;
    goto :goto_0
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "useStickyHeaders"    # Z

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    if-eq p1, v0, :cond_0

    .line 408
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAreHeadersSticky:Z

    .line 409
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->requestLayout()V

    .line 411
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 416
    iput-boolean p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClippingToPadding:Z

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mClipToPaddingHasBeenSet:Z

    .line 418
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 0
    .param p1, "columnWidth"    # I

    .prologue
    .line 422
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 423
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mColumnWidth:I

    .line 424
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 429
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mHorizontalSpacing:I

    .line 430
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumnsSet:Z

    .line 436
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mNumColumns:I

    .line 437
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mAdapter:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->setNumColumns(I)V

    .line 440
    :cond_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderClickListener;

    .line 444
    return-void
.end method

.method public setOnHeaderLongClickListener(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setLongClickable(Z)V

    .line 450
    :cond_0
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnHeaderLongClickListener:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView$OnHeaderLongClickListener;

    .line 451
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 456
    .local p1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 457
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 458
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 463
    .local p1, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 464
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 465
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 470
    .local p1, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;, "Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 471
    invoke-super {p0, p0}, Landroid/widget/GridView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 472
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 477
    return-void
.end method

.method public setStickyHeaderIsTranscluent(Z)V
    .locals 1
    .param p1, "isTranscluent"    # Z

    .prologue
    .line 480
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mMaskStickyHeaderRegion:Z

    .line 481
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 485
    invoke-super {p0, p1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 486
    iput p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->mVerticalSpacing:I

    .line 487
    return-void
.end method
