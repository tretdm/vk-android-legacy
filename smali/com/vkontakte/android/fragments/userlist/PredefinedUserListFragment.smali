.class public Lcom/vkontakte/android/fragments/userlist/PredefinedUserListFragment;
.super Lcom/vkontakte/android/fragments/AbsUserListFragment;
.source "PredefinedUserListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/PredefinedUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "users"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 18
    .local v0, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/fragments/userlist/PredefinedUserListFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 19
    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/PredefinedUserListFragment;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/fragments/userlist/PredefinedUserListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/PredefinedUserListFragment;->preloadedData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 21
    return-void
.end method

.method protected hasExtended()Z
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/PredefinedUserListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extended"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
