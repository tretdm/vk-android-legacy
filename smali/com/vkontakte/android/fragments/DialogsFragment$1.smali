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

    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/DialogsFragment$1;)Lcom/vkontakte/android/fragments/DialogsFragment;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const-string v16, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    if-nez v16, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const-string v16, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Message;

    .line 101
    .local v9, "msg":Lcom/vkontakte/android/Message;
    const-string v16, "peer_id"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 102
    .local v12, "peer":I
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v5, v0, [Lcom/vkontakte/android/DialogEntry;

    .line 103
    .local v5, "entry":[Lcom/vkontakte/android/DialogEntry;
    const/4 v6, 0x0

    .line 104
    .local v6, "found":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_b

    .line 130
    :goto_1
    if-nez v6, :cond_3

    .line 131
    new-instance v16, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v9, v2}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$1;Lcom/vkontakte/android/Message;Landroid/content/Intent;)V

    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lcom/vkontakte/android/data/Messages;->getUnreadCount(ILcom/vkontakte/android/data/Messages$GetUnreadCountCallback;)V

    .line 172
    .end local v5    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .end local v6    # "found":Z
    .end local v9    # "msg":Lcom/vkontakte/android/Message;
    .end local v12    # "peer":I
    :cond_3
    const-string v16, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 173
    const-string v16, "msg_id"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 174
    .local v9, "msg":I
    const-string v16, "read_state"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 175
    .local v14, "state":Z
    const-string v16, "le"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 176
    const-string v16, "peer_id"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 177
    .restart local v12    # "peer":I
    const-string v16, "in"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 178
    .local v8, "in":Z
    const/4 v10, 0x0

    .line 179
    .local v10, "needUpdate":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_10

    .line 186
    if-eqz v10, :cond_5

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 198
    .end local v8    # "in":Z
    .end local v9    # "msg":I
    .end local v10    # "needUpdate":Z
    .end local v12    # "peer":I
    .end local v14    # "state":Z
    :cond_5
    :goto_3
    const-string v16, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 201
    :cond_6
    const-string v16, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 202
    const-string v16, "uid"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 203
    .local v15, "uid":I
    const-string v16, "online"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 204
    .local v11, "online":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_13

    .line 211
    .end local v11    # "online":I
    .end local v15    # "uid":I
    :cond_8
    const-string v16, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 212
    const-string v16, "id"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 213
    .local v3, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_14

    .line 228
    .end local v3    # "cid":I
    :cond_a
    :goto_5
    const-string v16, "com.vkontakte.android.STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    const-string v17, "state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$2(Lcom/vkontakte/android/fragments/DialogsFragment;IZ)V

    goto/16 :goto_0

    .line 104
    .restart local v5    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .restart local v6    # "found":Z
    .local v9, "msg":Lcom/vkontakte/android/Message;
    .restart local v12    # "peer":I
    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 105
    .local v4, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 106
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v12, :cond_2

    .line 107
    iget-boolean v0, v9, Lcom/vkontakte/android/Message;->out:Z

    move/from16 v16, v0

    if-nez v16, :cond_c

    iget-boolean v0, v9, Lcom/vkontakte/android/Message;->readState:Z

    move/from16 v16, v0

    if-nez v16, :cond_c

    .line 108
    iget v0, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 109
    :cond_c
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v16, v0

    iget v0, v9, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_d

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v16, v0

    if-lez v16, :cond_d

    iget v0, v9, Lcom/vkontakte/android/Message;->id:I

    move/from16 v16, v0

    if-lez v16, :cond_d

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto/16 :goto_0

    .line 113
    :cond_d
    iput-object v9, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 114
    const-string v16, "sender_photo"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 116
    const v13, 0x7fffffff

    .line 117
    .local v13, "prevTime":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-lt v7, v0, :cond_e

    .line 124
    :goto_7
    const/16 v16, 0x0

    aput-object v4, v5, v16

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 126
    const/4 v6, 0x1

    .line 127
    goto/16 :goto_1

    .line 118
    :cond_e
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v0, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/DialogEntry;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v16, v0

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_f

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    add-int/lit8 v17, v7, -0x1

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    .line 122
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/DialogEntry;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Lcom/vkontakte/android/Message;->time:I

    .line 117
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    .line 179
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v5    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .end local v6    # "found":Z
    .end local v7    # "i":I
    .end local v13    # "prevTime":I
    .restart local v8    # "in":Z
    .local v9, "msg":I
    .restart local v10    # "needUpdate":Z
    .restart local v14    # "state":Z
    :cond_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 180
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v12, :cond_4

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v0, v9, :cond_4

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->out:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_4

    .line 181
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 182
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 183
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 189
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v8    # "in":Z
    .end local v10    # "needUpdate":Z
    .end local v12    # "peer":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$0(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_12
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 190
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v9, :cond_12

    .line 191
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto/16 :goto_3

    .line 204
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v9    # "msg":I
    .end local v14    # "state":Z
    .restart local v11    # "online":I
    .restart local v15    # "uid":I
    :cond_13
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 205
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v15, :cond_7

    .line 206
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v11, v0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$1(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto/16 :goto_4

    .line 213
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v11    # "online":I
    .end local v15    # "uid":I
    .restart local v3    # "cid":I
    :cond_14
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 214
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v17, v0

    const v18, 0x77359400

    add-int v18, v18, v3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 215
    new-instance v16, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$1;Lcom/vkontakte/android/DialogEntry;)V

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    goto/16 :goto_5
.end method
