.class public Lcom/vkontakte/android/fragments/FriendRequestsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "FriendRequestsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


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

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

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

.field private wrap:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->reqs:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->visibleViews:Ljava/util/Vector;

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->visibleIDs:Ljava/util/Vector;

    .line 66
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->dataLoading:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->moreAvailable:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loaded:Z

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->lastUpdate:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    .line 71
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->showMoreRecommends:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onlyRecommends:Z

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->reqs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->showMoreRecommends:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loaded:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllViewedBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/FriendRequestsFragment;ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/EmptyView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->visibleIDs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->showMoreRecommends:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onlyRecommends:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->adapter:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllAsViewed()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    return v0
.end method

.method private animateStateTransition(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accepted"    # Z
    .param p3, "suggestion"    # Z

    .prologue
    const v3, 0x7f0900d5

    const v2, 0x7f0800ea

    .line 420
    const v1, 0x7f0900d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 421
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    const v2, 0x7f08015d

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 422
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x666667

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 424
    return-void

    .line 421
    :cond_1
    if-eqz p2, :cond_0

    const v2, 0x7f0800e9

    goto :goto_0
.end method

.method private getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "n"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 439
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 429
    :pswitch_0
    const v0, 0x7f0900cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 431
    :pswitch_1
    const v0, 0x7f0900ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 433
    :pswitch_2
    const v0, 0x7f0900cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 435
    :pswitch_3
    const v0, 0x7f0900d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 437
    :pswitch_4
    const v0, 0x7f0900d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 427
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
    .line 297
    new-instance v0, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;-><init>()V

    .line 298
    new-instance v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$6;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;->setCallback(Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 314
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 316
    return-void
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    iget v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->lastUpdate:I

    if-lez v0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->lastUpdate:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData()V
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->dataLoading:Z

    .line 212
    new-instance v1, Lcom/vkontakte/android/api/FriendsGetRequests;

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onlyRecommends:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/vkontakte/android/api/FriendsGetRequests;-><init>(IIZ)V

    .line 213
    new-instance v0, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$4;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/FriendsGetRequests;->setCallback(Lcom/vkontakte/android/api/FriendsGetRequests$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 212
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 284
    return-void

    .line 212
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
    .line 78
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 79
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

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "recommends"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->onlyRecommends:Z

    .line 83
    const v0, 0x7f0802b3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 84
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loadData()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const v0, 0x7f08028b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f090021

    .line 321
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 322
    .local v5, "uid":I
    const/4 v0, 0x0

    .line 325
    .local v0, "_isSuggestion":Z
    const/4 v1, 0x0

    .line 326
    .local v1, "_req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 332
    :goto_0
    if-nez v1, :cond_2

    .line 333
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 342
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 343
    iget-object v6, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->recommends:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_8

    .line 352
    :cond_4
    :goto_2
    move-object v4, v1

    .line 353
    .local v4, "req":Lcom/vkontakte/android/api/FriendRequest;
    move v3, v0

    .line 355
    .local v3, "isSuggestion":Z
    iget v6, v4, Lcom/vkontakte/android/api/FriendRequest;->state:I

    if-eqz v6, :cond_9

    .line 417
    :cond_5
    :goto_3
    return-void

    .line 326
    .end local v3    # "isSuggestion":Z
    .end local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/api/FriendRequest;

    .line 327
    .restart local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, v4, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v5, :cond_0

    .line 328
    move-object v1, v4

    .line 329
    goto :goto_0

    .line 333
    .end local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/api/FriendRequest;

    .line 334
    .restart local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, v4, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v5, :cond_1

    .line 335
    move-object v1, v4

    .line 336
    const/4 v0, 0x1

    .line 337
    goto :goto_1

    .line 343
    .end local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/api/FriendRequest;

    .line 344
    .restart local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, v4, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v5, :cond_3

    .line 345
    move-object v1, v4

    .line 346
    const/4 v0, 0x1

    .line 347
    goto :goto_2

    .line 357
    .restart local v3    # "isSuggestion":Z
    :cond_9
    iput v9, v4, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 358
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const v7, 0x7f0900d2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    .line 359
    .local v2, "flipper":Landroid/widget/ViewFlipper;
    const-string v6, "add"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 360
    const/4 v6, 0x2

    iput v6, v4, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 361
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6, v9, v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 364
    new-instance v6, Lcom/vkontakte/android/api/FriendsAdd;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/vkontakte/android/api/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 365
    new-instance v7, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;

    invoke-direct {v7, p0, v4, p1, v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$7;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/api/FriendRequest;Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/api/FriendsAdd;->setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 390
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 394
    :cond_a
    const-string v6, "decline"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 395
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v3}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 396
    const/4 v6, 0x3

    iput v6, v4, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 397
    new-instance v6, Lcom/vkontakte/android/api/FriendsDelete;

    invoke-direct {v6, v5}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    .line 398
    new-instance v7, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;

    invoke-direct {v7, p0, p1, v5}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$8;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 415
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f060019

    const/4 v10, -0x2

    const/4 v8, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 101
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 102
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 104
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 105
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 106
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-direct {v1, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 108
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 109
    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v7, 0x7f030043

    invoke-static {v4, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "btn":Landroid/view/View;
    const v4, 0x7f0900c6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v7, 0x7f080107

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 115
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v4, v7, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 117
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllViewedBtn:Landroid/view/View;

    .line 119
    new-instance v4, Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$1;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 127
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 128
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v7, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;)V

    iput-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->adapter:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 130
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-ge v4, v7, :cond_0

    .line 131
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 132
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 135
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 136
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v7, 0x7f0200eb

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(I)V

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawSelectorOnTop(Z)V

    .line 139
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Landroid/widget/FrameLayout;

    .line 141
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v7, Lcom/vkontakte/android/fragments/FriendRequestsFragment$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$2;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    iput-boolean v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->moreAvailable:Z

    .line 159
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v7, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;

    invoke-direct {v7, p0, v8}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendReqPhotosAdapter;)V

    iget-object v8, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v9, Lcom/vkontakte/android/fragments/FriendRequestsFragment$3;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$3;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-direct {v4, v7, v8, v9}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 180
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/ui/EmptyView;->create(Landroid/content/Context;)Lcom/vkontakte/android/ui/EmptyView;

    move-result-object v4

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    .line 181
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    const v7, 0x7f080206

    invoke-virtual {v4, v7}, Lcom/vkontakte/android/ui/EmptyView;->setText(I)V

    .line 182
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/ui/EmptyView;->setVisibility(I)V

    .line 183
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Landroid/widget/FrameLayout;

    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loaded:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 187
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 188
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v2, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 190
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    iget-boolean v7, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loaded:Z

    if-eqz v7, :cond_2

    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 192
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v4, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v4

    .end local v2    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    move v4, v6

    .line 185
    goto :goto_0

    .restart local v2    # "lp2":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    move v6, v5

    .line 191
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroy()V

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 97
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 199
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->adapter:Lcom/vkontakte/android/fragments/FriendRequestsFragment$FriendRequestsAdapter;

    .line 200
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 201
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    .line 202
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 203
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 204
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->markAllViewedBtn:Landroid/view/View;

    .line 205
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->wrap:Landroid/widget/FrameLayout;

    .line 206
    iput-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 207
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDestroyView()V

    .line 208
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 457
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 458
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->refreshing:Z

    .line 445
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->loadData()V

    .line 446
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 464
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

    .line 468
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 469
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/EmptyView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 470
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 471
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 472
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 473
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/EmptyView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setTag(Ljava/lang/Object;)V

    .line 491
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 480
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/EmptyView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 482
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 483
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 484
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/EmptyView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 485
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/ui/EmptyView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 486
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 487
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 488
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->noReqsView:Lcom/vkontakte/android/ui/EmptyView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/EmptyView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/FriendRequestsFragment$5;-><init>(Lcom/vkontakte/android/fragments/FriendRequestsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
