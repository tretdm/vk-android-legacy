.class public Lcom/vkontakte/android/fragments/FriendListFragment;
.super Landroid/app/Fragment;
.source "FriendListFragment.java"

# interfaces
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;,
        Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;,
        Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;,
        Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    }
.end annotation


# static fields
.field private static final SORT_FIRST:I = 0x1

.field private static final SORT_HINTS:I = 0x0

.field private static final SORT_LAST:I = 0x2


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

.field private contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

.field private creatingSections:Z

.field private currentSearchReq:Lcom/vkontakte/android/APIRequest;

.field private emptyView:Lcom/vkontakte/android/ui/EmptyView;

.field private footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private indexer:Lcom/vkontakte/android/SearchIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/SearchIndexer",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private isMe:Z

.field private list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

.field private moreAvailable:Z

.field private multiSelect:Z

.field private preloadOnReady:Z

.field private preloadedSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

.field private runAfterInit:Ljava/lang/Runnable;

.field private searchQuery:Ljava/lang/String;

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/fragments/FriendListFragment$Section;",
            ">;"
        }
    .end annotation
.end field

.field private sectionsLock:Ljava/util/concurrent/Semaphore;

.field private selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

.field private selected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private showHints:Z

.field private showOnline:Z

.field private sortPref:I

.field private useSections:Z

.field private users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 80
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    .line 64
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showHints:Z

    .line 65
    new-instance v1, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v1}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    .line 66
    iput-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    .line 69
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->useSections:Z

    .line 71
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    .line 75
    iput-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    .line 76
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4, v4}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sectionsLock:Ljava/util/concurrent/Semaphore;

    .line 78
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->creatingSections:Z

    .line 81
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "friendsOrderNew"

    const-string v3, "firstname"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "pref":Ljava/lang/String;
    const-string v1, "hints"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iput v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v1, "firstname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iput v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, "lastname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x2

    iput v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sectionsLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/fragments/FriendListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->creatingSections:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/FriendListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    return v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showHints:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/FriendListFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/vkontakte/android/fragments/FriendListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/vkontakte/android/fragments/FriendListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    return v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/FriendListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendListFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->loadMore()V

    return-void
.end method

.method private loadMore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 489
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    if-eqz v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 492
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 493
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 494
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 498
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    if-nez v0, :cond_0

    .line 499
    new-instance v1, Lcom/vkontakte/android/api/UsersSearch;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x64

    :goto_2
    invoke-direct {v1, v2, v3, v0}, Lcom/vkontakte/android/api/UsersSearch;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/vkontakte/android/fragments/FriendListFragment$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$7;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/UsersSearch;->setCallback(Lcom/vkontakte/android/api/UsersSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 496
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    goto :goto_1

    .line 499
    :cond_4
    const/16 v0, 0x32

    goto :goto_2
.end method


# virtual methods
.method protected beforeSetListAdapter(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 486
    return-void
.end method

.method public createSections()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "relation"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v5, v8

    .line 345
    .local v5, "relation":Z
    :goto_0
    iget-boolean v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->useSections:Z

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    if-eqz v10, :cond_5

    if-nez v5, :cond_5

    .line 346
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-lt v10, v11, :cond_0

    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v10, v8}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 347
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v7, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v8, :cond_1

    .line 350
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v8, v9}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 351
    :cond_1
    new-instance v4, Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-direct {v4, p0, v7}, Lcom/vkontakte/android/fragments/FriendListFragment$5;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/util/ArrayList;)V

    .line 418
    .local v4, "r":Ljava/lang/Runnable;
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sections size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 420
    new-instance v8, Ljava/lang/Thread;

    invoke-direct {v8, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 463
    .end local v4    # "r":Ljava/lang/Runnable;
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    :goto_1
    return-void

    .end local v5    # "relation":Z
    :cond_3
    move v5, v9

    .line 344
    goto :goto_0

    .line 422
    .restart local v4    # "r":Ljava/lang/Runnable;
    .restart local v5    # "relation":Z
    .restart local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 423
    .end local v4    # "r":Ljava/lang/Runnable;
    .end local v7    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    if-eqz v5, :cond_c

    .line 424
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v10, :cond_6

    .line 425
    iget-object v10, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v10, v9}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 426
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "show_same_gender"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 427
    .local v0, "allowSame":Z
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "my_gender"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v8, :cond_8

    move v2, v8

    .line 428
    .local v2, "myGender":Z
    :goto_2
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "same="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", my="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    new-instance v6, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-direct {v6, p0, v12}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V

    .line 430
    .local v6, "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v6, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 431
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 432
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    iget-boolean v8, v3, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eq v8, v2, :cond_7

    .line 433
    iget-object v8, v6, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "myGender":Z
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v6    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_8
    move v2, v9

    .line 427
    goto :goto_2

    .line 435
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "myGender":Z
    .restart local v6    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_9
    if-eqz v0, :cond_b

    .line 436
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 437
    .restart local v3    # "p":Lcom/vkontakte/android/UserProfile;
    iget-boolean v8, v3, Lcom/vkontakte/android/UserProfile;->f:Z

    if-ne v8, v2, :cond_a

    .line 438
    iget-object v8, v6, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 441
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_b
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 442
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 444
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    if-eqz v8, :cond_2

    .line 445
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 446
    iput-object v12, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    goto/16 :goto_1

    .line 450
    .end local v0    # "allowSame":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "myGender":Z
    .end local v6    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_c
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v8, :cond_d

    .line 451
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 452
    :cond_d
    new-instance v6, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-direct {v6, p0, v12}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V

    .line 453
    .restart local v6    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    iput-object v8, v6, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 454
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 455
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 457
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    if-eqz v8, :cond_2

    .line 458
    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 459
    iput-object v12, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    goto/16 :goto_1
.end method

.method public getSelectedUsers()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 224
    .local v4, "uid":I
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 225
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget v5, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, v4, :cond_1

    .line 226
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "uid":I
    :cond_2
    return-object v3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ON ATTACH "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
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

    .line 100
    new-instance v0, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 101
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setBackgroundColor(I)V

    .line 103
    new-instance v0, Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v2, v4, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->beforeSetListAdapter(Landroid/widget/ListView;)V

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    invoke-direct {v2, p0, v4}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const v2, 0x7f020077

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelector(I)V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setPadding(IIII)V

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setScrollBarStyle(I)V

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x1a1a1b

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDividerHeight(I)V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setHeaderDividersEnabled(Z)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0d00e5

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 149
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d01a9

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$2;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    .line 162
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->useSections:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "relation"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->creatingSections:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 165
    :cond_1
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v3, Lcom/vkontakte/android/fragments/FriendListFragment$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$3;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 188
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->allChildrenArePullable()Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    invoke-virtual {v0, p0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0, v1}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0

    .line 149
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0d019a

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f0d0199

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 162
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 198
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 199
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    .line 200
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 202
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 203
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 204
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 206
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    invoke-interface {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;->onRefresh()V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    goto :goto_0
.end method

.method public runAfterInit(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    .line 566
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 568
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;ZZ)V
    .locals 3
    .param p2, "showHints"    # Z
    .param p3, "showFind"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set data from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iput-boolean p3, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sectionsLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sectionsLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 251
    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showHints:Z

    .line 252
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V

    .line 256
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    if-eqz v0, :cond_1

    .line 258
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0d01a9

    :goto_2
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 259
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 261
    :cond_1
    return-void

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V

    goto :goto_1

    .line 258
    :cond_3
    if-eqz p3, :cond_4

    const v0, 0x7f0d019a

    goto :goto_2

    :cond_4
    const v0, 0x7f0d0199

    goto :goto_2

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMultiSelection()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    .line 210
    return-void
.end method

.method public setRefreshListener(Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    .line 562
    return-void
.end method

.method public setSelectedUsers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 238
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    .line 239
    :cond_1
    return-void
.end method

.method public setSelectionListener(Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    .line 558
    return-void
.end method

.method public setShowOnline(Z)V
    .locals 2
    .param p1, "s"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    .line 317
    if-eqz p1, :cond_1

    .line 318
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V

    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V

    goto :goto_0
.end method

.method public setUserOnline(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "online"    # I

    .prologue
    .line 332
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 333
    .local v1, "u":Lcom/vkontakte/android/UserProfile;
    iget v2, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p1, :cond_0

    .line 334
    iput p2, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 335
    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V

    .line 340
    .end local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_1
    :goto_0
    return-void

    .line 336
    .restart local v1    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    goto :goto_0
.end method

.method public setUserSections(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->useSections:Z

    .line 328
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V

    .line 329
    return-void
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 9
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 264
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 266
    iput-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    .line 268
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    if-nez v4, :cond_1

    .line 269
    move-object v0, p1

    .line 270
    .local v0, "f":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/vkontakte/android/fragments/FriendListFragment$4;

    invoke-direct {v5, p0, v0}, Lcom/vkontakte/android/fragments/FriendListFragment$4;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/lang/String;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    .end local v0    # "f":Ljava/lang/String;
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 277
    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    .line 278
    iput-boolean v6, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    .line 279
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 280
    :cond_2
    iput-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    .line 281
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 282
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V

    .line 283
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 284
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    .line 285
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0d019a

    :goto_1
    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 286
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 287
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v4, v8}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 285
    :cond_3
    const v4, 0x7f0d0199

    goto :goto_1

    .line 290
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v4, v6}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setEnabled(Z)V

    .line 291
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v5, 0x7f0d01b8

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 292
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 293
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    if-nez v4, :cond_5

    .line 294
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 295
    :cond_5
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    .line 296
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 297
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 298
    new-instance v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-direct {v3, p0, v7}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V

    .line 299
    .local v3, "search":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d027e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    .line 301
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v4, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 303
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 304
    iget-object v4, v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 306
    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-direct {v1, p0, v7}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$1;)V

    .line 307
    .local v1, "gsearch":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0279

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    .line 308
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 309
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 312
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$8;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateOnline()V
    .locals 2

    .prologue
    .line 466
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-nez v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$6;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
