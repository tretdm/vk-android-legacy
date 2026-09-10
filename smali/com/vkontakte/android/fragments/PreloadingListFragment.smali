.class public abstract Lcom/vkontakte/android/fragments/PreloadingListFragment;
.super Lcom/vkontakte/android/fragments/BaseListFragment;
.source "PreloadingListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkontakte/android/fragments/BaseListFragment",
        "<TT;>;",
        "Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;"
    }
.end annotation


# instance fields
.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field protected imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field protected itemsPerPage:I

.field protected moreAvailable:Z

.field protected preloadOnReady:Z

.field protected preloadedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected preloading:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "perPage"    # I

    .prologue
    .line 24
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/ArrayList;

    .line 25
    iput p1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    .line 26
    return-void
.end method


# virtual methods
.method protected appendItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method protected beforeSetAdapter()V
    .locals 4

    .prologue
    .line 46
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 49
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->list:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2, p0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->moreAvailable:Z

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 51
    return-void
.end method

.method protected clearItems()V
    .locals 0

    .prologue
    .line 129
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    return-void
.end method

.method protected doLoadData()V
    .locals 2

    .prologue
    .line 32
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v0, 0x0

    iget v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->doLoadData(II)V

    .line 33
    return-void
.end method

.method protected abstract doLoadData(II)V
.end method

.method protected getImageLoaderAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadData(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->dataLoading:Z

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->doLoadData(II)V

    .line 39
    return-void
.end method

.method protected onDataLoaded(Ljava/util/List;Z)V
    .locals 5
    .param p2, "more"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    .local p1, "d":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->loaded:Z

    .line 65
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->clearItems()V

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloading:Z

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    :goto_0
    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloading:Z

    .line 81
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadOnReady:Z

    if-eqz v0, :cond_1

    .line 82
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloading:Z

    .line 83
    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadOnReady:Z

    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->loadData(II)V

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->updateList()V

    .line 87
    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->moreAvailable:Z

    .line 88
    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->dataLoading:Z

    .line 90
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->refreshDone()V

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->updateList()V

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->list:Landroid/widget/ListView;

    if-nez v0, :cond_5

    .line 98
    :goto_1
    return-void

    .line 72
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    if-le v0, v1, :cond_4

    if-eqz p2, :cond_4

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    invoke-interface {p1, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    invoke-interface {p1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->appendItems(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->appendItems(Ljava/util/List;)V

    goto :goto_0

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->moreAvailable:Z

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-static {v0, v3}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 56
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 57
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onDestroyView()V

    .line 58
    iput-object v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 59
    return-void
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v2, 0x0

    .line 108
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->dataLoading:Z

    .line 109
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->refreshDone()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_4

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const v0, 0x7f0d00ce

    :goto_0
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 117
    :cond_2
    :goto_1
    return-void

    .line 113
    :cond_3
    const v0, 0x7f0d00d0

    goto :goto_0

    .line 115
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/BaseListFragment;->onError(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 155
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 160
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    return-void
.end method

.method public onScrolledToLastItem()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    const/4 v2, 0x1

    .line 133
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->dataLoading:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloading:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->moreAvailable:Z

    if-eqz v0, :cond_0

    .line 135
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloading:Z

    if-eqz v0, :cond_3

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloading:Z

    .line 137
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadOnReady:Z

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->appendItems(Ljava/util/List;)V

    .line 141
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->updateList()V

    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->preloading:Z

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->loadData(II)V

    goto :goto_0

    .line 146
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->itemsPerPage:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/PreloadingListFragment;->loadData(II)V

    goto :goto_0
.end method

.method protected prependItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lcom/vkontakte/android/fragments/PreloadingListFragment;, "Lcom/vkontakte/android/fragments/PreloadingListFragment<TT;>;"
    invoke-super {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->updateList()V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PreloadingListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 104
    :cond_0
    return-void
.end method
