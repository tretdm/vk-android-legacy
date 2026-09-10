.class Lcom/vkontakte/android/fragments/DialogsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1;)Lcom/vkontakte/android/fragments/DialogsFragment;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 79
    const-string v9, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 80
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v9, "message"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Message;

    .line 82
    .local v4, "msg":Lcom/vkontakte/android/Message;
    const-string v9, "peer_id"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 83
    .local v6, "peer":I
    new-array v2, v12, [Lcom/vkontakte/android/DialogEntry;

    .line 84
    .local v2, "entry":[Lcom/vkontakte/android/DialogEntry;
    const/4 v3, 0x0

    .line 85
    .local v3, "found":Z
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_a

    .line 97
    :goto_1
    if-nez v3, :cond_3

    .line 98
    new-instance v1, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v1}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 99
    .local v1, "e":Lcom/vkontakte/android/DialogEntry;
    iput-object v4, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 100
    const-string v9, "sender_photo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 101
    const-string v9, "peer_profile"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/UserProfile;

    iput-object v9, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 102
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 103
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 106
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v2    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .end local v3    # "found":Z
    .end local v4    # "msg":Lcom/vkontakte/android/Message;
    .end local v6    # "peer":I
    :cond_3
    const-string v9, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 107
    const-string v9, "msg_id"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 108
    .local v4, "msg":I
    const-string v9, "read_state"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 109
    .local v7, "state":Z
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_b

    .line 117
    .end local v4    # "msg":I
    .end local v7    # "state":Z
    :cond_5
    :goto_2
    const-string v9, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 118
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v9, v12}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 120
    :cond_6
    const-string v9, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 121
    const-string v9, "uid"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 122
    .local v8, "uid":I
    const-string v9, "online"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 123
    .local v5, "online":I
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_c

    .line 130
    .end local v5    # "online":I
    .end local v8    # "uid":I
    :cond_8
    const-string v9, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 131
    const-string v9, "id"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "cid":I
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 133
    .restart local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v10, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v10, v10, Lcom/vkontakte/android/Message;->peer:I

    const v11, 0x77359400

    add-int/2addr v11, v0

    if-ne v10, v11, :cond_9

    .line 134
    new-instance v9, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

    invoke-direct {v9, p0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$1;Lcom/vkontakte/android/DialogEntry;)V

    invoke-static {v0, v9}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto/16 :goto_0

    .line 85
    .end local v0    # "cid":I
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v2    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .restart local v3    # "found":Z
    .local v4, "msg":Lcom/vkontakte/android/Message;
    .restart local v6    # "peer":I
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 86
    .restart local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v10, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v10, v10, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v10, v6, :cond_2

    .line 87
    iput-object v4, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 88
    const-string v9, "sender_photo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 89
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 91
    aput-object v1, v2, v11

    .line 92
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 93
    const/4 v3, 0x1

    .line 94
    goto/16 :goto_1

    .line 109
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v2    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .end local v3    # "found":Z
    .end local v6    # "peer":I
    .local v4, "msg":I
    .restart local v7    # "state":Z
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 110
    .restart local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v10, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v10, v10, Lcom/vkontakte/android/Message;->id:I

    if-ne v10, v4, :cond_4

    .line 111
    iget-object v9, v1, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iput-boolean v7, v9, Lcom/vkontakte/android/Message;->readState:Z

    .line 112
    iget-object v9, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v9}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto/16 :goto_2

    .line 123
    .end local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v4    # "msg":I
    .end local v7    # "state":Z
    .restart local v5    # "online":I
    .restart local v8    # "uid":I
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/DialogEntry;

    .line 124
    .restart local v1    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v10, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v10, v10, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v10, v8, :cond_7

    .line 125
    iget-object v10, v1, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iput v5, v10, Lcom/vkontakte/android/UserProfile;->online:I

    .line 126
    iget-object v10, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v10}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto/16 :goto_3
.end method
