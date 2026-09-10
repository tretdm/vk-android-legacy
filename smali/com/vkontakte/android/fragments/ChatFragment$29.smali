.class Lcom/vkontakte/android/fragments/ChatFragment$29;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 1609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$29$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$29$2;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$29;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$75(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1708
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
    .line 1613
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1614
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$75(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1694
    :goto_0
    return-void

    .line 1617
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$8(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$9(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    .line 1618
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Offset from bottom="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1620
    .local v1, "needUsersAcc":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1625
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1626
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1627
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1628
    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1629
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1633
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/ChatFragment$29$1;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/fragments/ChatFragment$29$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$29;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1620
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1621
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget-boolean v6, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$10(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_mid"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1622
    iget-object v6, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1629
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    .restart local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 1630
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$10(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget v7, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
