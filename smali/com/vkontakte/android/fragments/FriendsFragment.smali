.class public Lcom/vkontakte/android/fragments/FriendsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;,
        Lcom/vkontakte/android/fragments/FriendsFragment$NavAdapter;
    }
.end annotation


# instance fields
.field private allCount:I

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

.field private friendsView:Lcom/vkontakte/android/FriendsView;

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

.field private mutualView:Lcom/vkontakte/android/FriendsView;

.field private onlineCount:I

.field private onlineView:Lcom/vkontakte/android/FriendsView;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private prev:I

.field private progress:Landroid/widget/ProgressBar;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

.field private reqsLoaded:Z

.field private requestsView:Lcom/vkontakte/android/FriendRequestsView;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private searching:Z

.field private selTab:I

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 54
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    iput v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    .line 55
    iput v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->selTab:I

    .line 57
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->reqsLoaded:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutual:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->firstUpdate:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->lists:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Lcom/vkontakte/android/fragments/FriendsFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$1;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Lcom/vkontakte/android/fragments/FriendsFragment$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$2;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

    .line 108
    iput-boolean v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searching:Z

    .line 112
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->update()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->updateTabs()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/FriendsView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/FriendsFragment;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searching:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/FriendsFragment;I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->selTab:I

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/FriendsFragment;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->reqsLoaded:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/FriendsFragment;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->reqsLoaded:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/FriendsFragment;Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searching:Z

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/FriendsFragment;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->allCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/FriendsFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/fragments/FriendsFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->firstUpdate:Z

    return v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/fragments/FriendsFragment;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->firstUpdate:Z

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/fragments/FriendsFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/ui/ErrorView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/FriendsFragment;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/FriendsFragment;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/FriendsView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/FriendsFragment;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutual:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendsView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/FriendsView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/FriendRequestsView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/FriendRequestsView;

    return-object v0
.end method

.method private update()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 307
    iget v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v4, :cond_3

    .line 308
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 309
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 311
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/FriendsView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v1, v6, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v1}, Lcom/vkontakte/android/FriendsView;->setData(Ljava/util/ArrayList;Z)V

    .line 312
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/FriendsView;->setShowOnline(Z)V

    .line 313
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/FriendsView;

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/FriendsView;->setData(Ljava/util/ArrayList;Z)V

    .line 314
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->allCount:I

    .line 315
    iput v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    .line 316
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 319
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->updateTabs()V

    .line 363
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 311
    goto :goto_0

    .line 316
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 317
    .local v0, "u":Lcom/vkontakte/android/UserProfile;
    iget v2, v0, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    goto :goto_1

    .line 321
    .end local v0    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friends:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 322
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 326
    :cond_4
    new-instance v1, Lcom/vkontakte/android/api/FriendsGet;

    iget v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    invoke-direct {v1, v3, v2}, Lcom/vkontakte/android/api/FriendsGet;-><init>(IZ)V

    .line 327
    new-instance v2, Lcom/vkontakte/android/fragments/FriendsFragment$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$8;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/api/FriendsGet;->setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 361
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 326
    iput-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_2
.end method

.method private updateTabs()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f0d003e

    iget v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->allCount:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f0d003f

    iget v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineCount:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-nez v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f060186

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    :goto_0
    sget v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f0600d1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/fragments/FriendsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 281
    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutual:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->titles:Ljava/util/ArrayList;

    const v1, 0x7f0d004c

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutual:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 14
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x42200000    # 40.0f

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v11, 0x1

    .line 115
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "uid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    .line 117
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 118
    .local v0, "sa":Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 119
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 121
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    new-instance v5, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    invoke-direct {v5, p1}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    .line 125
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x7f0a0008

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setBackgroundResource(I)V

    .line 126
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    const v6, 0x7f0a0007

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setIndicatorColorResource(I)V

    .line 128
    new-instance v5, Lcom/vkontakte/android/FriendsView;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/FriendsView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/FriendsView;

    .line 130
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    .line 131
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 132
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v5, Lcom/vkontakte/android/fragments/FriendsFragment$3;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/fragments/FriendsFragment$3;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    .line 140
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;

    invoke-direct {v6, p0, v13}, Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;Lcom/vkontakte/android/fragments/FriendsFragment$FriendsPagerAdapter;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 142
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 144
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->updateTabs()V

    .line 145
    new-instance v5, Lcom/vkontakte/android/FriendsView;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/FriendsView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/FriendsView;

    .line 146
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "select"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 147
    iget v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v6, :cond_4

    .line 148
    new-instance v5, Lcom/vkontakte/android/FriendsView;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/FriendsView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/FriendsView;

    .line 149
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v5, v10}, Lcom/vkontakte/android/FriendsView;->setUserSections(Z)V

    .line 156
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->tabbar:Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;

    new-instance v6, Lcom/vkontakte/android/fragments/FriendsFragment$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$4;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v5, v6}, Lcom/astuetz/viewpager/extensions/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 178
    new-instance v5, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 179
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 181
    :try_start_0
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v6, "mSearchButton"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 182
    .local v2, "searchField":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 183
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 184
    .local v1, "searchBtn":Landroid/widget/ImageView;
    const v5, 0x7f0200ed

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    const-class v5, Lcom/actionbarsherlock/widget/SearchView;

    const-string v6, "mSearchPlate"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 186
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 187
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 188
    .local v3, "searchPlate":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, -0x7f000001

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setHintTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "searchBtn":Landroid/widget/ImageView;
    .end local v2    # "searchField":Ljava/lang/reflect/Field;
    .end local v3    # "searchPlate":Landroid/widget/LinearLayout;
    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v6, Lcom/vkontakte/android/fragments/FriendsFragment$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$5;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v5, v6}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 221
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-direct {v5, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    .line 223
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    .line 224
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 225
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 226
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->progress:Landroid/widget/ProgressBar;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-static {v12}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/16 v10, 0x11

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    const v5, 0x7f03002e

    invoke-static {p1, v5, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/ui/ErrorView;

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    .line 229
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 230
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->errorView:Lcom/vkontakte/android/ui/ErrorView;

    new-instance v6, Lcom/vkontakte/android/fragments/FriendsFragment$6;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$6;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/fragments/FriendsFragment;->setHasOptionsMenu(Z)V

    .line 240
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->update()V

    .line 242
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "select"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    new-instance v4, Lcom/vkontakte/android/fragments/FriendsFragment$7;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/FriendsFragment$7;-><init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 252
    .local v4, "sl":Lcom/vkontakte/android/FriendsView$SelectionListener;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/FriendsView;->setSelectionListener(Lcom/vkontakte/android/FriendsView$SelectionListener;)V

    .line 253
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v5, v4}, Lcom/vkontakte/android/FriendsView;->setSelectionListener(Lcom/vkontakte/android/FriendsView$SelectionListener;)V

    .line 255
    .end local v4    # "sl":Lcom/vkontakte/android/FriendsView$SelectionListener;
    :cond_1
    iget v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v6, Lcom/vkontakte/android/Global;->uid:I

    if-eq v5, v6, :cond_2

    .line 256
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/FriendsView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/FriendsView;->setRefreshListener(Lcom/vkontakte/android/FriendsView$RefreshListener;)V

    .line 257
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/FriendsView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/FriendsView;->setRefreshListener(Lcom/vkontakte/android/FriendsView$RefreshListener;)V

    .line 258
    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/FriendsView;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->refreshListener:Lcom/vkontakte/android/FriendsView$RefreshListener;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/FriendsView;->setRefreshListener(Lcom/vkontakte/android/FriendsView$RefreshListener;)V

    .line 260
    :cond_2
    return-void

    .line 123
    :cond_3
    const v5, 0x7f06003d

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->setTitle(I)V

    goto/16 :goto_0

    .line 151
    :cond_4
    new-instance v5, Lcom/vkontakte/android/FriendRequestsView;

    invoke-direct {v5, p1}, Lcom/vkontakte/android/FriendRequestsView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/FriendRequestsView;

    goto/16 :goto_1

    .line 189
    :catch_0
    move-exception v5

    goto/16 :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v0, "filter":Landroid/content/IntentFilter;
    iget v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->uid:I

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 291
    :cond_0
    const-string v1, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v1, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    :cond_1
    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 263
    const v1, 0x7f060046

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->add(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 264
    .local v0, "search":Lcom/actionbarsherlock/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 265
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    .line 266
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 267
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->contentWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 301
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 304
    :cond_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 465
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 466
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->onPause()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendsView;->onPause()V

    .line 468
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendsView;->onPause()V

    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/FriendsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendsView;->onPause()V

    .line 470
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 473
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/FriendRequestsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->requestsView:Lcom/vkontakte/android/FriendRequestsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendRequestsView;->onResume()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->friendsView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendsView;->onResume()V

    .line 476
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->onlineView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendsView;->onResume()V

    .line 477
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/FriendsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendsFragment;->mutualView:Lcom/vkontakte/android/FriendsView;

    invoke-virtual {v0}, Lcom/vkontakte/android/FriendsView;->onResume()V

    .line 478
    :cond_1
    return-void
.end method
