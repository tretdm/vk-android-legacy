.class public Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;
.super Lcom/vkontakte/android/fragments/AbsUserListFragment;
.source "CheckinsListFragment.java"


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$102(Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->offset:I

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->onError(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 46
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 3
    .param p1, "_offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 22
    new-instance v1, Lcom/vkontakte/android/api/PlacesGetCheckinProfiles;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "place_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0, p2}, Lcom/vkontakte/android/api/PlacesGetCheckinProfiles;-><init>(III)V

    new-instance v0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment$1;-><init>(Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;)V

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/api/PlacesGetCheckinProfiles;->setCallback(Lcom/vkontakte/android/api/PlacesGetCheckinProfiles$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 38
    return-void

    .line 22
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/fragments/userlist/CheckinsListFragment;->offset:I

    goto :goto_0
.end method

.method protected hasExtended()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
