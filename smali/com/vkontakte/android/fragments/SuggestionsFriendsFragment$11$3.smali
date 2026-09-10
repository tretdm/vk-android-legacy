.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GmailGetContacts$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 667
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 669
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d00d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 670
    return-void
.end method

.method public success(Ljava/util/List;)V
    .locals 3
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
    .line 646
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 649
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3$1;-><init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11$3;->this$1:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;

    iget-object v1, v1, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$11;->val$acc:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "email"

    invoke-static {v0, p1, v1, v2}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$1000(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
