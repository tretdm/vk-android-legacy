.class public Lcom/vkontakte/android/fragments/SuggestedPostListFragment;
.super Lcom/vkontakte/android/fragments/PostListFragment;
.source "SuggestedPostListFragment.java"


# instance fields
.field private currentReq:Lcom/vkontakte/android/APIRequest;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/fragments/SuggestedPostListFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/fragments/SuggestedPostListFragment;
    .param p1, "x1"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    return-object p1
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 54
    :cond_0
    return-void
.end method

.method protected doLoadData(II)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/vkontakte/android/api/WallGet;

    iget v1, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->uid:I

    const-string v2, "suggests"

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/vkontakte/android/api/WallGet;-><init>(IIILjava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestedPostListFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestedPostListFragment$1;-><init>(Lcom/vkontakte/android/fragments/SuggestedPostListFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallGet;->setCallback(Lcom/vkontakte/android/api/WallGet$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->currentReq:Lcom/vkontakte/android/APIRequest;

    .line 46
    return-void
.end method

.method protected getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0d01b0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "postponed"

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "owner_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/fragments/SuggestedPostListFragment;->uid:I

    .line 20
    const v0, 0x7f0d0319

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 21
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onAttach(Landroid/app/Activity;)V

    .line 22
    return-void
.end method
