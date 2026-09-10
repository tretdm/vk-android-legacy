.class public Lcom/vkontakte/android/fragments/FriendsFragment;
.super Lcom/vkontakte/android/fragments/ContainerFragment;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;,
        Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;
    }
.end annotation


# instance fields
.field private contentView:Landroid/widget/LinearLayout;

.field private contentWrap:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private errorView:Lcom/vkontakte/android/ui/ErrorView;

.field private firstUpdate:Z

.field private friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private friendsView:Lcom/vkontakte/android/fragments/FriendListFragment;

.field private lists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mutual:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mutualView:Lcom/vkontakte/android/fragments/FriendListFragment;

.field private onlineCount:I

.field private onlineView:Lcom/vkontakte/android/fragments/FriendListFragment;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private prev:I

.field private progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

.field private reqsLoaded:Z

.field private requestsView:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

.field private searchView:Landroid/widget/SearchView;

.field private searching:Z

.field private selTab:I

.field private showOnline:Z

.field private showRequests:Z

.field private tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

.field private titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;-><init>()V

    .line 55
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    iput v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    .line 56
    iput v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->selTab:I

    .line 58
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->reqsLoaded:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutual:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    .line 67
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->firstUpdate:Z

    .line 69
    iput-boolean v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->showOnline:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->lists:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/vkontakte/android/fragments/FriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$1;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Lcom/vkontakte/android/fragments/FriendsFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$2;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    .line 112
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searching:Z

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->update()V

    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->updateTabs()V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->reqsLoaded:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/fragments/FriendsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->reqsLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutual:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/fragments/FriendListFragment;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->firstUpdate:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/vkontakte/android/fragments/FriendsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->firstUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/vkontakte/android/fragments/FriendsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/fragments/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->showRequests:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/fragments/FriendListFragment;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkontakte/android/fragments/FriendsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/vkontakte/android/fragments/FriendsFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/fragments/FriendListFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searching:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/fragments/FriendsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searching:Z

    return p1
.end method

.method static synthetic access$702(Lcom/vkontakte/android/fragments/FriendsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->selTab:I

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/FriendsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->showOnline:Z

    return v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/FriendsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendsFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    return v0
.end method

.method private update()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 363
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/fragments/FriendsFragment$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$9;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 452
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 416
    :cond_2
    new-instance v0, Lcom/vkontakte/android/api/FriendsGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/FriendsGet;-><init>(IZ)V

    new-instance v1, Lcom/vkontakte/android/fragments/FriendsFragment$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$10;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsGet;->setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private updateTabs()V
    .locals 4

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->showOnline:Z

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f070011

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f070012

    iget v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutual:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f070010

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutual:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->showRequests:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f0d00f4

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 334
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 335
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->postInvalidate()V

    .line 336
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searching:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setVisibility(I)V

    goto/16 :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f0d0100

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 336
    :cond_4
    const/16 v0, 0x8

    goto :goto_2
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/high16 v13, 0x42200000    # 40.0f

    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 119
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/ContainerFragment;->onAttach(Landroid/app/Activity;)V

    .line 120
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "uid"

    sget v10, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "friends?id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 123
    .local v1, "sa":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 124
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "title"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "title"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    new-instance v6, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v6, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 130
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v9, 0x7f0a000f

    invoke-virtual {v6, v9}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 131
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v9, 0x7f0a0010

    invoke-virtual {v6, v9}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 133
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "no_online"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->showOnline:Z

    .line 135
    new-instance v6, Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {v6}, Lcom/vkontakte/android/fragments/FriendListFragment;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/fragments/FriendListFragment;

    .line 137
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    .line 138
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v11}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    invoke-direct {v10, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v6, Lcom/vkontakte/android/fragments/FriendsFragment$3;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment$3;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 152
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v9, 0x3

    invoke-virtual {v6, v9}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 153
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    const v9, 0x7f080017

    invoke-virtual {v6, v9}, Landroid/support/v4/view/ViewPager;->setId(I)V

    .line 154
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v9, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v6, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 156
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v9}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 158
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->updateTabs()V

    .line 159
    new-instance v6, Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {v6}, Lcom/vkontakte/android/fragments/FriendListFragment;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/fragments/FriendListFragment;

    .line 160
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "select"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 161
    iget v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v9, :cond_6

    .line 162
    new-instance v6, Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-direct {v6}, Lcom/vkontakte/android/fragments/FriendListFragment;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/fragments/FriendListFragment;

    .line 163
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/fragments/FriendListFragment;->setUserSections(Z)V

    .line 173
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v9, Lcom/vkontakte/android/fragments/FriendsFragment$4;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$4;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v6, v9}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 195
    new-instance v6, Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Landroid/widget/SearchView;

    .line 196
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0278

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 198
    :try_start_0
    const-class v6, Landroid/widget/SearchView;

    const-string v9, "mSearchButton"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 199
    .local v3, "searchField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 200
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 201
    .local v2, "searchBtn":Landroid/widget/ImageView;
    const v6, 0x7f02008d

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    const-class v6, Landroid/widget/SearchView;

    const-string v9, "mSearchPlate"

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 203
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 204
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 205
    .local v4, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, -0x7f000001

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v2    # "searchBtn":Landroid/widget/ImageView;
    .end local v3    # "searchField":Ljava/lang/reflect/Field;
    .end local v4    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Landroid/widget/SearchView;

    new-instance v9, Lcom/vkontakte/android/fragments/FriendsFragment$5;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$5;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v6, v9}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 238
    iget v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v9, :cond_1

    .line 239
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Landroid/widget/SearchView;

    new-instance v9, Lcom/vkontakte/android/fragments/FriendsFragment$6;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$6;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v6, v9}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 250
    :cond_1
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    .line 252
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 253
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 255
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v11

    invoke-static {v13}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v12

    const/16 v13, 0x11

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const v6, 0x7f030030

    const/4 v9, 0x0

    invoke-static {p1, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 258
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 259
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 261
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v9, Lcom/vkontakte/android/fragments/FriendsFragment$7;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$7;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/fragments/FriendsFragment;->setHasOptionsMenu(Z)V

    .line 269
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->update()V

    .line 271
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "select"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 272
    new-instance v5, Lcom/vkontakte/android/fragments/FriendsFragment$8;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$8;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 281
    .local v5, "sl":Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->setSelectionListener(Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;)V

    .line 282
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/fragments/FriendListFragment;->setSelectionListener(Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;)V

    .line 284
    .end local v5    # "sl":Lcom/vkontakte/android/fragments/FriendListFragment$SelectionListener;
    :cond_2
    iget v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    if-eq v6, v9, :cond_3

    .line 285
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/fragments/FriendListFragment;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->setRefreshListener(Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;)V

    .line 286
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/fragments/FriendListFragment;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->setRefreshListener(Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;)V

    .line 287
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/fragments/FriendListFragment;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->refreshListener:Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->setRefreshListener(Lcom/vkontakte/android/fragments/FriendListFragment$RefreshListener;)V

    .line 290
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/fragments/FriendListFragment;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/fragments/FriendListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 292
    sget v6, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v6, :cond_7

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "select"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    :goto_4
    iput-boolean v7, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->showRequests:Z

    .line 293
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->updateTabs()V

    .line 294
    return-void

    .line 128
    :cond_4
    const v6, 0x7f0d0100

    invoke-virtual {v1, v6}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_0

    :cond_5
    move v6, v8

    .line 133
    goto/16 :goto_1

    .line 165
    :cond_6
    new-instance v6, Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-direct {v6}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, "args":Landroid/os/Bundle;
    const-string v6, "tab"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->setArguments(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .end local v0    # "args":Landroid/os/Bundle;
    :cond_7
    move v7, v8

    .line 292
    goto :goto_4

    .line 206
    :catch_0
    move-exception v6

    goto/16 :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 344
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/ContainerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 346
    .local v0, "filter":Landroid/content/IntentFilter;
    iget v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 347
    :cond_0
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v1, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    :cond_1
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 297
    const v2, 0x7f0d0278

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 298
    .local v1, "search":Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 299
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Landroid/widget/SearchView;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 300
    iget v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "select"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    const v2, 0x7f0801ed

    const v3, 0x7f0d0002

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 302
    .local v0, "add":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 303
    const v2, 0x7f020080

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 305
    .end local v0    # "add":Landroid/view/MenuItem;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/fragments/ContainerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 306
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onDestroy()V

    .line 357
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 360
    :cond_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0801ed

    if-ne v1, v2, :cond_0

    .line 310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 311
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "SuggestionsFriendsFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 313
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onPause()V

    .line 565
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 568
    invoke-super {p0}, Lcom/vkontakte/android/fragments/ContainerFragment;->onResume()V

    .line 573
    return-void
.end method
