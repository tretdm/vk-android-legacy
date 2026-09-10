.class public Lcom/vkontakte/android/fragments/FavePostListFragment;
.super Lcom/vkontakte/android/fragments/PostListFragment;
.source "FavePostListFragment.java"


# instance fields
.field private currentRequest:Lcom/vkontakte/android/APIRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/PostListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelLoading()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FavePostListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/fragments/FavePostListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->cancel()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FavePostListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

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
    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 24
    :goto_0
    new-instance v0, Lcom/vkontakte/android/api/FaveGetPosts;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/FaveGetPosts;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/fragments/FavePostListFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/fragments/FavePostListFragment$1;-><init>(Lcom/vkontakte/android/fragments/FavePostListFragment;I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/FaveGetPosts;->setCallback(Lcom/vkontakte/android/api/FaveGetPosts$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/FavePostListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/fragments/FavePostListFragment;->currentRequest:Lcom/vkontakte/android/APIRequest;

    .line 38
    return-void

    .line 23
    :cond_0
    iget p1, p0, Lcom/vkontakte/android/fragments/FavePostListFragment;->offset:I

    goto :goto_0
.end method

.method protected getReferer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "fave"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "s"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/PostListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/FavePostListFragment;->setRefreshEnabled(Z)V

    .line 19
    return-void
.end method
