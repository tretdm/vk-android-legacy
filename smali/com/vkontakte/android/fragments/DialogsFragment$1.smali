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
    .line 94
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    const-string v17, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v17, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Message;

    .line 100
    .local v10, "msg":Lcom/vkontakte/android/Message;
    const-string v17, "peer_id"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 101
    .local v13, "peer":I
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [Lcom/vkontakte/android/DialogEntry;

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput-object v18, v5, v17

    .line 102
    .local v5, "entry":[Lcom/vkontakte/android/DialogEntry;
    const/4 v6, 0x0

    .line 103
    .local v6, "found":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 104
    .local v4, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 105
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v13, :cond_2

    .line 106
    iget-boolean v0, v10, Lcom/vkontakte/android/Message;->out:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    iget-boolean v0, v10, Lcom/vkontakte/android/Message;->readState:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 107
    iget v0, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 108
    :cond_3
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    iget v0, v10, Lcom/vkontakte/android/Message;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    if-lez v17, :cond_4

    iget v0, v10, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$100(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto/16 :goto_0

    .line 112
    :cond_4
    iput-object v10, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 113
    const-string v17, "sender_photo"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    const v14, 0x7fffffff

    .line 116
    .local v14, "prevTime":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 117
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/DialogEntry;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v17, v0

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    add-int/lit8 v18, v7, -0x1

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 123
    :cond_5
    const/16 v17, 0x0

    aput-object v4, v5, v17

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$100(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 125
    const/4 v6, 0x1

    .line 129
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v7    # "i":I
    .end local v14    # "prevTime":I
    :cond_6
    if-nez v6, :cond_7

    .line 130
    new-instance v17, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v10, v2}, Lcom/vkontakte/android/fragments/DialogsFragment$1$1;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$1;Lcom/vkontakte/android/Message;Landroid/content/Intent;)V

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/vkontakte/android/data/Messages;->getUnreadCount(ILcom/vkontakte/android/data/Messages$GetUnreadCountCallback;)V

    .line 171
    .end local v5    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .end local v6    # "found":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "msg":Lcom/vkontakte/android/Message;
    .end local v13    # "peer":I
    :cond_7
    const-string v17, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 172
    const-string v17, "msg_id"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 173
    .local v10, "msg":I
    const-string v17, "read_state"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 174
    .local v15, "state":Z
    const-string v17, "le"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 175
    const-string v17, "peer_id"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 176
    .restart local v13    # "peer":I
    const-string v17, "in"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 177
    .local v9, "in":Z
    const/4 v11, 0x0

    .line 178
    .local v11, "needUpdate":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 179
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v13, :cond_8

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v0, v10, :cond_8

    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->out:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v9, :cond_8

    .line 180
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-boolean v15, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 181
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 182
    const/4 v11, 0x1

    goto :goto_2

    .line 121
    .end local v9    # "in":Z
    .end local v11    # "needUpdate":Z
    .end local v15    # "state":Z
    .restart local v5    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .restart local v6    # "found":Z
    .restart local v7    # "i":I
    .local v10, "msg":Lcom/vkontakte/android/Message;
    .restart local v14    # "prevTime":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/DialogEntry;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Lcom/vkontakte/android/Message;->time:I

    .line 116
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 185
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v5    # "entry":[Lcom/vkontakte/android/DialogEntry;
    .end local v6    # "found":Z
    .end local v7    # "i":I
    .end local v14    # "prevTime":I
    .restart local v9    # "in":Z
    .local v10, "msg":I
    .restart local v11    # "needUpdate":Z
    .restart local v15    # "state":Z
    :cond_a
    if-eqz v11, :cond_b

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$100(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    .line 197
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "in":Z
    .end local v10    # "msg":I
    .end local v11    # "needUpdate":Z
    .end local v13    # "peer":I
    .end local v15    # "state":Z
    :cond_b
    :goto_3
    const-string v17, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/vkontakte/android/fragments/DialogsFragment;->loadData(Z)V

    .line 200
    :cond_c
    const-string v17, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 201
    const-string v17, "uid"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 202
    .local v16, "uid":I
    const-string v17, "online"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 203
    .local v12, "online":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 204
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 205
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput v12, v0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$100(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto :goto_4

    .line 188
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v12    # "online":I
    .end local v16    # "uid":I
    .restart local v10    # "msg":I
    .restart local v15    # "state":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 189
    .restart local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v10, :cond_f

    .line 190
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-boolean v15, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$100(Lcom/vkontakte/android/fragments/DialogsFragment;)V

    goto/16 :goto_3

    .line 210
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "msg":I
    .end local v15    # "state":Z
    :cond_10
    const-string v17, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 211
    const-string v17, "id"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 212
    .local v3, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$000(Lcom/vkontakte/android/fragments/DialogsFragment;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 213
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

    if-ne v0, v1, :cond_11

    .line 214
    new-instance v17, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/vkontakte/android/fragments/DialogsFragment$1$2;-><init>(Lcom/vkontakte/android/fragments/DialogsFragment$1;Lcom/vkontakte/android/DialogEntry;)V

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 227
    .end local v3    # "cid":I
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_12
    const-string v17, "com.vkontakte.android.STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/fragments/DialogsFragment$1;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    move-object/from16 v17, v0

    const-string v18, "state"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$200(Lcom/vkontakte/android/fragments/DialogsFragment;IZ)V

    goto/16 :goto_0
.end method
