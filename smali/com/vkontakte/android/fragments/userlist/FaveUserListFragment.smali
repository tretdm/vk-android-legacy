.class public Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;
.super Lcom/vkontakte/android/fragments/AbsUserListFragment;
.source "FaveUserListFragment.java"


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->onError(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 46
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 23
    new-instance v0, Lcom/vkontakte/android/api/FaveGetUsers;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/FaveGetUsers;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment$1;-><init>(Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetUsers;->setCallback(Lcom/vkontakte/android/api/FaveGetUsers$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveUserListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 38
    return-void
.end method

.method protected hasExtended()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method
