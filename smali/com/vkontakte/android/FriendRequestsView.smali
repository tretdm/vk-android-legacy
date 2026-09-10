.class public Lcom/vkontakte/android/FriendRequestsView;
.super Landroid/widget/FrameLayout;
.source "FriendRequestsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;,
        Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;
    }
.end annotation


# instance fields
.field private bigProgress:Landroid/widget/ProgressBar;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private footerView:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdate:I

.field list:Lcom/vkontakte/android/ui/RefreshableListView;

.field private markAllViewedBtn:Landroid/widget/Button;

.field private moreAvailable:Z

.field private noReqsView:Landroid/widget/TextView;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleViews:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleIDs:Ljava/util/Vector;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

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

    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/FriendRequestsView;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleViews:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleIDs:Ljava/util/Vector;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

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

    .line 66
    invoke-direct {p0}, Lcom/vkontakte/android/FriendRequestsView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleViews:Ljava/util/Vector;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleIDs:Ljava/util/Vector;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

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

    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/FriendRequestsView;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/FriendRequestsView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/FriendRequestsView;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkontakte/android/FriendRequestsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/FriendRequestsView;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->visibleIDs:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/FriendRequestsView;ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/FriendRequestsView;->getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/FriendRequestsView;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/vkontakte/android/FriendRequestsView;->markAllAsViewed()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/FriendRequestsView;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/FriendRequestsView;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/FriendRequestsView;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/FriendRequestsView;Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/FriendRequestsView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->markAllViewedBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private animateStateTransition(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accepted"    # Z
    .param p3, "suggestion"    # Z

    .prologue
    const v3, 0x7f0800b7

    const v2, 0x7f0600d0

    .line 430
    const v1, 0x7f0800b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 431
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    const v2, 0x7f060144

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 432
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x666667

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 434
    return-void

    .line 431
    :cond_1
    if-eqz p2, :cond_0

    const v2, 0x7f0600cf

    goto :goto_0
.end method

.method private getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "n"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 437
    packed-switch p1, :pswitch_data_0

    .line 449
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 439
    :pswitch_0
    const v0, 0x7f0800ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 441
    :pswitch_1
    const v0, 0x7f0800ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 443
    :pswitch_2
    const v0, 0x7f0800af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 445
    :pswitch_3
    const v0, 0x7f0800b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 447
    :pswitch_4
    const v0, 0x7f0800b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 437
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
    const/4 v13, -0x1

    const/4 v12, -0x2

    const v11, -0x1a1a1b

    const/high16 v9, 0x40e00000    # 7.0f

    const/16 v10, 0x11

    .line 75
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/FriendRequestsView;->setBackgroundColor(I)V

    .line 77
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    .line 78
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 79
    .local v4, "pb":Landroid/widget/ProgressBar;
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
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->footerView:Landroid/widget/FrameLayout;

    const v6, 0x7f0200b7

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
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "btn":Landroid/widget/Button;
    const v5, 0x7f0600ed

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 88
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v13, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

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

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$FriendRequestsAdapter;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 103
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 104
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 105
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, v11}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 106
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 107
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v5, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 108
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v6, 0x7f0200df

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(I)V

    .line 109
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawSelectorOnTop(Z)V

    .line 110
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/FriendRequestsView;->addView(Landroid/view/View;)V

    .line 112
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v6, Lcom/vkontakte/android/FriendRequestsView$2;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/FriendRequestsView$2;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/FriendRequestsView;->moreAvailable:Z

    .line 144
    new-instance v5, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v6, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/FriendRequestsView$FriendReqPhotosAdapter;)V

    iget-object v7, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v8, Lcom/vkontakte/android/FriendRequestsView$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/FriendRequestsView$3;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 165
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    .line 166
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const v6, -0x888889

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const v6, 0x7f0600d8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 168
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 170
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v13, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 171
    .local v3, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/FriendRequestsView;->addView(Landroid/view/View;)V

    .line 176
    new-instance v5, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    .line 177
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    .local v2, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    iget-object v5, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/FriendRequestsView;->addView(Landroid/view/View;)V

    .line 182
    return-void
.end method

.method private markAllAsViewed()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;-><init>()V

    .line 307
    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendRequestsView$7;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsDeleteAllRequests;->setCallback(Lcom/vkontakte/android/api/FriendsDeleteAllRequests$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 325
    return-void
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 648
    iget v0, p0, Lcom/vkontakte/android/FriendRequestsView;->lastUpdate:I

    if-lez v0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

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

    .line 650
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData()V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->dataLoading:Z

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-ge v0, v1, :cond_1

    .line 191
    new-instance v1, Lcom/vkontakte/android/api/FriendsGetRequests;

    iget-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x14

    invoke-direct {v1, v0, v2}, Lcom/vkontakte/android/api/FriendsGetRequests;-><init>(II)V

    .line 192
    new-instance v0, Lcom/vkontakte/android/FriendRequestsView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendRequestsView$4;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/FriendsGetRequests;->setCallback(Lcom/vkontakte/android/api/FriendsGetRequests$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 191
    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 296
    :goto_1
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/FriendsGetSuggestions;

    invoke-direct {v0}, Lcom/vkontakte/android/api/FriendsGetSuggestions;-><init>()V

    .line 251
    new-instance v1, Lcom/vkontakte/android/FriendRequestsView$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/FriendRequestsView$5;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FriendsGetSuggestions;->setCallback(Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 294
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 250
    iput-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const v8, 0x7f080017

    .line 330
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 331
    .local v5, "uid":I
    const/4 v0, 0x0

    .line 333
    .local v0, "_isSuggestion":Z
    const/4 v1, 0x0

    .line 334
    .local v1, "_req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 340
    :goto_0
    if-nez v1, :cond_2

    .line 341
    iget-object v6, p0, Lcom/vkontakte/android/FriendRequestsView;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 350
    :cond_2
    :goto_1
    move-object v4, v1

    .line 351
    .local v4, "req":Lcom/vkontakte/android/api/FriendRequest;
    move v3, v0

    .line 352
    .local v3, "isSuggestion":Z
    iput v9, v4, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 355
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const v7, 0x7f0800b2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    .line 356
    .local v2, "flipper":Landroid/widget/ViewFlipper;
    const-string v6, "add"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 357
    const/4 v6, 0x2

    iput v6, v4, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 358
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {p0, v6, v9, v3}, Lcom/vkontakte/android/FriendRequestsView;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 361
    new-instance v6, Lcom/vkontakte/android/api/FriendsAdd;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lcom/vkontakte/android/api/FriendsAdd;-><init>(ILjava/lang/String;)V

    .line 362
    new-instance v7, Lcom/vkontakte/android/FriendRequestsView$8;

    invoke-direct {v7, p0, v4, p1, v5}, Lcom/vkontakte/android/FriendRequestsView$8;-><init>(Lcom/vkontakte/android/FriendRequestsView;Lcom/vkontakte/android/api/FriendRequest;Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/api/FriendsAdd;->setCallback(Lcom/vkontakte/android/api/FriendsAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 390
    invoke-virtual {v6, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 394
    :cond_3
    const-string v6, "decline"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 395
    invoke-virtual {p1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v3}, Lcom/vkontakte/android/FriendRequestsView;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 396
    const/4 v6, 0x3

    iput v6, v4, Lcom/vkontakte/android/api/FriendRequest;->state:I

    .line 397
    new-instance v6, Lcom/vkontakte/android/api/FriendsDelete;

    invoke-direct {v6, v5}, Lcom/vkontakte/android/api/FriendsDelete;-><init>(I)V

    .line 398
    new-instance v7, Lcom/vkontakte/android/FriendRequestsView$9;

    invoke-direct {v7, p0, p1, v5}, Lcom/vkontakte/android/FriendRequestsView$9;-><init>(Lcom/vkontakte/android/FriendRequestsView;Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/api/FriendsDelete;->setCallback(Lcom/vkontakte/android/api/FriendsDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 425
    invoke-virtual {v6, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 427
    :cond_4
    return-void

    .line 334
    .end local v2    # "flipper":Landroid/widget/ViewFlipper;
    .end local v3    # "isSuggestion":Z
    .end local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/api/FriendRequest;

    .line 335
    .restart local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, v4, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v5, :cond_0

    .line 336
    move-object v1, v4

    .line 337
    goto/16 :goto_0

    .line 341
    .end local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/api/FriendRequest;

    .line 342
    .restart local v4    # "req":Lcom/vkontakte/android/api/FriendRequest;
    iget-object v7, v4, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    iget v7, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v7, v5, :cond_1

    .line 343
    move-object v1, v4

    .line 344
    const/4 v0, 0x1

    .line 345
    goto/16 :goto_1
.end method

.method public onDetachedFromWindoow()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 186
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 655
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/FriendRequestsView;->refreshing:Z

    .line 643
    invoke-virtual {p0}, Lcom/vkontakte/android/FriendRequestsView;->loadData()V

    .line 644
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 659
    iget-object v0, p0, Lcom/vkontakte/android/FriendRequestsView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 660
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

    .line 664
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 665
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 666
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 667
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 668
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 669
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 671
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 672
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 673
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 687
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 676
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 677
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 678
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 679
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 680
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 681
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 682
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 683
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 684
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/FriendRequestsView;->noReqsView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/vkontakte/android/FriendRequestsView$6;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendRequestsView$6;-><init>(Lcom/vkontakte/android/FriendRequestsView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendRequestsView;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method
