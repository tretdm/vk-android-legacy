.class Lcom/vkontakte/android/fragments/FriendsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/FriendsFragment;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 78
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v3, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$000(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 82
    :cond_2
    const-string v3, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$100(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 85
    :cond_3
    const-string v3, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const-string v3, "uid"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, "u":I
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 89
    .local v2, "user":Lcom/vkontakte/android/UserProfile;
    iget v3, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v3, v1, :cond_4

    .line 90
    const-string v3, "online"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/UserProfile;->online:I

    .line 91
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$300(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v3

    iget v4, v2, Lcom/vkontakte/android/UserProfile;->online:I

    invoke-virtual {v3, v1, v4}, Lcom/vkontakte/android/fragments/FriendListFragment;->setUserOnline(II)V

    .line 95
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_5
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3, v5}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$402(Lcom/vkontakte/android/fragments/FriendsFragment;I)I

    .line 96
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$200(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 97
    .restart local v2    # "user":Lcom/vkontakte/android/UserProfile;
    iget v3, v2, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$408(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    goto :goto_1

    .line 99
    .end local v2    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_7
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$500(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V

    .line 100
    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$100(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    goto/16 :goto_0
.end method
