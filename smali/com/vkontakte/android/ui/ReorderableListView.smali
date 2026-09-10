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
    .line 435
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$2;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ReorderableListView$2;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ui/ReorderableListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 32
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    .line 41
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 42
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 43
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 45
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_ID:I

    .line 46
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 47
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    .line 48
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 54
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 55
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 57
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 58
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    .line 93
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$1;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 503
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$3;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 64
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 65
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

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 32
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    .line 41
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 42
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 43
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 45
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_ID:I

    .line 46
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 47
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    .line 48
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 54
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 55
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 57
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 58
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    .line 93
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$1;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 503
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$3;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 74
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 75
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

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/16 v0, 0xf

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->SMOOTH_SCROLL_AMOUNT_AT_EDGE:I

    .line 32
    const/16 v0, 0x96

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->MOVE_DURATION:I

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    .line 39
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    .line 41
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 42
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 43
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 45
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_ID:I

    .line 46
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 47
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    .line 48
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 54
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->INVALID_POINTER_ID:I

    .line 55
    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 57
    iput-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 58
    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    .line 93
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$1;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 503
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/ReorderableListView$3;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 69
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/ReorderableListView;I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/ReorderableListView;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/ReorderableListView;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/ReorderableListView;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/ReorderableListView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/ReorderableListView;)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/ReorderableListView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/ReorderableListView;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/ui/ReorderableListView;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/ui/ReorderableListView;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/ui/ReorderableListView;J)V
    .locals 0

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/ui/ReorderableListView;J)V
    .locals 0

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/ReorderableListView;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/ReorderableListView;J)V
    .locals 0

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/ReorderableListView;Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/ReorderableListView;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/ReorderableListView;J)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/ReorderableListView;)Lcom/vkontakte/android/ui/ReorderableListView$DragListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    return-object v0
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 125
    .local v5, "w":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 126
    .local v2, "h":I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 127
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 129
    .local v3, "left":I
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->getBitmapWithBorder(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 132
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v6, 0xb4

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 134
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, v3, v5

    add-int v8, v4, v2

    invoke-direct {v6, v3, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    .line 135
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    .line 137
    iget-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 139
    return-object v1
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 155
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v0, "bgPaint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 161
    .end local v0    # "bgPaint":Landroid/graphics/Paint;
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 162
    return-object v1
.end method

.method private getBitmapWithBorder(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ReorderableListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private handleCellSwitch()V
    .locals 15

    .prologue
    .line 292
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    iget v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    sub-int v5, v0, v1

    .line 293
    .local v5, "deltaY":I
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    add-int/2addr v0, v1

    add-int v9, v0, v5

    .line 295
    .local v9, "deltaYTotal":I
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v8

    .line 296
    .local v8, "belowView":Landroid/view/View;
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v12

    .line 297
    .local v12, "mobileView":Landroid/view/View;
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v7

    .line 299
    .local v7, "aboveView":Landroid/view/View;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v0

    if-le v9, v0, :cond_2

    const/4 v11, 0x1

    .line 300
    .local v11, "isBelow":Z
    :goto_0
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v9, v0, :cond_3

    const/4 v10, 0x1

    .line 302
    .local v10, "isAbove":Z
    :goto_1
    if-nez v11, :cond_0

    if-eqz v10, :cond_1

    .line 304
    :cond_0
    if-eqz v11, :cond_4

    iget-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 305
    .local v3, "switchItemID":J
    :goto_2
    if-eqz v11, :cond_5

    move-object v14, v8

    .line 306
    .local v14, "switchView":Landroid/view/View;
    :goto_3
    invoke-virtual {p0, v12}, Lcom/vkontakte/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v13

    .line 308
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

    .line 352
    .end local v3    # "switchItemID":J
    .end local v13    # "originalItem":I
    .end local v14    # "switchView":Landroid/view/View;
    :cond_1
    :goto_4
    return-void

    .line 299
    .end local v10    # "isAbove":Z
    .end local v11    # "isBelow":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 300
    .restart local v11    # "isBelow":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 304
    .restart local v10    # "isAbove":Z
    :cond_4
    iget-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    goto :goto_2

    .restart local v3    # "switchItemID":J
    :cond_5
    move-object v14, v7

    .line 305
    goto :goto_3

    .line 311
    .restart local v13    # "originalItem":I
    .restart local v14    # "switchView":Landroid/view/View;
    :cond_6
    if-nez v14, :cond_7

    .line 312
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    goto :goto_4

    .line 316
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ReorderableListView$Swappable;

    invoke-virtual {p0, v14}, Lcom/vkontakte/android/ui/ReorderableListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-interface {v0, v13, v1}, Lcom/vkontakte/android/ui/ReorderableListView$Swappable;->swapItems(II)V

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 320
    iget v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 322
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v6

    .line 324
    .local v6, "switchViewStartTop":I
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 325
    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-wide v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->updateNeighborViewsForID(J)V

    .line 329
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 330
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    new-instance v0, Lcom/vkontakte/android/ui/ReorderableListView$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/ui/ReorderableListView$4;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_4
.end method

.method private handleMobileCellScroll()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 454
    return-void
.end method

.method private lockOrientation()V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->prevOrientation:I

    .line 216
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/vkontakte/android/ViewUtils;->getScreenOrientation(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 217
    return-void
.end method

.method private touchEventsCancelled()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 415
    iget-wide v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, "mobileView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    .line 417
    iput-wide v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 418
    iput-wide v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    .line 419
    iput-wide v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 420
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 421
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    .line 422
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->invalidate()V

    .line 424
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 425
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 426
    const/4 v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 427
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->unlockOrientation()V

    .line 428
    return-void
.end method

.method private touchEventsEnded()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 360
    iget-wide v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v1

    .line 361
    .local v1, "mobileView":Landroid/view/View;
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    if-eqz v2, :cond_3

    .line 362
    :cond_0
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    .line 363
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 364
    iput-boolean v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 365
    const/4 v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 370
    iget v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollState:I

    if-eqz v2, :cond_2

    .line 371
    iput-boolean v5, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsWaitingForScrollFinish:Z

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 377
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "bounds"

    .line 378
    sget-object v4, Lcom/vkontakte/android/ui/ReorderableListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v6, v5, v7

    .line 377
    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 379
    .local v0, "hoverViewAnimator":Landroid/animation/ObjectAnimator;
    new-instance v2, Lcom/vkontakte/android/ui/ReorderableListView$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/ui/ReorderableListView$5;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 385
    new-instance v2, Lcom/vkontakte/android/ui/ReorderableListView$6;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/ui/ReorderableListView$6;-><init>(Lcom/vkontakte/android/ui/ReorderableListView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 403
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->unlockOrientation()V

    .line 404
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, p0, Lcom/vkontakte/android/ui/ReorderableListView;->dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    iget-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mMobileItemId:J

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/ui/ReorderableListView$DragListener;->onDragDrop(J)V

    goto :goto_0

    .line 407
    .end local v0    # "hoverViewAnimator":Landroid/animation/ObjectAnimator;
    :cond_3
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsCancelled()V

    goto :goto_0
.end method

.method private unlockOrientation()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->prevOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 221
    return-void
.end method

.method private updateNeighborViewsForID(J)V
    .locals 5
    .param p1, "itemID"    # J

    .prologue
    const-wide/16 v3, -0x1

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/ui/ReorderableListView;->getPositionForID(J)I

    move-result v0

    .line 173
    .local v0, "position":I
    if-gtz v0, :cond_0

    move-wide v1, v3

    :goto_0
    iput-wide v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mAboveItemId:J

    .line 174
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    :goto_1
    iput-wide v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mBelowItemId:J

    .line 175
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 174
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
    .line 208
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    :cond_0
    return-void
.end method

.method public getPositionForID(J)I
    .locals 2
    .param p1, "itemID"    # J

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/ui/ReorderableListView;->getViewForID(J)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 195
    const/4 v1, -0x1

    .line 197
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
    .line 179
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 180
    .local v0, "firstVisiblePosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getChildCount()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 188
    const/4 v5, 0x0

    :cond_0
    return-object v5

    .line 181
    :cond_1
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 182
    .local v5, "v":Landroid/view/View;
    add-int v4, v0, v1

    .line 183
    .local v4, "position":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 184
    .local v2, "id":J
    cmp-long v6, v2, p1

    if-eqz v6, :cond_0

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 9
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 462
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->computeVerticalScrollOffset()I

    move-result v4

    .line 463
    .local v4, "offset":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->getHeight()I

    move-result v1

    .line 464
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->computeVerticalScrollExtent()I

    move-result v0

    .line 465
    .local v0, "extent":I
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->computeVerticalScrollRange()I

    move-result v5

    .line 466
    .local v5, "range":I
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 467
    .local v3, "hoverViewTop":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 469
    .local v2, "hoverHeight":I
    if-gtz v3, :cond_0

    if-lez v4, :cond_0

    .line 470
    iget v8, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    neg-int v8, v8

    invoke-virtual {p0, v8, v7}, Lcom/vkontakte/android/ui/ReorderableListView;->smoothScrollBy(II)V

    .line 479
    :goto_0
    return v6

    .line 474
    :cond_0
    add-int v8, v3, v2

    if-lt v8, v1, :cond_1

    add-int v8, v4, v0

    if-ge v8, v5, :cond_1

    .line 475
    iget v8, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    invoke-virtual {p0, v8, v7}, Lcom/vkontakte/android/ui/ReorderableListView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    move v6, v7

    .line 479
    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/ReorderableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 81
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v1, 0x41700000    # 15.0f

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mSmoothScrollAmountAtEdge:I

    .line 82
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 228
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownX:I

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    .line 230
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    .line 231
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->lockOrientation()V

    goto :goto_0

    .line 234
    :pswitch_2
    iget v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 238
    iget v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 240
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    .line 241
    iget v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mLastEventY:I

    iget v5, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mDownY:I

    sub-int v0, v4, v5

    .line 243
    .local v0, "deltaY":I
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mCellIsMobile:Z

    if-eqz v4, :cond_0

    .line 244
    iget-object v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 245
    iget-object v6, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mTotalOffset:I

    add-int/2addr v6, v7

    .line 244
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 246
    iget-object v4, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 247
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->invalidate()V

    .line 249
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleCellSwitch()V

    .line 251
    iput-boolean v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mIsMobileScrolling:Z

    .line 252
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->handleMobileCellScroll()V

    goto :goto_1

    .line 258
    .end local v0    # "deltaY":I
    .end local v2    # "pointerIndex":I
    :pswitch_3
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsEnded()V

    goto :goto_0

    .line 261
    :pswitch_4
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsCancelled()V

    goto :goto_0

    .line 268
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 270
    .restart local v2    # "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 271
    .local v1, "pointerId":I
    iget v3, p0, Lcom/vkontakte/android/ui/ReorderableListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/vkontakte/android/ui/ReorderableListView;->touchEventsEnded()V

    goto :goto_0

    .line 226
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
    .line 85
    iput-object p1, p0, Lcom/vkontakte/android/ui/ReorderableListView;->dragListener:Lcom/vkontakte/android/ui/ReorderableListView$DragListener;

    .line 86
    return-void
.end method
