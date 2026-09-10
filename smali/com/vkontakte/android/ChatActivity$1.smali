.class Lcom/vkontakte/android/ChatActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 146
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    const-string v9, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 150
    const-string v9, "peer_id"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v10}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v10

    if-ne v9, v10, :cond_4

    .line 151
    const-string v9, "message"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 152
    .local v3, "msg":Lcom/vkontakte/android/Message;
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_c

    .line 153
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v9

    iget v10, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 155
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 156
    .local v8, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget v9, v3, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9, v8}, Lcom/vkontakte/android/ChatActivity;->access$3(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V

    .line 159
    .end local v8    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v9}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 160
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$4(Lcom/vkontakte/android/ChatActivity;)V

    .line 161
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$5(Lcom/vkontakte/android/ChatActivity;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$6(Lcom/vkontakte/android/ChatActivity;)V

    .line 162
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v9

    const v10, 0x77359400

    if-ge v9, v10, :cond_3

    iget-boolean v9, v3, Lcom/vkontakte/android/Message;->out:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/vkontakte/android/ChatActivity;->access$7(Lcom/vkontakte/android/ChatActivity;Z)V

    .line 163
    :cond_3
    iget-boolean v9, v3, Lcom/vkontakte/android/Message;->out:Z

    if-nez v9, :cond_4

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->playNotification()V

    .line 166
    .end local v3    # "msg":Lcom/vkontakte/android/Message;
    :cond_4
    const-string v9, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 167
    const-string v9, "msg_id"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 168
    .local v2, "mid":I
    const-string v9, "read_state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 169
    .local v6, "state":Z
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_d

    .line 177
    .end local v2    # "mid":I
    .end local v6    # "state":Z
    :cond_6
    :goto_0
    const-string v9, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 178
    const-string v9, "msg_id"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 179
    .restart local v2    # "mid":I
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_e

    .line 187
    .end local v2    # "mid":I
    :cond_8
    :goto_1
    const-string v9, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 188
    const-string v9, "uid"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 189
    .local v7, "uid":I
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v9

    if-ne v7, v9, :cond_9

    .line 190
    const-string v9, "online"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 191
    .local v5, "online":Z
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    const v10, 0x7f060182

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/ExTextView;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v10}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v12, "title"

    invoke-virtual {v10, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_f

    const-string v10, " <img src=\'2130837741\'/>"

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ExTextView;->setHTML(Ljava/lang/String;)V

    .line 192
    if-eqz v5, :cond_9

    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/vkontakte/android/ChatActivity;->access$7(Lcom/vkontakte/android/ChatActivity;Z)V

    .line 195
    .end local v5    # "online":Z
    .end local v7    # "uid":I
    :cond_9
    const-string v9, "com.vkontakte.android.CHAT_TITLE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 196
    const-string v9, "chat_id"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, "cid":I
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v9

    const v10, 0x77359400

    sub-int/2addr v9, v10

    if-ne v0, v9, :cond_a

    .line 198
    const-string v9, "title"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "newTitle":Ljava/lang/String;
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v9, v4}, Lcom/vkontakte/android/ChatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    const v10, 0x7f060182

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .end local v0    # "cid":I
    .end local v4    # "newTitle":Ljava/lang/String;
    :cond_a
    const-string v9, "com.vkontakte.android.TYPING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 204
    const-string v9, "uid"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 205
    .restart local v7    # "uid":I
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v9

    if-ne v7, v9, :cond_b

    .line 206
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v9

    const v10, 0x77359400

    if-ge v9, v10, :cond_10

    .line 207
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$8(Lcom/vkontakte/android/ChatActivity;)V

    .line 208
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/vkontakte/android/ChatActivity;->access$7(Lcom/vkontakte/android/ChatActivity;Z)V

    .line 209
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$9(Lcom/vkontakte/android/ChatActivity;)V

    .line 223
    .end local v7    # "uid":I
    :cond_b
    :goto_3
    return-void

    .line 152
    .restart local v3    # "msg":Lcom/vkontakte/android/Message;
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .local v1, "m":Lcom/vkontakte/android/Message;
    iget v10, v1, Lcom/vkontakte/android/Message;->id:I

    iget v11, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v10, v11, :cond_0

    goto :goto_3

    .line 169
    .end local v1    # "m":Lcom/vkontakte/android/Message;
    .end local v3    # "msg":Lcom/vkontakte/android/Message;
    .restart local v2    # "mid":I
    .restart local v6    # "state":Z
    :cond_d
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 170
    .restart local v3    # "msg":Lcom/vkontakte/android/Message;
    iget v10, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v10, v2, :cond_5

    .line 171
    iput-boolean v6, v3, Lcom/vkontakte/android/Message;->readState:Z

    .line 172
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v9}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    goto/16 :goto_0

    .line 179
    .end local v3    # "msg":Lcom/vkontakte/android/Message;
    .end local v6    # "state":Z
    :cond_e
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 180
    .restart local v3    # "msg":Lcom/vkontakte/android/Message;
    iget v10, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v10, v2, :cond_7

    .line 181
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v9}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    goto/16 :goto_1

    .line 191
    .end local v2    # "mid":I
    .end local v3    # "msg":Lcom/vkontakte/android/Message;
    .restart local v5    # "online":Z
    .restart local v7    # "uid":I
    :cond_f
    const-string v10, ""

    goto/16 :goto_2

    .line 211
    .end local v5    # "online":Z
    :cond_10
    const-string v9, "user"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 212
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$10(Lcom/vkontakte/android/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$10(Lcom/vkontakte/android/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_11
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 214
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 215
    .restart local v8    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9, v8}, Lcom/vkontakte/android/ChatActivity;->access$3(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V

    .line 218
    .end local v8    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_12
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9, v7}, Lcom/vkontakte/android/ChatActivity;->access$11(Lcom/vkontakte/android/ChatActivity;I)V

    .line 219
    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v9}, Lcom/vkontakte/android/ChatActivity;->access$8(Lcom/vkontakte/android/ChatActivity;)V

    goto/16 :goto_3
.end method
