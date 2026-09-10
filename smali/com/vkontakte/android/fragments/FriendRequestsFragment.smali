.class public Lcom/vkontakte/android/fragments/FriendRequestsFragment;
.super Landroid/app/Fragment;
.source "FriendRequestsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;,
        Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

.field private bigProgress:Landroid/widget/ProgressBar;

.field private contentView:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private footerView:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdate:I

.field private list:Landroid/widget/ListView;

.field private loaded:Z

.field private markAllViewedBtn:Landroid/view/View;

.field private moreAvailable:Z

.field private noReqsView:Lcom/vkontakte/android/ui/EmptyView;

.field private onlyRecommends:Z

.field recommends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/FriendRequest;",
            ">;"
        }
    .end annotation
.end field

.field private refreshing:Z

.field private reqs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/FriendRequest;",
            ">;"
        }
    .end annotation
.end field

.field private showMoreRecommends:Z

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

.field private wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->reqs:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->visibleViews:Ljava/util/Vector;

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->visibleIDs:Ljava/util/Vector;

    .line 68
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->dataLoading:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->moreAvailable:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loaded:Z

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->lastUpdate:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    .line 73
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->showMoreRecommends:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onlyRecommends:Z

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllAsViewed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllViewedBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->adapter:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/EmptyView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->visibleIDs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->moreAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->reqs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    return v0
.end method

.method static synthetic access$502(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->showMoreRecommends:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->showMoreRecommends:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onlyRecommends:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->dataLoading:Z

    return p1
.end method

.method static synthetic access$902(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/FriendRequestsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loaded:Z

    return p1
.end method

.method private animateStateTransition(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accepted"    # Z
    .param p3, "suggestion"    # Z

    .prologue
    const v2, 0x7f0d00f0

    const v3, 0x7f0800bb

    .line 427
    const v1, 0x7f080032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 428
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    const v2, 0x7f0d00f1

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 429
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x666667

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 430
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 431
    return-void

    .line 428
    :cond_1
    if-eqz p2, :cond_0

    const v2, 0x7f0d00ef

    goto :goto_0
.end method

.method private getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "n"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 434
    packed-switch p1, :pswitch_data_0

    .line 446
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 436
    :pswitch_0
    const v0, 0x7f0800b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 438
    :pswitch_1
    const v0, 0x7f0800b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 440
    :pswitch_2
    const v0, 0x7f0800b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 442
    :pswitch_3
    const v0, 0x7f0800b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 444
    :pswitch_4
    const v0, 0x7f0800b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 434
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

.method private markAllAsViewed()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;-><init>()V

    new-instance v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;->setCallback(Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 323
    return-void
.end method


# virtual methods
.method public loadData()V
    .locals 4

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->dataLoading:Z

    .line 219
    new-instance v1, Lcom/vkontakte/android/api/FriendsGetRequests;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onlyRecommends:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/vkontakte/android/api/FriendsGetRequests;-><init>(IIZ)V

    new-instance v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/FriendsGetRequests;->setCallback(Lcom/vkontakte/android/api/FriendsGetRequests$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 291
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 81
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onAttach"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "recommends"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onlyRecommends:Z

    .line 85
    const v0, 0x7f0d0104

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 86
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loadData()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const v0, 0x7f0d02b3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f080016

    .line 328
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 329
    .local v6, "uid":I
    const/4 v0, 0x0

    .line 332
    .local v0, "_isSuggestion":Z
    const/4 v1, 0x0

    .line 333
    .local v1, "_req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/FriendRequest;

    .line 334
    .local v5, "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, v5, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v6, :cond_0

    .line 335
    move-object v1, v5

    .line 339
    .end local v5    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_1
    if-nez v1, :cond_3

    .line 340
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/FriendRequest;

    .line 341
    .restart local v5    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, v5, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v6, :cond_2

    .line 342
    move-object v1, v5

    .line 343
    const/4 v0, 0x1

    .line 349
    .end local v5    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_3
    if-nez v1, :cond_5

    .line 350
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/FriendRequest;

    .line 351
    .restart local v5    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, v5, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v6, :cond_4

    .line 352
    move-object v1, v5

    .line 353
    const/4 v0, 0x1

    .line 359
    .end local v5    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_5
    move-object v5, v1

    .line 360
    .restart local v5    # "req":Lcom/vkontakte/android/api/FriendRequest;
    move v4, v0

    .line 362
    .local v4, "isSuggestion":Z
    iget v7, v5, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-eqz v7, :cond_7

    .line 424
    :cond_6
    :goto_0
    return-void

    .line 364
    :cond_7
    iput v10, v5, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 365
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const v8, 0x7f080032

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    .line 366
    .local v2, "flipper":Landroid/widget/ViewFlipper;
    const-string v7, "add"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 367
    const/4 v7, 0x2

    iput v7, v5, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 368
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {p0, v7, v10, v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 371
    new-instance v7, Lcom/vkontakte/android/api/FriendsAdd;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/vkontakte/android/api/FriendsAdd;-><init>(ILjava/lang/String;)V

    new-instance v8, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;

    invoke-direct {v8, p0, v5, p1, v6}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/api/FriendRequest;Landroid/view/View;I)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/FriendsAdd;->setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 401
    :cond_8
    const-string v7, "decline"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 402
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v4}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 403
    const/4 v7, 0x3

    iput v7, v5, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 404
    new-instance v7, Lcom/vkontakte/android/api/FriendsDelete;

    invoke-direct {v7, v6}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    new-instance v8, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;

    invoke-direct {v8, p0, p1, v6}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Landroid/view/View;I)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0a0004

    const/4 v10, -0x2

    const/4 v8, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 103
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 104
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 106
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 107
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 108
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v1, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 109
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 110
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 111
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v7, 0x7f030034

    invoke-static {v4, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "btn":Landroid/view/View;
    const v4, 0x7f08007b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f0d00f2

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 117
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 119
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllViewedBtn:Landroid/view/View;

    .line 121
    new-instance v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v4, Lcom/vkontakte/android/ui/FixedScrollListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    .line 129
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 130
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->adapter:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 132
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v4, v7, :cond_0

    .line 133
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 134
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    const v7, 0x7f02007d

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setSelector(I)V

    .line 138
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 140
    new-instance v4, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 142
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v7}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 144
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/FriendRequestsFragment$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$2;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->moreAvailable:Z

    .line 160
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v7, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;)V

    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    new-instance v9, Lcom/vkontakte/android/fragments/FriendRequestsFragment$3;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$3;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-direct {v4, v7, v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 181
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    .line 182
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    const v7, 0x7f0d00c9

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 183
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 184
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v7}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 186
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loaded:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setVisibility(I)V

    .line 188
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 189
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v2, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 191
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    iget-boolean v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loaded:Z

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v4

    invoke-virtual {v4}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->allChildrenArePullable()Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v4

    invoke-virtual {v4, p0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v4, v5}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 200
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v4

    .end local v2    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move v4, v6

    .line 186
    goto :goto_0

    .restart local v2    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v6, v5

    .line 192
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 99
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    .line 206
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->adapter:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    .line 207
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 208
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    .line 209
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 210
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 211
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllViewedBtn:Landroid/view/View;

    .line 212
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 213
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 215
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 458
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    .line 452
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loadData()V

    .line 453
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 464
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
