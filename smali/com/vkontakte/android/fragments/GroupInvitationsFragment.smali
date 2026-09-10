.class public Lcom/vkontakte/android/fragments/GroupInvitationsFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "GroupInvitationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;,
        Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;
    }
.end annotation


# instance fields
.field private bigProgress:Landroid/widget/ProgressBar;

.field private contentView:Landroid/widget/FrameLayout;

.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private dataLoading:Z

.field private footerView:Landroid/widget/FrameLayout;

.field private imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

.field private lastUpdate:I

.field private list:Lcom/vkontakte/android/ui/RefreshableListView;

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

    .line 46
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->reqs:Ljava/util/ArrayList;

    .line 55
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->dataLoading:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->moreAvailable:Z

    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->refreshing:Z

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->lastUpdate:I

    .line 58
    iput-boolean v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loaded:Z

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->reqs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->refreshing:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Lcom/vkontakte/android/ui/RefreshableListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->moreAvailable:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/APIRequest;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->dataLoading:Z

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loaded:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->refreshing:Z

    return v0
.end method

.method private animateStateTransition(Landroid/view/View;ZZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "accepted"    # Z
    .param p3, "suggestion"    # Z

    .prologue
    const v3, 0x7f0900d5

    .line 240
    const v1, 0x7f0900d2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    .line 241
    .local v0, "flipper":Landroid/widget/ViewFlipper;
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p3, :cond_0

    const v2, 0x7f08015d

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 242
    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x666667

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 244
    return-void

    .line 241
    :cond_0
    if-eqz p2, :cond_1

    const v2, 0x7f0800e9

    goto :goto_0

    :cond_1
    const v2, 0x7f0800ea

    goto :goto_0
.end method

.method private getMImageView(ILandroid/view/View;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "n"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 247
    packed-switch p1, :pswitch_data_0

    .line 259
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 249
    :pswitch_0
    const v0, 0x7f0900cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 251
    :pswitch_1
    const v0, 0x7f0900ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 253
    :pswitch_2
    const v0, 0x7f0900cf

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 255
    :pswitch_3
    const v0, 0x7f0900d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 257
    :pswitch_4
    const v0, 0x7f0900d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    .line 247
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
.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 270
    iget v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->lastUpdate:I

    if-lez v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getResources()Landroid/content/res/Resources;

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

    iget v1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->lastUpdate:I

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Global;->langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadData()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->dataLoading:Z

    .line 130
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetInvites;

    invoke-direct {v0}, Lcom/vkontakte/android/api/GroupsGetInvites;-><init>()V

    .line 131
    new-instance v1, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$3;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGetInvites;->setCallback(Lcom/vkontakte/android/api/GroupsGetInvites$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 157
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f090021

    .line 169
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 170
    .local v3, "gid":I
    const/4 v0, 0x0

    .line 172
    .local v0, "_isSuggestion":Z
    const/4 v1, 0x0

    .line 173
    .local v1, "_req":Lcom/vkontakte/android/api/GroupInvitation;
    iget-object v7, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->reqs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 180
    :goto_0
    move-object v5, v1

    .line 181
    .local v5, "req":Lcom/vkontakte/android/api/GroupInvitation;
    move v4, v0

    .line 182
    .local v4, "isSuggestion":I
    iput v10, v5, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 183
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const v8, 0x7f0900d2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    .line 184
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

    .line 185
    :cond_1
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-direct {p0, v7, v10, v4}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 186
    const-string v7, "unsure"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 187
    .local v6, "unsure":Z
    if-eqz v6, :cond_5

    const/4 v7, 0x4

    :goto_1
    iput v7, v5, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 188
    new-instance v7, Lcom/vkontakte/android/api/GroupsJoin;

    iget-object v8, v5, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v8, v8, Lcom/vkontakte/android/api/Group;->id:I

    invoke-direct {v7, v8, v6}, Lcom/vkontakte/android/api/GroupsJoin;-><init>(IZ)V

    .line 189
    new-instance v8, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;

    invoke-direct {v8, p0, v5, v3, v6}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/api/GroupInvitation;IZ)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/GroupsJoin;->setCallback(Lcom/vkontakte/android/api/GroupsJoin$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 209
    invoke-virtual {v7}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 213
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

    .line 214
    invoke-virtual {p1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v4}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->animateStateTransition(Landroid/view/View;ZZ)V

    .line 215
    const/4 v7, 0x3

    iput v7, v5, Lcom/vkontakte/android/api/GroupInvitation;->state:I

    .line 217
    new-instance v7, Lcom/vkontakte/android/api/GroupsLeave;

    invoke-direct {v7, v3}, Lcom/vkontakte/android/api/GroupsLeave;-><init>(I)V

    .line 218
    new-instance v8, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$6;

    invoke-direct {v8, p0, v3}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$6;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;I)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/GroupsLeave;->setCallback(Lcom/vkontakte/android/api/GroupsLeave$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 235
    invoke-virtual {v7}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 237
    :cond_3
    return-void

    .line 173
    .end local v2    # "flipper":Landroid/widget/ViewFlipper;
    .end local v4    # "isSuggestion":I
    .end local v5    # "req":Lcom/vkontakte/android/api/GroupInvitation;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/api/GroupInvitation;

    .line 174
    .restart local v5    # "req":Lcom/vkontakte/android/api/GroupInvitation;
    iget-object v8, v5, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget v8, v8, Lcom/vkontakte/android/api/Group;->id:I

    if-ne v8, v3, :cond_0

    .line 175
    move-object v1, v5

    .line 176
    goto/16 :goto_0

    .line 187
    .restart local v2    # "flipper":Landroid/widget/ViewFlipper;
    .restart local v4    # "isSuggestion":I
    .restart local v6    # "unsure":Z
    :cond_5
    const/4 v7, 0x2

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, 0x41f00000    # 30.0f

    const/4 v10, 0x0

    const/4 v3, 0x0

    const v9, -0x1a1a1b

    const/high16 v8, 0x40e00000    # 7.0f

    .line 61
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Landroid/widget/FrameLayout;

    .line 62
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 64
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    .line 65
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, "pb":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 68
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    const v5, 0x7f0200b5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 70
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

    .line 71
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 72
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 74
    new-instance v4, Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    .line 75
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->footerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->addFooterView(Landroid/view/View;)V

    .line 76
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;

    invoke-direct {v5, p0, v10}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendRequestsAdapter;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v10}, Lcom/vkontakte/android/ui/RefreshableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 78
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 79
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setBackgroundColor(I)V

    .line 80
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v9}, Lcom/vkontakte/android/ui/RefreshableListView;->setCacheColorHint(I)V

    .line 81
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/ui/RefreshableListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 82
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, p0}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnRefreshListener(Lcom/vkontakte/android/ui/RefreshableListView$OnRefreshListener;)V

    .line 83
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const v5, 0x7f0200eb

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelector(I)V

    .line 84
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setDrawSelectorOnTop(Z)V

    .line 85
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v5, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$1;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/ui/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iput-boolean v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->moreAvailable:Z

    .line 97
    new-instance v4, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    new-instance v5, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;

    invoke-direct {v5, p0, v10}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/fragments/GroupInvitationsFragment$FriendReqPhotosAdapter;)V

    iget-object v6, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    new-instance v7, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$2;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$2;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;Landroid/widget/AdapterView;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$Listener;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    .line 118
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    .line 119
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v1, "lp2":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loaded:Z

    if-eqz v5, :cond_1

    const/16 v3, 0x8

    :cond_1
    invoke-virtual {v4, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->bigProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 125
    iget-object v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->contentView:Landroid/widget/FrameLayout;

    return-object v3
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 277
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->deactivate()V

    .line 278
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->refreshing:Z

    .line 265
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->loadData()V

    .line 266
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->activate()V

    .line 283
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->list:Lcom/vkontakte/android/ui/RefreshableListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 284
    return-void
.end method

.method public onScrolled(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 289
    return-void
.end method

.method public updateList()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$4;-><init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
