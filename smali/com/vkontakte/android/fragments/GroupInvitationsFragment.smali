.class public Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
.super Landroid/app/Fragment;
.source "GroupInvitationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;,
        Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;
    }
.end annotation


# instance fields
.field private bigProgress:Landroid/widget/ProgressBar;

.field private contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private footerView:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdate:I

.field private list:Landroid/widget/ListView;

.field private loaded:Z

.field private moreAvailable:Z

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
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->reqs:Ljava/util/ArrayList;

    .line 58
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->dataLoading:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->moreAvailable:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->refreshing:Z

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->lastUpdate:I

    .line 61
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loaded:Z

    .line 384
    return-void
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$302(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->reqs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->dataLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loaded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->refreshing:Z

    return v0
.end method

.method static synthetic access$902(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->refreshing:Z

    return p1
.end method

.method private animateStateTransition(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accepted"    # Z
    .param p3, "suggestion"    # Z

    .prologue
    const v3, 0x7f0800bb

    .line 244
    const v1, 0x7f080032

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 245
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const v2, 0x7f0d00f1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 246
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x666667

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 248
    return-void

    .line 245
    :cond_0
    if-eqz p2, :cond_1

    const v2, 0x7f0d00ef

    goto :goto_0

    :cond_1
    const v2, 0x7f0d00f0

    goto :goto_0
.end method

.method private getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "n"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 251
    packed-switch p1, :pswitch_data_0

    .line 263
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 253
    :pswitch_0
    const v0, 0x7f0800b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 255
    :pswitch_1
    const v0, 0x7f0800b5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 257
    :pswitch_2
    const v0, 0x7f0800b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 259
    :pswitch_3
    const v0, 0x7f0800b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 261
    :pswitch_4
    const v0, 0x7f0800b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 251
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


# virtual methods
.method public loadData()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->dataLoading:Z

    .line 134
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetInvites;

    invoke-direct {v0}, Lcom/vkontakte/android/api/GroupsGetInvites;-><init>()V

    new-instance v1, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGetInvites;->setCallback(Lcom/vkontakte/android/api/GroupsGetInvites$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 161
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    const v10, 0x7f080016

    .line 173
    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 174
    .local v3, "gid":I
    const/4 v0, 0x0

    .line 176
    .local v0, "_isSuggestion":Z
    const/4 v1, 0x0

    .line 177
    .local v1, "_req":Lcom/vkontakte/android/api/GroupInvitation;
    iget-object v8, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/api/GroupInvitation;

    .line 178
    .local v6, "req":Lcom/vkontakte/android/api/GroupInvitation;
    iget-object v8, v6, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v8, v8, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v8, v3, :cond_0

    .line 179
    move-object v1, v6

    .line 184
    .end local v6    # "req":Lcom/vkontakte/android/api/GroupInvitation;
    :cond_1
    move-object v6, v1

    .line 185
    .restart local v6    # "req":Lcom/vkontakte/android/api/GroupInvitation;
    move v5, v0

    .line 186
    .local v5, "isSuggestion":I
    iput v11, v6, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 187
    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const v9, 0x7f080032

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    .line 188
    .local v2, "flipper":Landroid/widget/ViewFlipper;
    const-string v8, "add"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "unsure"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 189
    :cond_2
    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-direct {p0, v8, v11, v5}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 190
    const-string v8, "unsure"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 191
    .local v7, "unsure":Z
    if-eqz v7, :cond_5

    const/4 v8, 0x4

    :goto_0
    iput v8, v6, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 192
    new-instance v8, Lcom/vkontakte/android/api/GroupsJoin;

    iget-object v9, v6, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v9, v9, Lcom/vkontakte/android/api/Group;->id:I

    invoke-direct {v8, v9, v7}, Lcom/vkontakte/android/api/GroupsJoin;-><init>(IZ)V

    new-instance v9, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;

    invoke-direct {v9, p0, v6, v3, v7}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/api/GroupInvitation;IZ)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/api/GroupsJoin;->setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 217
    .end local v7    # "unsure":Z
    :cond_3
    const-string v8, "decline"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 218
    invoke-virtual {p1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9, v5}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 219
    const/4 v8, 0x3

    iput v8, v6, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 221
    new-instance v8, Lcom/vkontakte/android/api/GroupsLeave;

    invoke-direct {v8, v3}, Lcom/vkontakte/android/api/GroupsLeave;-><init>(I)V

    new-instance v9, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$6;

    invoke-direct {v9, p0, v3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$6;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;I)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/api/GroupsLeave;->setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 241
    :cond_4
    return-void

    .line 191
    .restart local v7    # "unsure":Z
    :cond_5
    const/4 v8, 0x2

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, -0x2

    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/high16 v8, 0x40e00000    # 7.0f

    .line 64
    new-instance v4, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 65
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    const v5, -0x1a1a1b

    invoke-virtual {v4, v5}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setBackgroundColor(I)V

    .line 67
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 68
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 69
    .local v2, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    const v5, 0x7f020046

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 73
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

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

    .line 74
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 77
    new-instance v4, Lcom/vkontakte/android/ui/FixedScrollListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/ui/FixedScrollListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    .line 78
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 79
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    new-instance v5, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;

    invoke-direct {v5, p0, v9}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/fragments/GroupInvitationsFragment$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v9}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 82
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    const v5, 0x7f02007d

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelector(I)V

    .line 83
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 84
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    new-instance v5, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$1;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->moreAvailable:Z

    .line 96
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v5, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;

    invoke-direct {v5, p0, v9}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/fragments/GroupInvitationsFragment$1;)V

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$2;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 117
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 118
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 119
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loaded:Z

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 122
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    invoke-virtual {v3}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->allChildrenArePullable()Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    invoke-virtual {v3, p0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 129
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 274
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 275
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->refreshing:Z

    .line 269
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loadData()V

    .line 270
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 279
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 281
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$4;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
