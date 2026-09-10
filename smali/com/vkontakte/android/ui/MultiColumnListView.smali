.class public Lcom/vkontakte/android/ui/MultiColumnListView;
.super Lcom/vkontakte/android/ui/FixedScrollListView;
.source "MultiColumnListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;,
        Lcom/vkontakte/android/ui/MultiColumnListView$RowLayout;,
        Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;,
        Lcom/vkontakte/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;
    }
.end annotation


# instance fields
.field private columnCount:I

.field private currentScrollState:I

.field private drawSelOnTop:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private highlight:Landroid/graphics/drawable/Drawable;

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private observer:Landroid/database/DataSetObserver;

.field private resizeListener:Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;

.field private reusableViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rowsAdapter:Lcom/vkontakte/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private selPosition:I

.field private selRect:Landroid/graphics/Rect;

.field private wrappedAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    .line 32
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MultiColumnListView$1;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->drawSelOnTop:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    .line 50
    iput v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->currentScrollState:I

    .line 52
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MultiColumnListView$2;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 113
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->init()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    .line 32
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MultiColumnListView$1;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->drawSelOnTop:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    .line 50
    iput v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->currentScrollState:I

    .line 52
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MultiColumnListView$2;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 118
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    .line 32
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MultiColumnListView$1;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->drawSelOnTop:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    .line 50
    iput v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->currentScrollState:I

    .line 52
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MultiColumnListView$2;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 123
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->init()V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ui/MultiColumnListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->updateRows()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/MultiColumnListView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/MultiColumnListView;->positionFromPoint(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/database/DataSetObserver;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/ui/MultiColumnListView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/ui/MultiColumnListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    iget v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/vkontakte/android/ui/MultiColumnListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/ui/MultiColumnListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/ui/MultiColumnListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->currentScrollState:I

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/ui/MultiColumnListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/MultiColumnListView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView$3;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/ui/MultiColumnListView$3;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView;)V

    invoke-super {p0, v0}, Lcom/vkontakte/android/ui/FixedScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 160
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->gestureDetector:Landroid/view/GestureDetector;

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/MultiColumnListView;->setWillNotDraw(Z)V

    .line 163
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-super {p0, v0}, Lcom/vkontakte/android/ui/FixedScrollListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 164
    return-void
.end method

.method private positionFromPoint(II)I
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 249
    invoke-super {p0}, Lcom/vkontakte/android/ui/FixedScrollListView;->getFirstVisiblePosition()I

    move-result v0

    .line 250
    .local v0, "firstRow":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 251
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/MultiColumnListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 252
    .local v4, "r":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-gt v6, p2, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    if-lt v6, p2, :cond_1

    .line 253
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    add-int v7, v0, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;

    .line 254
    .local v5, "row":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget v6, v5, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    if-ge v3, v6, :cond_1

    move-object v6, v4

    .line 255
    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 256
    .local v2, "item":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    if-gt v6, p1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    if-lt v6, p1, :cond_0

    .line 257
    iget v6, v5, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->start:I

    add-int/2addr v6, v3

    .line 262
    .end local v2    # "item":Landroid/view/View;
    .end local v3    # "j":I
    .end local v4    # "r":Landroid/view/View;
    .end local v5    # "row":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    :goto_2
    return v6

    .line 254
    .restart local v2    # "item":Landroid/view/View;
    .restart local v3    # "j":I
    .restart local v4    # "r":Landroid/view/View;
    .restart local v5    # "row":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    .end local v2    # "item":Landroid/view/View;
    .end local v3    # "j":I
    .end local v5    # "row":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v4    # "r":Landroid/view/View;
    :cond_2
    const/4 v6, -0x1

    goto :goto_2
.end method

.method private updateRows()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 210
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 211
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 212
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 213
    .local v0, "count":I
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    instance-of v4, v6, Lcom/vkontakte/android/ui/MultiSectionAdapter;

    .line 214
    .local v4, "isMultiSection":Z
    const/4 v5, 0x0

    .line 215
    .local v5, "offset":I
    new-instance v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;

    invoke-direct {v1, v9}, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView$1;)V

    .line 216
    .local v1, "current":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    iget v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    iput v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->size:I

    .line 217
    const/4 v6, -0x1

    iput v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    .line 218
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sub-int v6, v2, v5

    if-ge v6, v0, :cond_5

    .line 219
    iget v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    .line 220
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    check-cast v6, Lcom/vkontakte/android/ui/MultiSectionAdapter;

    invoke-virtual {v6, v2}, Lcom/vkontakte/android/ui/MultiSectionAdapter;->isSectionHeader(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v7

    .line 221
    .local v3, "isHeader":Z
    :goto_1
    iget v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    iget v8, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    if-eq v6, v8, :cond_0

    if-eqz v3, :cond_3

    .line 222
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    if-eqz v3, :cond_2

    .line 225
    iget v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    iput v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->size:I

    .line 226
    iget v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    if-gtz v6, :cond_1

    .line 227
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 229
    :cond_1
    new-instance v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;

    .end local v1    # "current":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    invoke-direct {v1, v9}, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView$1;)V

    .line 230
    .restart local v1    # "current":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    iput v2, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->start:I

    .line 231
    iput v7, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    .line 232
    iput v7, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->size:I

    .line 233
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v2, v2, 0x1

    .line 235
    add-int/lit8 v5, v5, 0x1

    .line 237
    :cond_2
    new-instance v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;

    .end local v1    # "current":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    invoke-direct {v1, v9}, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView$1;)V

    .line 238
    .restart local v1    # "current":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    iget v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    iput v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->size:I

    .line 239
    iput v2, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->start:I

    .line 218
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v3    # "isHeader":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 242
    :cond_5
    iget v6, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    if-lez v6, :cond_6

    .line 243
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rowsAdapter:Lcom/vkontakte/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;

    invoke-virtual {v6}, Lcom/vkontakte/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;->notifyDataSetChanged()V

    .line 246
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, -0x1

    .line 317
    iget v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    if-eq v2, v6, :cond_0

    .line 318
    iget v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/ui/MultiColumnListView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 319
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_3

    .line 320
    iput v6, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    .line 327
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->drawSelOnTop:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    if-eq v2, v6, :cond_1

    .line 328
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    :cond_1
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/FixedScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 331
    iget-boolean v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->drawSelOnTop:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selPosition:I

    if-eq v2, v6, :cond_2

    .line 332
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 334
    :cond_2
    return-void

    .line 322
    .restart local v0    # "view":Landroid/view/View;
    :cond_3
    invoke-static {v0, p0}, Lcom/vkontakte/android/ViewUtils;->getViewOffset(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 323
    .local v1, "y":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-direct {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selRect:Landroid/graphics/Rect;

    .line 324
    iget-object v2, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->selRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/vkontakte/android/ui/FixedScrollListView;->getFirstVisiblePosition()I

    move-result v0

    .line 273
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 274
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;

    iget v1, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->start:I

    goto :goto_0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 5
    .param p1, "pos"    # I

    .prologue
    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "res":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;

    .line 301
    .local v2, "row":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    iget v3, v2, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->start:I

    if-gt v3, p1, :cond_2

    iget v3, v2, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->start:I

    iget v4, v2, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/2addr v3, v4

    if-le v3, p1, :cond_2

    .line 302
    invoke-super {p0}, Lcom/vkontakte/android/ui/FixedScrollListView;->getFirstVisiblePosition()I

    move-result v3

    if-lt v0, v3, :cond_1

    invoke-super {p0}, Lcom/vkontakte/android/ui/FixedScrollListView;->getLastVisiblePosition()I

    move-result v3

    if-gt v0, v3, :cond_1

    .line 303
    invoke-super {p0}, Lcom/vkontakte/android/ui/FixedScrollListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/ui/MultiColumnListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget v4, v2, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->start:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 309
    .end local v1    # "res":Landroid/view/View;
    .end local v2    # "row":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    :cond_0
    :goto_1
    return-object v1

    .line 305
    .restart local v1    # "res":Landroid/view/View;
    .restart local v2    # "row":Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 299
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 3

    .prologue
    .line 279
    invoke-super {p0}, Lcom/vkontakte/android/ui/FixedScrollListView;->getLastVisiblePosition()I

    move-result v0

    .line 280
    .local v0, "pos":I
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 281
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;

    iget v2, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->start:I

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;

    iget v1, v1, Lcom/vkontakte/android/ui/MultiColumnListView$RowInfo;->count:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/ui/FixedScrollListView;->onSizeChanged(IIII)V

    .line 342
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->resizeListener:Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->resizeListener:Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;

    invoke-interface {v0, p1, p2}, Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;->onResize(II)V

    .line 344
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 291
    iget v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->currentScrollState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 294
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/FixedScrollListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 28
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/ui/MultiColumnListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->observer:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->reusableViews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 195
    new-instance v0, Lcom/vkontakte/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;-><init>(Lcom/vkontakte/android/ui/MultiColumnListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->rowsAdapter:Lcom/vkontakte/android/ui/MultiColumnListView$MultiColumnAdapterWrapper;

    invoke-super {p0, v0}, Lcom/vkontakte/android/ui/FixedScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->wrappedAdapter:Landroid/widget/ListAdapter;

    .line 197
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->updateRows()V

    .line 198
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "cnt"    # I

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->columnCount:I

    .line 202
    invoke-direct {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->updateRows()V

    .line 203
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->drawSelOnTop:Z

    .line 182
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 314
    return-void
.end method

.method public setOnResizeListener(Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->resizeListener:Lcom/vkontakte/android/ui/MultiColumnListView$OnResizeListener;

    .line 338
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 268
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/MultiColumnListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/MultiColumnListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "s"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    .line 170
    if-eqz p1, :cond_1

    .line 171
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 172
    :cond_1
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/vkontakte/android/ui/FixedScrollListView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/MultiColumnListView;->highlight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
