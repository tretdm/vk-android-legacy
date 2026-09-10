.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$1(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 170
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "_users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$1(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Lcom/vkontakte/android/APIRequest;)V

    .line 157
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$2(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V

    .line 160
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->updateList()V

    .line 161
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    return-void
.end method
