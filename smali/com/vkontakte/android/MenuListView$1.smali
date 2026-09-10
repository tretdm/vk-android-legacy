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
    .line 88
    iput-object p1, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 91
    const-string v3, "com.vkontakte.android.FRIEND_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 95
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 96
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v4}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 100
    :cond_1
    const-string v3, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 102
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    .line 104
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 105
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v4}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 109
    :cond_3
    const-string v3, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    const-string v3, "uid"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, "uid":I
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$000(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UserProfile;

    .line 112
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    iget v3, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v3, v2, :cond_4

    .line 113
    const-string v3, "online"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 114
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    goto :goto_0

    .line 118
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v2    # "uid":I
    :cond_5
    const-string v3, "com.vkontakte.android.GROUPS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 120
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Groups;->getGroups(Ljava/util/ArrayList;)V

    .line 121
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_6

    .line 122
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v4}, Lcom/vkontakte/android/MenuListView;->access$100(Lcom/vkontakte/android/MenuListView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 123
    :cond_6
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 125
    :cond_7
    const-string v3, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 126
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    const-string v4, "photo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/MenuListView;->access$202(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 128
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 130
    :cond_8
    const-string v3, "com.vkontakte.android.USER_NAME_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 131
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    const-string v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/MenuListView;->access$402(Lcom/vkontakte/android/MenuListView;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 133
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$300(Lcom/vkontakte/android/MenuListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 135
    :cond_9
    const-string v3, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 136
    sget-object v3, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v4, "friends"

    sget v5, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v3, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v4, "messages"

    sget v5, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v3, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v4, "groups"

    sget v5, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v3, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v4, "notifications"

    sget v5, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 142
    :cond_a
    const-string v3, "com.vkontakte.android.SERVICE_STOPPING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 143
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-static {v3}, Lcom/vkontakte/android/MenuListView;->access$500(Lcom/vkontakte/android/MenuListView;)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v3, p0, Lcom/vkontakte/android/MenuListView$1;->this$0:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v3}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 146
    :cond_b
    return-void
.end method
