.class public Lcom/vkontakte/android/FriendRequestsView;
.super Landroid/widget/FrameLayout;
.source "FriendRequestsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;,
        Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;,
        Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;
    }
.end annotation


# instance fields
.field private bigProgress:Landroid/widget/ProgressBar;

.field private dataLoading:Z

.field private footerView:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

.field private lastUpdate:I

.field list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private markAllViewedBtn:Landroid/widget/Button;

.field private moreAvailable:Z

.field private noReqsView:Landroid/widget/TextView;

.field private refreshing:Z

.field reqs:[Lcom/vkontakte/android/api/FriendRequest;

.field suggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/FriendRequest;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field private viCount:I

.field private viStart:I

.field private visibleIDs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private visibleViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-array v0, v1, [Lcom/vkontakte/android/api/FriendRequest;

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleViews:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleIDs:Ljava/util/Vector;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->timer:Ljava/util/Timer;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/FriendRequestsView;->lastUpdate:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    .line 60
    invoke-direct {p0}, Lcom/vkontakte/android/FriendRequestsView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-array v0, v1, [Lcom/vkontakte/android/api/FriendRequest;

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleViews:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleIDs:Ljava/util/Vector;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->timer:Ljava/util/Timer;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/FriendRequestsView;->lastUpdate:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    .line 65
    invoke-direct {p0}, Lcom/vkontakte/android/FriendRequestsView;->init()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-array v0, v1, [Lcom/vkontakte/android/api/FriendRequest;

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    .line 45
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleViews:Ljava/util/Vector;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleIDs:Ljava/util/Vector;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->timer:Ljava/util/Timer;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/FriendRequestsView;->lastUpdate:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    .line 70
    invoke-direct {p0}, Lcom/vkontakte/android/FriendRequestsView;->init()V

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleViews:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleIDs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/FriendRequestsView;I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/vkontakte/android/FriendRequestsView;->lastUpdate:I

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/FriendRequestsView;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/FriendRequestsView;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->markAllViewedBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/FriendRequestsView;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/FriendRequestsView;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/FriendRequestsView;Landroid/view/View;ZZ)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/FriendRequestsView;->animateStateTransition(Landroid/view/View;ZZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoader;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/FriendRequestsView;->getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/FriendRequestsView;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkontakte/android/FriendRequestsView;->viStart:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/FriendRequestsView;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/vkontakte/android/FriendRequestsView;->viCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/vkontakte/android/FriendRequestsView;->markAllAsViewed()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/FriendRequestsView;->declineRequest(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/FriendRequestsView;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    return v0
.end method

.method private animateStateTransition(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accepted"    # Z
    .param p3, "suggestion"    # Z

    .prologue
    const/4 v3, 0x4

    .line 416
    const v1, 0x7f060079

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "vID":I
    const v1, 0x7f060073

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f060073

    .line 428
    :cond_0
    const v1, 0x7f060072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f060072

    .line 429
    :cond_1
    if-nez v0, :cond_2

    const v0, 0x7f060072

    .line 430
    :cond_2
    if-lez v0, :cond_3

    .line 431
    if-eqz p3, :cond_5

    .line 432
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901ac

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 437
    :cond_3
    :goto_0
    if-nez p3, :cond_4

    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v1, :cond_4

    .line 438
    sget-object v1, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    sget v2, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 439
    sget-object v1, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v2, "friends"

    sget v3, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 442
    :cond_4
    return-void

    .line 434
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p2, :cond_6

    const v2, 0x7f0900f1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    const v2, 0x7f0900f2

    goto :goto_1
.end method

.method private declineRequest(ILandroid/view/View;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "_req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v4, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    .line 381
    :goto_1
    move-object v1, v0

    .line 382
    .local v1, "req":Lcom/vkontakte/android/api/FriendRequest;
    const/4 v2, 0x1

    iput v2, v1, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 383
    const v2, 0x7f060071

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    const v2, 0x7f060079

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    new-instance v2, Lcom/vkontakte/android/api/FriendsDelete;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    .line 386
    new-instance v3, Lcom/vkontakte/android/FriendRequestsView$9;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/vkontakte/android/FriendRequestsView$9;-><init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/api/FriendRequest;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 405
    invoke-virtual {v2, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 406
    return-void

    .line 375
    .end local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_0
    aget-object v1, v4, v2

    .line 376
    .restart local v1    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v6, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v6, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v6, p1, :cond_1

    .line 377
    move-object v0, v1

    .line 378
    goto :goto_1

    .line 375
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "n"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 445
    packed-switch p1, :pswitch_data_0

    .line 457
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 447
    :pswitch_0
    const v0, 0x7f060074

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 449
    :pswitch_1
    const v0, 0x7f060075

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 451
    :pswitch_2
    const v0, 0x7f060076

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 453
    :pswitch_3
    const v0, 0x7f060077

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 455
    :pswitch_4
    const v0, 0x7f060078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, -0x2

    const/high16 v9, 0x40e00000    # 7.0f

    const/4 v12, 0x0

    const/16 v11, 0x11

    const/4 v10, -0x1

    .line 74
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/FriendRequestsView;->setBackgroundColor(I)V

    .line 76
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    .line 77
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 78
    .local v4, "pb":Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020206

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    const v6, 0x7f020041

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 83
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 84
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f030019

    invoke-static {v5, v6, v12}, Lcom/vkontakte/android/FriendRequestsView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, "btn":Landroid/widget/Button;
    const v5, 0x7f09011f

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 88
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 90
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->markAllViewedBtn:Landroid/widget/Button;

    .line 92
    new-instance v5, Lcom/vkontakte/android/FriendRequestsView$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/FriendRequestsView$1;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v5, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 100
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 101
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;

    invoke-direct {v6, p0, v12}, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v6, -0x80809

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 104
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v6, -0x80809

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 105
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 106
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 107
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 108
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/FriendRequestsView;->addView(Landroid/view/View;)V

    .line 110
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/FriendRequestsView$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/FriendRequestsView$2;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/FriendRequestsView$3;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/FriendRequestsView$3;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 138
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    .line 140
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {v5}, Lcom/vkontakte/android/ui/ListImageLoader;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    .line 141
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    new-instance v6, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;

    invoke-direct {v6, p0, v12}, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/ListImageLoader;->setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V

    .line 143
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    .line 144
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const v6, -0x888889

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const v6, 0x7f0900f9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 146
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 148
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v10, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v3, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/FriendRequestsView;->addView(Landroid/view/View;)V

    .line 154
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    .line 155
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020206

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v2, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 158
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/FriendRequestsView;->addView(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method private markAllAsViewed()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;-><init>()V

    .line 257
    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendRequestsView$7;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;->setCallback(Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 279
    return-void
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 752
    iget v0, p0, Lcom/vkontakte/android/FriendRequestsView;->lastUpdate:I

    if-lez v0, :cond_0

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/FriendRequestsView;->lastUpdate:I

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData()V
    .locals 3

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    .line 165
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-ge v0, v1, :cond_1

    .line 166
    new-instance v1, Lcom/vkontakte/android/api/FriendsGetRequests;

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Lcom/vkontakte/android/api/FriendsGetRequests;-><init>(II)V

    .line 167
    new-instance v0, Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendRequestsView$4;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/FriendsGetRequests;->setCallback(Lcom/vkontakte/android/api/FriendsGetRequests$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 244
    :goto_1
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v0, v0

    goto :goto_0

    .line 208
    :cond_1
    new-instance v0, Lcom/vkontakte/android/FriendsGetSuggestions;

    invoke-direct {v0}, Lcom/vkontakte/android/FriendsGetSuggestions;-><init>()V

    .line 209
    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendRequestsView$5;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/FriendsGetSuggestions;->setCallback(Lcom/vkontakte/android/FriendsGetSuggestions$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 242
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 285
    .local v5, "uid":I
    const/4 v6, 0x0

    .line 287
    .local v6, "_isSuggestion":Z
    const/4 v7, 0x0

    .line 288
    .local v7, "_req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v3, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:[Lcom/vkontakte/android/api/FriendRequest;

    array-length v8, v3

    move v0, v1

    :goto_0
    if-lt v0, v8, :cond_2

    .line 294
    :goto_1
    if-nez v7, :cond_1

    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 304
    :cond_1
    :goto_2
    move-object v2, v7

    .line 305
    .local v2, "req":Lcom/vkontakte/android/api/FriendRequest;
    move v4, v6

    .line 306
    .local v4, "isSuggestion":Z
    const/4 v0, 0x1

    iput v0, v2, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v3, 0x7f060071

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v3, 0x7f060079

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    new-instance v8, Lcom/vkontakte/android/api/FriendsAdd;

    const/4 v0, 0x0

    invoke-direct {v8, v5, v0}, Lcom/vkontakte/android/api/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 316
    new-instance v0, Lcom/vkontakte/android/FriendRequestsView$8;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/FriendRequestsView$8;-><init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/api/FriendRequest;Landroid/view/View;ZI)V

    invoke-virtual {v8, v0}, Lcom/vkontakte/android/api/FriendsAdd;->setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 343
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 371
    return-void

    .line 288
    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    .end local v4    # "isSuggestion":Z
    :cond_2
    aget-object v2, v3, v0

    .line 289
    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v9, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v9, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v9, v5, :cond_3

    .line 290
    move-object v7, v2

    .line 291
    goto :goto_1

    .line 288
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/api/FriendRequest;

    .line 296
    .restart local v2    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v3, v2, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v3, v5, :cond_0

    .line 297
    move-object v7, v2

    .line 298
    const/4 v6, 0x1

    .line 299
    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 758
    new-instance v0, Lcom/vkontakte/android/FriendRequestsView$10;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendRequestsView$10;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    .line 761
    const-wide/16 v1, 0x12c

    .line 758
    invoke-virtual {p0, v0, v1, v2}, Lcom/vkontakte/android/FriendRequestsView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 762
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    .line 747
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 748
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->activate()V

    .line 766
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    iget v1, p0, Lcom/vkontakte/android/FriendRequestsView;->viStart:I

    iget v2, p0, Lcom/vkontakte/android/FriendRequestsView;->viCount:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ListImageLoader;->load(II)V

    .line 767
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 720
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->timer:Ljava/util/Timer;

    .line 721
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;-><init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$ScrollStopTimerTask;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 722
    iput p3, p0, Lcom/vkontakte/android/FriendRequestsView;->viCount:I

    .line 723
    iput p2, p0, Lcom/vkontakte/android/FriendRequestsView;->viStart:I

    .line 724
    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    if-eqz v0, :cond_1

    .line 725
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 727
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 731
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 733
    :cond_0
    return-void
.end method

.method public onScrolled(F)V
    .locals 8
    .param p1, "offset"    # F

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 771
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 772
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 773
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 774
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 775
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 776
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 777
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 794
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 783
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 785
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 786
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 787
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 788
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 789
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 790
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 791
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 647
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 648
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 652
    return-void

    .line 649
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 650
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Lcom/vkontakte/android/ui/FixedRelativeLayout;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/vkontakte/android/ui/FixedRelativeLayout;

    .end local v1    # "v":Landroid/view/View;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/FixedRelativeLayout;->allowResize()V

    .line 648
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/vkontakte/android/FriendRequestsView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendRequestsView$6;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendRequestsView;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method
