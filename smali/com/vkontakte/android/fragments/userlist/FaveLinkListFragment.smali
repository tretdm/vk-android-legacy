.class public Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;
.super Lcom/vkontakte/android/fragments/AbsUserListFragment;
.source "FaveLinkListFragment.java"


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/AbsUserListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->preloadedData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Z

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->onDataLoaded(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->onError(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 55
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 32
    new-instance v0, Lcom/vkontakte/android/api/FaveGetLinks;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/FaveGetLinks;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment$1;-><init>(Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetLinks;->setCallback(Lcom/vkontakte/android/api/FaveGetLinks$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 47
    return-void
.end method

.method protected hasExtended()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "aview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    iget-object v1, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/userlist/FaveLinkListFragment;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method
