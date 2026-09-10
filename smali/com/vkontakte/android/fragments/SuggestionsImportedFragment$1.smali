.class Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;
.super Ljava/lang/Object;
.source "SuggestionsImportedFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Friends$GetImportedContactsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUsersLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "imported":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .local p2, "notOnVk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
