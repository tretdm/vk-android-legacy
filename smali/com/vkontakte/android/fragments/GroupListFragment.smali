.class public Lcom/vkontakte/android/fragments/GroupListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "GroupListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;,
        Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/GroupListFragment$Section;,
        Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

.field private contentView:Landroid/widget/FrameLayout;

.field private currentSearchReq:Lcom/vkontakte/android/APIRequest;

.field private emptyView:Lcom/vkontakte/android/ui/EmptyView;

.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private indexer:Lcom/vkontakte/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/SearchIndexer",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private isMe:Z

.field private list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

.field private moreAvailable:Z

.field private preloadOnReady:Z

.field private preloadedSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private runAfterInit:Ljava/lang/Runnable;

.field private searchQuery:Ljava/lang/String;

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/GroupListFragment$Section;",
            ">;"
        }
    .end annotation
.end field

.field private selListener:Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

.field private showHints:Z

.field private showOnline:Z

.field private useSections:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    .line 56
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showOnline:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    .line 57
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    .line 61
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->useSections:Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/GroupListFragment;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/GroupListFragment;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/GroupListFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->adapter:Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->selListener:Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/GroupListFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method private loadMore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 299
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 303
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 307
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    if-nez v0, :cond_3

    .line 355
    :cond_1
    :goto_1
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 305
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    goto :goto_0

    .line 308
    :cond_3
    new-instance v1, Lcom/vkontakte/android/api/GroupsSearch;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x64

    :goto_2
    invoke-direct {v1, v2, v3, v0}, Lcom/vkontakte/android/api/GroupsSearch;-><init>(Ljava/lang/String;II)V

    .line 309
    new-instance v0, Lcom/vkontakte/android/fragments/GroupListFragment$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$8;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/GroupsSearch;->setCallback(Lcom/vkontakte/android/api/GroupsSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 308
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    :cond_4
    const/16 v0, 0x32

    goto :goto_2
.end method


# virtual methods
.method public createSections()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 262
    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-eqz v5, :cond_5

    .line 263
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    new-instance v6, Lcom/vkontakte/android/fragments/GroupListFragment$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$7;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 273
    .local v2, "now":I
    new-instance v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v0, p0, v9}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$Section;)V

    .line 274
    .local v0, "future":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 275
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080172

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    .line 276
    new-instance v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v3, p0, v9}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$Section;)V

    .line 277
    .local v3, "past":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 278
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    .line 279
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 283
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget-object v5, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_0
    iget-object v5, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v0    # "future":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    .end local v2    # "now":I
    .end local v3    # "past":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    .line 293
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 294
    iput-object v9, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit:Ljava/lang/Runnable;

    .line 296
    :cond_2
    return-void

    .line 279
    .restart local v0    # "future":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    .restart local v2    # "now":I
    .restart local v3    # "past":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 280
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    iget v6, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    if-le v6, v2, :cond_4

    iget-object v6, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_4
    iget-object v6, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 287
    .end local v0    # "future":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    .end local v2    # "now":I
    .end local v3    # "past":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    :cond_5
    new-instance v4, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v4, p0, v9}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$Section;)V

    .line 288
    .local v4, "s":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 289
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f07002f

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 67
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 68
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 70
    new-instance v0, Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v2, v4, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    invoke-direct {v2, p0, v4}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->adapter:Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const v2, 0x7f0200e6

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelector(I)V

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setPadding(IIII)V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setScrollBarStyle(I)V

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x1a1a1b

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDividerHeight(I)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setHeaderDividersEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Lcom/vkontakte/android/fragments/GroupListFragment$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$1;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0802c0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v2, Lcom/vkontakte/android/fragments/GroupListFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$2;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;

    invoke-direct {v2, p0, v4}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;)V

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v4, Lcom/vkontakte/android/fragments/GroupListFragment$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$3;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080130

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 137
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0802bf

    goto :goto_0

    :cond_1
    const v0, 0x7f08012f

    goto :goto_0

    :cond_2
    move v0, v1

    .line 137
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 144
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->adapter:Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    .line 145
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 146
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 147
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 148
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 149
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 150
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateFilter(Ljava/lang/String;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    goto :goto_0
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 376
    return-void
.end method

.method public runAfterInit(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit:Ljava/lang/Runnable;

    .line 171
    return-void
.end method

.method public setData(Ljava/util/ArrayList;ZZ)V
    .locals 2
    .param p2, "showHints"    # Z
    .param p3, "me"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/Group;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    iput-boolean p3, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    .line 191
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 195
    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    .line 196
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->createSections()V

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->refreshDone()V

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 201
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    if-eqz p2, :cond_2

    const v0, 0x7f080130

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 202
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_0

    .line 201
    :cond_2
    if-eqz p3, :cond_3

    const v0, 0x7f0802bf

    goto :goto_1

    :cond_3
    const v0, 0x7f08012f

    goto :goto_1

    .line 202
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setSelectionListener(Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->selListener:Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

    .line 175
    return-void
.end method

.method public setUserSections(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->useSections:Z

    .line 258
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->createSections()V

    .line 259
    return-void
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 9
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 206
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 208
    iput-object v8, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    if-nez v4, :cond_2

    .line 211
    move-object v0, p1

    .line 212
    .local v0, "f":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/vkontakte/android/fragments/GroupListFragment$6;

    invoke-direct {v5, p0, v0}, Lcom/vkontakte/android/fragments/GroupListFragment$6;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Ljava/lang/String;)V

    .line 214
    const-wide/16 v6, 0x64

    .line 212
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    .end local v0    # "f":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->isRefreshing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 218
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 219
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    .line 220
    iput-boolean v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    .line 221
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 222
    :cond_3
    iput-object v8, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    .line 223
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->createSections()V

    .line 225
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 226
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    .line 227
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-eqz v4, :cond_4

    const v4, 0x7f080130

    :goto_1
    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 228
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 229
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDraggingEnabled(Z)V

    goto :goto_0

    .line 227
    :cond_4
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    if-eqz v4, :cond_5

    const v4, 0x7f0802bf

    goto :goto_1

    :cond_5
    const v4, 0x7f08012f

    goto :goto_1

    :cond_6
    move v4, v6

    .line 228
    goto :goto_2

    .line 232
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDraggingEnabled(Z)V

    .line 233
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 234
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v7, 0x7f0800bf

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 235
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 236
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    .line 237
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 238
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 239
    new-instance v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$Section;)V

    .line 240
    .local v3, "search":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    .line 242
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v4, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 245
    iget-object v4, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    new-instance v1, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v1, p0, v8}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$Section;)V

    .line 248
    .local v1, "gsearch":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    .line 249
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 250
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 253
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public updateList()V
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GroupListFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$4;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v1, Lcom/vkontakte/android/fragments/GroupListFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$5;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    .line 166
    const-wide/16 v2, 0x64

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
