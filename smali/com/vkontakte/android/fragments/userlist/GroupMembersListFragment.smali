.class public Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;
.super Lcom/vkontakte/android/fragments/AbsUserListFragment;
.source "GroupMembersListFragment.java"


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

.method static synthetic access$002(Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->onError(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 44
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/vkontakte/android/api/GroupsGetMembers;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkontakte/android/api/GroupsGetMembers;-><init>(III)V

    new-instance v1, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment$1;-><init>(Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/GroupsGetMembers;->setCallback(Lcom/vkontakte/android/api/GroupsGetMembers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/GroupMembersListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

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
