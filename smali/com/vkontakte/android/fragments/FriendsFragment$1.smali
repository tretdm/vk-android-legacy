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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 79
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const-string v2, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$0(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 83
    :cond_2
    const-string v2, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 84
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    .line 86
    :cond_3
    const-string v2, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "uid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "u":I
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 95
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2, v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$3(Lcom/vkontakte/android/fragments/FriendsFragment;I)V

    .line 96
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$2(Lcom/vkontakte/android/fragments/FriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 99
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$5(Lcom/vkontakte/android/fragments/FriendsFragment;)Lcom/vkontakte/android/fragments/FriendListFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/FriendListFragment;->updateOnline()V

    .line 100
    iget-object v2, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$1(Lcom/vkontakte/android/fragments/FriendsFragment;)V

    goto :goto_0

    .line 89
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 90
    .local v1, "user":Lcom/vkontakte/android/UserProfile;
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v3, v0, :cond_4

    .line 91
    const-string v2, "online"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_1

    .line 96
    .end local v1    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 97
    .restart local v1    # "user":Lcom/vkontakte/android/UserProfile;
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->online:I

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/fragments/FriendsFragment$1;->this$0:Lcom/vkontakte/android/fragments/FriendsFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$4(Lcom/vkontakte/android/fragments/FriendsFragment;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/FriendsFragment;->access$3(Lcom/vkontakte/android/fragments/FriendsFragment;I)V

    goto :goto_2
.end method
