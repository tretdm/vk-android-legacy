.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersListAdapterWrapper.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# instance fields
.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDelegate:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 12
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper$1;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;)V

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 25
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;->mDelegate:Landroid/widget/ListAdapter;

    .line 26
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;->mDelegate:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "header"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;->mDelegate:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;->mDelegate:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersListAdapterWrapper;->mDelegate:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
