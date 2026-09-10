.class public Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "StickyGridHeadersSimpleAdapterWrapper.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;,
        Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    .line 41
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$DataSetObserverExtension;)V

    invoke-interface {p1, v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->generateHeaderList(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected generateHeaderList(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;)Ljava/util/List;
    .locals 7
    .param p1, "adapter"    # Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v5, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getCount()I

    move-result v6

    if-lt v4, v6, :cond_0

    .line 95
    return-object v3

    .line 85
    :cond_0
    invoke-interface {p1, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getHeaderId(I)J

    move-result-wide v1

    .line 86
    .local v1, "headerId":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    .line 87
    .local v0, "headerData":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    .end local v0    # "headerData":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
    invoke-direct {v0, p0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;I)V

    .line 89
    .restart local v0    # "headerData":Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->incrementCount()V

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getCountForHeader(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->getCount()I

    move-result v0

    return v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper$HeaderData;->getRefPosition()I

    move-result v0

    invoke-interface {v1, v0, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumHeaders()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapterWrapper;->mDelegate:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersSimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
