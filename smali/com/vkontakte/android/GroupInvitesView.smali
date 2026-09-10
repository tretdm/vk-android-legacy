.class public Lcom/vkontakte/android/GroupInvitesView;
.super Landroid/widget/FrameLayout;
.source "GroupInvitesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;,
        Lcom/vkontakte/android/GroupInvitesView$FriendRequestsAdapter;
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

.field private moreAvailable:Z

.field private noReqsView:Landroid/widget/TextView;

.field private refreshing:Z

.field private reqs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/api/GroupInvitation;",
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

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->reqs:Ljava/util/ArrayList;

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->refreshing:Z

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/GroupInvitesView;->lastUpdate:I

    .line 52
    invoke-direct {p0}, Lcom/vkontakte/android/GroupInvitesView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->reqs:Ljava/util/ArrayList;

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->refreshing:Z

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/GroupInvitesView;->lastUpdate:I

    .line 57
    invoke-direct {p0}, Lcom/vkontakte/android/GroupInvitesView;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->reqs:Ljava/util/ArrayList;

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->dataLoading:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->moreAvailable:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/GroupInvitesView;->refreshing:Z

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/GroupInvitesView;->lastUpdate:I

    .line 62
    invoke-direct {p0}, Lcom/vkontakte/android/GroupInvitesView;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/GroupInvitesView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->reqs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/GroupInvitesView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/GroupInvitesView;ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/GroupInvitesView;->getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/GroupInvitesView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/vkontakte/android/GroupInvitesView;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/GroupInvitesView;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/GroupInvitesView;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/GroupInvitesView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vkontakte/android/GroupInvitesView;->dataLoading:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/GroupInvitesView;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/GroupInvitesView;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/vkontakte/android/GroupInvitesView;->refreshing:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/GroupInvitesView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vkontakte/android/GroupInvitesView;->refreshing:Z

    return-void
.end method

.method private animateStateTransition(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accepted"    # Z
    .param p3, "suggestion"    # Z

    .prologue
    const v3, 0x7f0800b7

    .line 250
    const v1, 0x7f0800b2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 251
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const v2, 0x7f060144

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 252
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x666667

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 254
    return-void

    .line 251
    :cond_0
    if-eqz p2, :cond_1

    const v2, 0x7f0600cf

    goto :goto_0

    :cond_1
    const v2, 0x7f0600d0

    goto :goto_0
.end method

.method private getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "n"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 257
    packed-switch p1, :pswitch_data_0

    .line 269
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 259
    :pswitch_0
    const v0, 0x7f0800ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 261
    :pswitch_1
    const v0, 0x7f0800ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 263
    :pswitch_2
    const v0, 0x7f0800af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 265
    :pswitch_3
    const v0, 0x7f0800b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 267
    :pswitch_4
    const v0, 0x7f0800b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 257
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
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x2

    const v10, -0x1a1a1b

    const/high16 v8, 0x40e00000    # 7.0f

    const/16 v9, 0x11

    .line 66
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/GroupInvitesView;->setBackgroundColor(I)V

    .line 68
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->footerView:Landroid/widget/FrameLayout;

    .line 69
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 70
    .local v3, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->footerView:Landroid/widget/FrameLayout;

    const v5, 0x7f0200b7

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 74
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->footerView:Landroid/widget/FrameLayout;

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v7

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 75
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->footerView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 78
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 79
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/GroupInvitesView;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 80
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/GroupInvitesView$FriendRequestsAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/vkontakte/android/GroupInvitesView$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/GroupInvitesView;Lcom/vkontakte/android/GroupInvitesView$FriendRequestsAdapter;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 82
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 83
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 84
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 85
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v12}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 86
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 87
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v5, 0x7f0200df

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(I)V

    .line 88
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawSelectorOnTop(Z)V

    .line 89
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/GroupInvitesView;->addView(Landroid/view/View;)V

    .line 91
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/GroupInvitesView$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/GroupInvitesView$1;-><init>(Lcom/vkontakte/android/GroupInvitesView;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    iput-boolean v12, p0, Lcom/vkontakte/android/GroupInvitesView;->moreAvailable:Z

    .line 101
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v5, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/GroupInvitesView;Lcom/vkontakte/android/GroupInvitesView$FriendReqPhotosAdapter;)V

    iget-object v6, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v7, Lcom/vkontakte/android/GroupInvitesView$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/GroupInvitesView$2;-><init>(Lcom/vkontakte/android/GroupInvitesView;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 122
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    .line 123
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    const v5, -0x888889

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 124
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    const v5, 0x7f0600d8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 126
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 127
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    .local v2, "lparams":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/GroupInvitesView;->addView(Landroid/view/View;)V

    .line 133
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    .line 134
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 136
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v12}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    iget-object v4, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/GroupInvitesView;->addView(Landroid/view/View;)V

    .line 139
    return-void
.end method


# virtual methods
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    iget v0, p0, Lcom/vkontakte/android/GroupInvitesView;->lastUpdate:I

    if-lez v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getResources()Landroid/content/res/Resources;

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

    iget v1, p0, Lcom/vkontakte/android/GroupInvitesView;->lastUpdate:I

    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/GroupInvitesView;->dataLoading:Z

    .line 147
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetInvites;

    invoke-direct {v0}, Lcom/vkontakte/android/api/GroupsGetInvites;-><init>()V

    .line 148
    new-instance v1, Lcom/vkontakte/android/GroupInvitesView$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/GroupInvitesView$3;-><init>(Lcom/vkontakte/android/GroupInvitesView;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGetInvites;->setCallback(Lcom/vkontakte/android/api/GroupsGetInvites$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f080017

    .line 183
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 184
    .local v3, "gid":I
    const/4 v0, 0x0

    .line 186
    .local v0, "_isSuggestion":Z
    const/4 v1, 0x0

    .line 187
    .local v1, "_req":Lcom/vkontakte/android/api/GroupInvitation;
    iget-object v7, p0, Lcom/vkontakte/android/GroupInvitesView;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 194
    :goto_0
    move-object v5, v1

    .line 195
    .local v5, "req":Lcom/vkontakte/android/api/GroupInvitation;
    move v4, v0

    .line 196
    .local v4, "isSuggestion":I
    iput v10, v5, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 197
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const v8, 0x7f0800b2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    .line 198
    .local v2, "flipper":Landroid/widget/ViewFlipper;
    const-string v7, "add"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "unsure"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    :cond_1
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {p0, v7, v10, v4}, Lcom/vkontakte/android/GroupInvitesView;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 200
    const-string v7, "unsure"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 201
    .local v6, "unsure":Z
    if-eqz v6, :cond_5

    const/4 v7, 0x4

    :goto_1
    iput v7, v5, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 202
    new-instance v7, Lcom/vkontakte/android/api/GroupsJoin;

    iget-object v8, v5, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v8, v8, Lcom/vkontakte/android/api/Group;->id:I

    invoke-direct {v7, v8, v6}, Lcom/vkontakte/android/api/GroupsJoin;-><init>(IZ)V

    .line 203
    new-instance v8, Lcom/vkontakte/android/GroupInvitesView$5;

    invoke-direct {v8, p0, v5, v3, v6}, Lcom/vkontakte/android/GroupInvitesView$5;-><init>(Lcom/vkontakte/android/GroupInvitesView;Lcom/vkontakte/android/api/GroupInvitation;IZ)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/GroupsJoin;->setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 221
    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 225
    .end local v6    # "unsure":Z
    :cond_2
    const-string v7, "decline"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 226
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v4}, Lcom/vkontakte/android/GroupInvitesView;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 227
    const/4 v7, 0x3

    iput v7, v5, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 229
    new-instance v7, Lcom/vkontakte/android/api/GroupsLeave;

    invoke-direct {v7, v3}, Lcom/vkontakte/android/api/GroupsLeave;-><init>(I)V

    .line 230
    new-instance v8, Lcom/vkontakte/android/GroupInvitesView$6;

    invoke-direct {v8, p0, v3}, Lcom/vkontakte/android/GroupInvitesView$6;-><init>(Lcom/vkontakte/android/GroupInvitesView;I)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/GroupsLeave;->setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 245
    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 247
    :cond_3
    return-void

    .line 187
    .end local v2    # "flipper":Landroid/widget/ViewFlipper;
    .end local v4    # "isSuggestion":I
    .end local v5    # "req":Lcom/vkontakte/android/api/GroupInvitation;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/GroupInvitation;

    .line 188
    .restart local v5    # "req":Lcom/vkontakte/android/api/GroupInvitation;
    iget-object v8, v5, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v8, v8, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v8, v3, :cond_0

    .line 189
    move-object v1, v5

    .line 190
    goto/16 :goto_0

    .line 201
    .restart local v2    # "flipper":Landroid/widget/ViewFlipper;
    .restart local v4    # "isSuggestion":I
    .restart local v6    # "unsure":Z
    :cond_5
    const/4 v7, 0x2

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 143
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 423
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/GroupInvitesView;->refreshing:Z

    .line 411
    invoke-virtual {p0}, Lcom/vkontakte/android/GroupInvitesView;->loadData()V

    .line 412
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 427
    iget-object v0, p0, Lcom/vkontakte/android/GroupInvitesView;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 428
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

    .line 432
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    .line 433
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 434
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 435
    .local v0, "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 436
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 437
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 440
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 455
    .end local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    :cond_2
    :goto_0
    return-void

    .line 444
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 446
    .restart local v0    # "aa":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 447
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 448
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 449
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 450
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 451
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    :cond_5
    iget-object v1, p0, Lcom/vkontakte/android/GroupInvitesView;->noReqsView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/vkontakte/android/GroupInvitesView$4;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/GroupInvitesView$4;-><init>(Lcom/vkontakte/android/GroupInvitesView;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/GroupInvitesView;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method
