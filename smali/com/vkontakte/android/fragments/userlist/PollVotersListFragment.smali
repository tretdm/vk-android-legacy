.class public Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;
.super Lcom/vkontakte/android/fragments/AbsUserListFragment;
.source "PollVotersListFragment.java"


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->onError(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 44
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v5, 0x0

    .line 21
    new-instance v0, Lcom/vkontakte/android/api/PollsGetVoters;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "oid"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "poll_id"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "answer_id"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PollsGetVoters;-><init>(IIIII)V

    new-instance v1, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment$1;-><init>(Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PollsGetVoters;->setCallback(Lcom/vkontakte/android/api/PollsGetVoters$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/PollVotersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 36
    return-void
.end method

.method protected hasExtended()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method
