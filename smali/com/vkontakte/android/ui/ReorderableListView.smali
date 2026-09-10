.class public Lcom/vkontakte/android/ui/ReorderableListView;
.super Landroid/widget/ListView;
.source "ReorderableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/ReorderableListView$DragListener;,
        Lcom/vkontakte/android/ui/ReorderableListView$DraggableChecker;,
        Lcom/vkontakte/android/ui/ReorderableListView$Swappable;
    }
.end annotation


# static fields
.field private static final sBoundEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private final MOVE_DURATION:I

.field private final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

.field private dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

.field private mAboveItemId:J

.field private mActivePointerId:I

.field private mBelowItemId:J

.field private mCellIsMobile:Z

.field private mDownX:I

.field private mDownY:I

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mIsMobileScrolling:Z

.field private mIsWaitingForScrollFinish:Z

.field private mLastEventY:I

.field private mMobileItemId:J

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffset:I

.field private prevOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 433
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$5;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ReorderableListView$5;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ui/ReorderableListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 29
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 30
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 32
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 35
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    .line 37
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    .line 39
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 41
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 43
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_ID:I

    .line 44
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 45
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    .line 46
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 52
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 53
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 55
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 56
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    .line 90
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$1;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 501
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$6;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 62
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 30
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 32
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 35
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    .line 37
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    .line 39
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 41
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 43
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_ID:I

    .line 44
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 45
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    .line 46
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 52
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 53
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 55
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 56
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    .line 90
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$1;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 501
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$6;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 72
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 30
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 32
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 35
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    .line 37
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    .line 39
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 40
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 41
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 43
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_ID:I

    .line 44
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 45
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    .line 46
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 52
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 53
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 55
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 56
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    .line 90
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$1;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 501
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$6;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 67
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/ui/ReorderableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    return p1
.end method

.method static synthetic access$012(Lcom/vkontakte/android/ui/ReorderableListView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    return v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/ReorderableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    return v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/ui/ReorderableListView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/ui/ReorderableListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/ui/ReorderableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/ui/ReorderableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/ui/ReorderableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/ui/ReorderableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/ui/ReorderableListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/ReorderableListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    return v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/ui/ReorderableListView;)J
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/vkontakte/android/ui/ReorderableListView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # Landroid/graphics/drawable/BitmapDrawable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/ui/ReorderableListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/ui/ReorderableListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/ui/ReorderableListView;J)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/ui/ReorderableListView;)Lcom/vkontakte/android/ui/ReorderableListView$DragListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vkontakte/android/ui/ReorderableListView;J)J
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/ReorderableListView;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    return-wide p1
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 123
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 124
    .local v2, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 125
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 127
    .local v3, "left":I
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->getBitmapWithBorder(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 130
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v6, 0xb4

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 132
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v5

    add-int v8, v4, v2

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    .line 133
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    .line 135
    iget-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    return-object v1
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 153
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 154
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 156
    .local v0, "bgPaint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 159
    .end local v0    # "bgPaint":Landroid/graphics/Paint;
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 160
    return-object v1
.end method

.method private getBitmapWithBorder(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 147
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private handleCellSwitch()V
    .locals 15

    .prologue
    .line 290
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    iget v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    sub-int v5, v0, v1

    .line 291
    .local v5, "deltaY":I
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    add-int/2addr v0, v1

    add-int v9, v0, v5

    .line 293
    .local v9, "deltaYTotal":I
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v8

    .line 294
    .local v8, "belowView":Landroid/view/View;
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v12

    .line 295
    .local v12, "mobileView":Landroid/view/View;
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v7

    .line 297
    .local v7, "aboveView":Landroid/view/View;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    if-le v9, v0, :cond_2

    const/4 v11, 0x1

    .line 298
    .local v11, "isBelow":Z
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v9, v0, :cond_3

    const/4 v10, 0x1

    .line 300
    .local v10, "isAbove":Z
    :goto_1
    if-nez v11, :cond_0

    if-eqz v10, :cond_1

    .line 302
    :cond_0
    if-eqz v11, :cond_4

    iget-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 303
    .local v3, "switchItemID":J
    :goto_2
    if-eqz v11, :cond_5

    move-object v14, v8

    .line 304
    .local v14, "switchView":Landroid/view/View;
    :goto_3
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v13

    .line 306
    .local v13, "originalItem":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/ui/ReorderableListView$DraggableChecker;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ReorderableListView$DraggableChecker;

    invoke-virtual {p0, v14}, Lcom/vkontakte/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView$DraggableChecker;->canDragToPosition(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 350
    .end local v3    # "switchItemID":J
    .end local v13    # "originalItem":I
    .end local v14    # "switchView":Landroid/view/View;
    :cond_1
    :goto_4
    return-void

    .line 297
    .end local v10    # "isAbove":Z
    .end local v11    # "isBelow":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 298
    .restart local v11    # "isBelow":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 302
    .restart local v10    # "isAbove":Z
    :cond_4
    iget-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    goto :goto_2

    .restart local v3    # "switchItemID":J
    :cond_5
    move-object v14, v7

    .line 303
    goto :goto_3

    .line 309
    .restart local v13    # "originalItem":I
    .restart local v14    # "switchView":Landroid/view/View;
    :cond_6
    if-nez v14, :cond_7

    .line 310
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    goto :goto_4

    .line 314
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ReorderableListView$Swappable;

    invoke-virtual {p0, v14}, Lcom/vkontakte/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v13, v1}, Lcom/vkontakte/android/ui/ReorderableListView$Swappable;->swapItems(II)V

    .line 316
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 318
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 320
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v6

    .line 322
    .local v6, "switchViewStartTop":I
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 323
    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    .line 327
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 328
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/ui/ReorderableListView$2;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_4
.end method

.method private handleMobileCellScroll()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 452
    return-void
.end method

.method private lockOrientation()V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->prevOrientation:I

    .line 214
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/vkontakte/android/ViewUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 215
    return-void
.end method

.method private touchEventsCancelled()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 413
    iget-wide v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v0

    .line 414
    .local v0, "mobileView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    .line 415
    iput-wide v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 416
    iput-wide v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    .line 417
    iput-wide v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 418
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    .line 420
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->invalidate()V

    .line 422
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 423
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 424
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 425
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->unlockOrientation()V

    .line 426
    return-void
.end method

.method private touchEventsEnded()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 358
    iget-wide v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v1

    .line 359
    .local v1, "mobileView":Landroid/view/View;
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    if-eqz v2, :cond_3

    .line 360
    :cond_0
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 361
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 362
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 363
    const/4 v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 368
    iget v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    if-eqz v2, :cond_2

    .line 369
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 373
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 375
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "bounds"

    sget-object v4, Lcom/vkontakte/android/ui/ReorderableListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v6, v5, v7

    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 377
    .local v0, "hoverViewAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/vkontakte/android/ui/ReorderableListView$3;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/ReorderableListView$3;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 383
    new-instance v2, Lcom/vkontakte/android/ui/ReorderableListView$4;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/ui/ReorderableListView$4;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 401
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->unlockOrientation()V

    .line 402
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    iget-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/ui/ReorderableListView$DragListener;->onDragDrop(J)V

    goto :goto_0

    .line 405
    .end local v0    # "hoverViewAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsCancelled()V

    goto :goto_0
.end method

.method private unlockOrientation()V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->prevOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 219
    return-void
.end method

.method private updateNeighborViewsForID(J)V
    .locals 5
    .param p1, "itemID"    # J

    .prologue
    const-wide/16 v3, -0x1

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/ui/ReorderableListView;->getPositionForID(J)I

    move-result v0

    .line 171
    .local v0, "position":I
    if-gtz v0, :cond_0

    move-wide v1, v3

    :goto_0
    iput-wide v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 172
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    :goto_1
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 173
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    goto :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    :cond_0
    return-void
.end method

.method public getPositionForID(J)I
    .locals 2
    .param p1, "itemID"    # J

    .prologue
    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 193
    const/4 v1, -0x1

    .line 195
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getViewForID(J)Landroid/view/View;
    .locals 7
    .param p1, "itemID"    # J

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 178
    .local v0, "firstVisiblePosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 179
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 180
    .local v5, "v":Landroid/view/View;
    add-int v4, v0, v1

    .line 181
    .local v4, "position":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 182
    .local v2, "id":J
    cmp-long v6, v2, p1

    if-nez v6, :cond_0

    .line 186
    .end local v2    # "id":J
    .end local v4    # "position":I
    .end local v5    # "v":Landroid/view/View;
    :goto_1
    return-object v5

    .line 178
    .restart local v2    # "id":J
    .restart local v4    # "position":I
    .restart local v5    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "id":J
    .end local v4    # "position":I
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 460
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->computeVerticalScrollOffset()I

    move-result v4

    .line 461
    .local v4, "offset":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getHeight()I

    move-result v1

    .line 462
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->computeVerticalScrollExtent()I

    move-result v0

    .line 463
    .local v0, "extent":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->computeVerticalScrollRange()I

    move-result v5

    .line 464
    .local v5, "range":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 465
    .local v3, "hoverViewTop":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 467
    .local v2, "hoverHeight":I
    if-gtz v3, :cond_0

    if-lez v4, :cond_0

    .line 468
    iget v8, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    neg-int v8, v8

    invoke-virtual {p0, v8, v7}, Lcom/vkontakte/android/ui/ReorderableListView;->smoothScrollBy(II)V

    .line 477
    :goto_0
    return v6

    .line 472
    :cond_0
    add-int v8, v3, v2

    if-lt v8, v1, :cond_1

    add-int v8, v4, v0

    if-ge v8, v5, :cond_1

    .line 473
    iget v8, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    invoke-virtual {p0, v8, v7}, Lcom/vkontakte/android/ui/ReorderableListView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    move v6, v7

    .line 477
    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 79
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x41700000    # 15.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 80
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 277
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 226
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 228
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 229
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->lockOrientation()V

    goto :goto_0

    .line 232
    :pswitch_2
    iget v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 236
    iget v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 238
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    .line 239
    iget v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    iget v5, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    sub-int v0, v4, v5

    .line 241
    .local v0, "deltaY":I
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-eqz v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 244
    iget-object v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 245
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->invalidate()V

    .line 247
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleCellSwitch()V

    .line 249
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 250
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleMobileCellScroll()V

    goto :goto_1

    .line 256
    .end local v0    # "deltaY":I
    .end local v2    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsEnded()V

    goto :goto_0

    .line 259
    :pswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsCancelled()V

    goto :goto_0

    .line 266
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 268
    .restart local v2    # "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 269
    .local v1, "pointerId":I
    iget v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsEnded()V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setDragListener(Lcom/vkontakte/android/ui/ReorderableListView$DragListener;)V
    .locals 0
    .param p1, "dl"    # Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    .line 84
    return-void
.end method
