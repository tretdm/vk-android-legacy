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

    .line 122
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v12, 0x77359400

    const/4 v11, 0x0

    .line 125
    const-string v7, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 126
    const-string v7, "peer_id"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v8}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v8

    if-ne v7, v8, :cond_4

    .line 127
    const-string v7, "message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 128
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_b

    .line 129
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v7

    iget v8, v2, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 131
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 132
    .local v6, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget v7, v2, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7, v6}, Lcom/vkontakte/android/ChatActivity;->access$3(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V

    .line 135
    .end local v6    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 136
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$4(Lcom/vkontakte/android/ChatActivity;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$5(Lcom/vkontakte/android/ChatActivity;)V

    .line 137
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v7

    if-ge v7, v12, :cond_3

    iget-boolean v7, v2, Lcom/vkontakte/android/Message;->out:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7, v11}, Lcom/vkontakte/android/ChatActivity;->access$6(Lcom/vkontakte/android/ChatActivity;Z)V

    .line 138
    :cond_3
    iget-boolean v7, v2, Lcom/vkontakte/android/Message;->out:Z

    if-nez v7, :cond_4

    invoke-static {}, Lcom/vkontakte/android/LongPollService;->playNotification()V

    .line 141
    .end local v2    # "msg":Lcom/vkontakte/android/Message;
    :cond_4
    const-string v7, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 142
    const-string v7, "msg_id"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "mid":I
    const-string v7, "read_state"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 144
    .local v4, "state":Z
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_c

    .line 152
    .end local v1    # "mid":I
    .end local v4    # "state":Z
    :cond_6
    :goto_0
    const-string v7, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 153
    const-string v7, "msg_id"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 154
    .restart local v1    # "mid":I
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_d

    .line 162
    .end local v1    # "mid":I
    :cond_8
    :goto_1
    const-string v7, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 163
    const-string v7, "uid"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 164
    .local v5, "uid":I
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v7

    if-ne v5, v7, :cond_9

    .line 165
    const-string v7, "online"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 166
    .local v3, "online":Z
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    const v8, 0x7f060197

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/ExTextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v8}, Lcom/vkontakte/android/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v10, "title"

    invoke-virtual {v8, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_e

    const-string v8, " <img src=\'2130837718\'/>"

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/ExTextView;->setHTML(Ljava/lang/String;)V

    .line 167
    if-eqz v3, :cond_9

    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7, v11}, Lcom/vkontakte/android/ChatActivity;->access$6(Lcom/vkontakte/android/ChatActivity;Z)V

    .line 170
    .end local v3    # "online":Z
    .end local v5    # "uid":I
    :cond_9
    const-string v7, "com.vkontakte.android.TYPING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 171
    const-string v7, "uid"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 172
    .restart local v5    # "uid":I
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v7

    if-ne v5, v7, :cond_a

    .line 173
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v7

    if-ge v7, v12, :cond_f

    .line 174
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$7(Lcom/vkontakte/android/ChatActivity;)V

    .line 175
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/vkontakte/android/ChatActivity;->access$6(Lcom/vkontakte/android/ChatActivity;Z)V

    .line 176
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$8(Lcom/vkontakte/android/ChatActivity;)V

    .line 190
    .end local v5    # "uid":I
    :cond_a
    :goto_3
    return-void

    .line 128
    .restart local v2    # "msg":Lcom/vkontakte/android/Message;
    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Message;

    .local v0, "m":Lcom/vkontakte/android/Message;
    iget v8, v0, Lcom/vkontakte/android/Message;->id:I

    iget v9, v2, Lcom/vkontakte/android/Message;->id:I

    if-ne v8, v9, :cond_0

    goto :goto_3

    .line 144
    .end local v0    # "m":Lcom/vkontakte/android/Message;
    .end local v2    # "msg":Lcom/vkontakte/android/Message;
    .restart local v1    # "mid":I
    .restart local v4    # "state":Z
    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 145
    .restart local v2    # "msg":Lcom/vkontakte/android/Message;
    iget v8, v2, Lcom/vkontakte/android/Message;->id:I

    if-ne v8, v1, :cond_5

    .line 146
    iput-boolean v4, v2, Lcom/vkontakte/android/Message;->readState:Z

    .line 147
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    goto/16 :goto_0

    .line 154
    .end local v2    # "msg":Lcom/vkontakte/android/Message;
    .end local v4    # "state":Z
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 155
    .restart local v2    # "msg":Lcom/vkontakte/android/Message;
    iget v8, v2, Lcom/vkontakte/android/Message;->id:I

    if-ne v8, v1, :cond_7

    .line 156
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v7}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    goto/16 :goto_1

    .line 166
    .end local v1    # "mid":I
    .end local v2    # "msg":Lcom/vkontakte/android/Message;
    .restart local v3    # "online":Z
    .restart local v5    # "uid":I
    :cond_e
    const-string v8, ""

    goto/16 :goto_2

    .line 178
    .end local v3    # "online":Z
    :cond_f
    const-string v7, "user"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 179
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$9(Lcom/vkontakte/android/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$9(Lcom/vkontakte/android/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_10
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 181
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 182
    .restart local v6    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7, v6}, Lcom/vkontakte/android/ChatActivity;->access$3(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V

    .line 185
    .end local v6    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_11
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7, v5}, Lcom/vkontakte/android/ChatActivity;->access$10(Lcom/vkontakte/android/ChatActivity;I)V

    .line 186
    iget-object v7, p0, Lcom/vkontakte/android/ChatActivity$1;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v7}, Lcom/vkontakte/android/ChatActivity;->access$7(Lcom/vkontakte/android/ChatActivity;)V

    goto/16 :goto_3
.end method
