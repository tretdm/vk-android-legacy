.class Lcom/vkontakte/android/fragments/ChatFragment$28;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Lcom/vkontakte/android/data/Messages$GetMessagesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->loadDataUp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field private final synthetic val$fromUnread:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->val$fromUnread:Z

    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1570
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error loading history "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->val$fromUnread:Z

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$28$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/fragments/ChatFragment$28$2;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$28;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1598
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/ChatFragment;->access$68(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1599
    return-void

    .line 1583
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$28$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$28$3;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$28;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
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
    .local p1, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    const/4 v6, 0x0

    .line 1467
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1468
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$68(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1566
    :goto_0
    return-void

    .line 1471
    :cond_0
    iget-boolean v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->val$fromUnread:Z

    if-nez v5, :cond_1

    .line 1472
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1473
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1474
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1475
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$9(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    .line 1477
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1478
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, p2}, Lcom/vkontakte/android/fragments/ChatFragment;->access$9(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    .line 1480
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1481
    .local v1, "needUsersAcc":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1486
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1487
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v3, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1489
    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1490
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1494
    .end local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    :cond_4
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/fragments/ChatFragment$28$1;

    iget-boolean v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->val$fromUnread:Z

    invoke-direct {v6, p0, v7, p1}, Lcom/vkontakte/android/fragments/ChatFragment$28$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$28;ZLjava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1481
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .line 1482
    .local v0, "m":Lcom/vkontakte/android/Message;
    iget-boolean v6, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

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

    if-nez v6, :cond_3

    .line 1483
    iget-object v6, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v7, "action_mid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1490
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    .restart local v3    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/UserProfile;>;"
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 1491
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/ChatFragment$28;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$10(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v6

    iget v7, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
