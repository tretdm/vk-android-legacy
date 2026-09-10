.class Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment$1;
.super Ljava/lang/Object;
.source "SuggestionsRecommendationsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;->onError(ILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "_users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsRecommendationsFragment;->updateList()V

    .line 36
    return-void
.end method
