.class public Lcom/vkontakte/android/fragments/FriendListFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "FriendListFragment.java"

# interfaces
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;,
        Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;,
        Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;,
        Lcom/vkontakte/android/fragments/FriendListFragment$Section;,
        Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;
    }
.end annotation


# static fields
.field private static final SORT_FIRST:I = 0x1

.field private static final SORT_HINTS:I = 0x0

.field private static final SORT_LAST:I = 0x2


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

.field private contentView:Landroid/widget/FrameLayout;

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

    .line 77
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    .line 61
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showHints:Z

    .line 62
    new-instance v1, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v1}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    .line 63
    iput-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    .line 66
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->useSections:Z

    .line 68
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    .line 72
    iput-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    .line 73
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v4, v4}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sectionsLock:Ljava/util/concurrent/Semaphore;

    .line 75
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->creatingSections:Z

    .line 78
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "friendsOrderNew"

    const-string v3, "firstname"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "pref":Ljava/lang/String;
    const-string v1, "hints"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iput v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v1, "firstname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iput v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "lastname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x2

    iput v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/FriendListFragment;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showHints:Z

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/FriendListFragment;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/FriendListFragment;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/LoadMoreFooterView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/FriendListFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/ui/PinnedHeaderListView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/FriendListFragment;)Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/FriendListFragment;)V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/FriendListFragment;)Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sectionsLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/FriendListFragment;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->creatingSections:Z

    return-void
.end method

.method private loadMore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 481
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 485
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 486
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 490
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    if-nez v0, :cond_0

    .line 491
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

    .line 492
    new-instance v0, Lcom/vkontakte/android/fragments/FriendListFragment$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$7;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/UsersSearch;->setCallback(Lcom/vkontakte/android/api/UsersSearch$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 491
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 488
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    goto :goto_1

    .line 491
    :cond_4
    const/16 v0, 0x32

    goto :goto_2
.end method


# virtual methods
.method protected beforeSetListAdapter(Lcom/vkontakte/android/ui/RefreshableListView;)V
    .locals 0
    .param p1, "lv"    # Lcom/vkontakte/android/ui/RefreshableListView;

    .prologue
    .line 478
    return-void
.end method

.method public createSections()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "relation"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v4, v7

    .line 337
    .local v4, "relation":Z
    :goto_0
    iget-boolean v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->useSections:Z

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sortPref:I

    if-eqz v9, :cond_5

    if-nez v4, :cond_5

    .line 338
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v9, v7}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 339
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v6, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v7, :cond_1

    .line 342
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDraggingEnabled(Z)V

    .line 343
    :cond_1
    new-instance v3, Lcom/vkontakte/android/fragments/FriendListFragment$5;

    invoke-direct {v3, p0, v6}, Lcom/vkontakte/android/fragments/FriendListFragment$5;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/util/ArrayList;)V

    .line 410
    .local v3, "r":Ljava/lang/Runnable;
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Sections size="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 412
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 455
    .end local v3    # "r":Ljava/lang/Runnable;
    .end local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    :goto_1
    return-void

    .end local v4    # "relation":Z
    :cond_3
    move v4, v8

    .line 336
    goto :goto_0

    .line 414
    .restart local v3    # "r":Ljava/lang/Runnable;
    .restart local v4    # "relation":Z
    .restart local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 415
    .end local v3    # "r":Ljava/lang/Runnable;
    .end local v6    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    if-eqz v4, :cond_d

    .line 416
    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v9, :cond_6

    .line 417
    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v9, v8}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 418
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "show_same_gender"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 419
    .local v0, "allowSame":Z
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "my_gender"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_a

    move v1, v7

    .line 420
    .local v1, "myGender":Z
    :goto_2
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "same="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", my="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-direct {v5, p0, v11}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$Section;)V

    .line 422
    .local v5, "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 423
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_b

    .line 427
    if-eqz v0, :cond_9

    .line 428
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c

    .line 433
    :cond_9
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 434
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 436
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 437
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 438
    iput-object v11, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    goto/16 :goto_1

    .end local v1    # "myGender":Z
    .end local v5    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_a
    move v1, v8

    .line 419
    goto :goto_2

    .line 423
    .restart local v1    # "myGender":Z
    .restart local v5    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 424
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget-boolean v8, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eq v8, v1, :cond_7

    .line 425
    iget-object v8, v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 428
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 429
    .restart local v2    # "p":Lcom/vkontakte/android/UserProfile;
    iget-boolean v8, v2, Lcom/vkontakte/android/UserProfile;->f:Z

    if-ne v8, v1, :cond_8

    .line 430
    iget-object v8, v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 442
    .end local v0    # "allowSame":Z
    .end local v1    # "myGender":Z
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v5    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    :cond_d
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v7, :cond_e

    .line 443
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 444
    :cond_e
    new-instance v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-direct {v5, p0, v11}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$Section;)V

    .line 445
    .restart local v5    # "s":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    iput-object v7, v5, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 446
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 447
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 449
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 450
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 451
    iput-object v11, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    goto/16 :goto_1
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 694
    const/4 v0, 0x0

    return-object v0
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
    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 223
    return-object v1

    .line 215
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 216
    .local v2, "uid":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 217
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v5, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v5, v2, :cond_2

    .line 218
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ON ATTACH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void
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

    .line 97
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 98
    new-instance v0, Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ui/LoadMoreFooterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 100
    new-instance v0, Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v2, v4, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/FriendListFragment;->beforeSetListAdapter(Lcom/vkontakte/android/ui/RefreshableListView;)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    invoke-direct {v2, p0, v4}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;)V

    iput-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const v2, 0x7f0200e6

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelector(I)V

    .line 106
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

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setScrollBarStyle(I)V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x1a1a1b

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDividerHeight(I)V

    .line 110
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setHeaderDividersEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$1;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v2, 0x7f0802b7

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonText(I)V

    .line 147
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-eqz v0, :cond_2

    const v0, 0x7f080085

    :goto_0
    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    new-instance v2, Lcom/vkontakte/android/fragments/FriendListFragment$2;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$2;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/EmptyView;->setOnBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    .line 160
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

    .line 161
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->creatingSections:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDraggingEnabled(Z)V

    .line 163
    :cond_1
    new-instance v0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;

    invoke-direct {v1, p0, v4}, Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$FriendsPhotosAdapter;)V

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    new-instance v3, Lcom/vkontakte/android/fragments/FriendListFragment$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$3;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v0

    .line 147
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0802bd

    goto :goto_0

    :cond_3
    const v0, 0x7f080084

    goto :goto_0

    :cond_4
    move v0, v1

    .line 160
    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    .line 190
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->contentView:Landroid/widget/FrameLayout;

    .line 191
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 194
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 195
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    .line 196
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    .line 197
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 198
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    invoke-interface {v0}, Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;->onRefresh()V

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/data/Friends;->reload(Z)V

    goto :goto_0
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 701
    return-void
.end method

.method public runAfterInit(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 557
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->runAfterInit:Ljava/lang/Runnable;

    .line 558
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

    .line 559
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 560
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
    .line 234
    .local p1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set data from thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 235
    iput-boolean p3, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sectionsLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->refreshDone()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sectionsLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 243
    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showHints:Z

    .line 244
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V

    .line 248
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 249
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-eqz v0, :cond_3

    const v0, 0x7f080085

    :goto_2
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 251
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 253
    :cond_1
    return-void

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V

    goto :goto_1

    .line 250
    :cond_3
    if-eqz p3, :cond_4

    const v0, 0x7f0802bd

    goto :goto_2

    :cond_4
    const v0, 0x7f080084

    goto :goto_2

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMultiSelection()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    .line 202
    return-void
.end method

.method public setRefreshListener(Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    .line 554
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
    .line 227
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 230
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;->onItemSelected(Lcom/vkontakte/android/UserProfile;)V

    .line 231
    :cond_0
    return-void

    .line 228
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selected:Ljava/util/ArrayList;

    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSelectionListener(Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->selListener:Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;

    .line 550
    return-void
.end method

.method public setShowOnline(Z)V
    .locals 2
    .param p1, "s"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    .line 309
    if-eqz p1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V

    .line 311
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V

    goto :goto_0
.end method

.method public setUserOnline(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "online"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 325
    .local v0, "u":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v2, p1, :cond_0

    .line 326
    iput p2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 327
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V

    goto :goto_0

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    goto :goto_0
.end method

.method public setUserSections(Z)V
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->useSections:Z

    .line 320
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V

    .line 321
    return-void
.end method

.method public updateFilter(Ljava/lang/String;)V
    .locals 9
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 256
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 258
    iput-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->currentSearchReq:Lcom/vkontakte/android/APIRequest;

    .line 260
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    if-nez v4, :cond_1

    .line 261
    move-object v0, p1

    .line 262
    .local v0, "f":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/vkontakte/android/fragments/FriendListFragment$4;

    invoke-direct {v5, p0, v0}, Lcom/vkontakte/android/fragments/FriendListFragment$4;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Ljava/lang/String;)V

    .line 264
    const-wide/16 v6, 0x64

    .line 262
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    .end local v0    # "f":Ljava/lang/String;
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadedSearch:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 269
    iput-boolean v8, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->moreAvailable:Z

    .line 270
    iput-boolean v6, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->preloadOnReady:Z

    .line 271
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 272
    :cond_2
    iput-object v7, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    .line 273
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->createSections()V

    .line 275
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 276
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    .line 277
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    if-eqz v4, :cond_3

    const v4, 0x7f0802bd

    :goto_1
    invoke-virtual {v5, v4}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 278
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->isMe:Z

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 279
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDraggingEnabled(Z)V

    goto :goto_0

    .line 277
    :cond_3
    const v4, 0x7f080084

    goto :goto_1

    .line 282
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setDraggingEnabled(Z)V

    .line 283
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    const v5, 0x7f0800bf

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 284
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->emptyView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/EmptyView;->setButtonVisible(Z)V

    .line 285
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->multiSelect:Z

    if-nez v4, :cond_5

    .line 286
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->footerView:Lcom/vkontakte/android/ui/LoadMoreFooterView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/LoadMoreFooterView;->setVisible(Z)V

    .line 287
    :cond_5
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->searchQuery:Ljava/lang/String;

    .line 288
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 289
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 290
    new-instance v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-direct {v3, p0, v7}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$Section;)V

    .line 291
    .local v3, "search":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    .line 293
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->indexer:Lcom/vkontakte/android/SearchIndexer;

    invoke-virtual {v4, p1}, Lcom/vkontakte/android/SearchIndexer;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 295
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 296
    iget-object v4, v3, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 298
    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;

    invoke-direct {v1, p0, v7}, Lcom/vkontakte/android/fragments/FriendListFragment$Section;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;Lcom/vkontakte/android/fragments/FriendListFragment$Section;)V

    .line 299
    .local v1, "gsearch":Lcom/vkontakte/android/fragments/FriendListFragment$Section;
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->title:Ljava/lang/String;

    .line 300
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/vkontakte/android/fragments/FriendListFragment$Section;->list:Ljava/util/ArrayList;

    .line 301
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->sections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateList()V

    .line 304
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/PinnedHeaderListView;->setSelection(I)V

    goto/16 :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->list:Lcom/vkontakte/android/ui/PinnedHeaderListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->adapter:Lcom/vkontakte/android/fragments/FriendListFragment$FriendsAdapter;

    if-nez v0, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$8;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateOnline()V
    .locals 2

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendListFragment;->showOnline:Z

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/FriendListFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendListFragment$6;-><init>(Lcom/vkontakte/android/fragments/FriendListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 473
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
