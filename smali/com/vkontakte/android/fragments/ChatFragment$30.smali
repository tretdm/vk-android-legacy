.class Lcom/vkontakte/android/fragments/ChatFragment$30;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->loadDataDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;)V
    .locals 0

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$30$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$30$2;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$30;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4602(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1740
    return-void
.end method

.method public onMessagesLoaded(Ljava/util/ArrayList;I)V
    .locals 9
    .param p2, "offsetFromBtm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1645
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1646
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4602(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1726
    :goto_0
    return-void

    .line 1649
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$820(Lcom/vkontakte/android/fragments/ChatFragment;I)I

    .line 1650
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Offset from bottom="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1652
    .local v2, "needUsersAcc":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 1653
    .local v1, "m":Lcom/vkontakte/android/Message;
    iget-boolean v6, v1, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$900(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_mid"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1654
    iget-object v6, v1, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1657
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1658
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1659
    .local v4, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1660
    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 1661
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    .line 1662
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$900(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget v7, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1665
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/fragments/ChatFragment$30$1;

    invoke-direct {v7, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$30$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$30;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
