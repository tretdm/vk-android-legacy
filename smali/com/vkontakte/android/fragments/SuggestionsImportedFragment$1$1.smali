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

.field private final synthetic val$imported:Ljava/util/ArrayList;

.field private final synthetic val$notOnVk:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$imported:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$notOnVk:Ljava/util/ArrayList;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 39
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;)Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "service"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "service":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$imported:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 43
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$imported:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 46
    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;)Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->val$notOnVk:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;)Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;)Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->updateList()V

    .line 53
    return-void

    .line 40
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 41
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget-boolean v3, v0, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;)Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 44
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    iget-boolean v3, v0, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1$1;->this$1:Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;->access$0(Lcom/vkontakte/android/fragments/SuggestionsImportedFragment$1;)Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/fragments/SuggestionsImportedFragment;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    .end local v0    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 49
    .restart local v0    # "p":Lcom/vkontakte/android/UserProfile;
    iget-object v2, v0, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto :goto_2
.end method
