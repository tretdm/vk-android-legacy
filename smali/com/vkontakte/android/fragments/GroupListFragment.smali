.class public Lcom/vkontakte/android/fragments/GroupListFragment;
.super Landroid/app/Fragment;
.source "GroupListFragment.java"

# interfaces
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;,
        Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;,
        Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

.field private contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

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
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

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

    .line 454
    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/GroupListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/fragments/GroupListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/GroupListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/vkontakte/android/fragments/GroupListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/GroupListFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->adapter:Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->selListener:Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/GroupListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/GroupListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/GroupListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupListFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method private loadMore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-nez v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 306
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 311
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    if-nez v0, :cond_3

    .line 359
    :cond_1
    :goto_1
    return-void

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 309
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    goto :goto_0

    .line 312
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

    new-instance v0, Lcom/vkontakte/android/fragments/GroupListFragment$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$8;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/GroupsSearch;->setCallback(Lcom/vkontakte/android/api/GroupsSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    :cond_4
    const/16 v0, 0x32

    goto :goto_2
.end method


# virtual methods
.method public createSections()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 266
    iget-boolean v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-eqz v6, :cond_5

    .line 267
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    new-instance v7, Lcom/vkontakte/android/fragments/GroupListFragment$7;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$7;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    .line 277
    .local v3, "now":I
    new-instance v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v0, p0, v10}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$1;)V

    .line 278
    .local v0, "future":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 279
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0136

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    .line 280
    new-instance v4, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v4, p0, v10}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$1;)V

    .line 281
    .local v4, "past":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 282
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0135

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    .line 283
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/api/Group;

    .line 284
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    iget v6, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    if-le v6, v3, :cond_0

    iget-object v6, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    :cond_0
    iget-object v6, v4, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 287
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v6, v0, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_2
    iget-object v6, v4, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .end local v0    # "future":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "now":I
    .end local v4    # "past":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit:Ljava/lang/Runnable;

    if-eqz v6, :cond_4

    .line 297
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 298
    iput-object v10, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit:Ljava/lang/Runnable;

    .line 300
    :cond_4
    return-void

    .line 291
    :cond_5
    new-instance v5, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v5, p0, v10}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$1;)V

    .line 292
    .local v5, "s":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    iput-object v6, v5, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 293
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0b000f

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 67
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 68
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setBackgroundColor(I)V

    .line 70
    new-instance v0, Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/app/Activity;

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

    invoke-direct {v2, p0, v4}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$1;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->adapter:Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const v2, 0x7f020077

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
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Lcom/vkontakte/android/fragments/GroupListFragment$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$1;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0d00c8

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v2, Lcom/vkontakte/android/fragments/GroupListFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$2;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v2, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;

    invoke-direct {v2, p0, v4}, Lcom/vkontakte/android/fragments/GroupListFragment$FriendsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$1;)V

    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v4, Lcom/vkontakte/android/fragments/GroupListFragment$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$3;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 135
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0195

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 136
    iget-object v2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->allChildrenArePullable()Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0d019e

    goto :goto_0

    :cond_1
    const v0, 0x7f0d019d

    goto :goto_0

    :cond_2
    move v0, v1

    .line 136
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 148
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->adapter:Lcom/vkontakte/android/fragments/GroupListFragment$FriendsAdapter;

    .line 149
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 150
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 151
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 152
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 154
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateFilter(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Groups;->reload(Z)V

    goto :goto_0
.end method

.method public runAfterInit(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->runAfterInit:Ljava/lang/Runnable;

    .line 175
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
    .line 194
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    iput-boolean p3, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 198
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 199
    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    .line 200
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->createSections()V

    .line 202
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 205
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    if-eqz p2, :cond_2

    const v0, 0x7f0d0195

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 206
    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    goto :goto_0

    .line 205
    :cond_2
    if-eqz p3, :cond_3

    const v0, 0x7f0d019e

    goto :goto_1

    :cond_3
    const v0, 0x7f0d019d

    goto :goto_1

    .line 206
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setSelectionListener(Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->selListener:Lcom/vkontakte/android/fragments/GroupListFragment$SelectionListener;

    .line 179
    return-void
.end method

.method public setUserSections(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->useSections:Z

    .line 262
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->createSections()V

    .line 263
    return-void
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 9
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 210
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 212
    iput-object v8, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    .line 214
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    if-nez v4, :cond_2

    .line 215
    move-object v0, p1

    .line 216
    .local v0, "f":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/vkontakte/android/fragments/GroupListFragment$6;

    invoke-direct {v5, p0, v0}, Lcom/vkontakte/android/fragments/GroupListFragment$6;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Ljava/lang/String;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    .end local v0    # "f":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isRefreshing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 223
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->moreAvailable:Z

    .line 224
    iput-boolean v6, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->preloadOnReady:Z

    .line 225
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 226
    :cond_3
    iput-object v8, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    .line 227
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->createSections()V

    .line 229
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 230
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    .line 231
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0d0195

    :goto_1
    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 232
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->showHints:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 233
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v4, v5}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 231
    :cond_4
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->isMe:Z

    if-eqz v4, :cond_5

    const v4, 0x7f0d019e

    goto :goto_1

    :cond_5
    const v4, 0x7f0d019d

    goto :goto_1

    :cond_6
    move v4, v6

    .line 232
    goto :goto_2

    .line 236
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v4, v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 237
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 238
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v7, 0x7f0d01b8

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 239
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 240
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->searchQuery:Ljava/lang/String;

    .line 241
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 242
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 243
    new-instance v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v3, p0, v8}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$1;)V

    .line 244
    .local v3, "search":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d027e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    .line 246
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v4, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 248
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/Group;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 249
    iget-object v4, v3, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 251
    new-instance v1, Lcom/vkontakte/android/fragments/GroupListFragment$Section;

    invoke-direct {v1, p0, v8}, Lcom/vkontakte/android/fragments/GroupListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;Lcom/vkontakte/android/fragments/GroupListFragment$1;)V

    .line 252
    .local v1, "gsearch":Lcom/vkontakte/android/fragments/GroupListFragment$Section;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0279

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->title:Ljava/lang/String;

    .line 253
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/vkontakte/android/fragments/GroupListFragment$Section;->list:Ljava/util/ArrayList;

    .line 254
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->updateList()V

    .line 257
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public updateList()V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GroupListFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$4;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v1, Lcom/vkontakte/android/fragments/GroupListFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupListFragment$5;-><init>(Lcom/vkontakte/android/fragments/GroupListFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
