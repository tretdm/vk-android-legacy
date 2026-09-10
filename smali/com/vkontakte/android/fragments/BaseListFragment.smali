.class public abstract Lcom/vkontakte/android/fragments/BaseListFragment;
.super Landroid/app/Fragment;
.source "BaseListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;"
    }
.end annotation


# instance fields
.field protected contentView:Landroid/widget/FrameLayout;

.field protected contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

.field protected data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected dataLoading:Z

.field protected emptyView:Lcom/vkontakte/android/ui/EmptyView;

.field protected errorView:Lcom/vkontakte/android/ui/ErrorView;

.field protected list:Landroid/widget/ListView;

.field protected loaded:Z

.field protected progress:Landroid/widget/ProgressBar;

.field private refreshAfterCreate:Z

.field private refreshEnabled:Z

.field protected refreshing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->dataLoading:Z

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshing:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->loaded:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshEnabled:Z

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshAfterCreate:Z

    .line 48
    return-void
.end method


# virtual methods
.method protected beforeSetAdapter()V
    .locals 0

    .prologue
    .line 135
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method protected abstract cancelLoading()V
.end method

.method protected createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    new-instance v0, Lcom/vkontakte/android/ui/FixedScrollListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "l":Landroid/widget/ListView;
    return-object v0
.end method

.method protected abstract doLoadData()V
.end method

.method protected abstract getAdapter()Landroid/widget/ListAdapter;
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const v0, 0x7f0d00c9

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadData()V
    .locals 1

    .prologue
    .line 159
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->showProgress()V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->dataLoading:Z

    .line 161
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->doLoadData()V

    .line 162
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 64
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/4 v7, 0x0

    const/high16 v4, 0x42200000    # 40.0f

    const/16 v6, 0x8

    .line 70
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 72
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->createListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/BaseListFragment;->setListViewAppearance(Landroid/widget/ListView;)V

    .line 75
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->beforeSetAdapter()V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getEmptyText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v1, Lcom/vkontakte/android/fragments/BaseListFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/BaseListFragment$1;-><init>(Lcom/vkontakte/android/fragments/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 92
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f030030

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->loaded:Z

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v1, Lcom/vkontakte/android/fragments/BaseListFragment$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/BaseListFragment$2;-><init>(Lcom/vkontakte/android/fragments/BaseListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->allChildrenArePullable()Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 125
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshEnabled:Z

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 126
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshAfterCreate:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->refresh()V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v7}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDataLoaded(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    .local p1, "d":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .line 170
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->dataLoading:Z

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->loaded:Z

    .line 172
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->updateList()V

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshDone()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 179
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x0

    .line 218
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 219
    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 220
    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->list:Landroid/widget/ListView;

    .line 221
    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 222
    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    .line 223
    iput-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 224
    return-void
.end method

.method protected onEmptyViewBtnClick()V
    .locals 0

    .prologue
    .line 147
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    return-void
.end method

.method protected onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/4 v2, 0x0

    .line 183
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->dataLoading:Z

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshing:Z

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f0d00ce

    :goto_1
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshDone()V

    goto :goto_0

    .line 186
    :cond_1
    const v0, 0x7f0d00d0

    goto :goto_1

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onErrorRetryClick()V
    .locals 2

    .prologue
    .line 140
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 142
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->loadData()V

    .line 143
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 253
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
    .line 247
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 257
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshing:Z

    .line 258
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->doLoadData()V

    .line 259
    return-void
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/4 v1, 0x1

    .line 231
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->loadData()V

    .line 242
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshing(Z)V

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/BaseListFragment;->onRefreshStarted(Landroid/view/View;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshAfterCreate:Z

    goto :goto_0

    .line 240
    :cond_1
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshAfterCreate:Z

    goto :goto_0
.end method

.method public refreshDone()V
    .locals 1

    .prologue
    .line 262
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshing:Z

    .line 264
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 165
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshing:Z

    .line 166
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->loadData()V

    .line 167
    return-void
.end method

.method protected setListViewAppearance(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;

    .prologue
    .line 56
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const v0, 0x7f020077

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelector(I)V

    .line 57
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x201d1b

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 59
    return-void
.end method

.method protected setRefreshEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 150
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->refreshEnabled:Z

    .line 151
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, p1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 153
    :cond_0
    return-void
.end method

.method protected showList()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/16 v2, 0x8

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 199
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 202
    :cond_0
    return-void
.end method

.method protected showProgress()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    const/16 v1, 0x8

    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->contentWrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 209
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BaseListFragment;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ViewUtils;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 211
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lcom/vkontakte/android/fragments/BaseListFragment;, "Lcom/vkontakte/android/fragments/BaseListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/BaseListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 215
    return-void
.end method
