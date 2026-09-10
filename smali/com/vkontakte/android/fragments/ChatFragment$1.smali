.class Lcom/vkontakte/android/fragments/ChatFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/ChatFragment;
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
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    .line 133
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    const-string v3, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 138
    const-string v3, "msg_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 139
    .local v20, "mid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 145
    :goto_0
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v28, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2(Lcom/vkontakte/android/fragments/ChatFragment;)I

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 373
    .end local v20    # "mid":I
    .end local v28    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_2
    :goto_2
    return-void

    .line 139
    .restart local v20    # "mid":I
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/Message;

    .line 140
    .local v21, "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v20

    if-ne v4, v0, :cond_0

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v21    # "msg":Lcom/vkontakte/android/Message;
    .restart local v28    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 147
    .local v18, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v18

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v20

    if-ne v4, v0, :cond_1

    .line 148
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v20    # "mid":I
    .end local v28    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_5
    const-string v3, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 155
    const-string v3, "msg_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 156
    .restart local v20    # "mid":I
    const-string v3, "read_state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 158
    .local v26, "state":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v16

    .line 165
    .local v16, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 167
    .restart local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v20

    if-ne v3, v0, :cond_7

    .line 169
    move/from16 v0, v26

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    move/from16 v0, v16

    if-gt v3, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move/from16 v0, v16

    if-lt v3, v0, :cond_7

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v14, v16, v3

    .line 172
    .local v14, "childNum":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v26, :cond_9

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 175
    .end local v14    # "childNum":I
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 158
    .end local v16    # "i":I
    .end local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/Message;

    .line 159
    .local v19, "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v20

    if-ne v4, v0, :cond_6

    .line 161
    move/from16 v0, v26

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto/16 :goto_3

    .line 172
    .end local v19    # "m":Lcom/vkontakte/android/Message;
    .restart local v14    # "childNum":I
    .restart local v16    # "i":I
    .restart local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_9
    const v3, -0x291f18

    goto :goto_5

    .line 177
    .end local v14    # "childNum":I
    .end local v16    # "i":I
    .end local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v20    # "mid":I
    .end local v26    # "state":Z
    :cond_a
    const-string v3, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 178
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const v4, 0x77359400

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_2

    .line 181
    :cond_b
    const-string v3, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 182
    const-string v3, "peer_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 183
    const-string v3, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/Message;

    .line 184
    .restart local v19    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_f

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v22, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v15, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v22

    invoke-static {v4, v0, v15}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$8(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$9(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 194
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3, v15}, Lcom/vkontakte/android/fragments/ChatFragment;->access$10(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-ge v3, v4, :cond_e

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$11(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 196
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-le v3, v4, :cond_2

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$12(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_2

    .line 184
    .end local v15    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/Message;

    .line 185
    .restart local v21    # "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v4, v5, :cond_c

    goto/16 :goto_2

    .line 201
    .end local v19    # "m":Lcom/vkontakte/android/Message;
    .end local v21    # "msg":Lcom/vkontakte/android/Message;
    :cond_10
    const-string v3, "com.vkontakte.android.TYPING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 202
    const-string v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 204
    .local v29, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v29

    if-ne v0, v3, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-ge v3, v4, :cond_11

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$11(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$14(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_2

    .line 210
    :cond_11
    const-string v3, "user"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$12(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$12(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move/from16 v0, v29

    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$15(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_2

    .line 221
    .end local v29    # "uid":I
    :cond_13
    const-string v3, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 222
    const-string v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 223
    .restart local v29    # "uid":I
    const-string v3, "online"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 224
    .local v24, "online":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v29

    if-ne v0, v3, :cond_2

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move/from16 v0, v24

    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$16(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    goto/16 :goto_2

    .line 227
    .end local v24    # "online":I
    .end local v29    # "uid":I
    :cond_14
    const-string v3, "com.vkontakte.android.MESSAGE_ID_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 228
    const-string v3, "oldID"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 229
    .restart local v20    # "mid":I
    const-string v3, "newID"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 231
    .local v23, "nid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 255
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    .line 261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_17

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$11(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 265
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$9(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_2

    .line 231
    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/Message;

    .line 232
    .restart local v19    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v20

    if-ne v4, v0, :cond_15

    .line 233
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set msg id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    move/from16 v0, v23

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/Message;->id:I

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto :goto_6

    .line 255
    .end local v19    # "m":Lcom/vkontakte/android/Message;
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 256
    .restart local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v18

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v20

    if-ne v4, v0, :cond_16

    .line 257
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Set item id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    goto/16 :goto_7

    .line 266
    .end local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v20    # "mid":I
    .end local v23    # "nid":I
    :cond_1a
    const-string v3, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 267
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 268
    .local v17, "id":I
    const/16 v21, 0x0

    .line 269
    .restart local v21    # "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 287
    :goto_8
    if-eqz v21, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_20

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_2

    .line 269
    :cond_1d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/Message;

    .line 270
    .restart local v19    # "m":Lcom/vkontakte/android/Message;
    const/16 v16, 0x0

    .line 271
    .restart local v16    # "i":I
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 285
    :goto_b
    if-eqz v21, :cond_1b

    goto :goto_8

    .line 271
    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 272
    .local v11, "a":Lcom/vkontakte/android/Attachment;
    instance-of v5, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v5, :cond_1f

    .line 273
    check-cast v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v11    # "a":Lcom/vkontakte/android/Attachment;
    iget v5, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_1f

    .line 274
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v3, "vk"

    const-string v5, "Msg attachment set."

    invoke-static {v3, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$17(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 277
    .local v27, "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v27, v3

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-static {v3, v0, v5}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 279
    move-object/from16 v21, v19

    .line 280
    goto :goto_b

    .line 283
    .end local v27    # "sz":I
    :cond_1f
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    .line 288
    .end local v16    # "i":I
    .end local v19    # "m":Lcom/vkontakte/android/Message;
    :cond_20
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 290
    .restart local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    const/16 v16, 0x0

    .line 291
    .restart local v16    # "i":I
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 292
    .restart local v11    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v5, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v5, :cond_21

    .line 293
    check-cast v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    .end local v11    # "a":Lcom/vkontakte/android/Attachment;
    iget v5, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    move/from16 v0, v17

    if-ne v5, v0, :cond_21

    .line 294
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v0, v16

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v3, "vk"

    const-string v5, "Item attachment set."

    invoke-static {v3, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$17(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 297
    .restart local v27    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v27, v3

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-static {v3, v0, v5}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_9

    .line 302
    .end local v27    # "sz":I
    :cond_21
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    .line 318
    .end local v16    # "i":I
    .end local v17    # "id":I
    .end local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v21    # "msg":Lcom/vkontakte/android/Message;
    :cond_22
    const-string v3, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 319
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 320
    .restart local v17    # "id":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_24

    .line 326
    :goto_d
    const/16 v16, 0x0

    .line 327
    .restart local v16    # "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_25

    .line 343
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int v16, v16, v3

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    move/from16 v0, v16

    if-gt v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move/from16 v0, v16

    if-lt v3, v0, :cond_2

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v16, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    .line 346
    .local v30, "v":Landroid/view/View;
    const v3, 0x7f0800d2

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 347
    const v3, 0x7f0800d0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 348
    const v3, 0x7f0800d1

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    const v3, 0x7f0800d2

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 350
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_29

    .line 351
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3c23d70a    # 0.01f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3c23d70a    # 0.01f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 352
    .local v2, "sa":Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 353
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 354
    const v3, 0x7f0800d2

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_2

    .line 320
    .end local v2    # "sa":Landroid/view/animation/ScaleAnimation;
    .end local v16    # "i":I
    .end local v30    # "v":Landroid/view/View;
    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/Message;

    .line 321
    .restart local v19    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v17

    if-ne v4, v0, :cond_23

    .line 322
    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->sendFailed:Z

    goto/16 :goto_d

    .line 327
    .end local v19    # "m":Lcom/vkontakte/android/Message;
    .restart local v16    # "i":I
    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 328
    .restart local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v18

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v17

    if-ne v4, v0, :cond_28

    move-object/from16 v0, v18

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_26

    move-object/from16 v0, v18

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_28

    .line 329
    :cond_26
    const-string v3, "privacy"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_27

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f060066

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 338
    :goto_10
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    goto/16 :goto_f

    .line 332
    :cond_27
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    const v4, 0x7f060041

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 334
    const v4, 0x7f060042

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 335
    const v4, 0x7f060028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 336
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_10

    .line 341
    :cond_28
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_e

    .line 356
    .end local v18    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .restart local v30    # "v":Landroid/view/View;
    :cond_29
    const v3, 0x7f0800d2

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 357
    .local v12, "animx":Landroid/animation/Animator;
    const v3, 0x7f0800d2

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "scaleY"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 358
    .local v13, "animy":Landroid/animation/Animator;
    new-instance v25, Landroid/animation/AnimatorSet;

    invoke-direct/range {v25 .. v25}, Landroid/animation/AnimatorSet;-><init>()V

    .line 359
    .local v25, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    const/4 v4, 0x1

    aput-object v13, v3, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 360
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 361
    invoke-virtual/range {v25 .. v25}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 365
    .end local v12    # "animx":Landroid/animation/Animator;
    .end local v13    # "animy":Landroid/animation/Animator;
    .end local v16    # "i":I
    .end local v17    # "id":I
    .end local v25    # "set":Landroid/animation/AnimatorSet;
    .end local v30    # "v":Landroid/view/View;
    :cond_2a
    const-string v3, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$18(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$19(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$20(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_2

    .line 356
    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    .line 357
    :array_1
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method
