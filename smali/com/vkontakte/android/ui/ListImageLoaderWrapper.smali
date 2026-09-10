.class public Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;,
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;,
        Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;
    }
.end annotation


# instance fields
.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private list:Landroid/widget/ListView;

.field private listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private timer:Ljava/util/Timer;

.field private viCount:I

.field private viStart:I


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/ListView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V
    .locals 1
    .param p1, "adapter"    # Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "listener"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v0}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 23
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 24
    iput-object p3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    .line 25
    iput-object p2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/ListView;

    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    return v0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 43
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->clear()V

    .line 39
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/ListImageLoader;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method public isAlreadyLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ui/ListImageLoader;->isAlreadyLoaded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 70
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->timer:Ljava/util/Timer;

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 72
    iput p3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    .line 73
    iput p2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    .line 74
    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrolledToLastItem()V

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    instance-of v0, v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    check-cast v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p2, v1

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p4, v2

    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, p3, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ExtendedListener;->onScroll(III)V

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 81
    :cond_3
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    .line 85
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrollStopped()V

    .line 86
    :cond_0
    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->listener:Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;

    invoke-interface {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;->onScrollStarted()V

    .line 87
    :cond_1
    if-ne p2, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 91
    :cond_3
    return-void
.end method

.method public setAllowRepeat(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iput-boolean p1, v0, Lcom/vkontakte/android/ui/ListImageLoader;->allowRepeat:Z

    .line 55
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "sl"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 31
    return-void
.end method

.method public updateImages()V
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viStart:I

    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->getAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->getAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;

    invoke-virtual {v0}, Lcom/vkontakte/android/MultiSectionImageLoaderAdapter;->getSectionHeadersCount()I

    move-result v0

    :goto_0
    sub-int v0, v2, v0

    iget v2, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->viCount:I

    invoke-virtual {v1, v0, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 35
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
