.class Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;
.super Ljava/lang/Object;
.source "SuggestionsImportedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->onUsersLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

.field final synthetic val$imported:Ljava/util/ArrayList;

.field final synthetic val$notOnVk:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$imported:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$notOnVk:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 37
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "service"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 38
    .local v2, "service":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$imported:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 39
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget-boolean v3, v1, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$imported:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 42
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    iget-boolean v3, v1, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    if-eqz v2, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 45
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$000(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$notOnVk:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$000(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 47
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    iget-object v3, v1, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_2

    .line 50
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->this$0:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->updateList()V

    .line 51
    return-void
.end method
