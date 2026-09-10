.class Lcom/vkontakte/android/MenuListView$1;
.super Landroid/content/BroadcastReceiver;
.source "MenuListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MenuListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MenuListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    .line 79
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

    const/4 v4, 0x5

    .line 82
    const-string v2, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 85
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 86
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 87
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 91
    :cond_1
    const-string v2, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    .line 95
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 96
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 97
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 100
    :cond_3
    const-string v2, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    const-string v2, "uid"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 102
    .local v1, "uid":I
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$0(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    .line 109
    .end local v1    # "uid":I
    :cond_5
    const-string v2, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 111
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    .line 112
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_6

    .line 113
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$1(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 114
    :cond_6
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 116
    :cond_7
    const-string v2, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    const-string v3, "photo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/MenuListView;->access$2(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v2}, Lcom/vkontakte/android/MenuListView;->access$3(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 120
    :cond_8
    const-string v2, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 121
    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 122
    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v3, "friends"

    sget v4, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v3, "messages"

    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v3, "groups"

    sget v4, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v3, "notifications"

    sget v4, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 128
    :cond_9
    return-void

    .line 102
    .restart local v1    # "uid":I
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UserProfile;

    .line 103
    .local v0, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v3, v1, :cond_4

    .line 104
    const-string v3, "online"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 105
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    goto/16 :goto_0
.end method
