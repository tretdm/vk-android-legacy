.class public Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field public mAlwaysOverrideTouch:Z

.field protected mCurrentX:I

.field private mDataChanged:Z

.field private mDataObserver:Landroid/database/DataSetObserver;

.field private mDisplayOffset:I

.field private mGesture:Landroid/view/GestureDetector;

.field private mLeftViewIndex:I

.field private mMaxX:I

.field protected mNextX:I

.field private mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

.field private mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mRemovedViewQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRightViewIndex:I

.field protected mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAlwaysOverrideTouch:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    .line 29
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    .line 32
    const v0, 0x7fffffff

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    .line 33
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 40
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataChanged:Z

    .line 81
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 338
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$2;-><init>(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->initView()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAlwaysOverrideTouch:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    .line 29
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    .line 32
    const v0, 0x7fffffff

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    .line 33
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    .line 40
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataChanged:Z

    .line 81
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;-><init>(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    .line 338
    new-instance v0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$2;-><init>(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    .line 51
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->initView()V

    .line 52
    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataChanged:Z

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->reset()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "viewPos"    # I

    .prologue
    const/4 v1, -0x1

    const/high16 v3, -0x80000000

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 139
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 143
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 144
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 144
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 146
    return-void
.end method

.method private fillList(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "edge":I
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 206
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->fillListRight(II)V

    .line 208
    const/4 v1, 0x0

    .line 209
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 213
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->fillListLeft(II)V

    .line 216
    return-void
.end method

.method private fillListLeft(II)V
    .locals 4
    .param p1, "leftEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 238
    :goto_0
    add-int v1, p1, p2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    if-gez v1, :cond_1

    .line 245
    :cond_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 241
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 242
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    .line 243
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    goto :goto_0
.end method

.method private fillListRight(II)V
    .locals 4
    .param p1, "rightEdge"    # I
    .param p2, "dx"    # I

    .prologue
    .line 219
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 235
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v3, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "child":Landroid/view/View;
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    .line 225
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 226
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mCurrentX:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    .line 229
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    if-gez v1, :cond_3

    .line 230
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    .line 232
    :cond_3
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    goto :goto_0
.end method

.method private declared-synchronized initView()V
    .locals 3

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mCurrentX:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    .line 61
    const v0, 0x7fffffff

    iput v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    .line 62
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    .line 63
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnGesture:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private positionItems(I)V
    .locals 7
    .param p1, "dx"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 269
    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    .line 270
    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    .line 271
    .local v3, "left":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 278
    .end local v2    # "i":I
    .end local v3    # "left":I
    :cond_0
    return-void

    .line 272
    .restart local v2    # "i":I
    .restart local v3    # "left":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 274
    .local v1, "childWidth":I
    const/4 v4, 0x0

    add-int v5, v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v4, v1

    add-int/2addr v3, v4

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private removeNonVisibleItems(I)V
    .locals 4
    .param p1, "dx"    # I

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "child":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-lez v1, :cond_2

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 259
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 265
    :cond_1
    return-void

    .line 250
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDisplayOffset:I

    .line 251
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 253
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mLeftViewIndex:I

    .line 254
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRemovedViewQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    .line 262
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mRightViewIndex:I

    .line 263
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized reset()V
    .locals 1

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->initView()V

    .line 128
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 129
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 320
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mGesture:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 321
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 335
    return v1
.end method

.method protected onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    const/4 v2, 0x0

    neg-float v3, p3

    float-to-int v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 325
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->requestLayout()V

    .line 330
    const/4 v0, 0x1

    return v0

    .line 325
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 154
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 198
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataChanged:Z

    if-eqz v3, :cond_2

    .line 159
    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mCurrentX:I

    .line 160
    .local v1, "oldCurrentX":I
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->initView()V

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->removeAllViewsInLayout()V

    .line 162
    iput v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    .line 163
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataChanged:Z

    .line 166
    .end local v1    # "oldCurrentX":I
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 167
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 168
    .local v2, "scrollx":I
    iput v2, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    .line 171
    .end local v2    # "scrollx":I
    :cond_3
    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    if-gtz v3, :cond_4

    .line 172
    const/4 v3, 0x0

    iput v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    .line 173
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 175
    :cond_4
    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    if-lt v3, v4, :cond_5

    .line 176
    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mMaxX:I

    iput v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    .line 177
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 180
    :cond_5
    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mCurrentX:I

    iget v4, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    sub-int v0, v3, v4

    .line 182
    .local v0, "dx":I
    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->removeNonVisibleItems(I)V

    .line 183
    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->fillList(I)V

    .line 184
    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->positionItems(I)V

    .line 186
    iget v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    iput v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mCurrentX:I

    .line 188
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 189
    new-instance v3, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$3;-><init>(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "dx":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public scrollTo(I)V
    .locals 4
    .param p1, "x"    # I

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    iget v2, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 282
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->requestLayout()V

    .line 283
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 289
    .local v1, "parent":Landroid/view/View;
    const/high16 v8, 0x42aa0000    # 85.0f

    invoke-static {v8}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v5

    .line 290
    .local v5, "wrap":I
    mul-int v3, v5, p1

    .line 291
    .local v3, "targetX":I
    int-to-float v8, v5

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 293
    .local v0, "offsetX":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 295
    .local v4, "width":I
    iget v6, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    .line 296
    .local v6, "x1":I
    iget v8, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mNextX:I

    add-int v7, v8, v4

    .line 300
    .local v7, "x2":I
    sub-int v8, v3, v0

    if-ge v8, v6, :cond_1

    .line 302
    sub-int v2, v3, v0

    .line 313
    .local v2, "result":I
    :goto_0
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->scrollTo(I)V

    .line 314
    .end local v2    # "result":I
    :cond_0
    return-void

    .line 304
    :cond_1
    add-int v8, v3, v5

    add-int/2addr v8, v0

    if-le v8, v7, :cond_0

    .line 306
    sub-int v8, v3, v4

    add-int/2addr v8, v5

    add-int/2addr v8, v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    add-int v2, v8, v9

    .line 307
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 123
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->reset()V

    .line 124
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 73
    .local p1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnItemClicked:Landroid/widget/AdapterView$OnItemClickListener;

    .line 74
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .prologue
    .line 78
    .local p1, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnItemLongClicked:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 79
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .prologue
    .line 68
    .local p1, "listener":Landroid/widget/AdapterView$OnItemSelectedListener;, "Landroid/widget/AdapterView$OnItemSelectedListener;"
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->mOnItemSelected:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 69
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 135
    return-void
.end method
