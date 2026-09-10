.class public Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;
.super Lcom/vkontakte/android/fragments/SuggestionsFragment;
.source "SuggestionsRecommendationsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkontakte/android/fragments/SuggestionsFragment;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected getListTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected loadData()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;

    invoke-direct {v0}, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;-><init>()V

    .line 30
    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;->setCallback(Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 44
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/vkontakte/android/fragments/SuggestionsFragment;->onAttach(Landroid/app/Activity;)V

    .line 22
    instance-of v0, p1, Lcom/vkontakte/android/SuggestionsActivity;

    if-nez v0, :cond_0

    .line 23
    const v0, 0x7f0802c0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 25
    :cond_0
    return-void
.end method

.method protected onItemClick(IJLjava/lang/Object;)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "id"    # J
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string v1, "ProfileFragment"

    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/Navigate;->to(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 51
    return-void
.end method
