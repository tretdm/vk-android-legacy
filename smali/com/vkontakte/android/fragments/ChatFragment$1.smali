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
    .line 147
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 48
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    const-string v3, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 153
    const-string v3, "msg_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 154
    .local v35, "mid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/vkontakte/android/Message;

    .line 155
    .local v36, "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v36

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 160
    .end local v36    # "msg":Lcom/vkontakte/android/Message;
    :cond_3
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v45, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_4
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 162
    .local v28, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_4

    .line 163
    move-object/from16 v0, v45

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    .end local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$200(Lcom/vkontakte/android/fragments/ChatFragment;)I

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 169
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v35    # "mid":I
    .end local v45    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_6
    const-string v3, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 170
    const-string v3, "msg_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 171
    .restart local v35    # "mid":I
    const-string v3, "read_state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    .line 173
    .local v43, "state":Z
    const-string v3, "le"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 174
    const-string v3, "in"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 175
    .local v26, "in":Z
    const-string v3, "peer_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    .line 176
    .local v40, "peer":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v40

    if-ne v0, v3, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    .line 178
    .local v32, "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v35

    if-gt v3, v0, :cond_7

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    move/from16 v0, v26

    if-eq v3, v0, :cond_7

    .line 180
    move/from16 v0, v43

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_2

    .line 183
    .end local v32    # "m":Lcom/vkontakte/android/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v22

    .line 184
    .local v22, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 186
    .restart local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v35

    if-gt v3, v0, :cond_a

    move-object/from16 v0, v28

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v0, v26

    if-eq v3, v0, :cond_a

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-gt v3, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-lt v3, v0, :cond_9

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v16, v22, v3

    .line 190
    .local v16, "childNum":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v3

    if-lez v3, :cond_c

    .line 191
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 192
    .local v15, "cd":Landroid/graphics/drawable/ColorDrawable;
    const v3, -0x291f18

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    const-string v4, "alpha"

    const/4 v3, 0x1

    new-array v5, v3, [I

    const/4 v6, 0x0

    if-eqz v43, :cond_b

    const/4 v3, 0x0

    :goto_4
    aput v3, v5, v6

    invoke-static {v15, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 199
    .end local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v16    # "childNum":I
    :cond_9
    :goto_5
    move/from16 v0, v43

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 201
    :cond_a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 194
    .restart local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .restart local v16    # "childNum":I
    :cond_b
    const/16 v3, 0xff

    goto :goto_4

    .line 196
    .end local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v43, :cond_d

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_5

    :cond_d
    const v3, -0x291f18

    goto :goto_6

    .line 204
    .end local v16    # "childNum":I
    .end local v22    # "i":I
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v26    # "in":Z
    .end local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v40    # "peer":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    .line 205
    .restart local v32    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_f

    .line 207
    move/from16 v0, v43

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_7

    .line 210
    .end local v32    # "m":Lcom/vkontakte/android/Message;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v22

    .line 211
    .restart local v22    # "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 213
    .restart local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_11

    .line 215
    move/from16 v0, v43

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-gt v3, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-lt v3, v0, :cond_11

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v16, v22, v3

    .line 218
    .restart local v16    # "childNum":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v3

    if-lez v3, :cond_13

    .line 219
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 220
    .restart local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    const v3, -0x291f18

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    const-string v4, "alpha"

    const/4 v3, 0x1

    new-array v5, v3, [I

    const/4 v6, 0x0

    if-eqz v43, :cond_12

    const/4 v3, 0x0

    :goto_9
    aput v3, v5, v6

    invoke-static {v15, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    .end local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v16    # "childNum":I
    :cond_11
    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_8

    .line 222
    .restart local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .restart local v16    # "childNum":I
    :cond_12
    const/16 v3, 0xff

    goto :goto_9

    .line 224
    .end local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v43, :cond_14

    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v4, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_a

    :cond_14
    const v3, -0x291f18

    goto :goto_b

    .line 231
    .end local v16    # "childNum":I
    .end local v22    # "i":I
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v35    # "mid":I
    .end local v43    # "state":Z
    :cond_15
    const-string v3, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 232
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const v4, 0x77359400

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$600(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    goto/16 :goto_0

    .line 235
    :cond_16
    const-string v3, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$700(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 237
    :cond_17
    const-string v3, "peer_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$800(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    if-lez v3, :cond_18

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$808(Lcom/vkontakte/android/fragments/ChatFragment;)I

    goto/16 :goto_0

    .line 242
    :cond_18
    const-string v3, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    .line 243
    .restart local v32    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_19

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_mid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$900(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_mid"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "action_user_name_acc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/vkontakte/android/Message;

    .line 247
    .restart local v36    # "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v36

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, v4, :cond_1a

    goto/16 :goto_0

    .line 249
    .end local v36    # "msg":Lcom/vkontakte/android/Message;
    :cond_1b
    const/16 v27, -0x1

    .line 250
    .local v27, "insertAt":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_20

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_1c
    :goto_c
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v37, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v21, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_26

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1, v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1000(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 287
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1100(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1200(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 289
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1300(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-ge v3, v4, :cond_1e

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1400(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 291
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-le v3, v4, :cond_1f

    move-object/from16 v0, v32

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_1f

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1600(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 295
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1700(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1800(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 253
    .end local v21    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v37    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->time:I

    if-ge v3, v4, :cond_21

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 256
    :cond_21
    const v41, 0x7fffffff

    .line 257
    .local v41, "prevTime":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    .restart local v22    # "i":I
    :goto_e
    if-ltz v22, :cond_1c

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/vkontakte/android/Message;

    .line 259
    .local v31, "lm":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v0, v41

    if-lt v3, v0, :cond_24

    move-object/from16 v0, v31

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    if-lez v3, :cond_22

    move-object/from16 v0, v31

    iget v3, v0, Lcom/vkontakte/android/Message;->time:I

    :goto_f
    move-object/from16 v0, v32

    iget v4, v0, Lcom/vkontakte/android/Message;->time:I

    if-gt v3, v4, :cond_24

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v22, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    iget v12, v3, Lcom/vkontakte/android/Message;->id:I

    .line 261
    .local v12, "afterID":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v22, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 262
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/16 v30, 0x0

    .local v30, "j":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_1c

    .line 264
    const-string v4, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "items["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    if-ne v3, v12, :cond_23

    .line 266
    move/from16 v27, v30

    .line 267
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert item at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 259
    .end local v12    # "afterID":I
    .end local v30    # "j":I
    :cond_22
    const v3, 0x7fffffff

    goto/16 :goto_f

    .line 263
    .restart local v12    # "afterID":I
    .restart local v30    # "j":I
    :cond_23
    add-int/lit8 v30, v30, 0x1

    goto :goto_10

    .line 273
    .end local v12    # "afterID":I
    .end local v30    # "j":I
    :cond_24
    move-object/from16 v0, v31

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    if-lez v3, :cond_25

    move-object/from16 v0, v31

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v41, v0

    .line 257
    :goto_11
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_e

    .line 273
    :cond_25
    const v41, 0x7fffffff

    goto :goto_11

    .line 284
    .end local v22    # "i":I
    .end local v31    # "lm":Lcom/vkontakte/android/Message;
    .end local v41    # "prevTime":I
    .restart local v21    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v37    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1, v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1000(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$200(Lcom/vkontakte/android/fragments/ChatFragment;)I

    goto/16 :goto_d

    .line 299
    .end local v21    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v27    # "insertAt":I
    .end local v32    # "m":Lcom/vkontakte/android/Message;
    .end local v37    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_27
    const-string v3, "com.vkontakte.android.TYPING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 300
    const-string v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 302
    .local v46, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v46

    if-ne v0, v3, :cond_0

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-ge v3, v4, :cond_28

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1600(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1400(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1900(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 308
    :cond_28
    const-string v3, "user"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$600(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 318
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move/from16 v0, v46

    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2100(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1600(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 322
    .end local v46    # "uid":I
    :cond_2b
    const-string v3, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 323
    const-string v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v46

    .line 324
    .restart local v46    # "uid":I
    const-string v3, "online"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v39

    .line 325
    .local v39, "online":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v46

    if-ne v0, v3, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move/from16 v0, v39

    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2200(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    goto/16 :goto_0

    .line 328
    .end local v39    # "online":I
    .end local v46    # "uid":I
    :cond_2c
    const-string v3, "com.vkontakte.android.MESSAGE_ID_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 329
    const-string v3, "oldID"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 330
    .restart local v35    # "mid":I
    const-string v3, "newID"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 332
    .local v38, "nid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_2d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    .line 333
    .restart local v32    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_2d

    .line 334
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set msg id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move/from16 v0, v38

    move-object/from16 v1, v32

    iput v0, v1, Lcom/vkontakte/android/Message;->id:I

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 356
    .end local v32    # "m":Lcom/vkontakte/android/Message;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_2f
    :goto_12
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 357
    .restart local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v35

    if-ne v3, v0, :cond_2f

    .line 359
    move/from16 v0, v38

    move-object/from16 v1, v28

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    goto :goto_12

    .line 362
    .end local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_31

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1400(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 366
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1200(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 367
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v35    # "mid":I
    .end local v38    # "nid":I
    :cond_32
    const-string v3, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 368
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 369
    .local v25, "id":I
    const/16 v36, 0x0

    .line 370
    .restart local v36    # "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_33
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    .line 371
    .restart local v32    # "m":Lcom/vkontakte/android/Message;
    const/16 v22, 0x0

    .line 372
    .restart local v22    # "i":I
    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 373
    .local v11, "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v3, :cond_37

    move-object v3, v11

    .line 374
    check-cast v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v3, v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_37

    .line 375
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v44

    .line 378
    .local v44, "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v44, v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 380
    move-object/from16 v36, v32

    .line 408
    .end local v11    # "a":Lcom/vkontakte/android/Attachment;
    .end local v44    # "sz":I
    :cond_34
    :goto_14
    if-eqz v36, :cond_33

    .line 410
    .end local v22    # "i":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v32    # "m":Lcom/vkontakte/android/Message;
    :cond_35
    if-eqz v36, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_36
    :goto_15
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 413
    .restart local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    const/16 v22, 0x0

    .line 414
    .restart local v22    # "i":I
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 415
    .restart local v11    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v3, :cond_3a

    move-object v3, v11

    .line 416
    check-cast v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v3, v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_3a

    .line 417
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v44

    .line 420
    .restart local v44    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v44, v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto :goto_15

    .line 384
    .end local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v44    # "sz":I
    .restart local v32    # "m":Lcom/vkontakte/android/Message;
    :cond_37
    instance-of v3, v11, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v3, :cond_38

    move-object v3, v11

    .line 385
    check-cast v3, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v3, v3, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_38

    .line 386
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v44

    .line 389
    .restart local v44    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v44, v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 391
    move-object/from16 v36, v32

    .line 392
    goto/16 :goto_14

    .line 395
    .end local v44    # "sz":I
    :cond_38
    instance-of v3, v11, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v3, :cond_39

    .line 396
    check-cast v11, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v11    # "a":Lcom/vkontakte/android/Attachment;
    iget v3, v11, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_39

    .line 397
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v44

    .line 400
    .restart local v44    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v44, v3

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 402
    move-object/from16 v36, v32

    .line 403
    goto/16 :goto_14

    .line 406
    .end local v44    # "sz":I
    :cond_39
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_13

    .line 425
    .end local v32    # "m":Lcom/vkontakte/android/Message;
    .restart local v11    # "a":Lcom/vkontakte/android/Attachment;
    .restart local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_3a
    instance-of v3, v11, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v3, :cond_3b

    move-object v3, v11

    .line 426
    check-cast v3, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v3, v3, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_3b

    .line 427
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v44

    .line 430
    .restart local v44    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v44, v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_15

    .line 435
    .end local v44    # "sz":I
    :cond_3b
    instance-of v3, v11, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v3, :cond_3c

    .line 436
    check-cast v11, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v11    # "a":Lcom/vkontakte/android/Attachment;
    iget v3, v11, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_3c

    .line 437
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v0, v22

    invoke-virtual {v4, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2300(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v4, 0x43af0000    # 350.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v44

    .line 440
    .restart local v44    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v44, v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-static {v3, v0, v4}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_15

    .line 445
    .end local v44    # "sz":I
    :cond_3c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_16

    .line 460
    .end local v22    # "i":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 461
    .end local v25    # "id":I
    .end local v36    # "msg":Lcom/vkontakte/android/Message;
    :cond_3e
    const-string v3, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 462
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 463
    .restart local v25    # "id":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_3f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    .line 464
    .restart local v32    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_3f

    .line 465
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 469
    .end local v32    # "m":Lcom/vkontakte/android/Message;
    :cond_40
    const/16 v22, 0x0

    .line 470
    .restart local v22    # "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_17
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 471
    .restart local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v25

    if-ne v3, v0, :cond_44

    move-object/from16 v0, v28

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_41

    move-object/from16 v0, v28

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 472
    :cond_41
    const-string v3, "privacy"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_43

    .line 473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0d016b

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 481
    :goto_18
    const/4 v3, 0x1

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    .line 486
    .end local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int v22, v22, v3

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-gt v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-lt v3, v0, :cond_0

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v22, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    .line 489
    .local v47, "v":Landroid/view/View;
    const v3, 0x7f0800d9

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 490
    const v3, 0x7f0800d7

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 491
    const v3, 0x7f0800d8

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 492
    const v3, 0x7f0800d9

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 493
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_45

    .line 494
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

    .line 495
    .local v2, "sa":Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 496
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 497
    const v3, 0x7f0800d9

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 475
    .end local v2    # "sa":Landroid/view/animation/ScaleAnimation;
    .end local v47    # "v":Landroid/view/View;
    .restart local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_43
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0170

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d016f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0d01cd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_18

    .line 484
    :cond_44
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    .line 499
    .end local v28    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .restart local v47    # "v":Landroid/view/View;
    :cond_45
    const v3, 0x7f0800d9

    move-object/from16 v0, v47

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

    move-result-object v13

    .line 500
    .local v13, "animx":Landroid/animation/Animator;
    const v3, 0x7f0800d9

    move-object/from16 v0, v47

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

    move-result-object v14

    .line 501
    .local v14, "animy":Landroid/animation/Animator;
    new-instance v42, Landroid/animation/AnimatorSet;

    invoke-direct/range {v42 .. v42}, Landroid/animation/AnimatorSet;-><init>()V

    .line 502
    .local v42, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v14, v3, v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 503
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 504
    invoke-virtual/range {v42 .. v42}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 508
    .end local v13    # "animx":Landroid/animation/Animator;
    .end local v14    # "animy":Landroid/animation/Animator;
    .end local v22    # "i":I
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "id":I
    .end local v42    # "set":Landroid/animation/AnimatorSet;
    .end local v47    # "v":Landroid/view/View;
    :cond_46
    const-string v3, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 509
    const-string v3, "no_refresh_chat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    const-string v3, "reload_chats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 511
    const-string v3, "reload_chats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 512
    .local v18, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 513
    .local v20, "found":Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_47
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 514
    .local v17, "cid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$400(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_47

    .line 515
    const/16 v20, 0x1

    .line 519
    .end local v17    # "cid":I
    :cond_48
    if-nez v20, :cond_4d

    .line 520
    const-string v3, "marked_as_read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v33

    .line 521
    .local v33, "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "marked_as_unread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v34

    .line 522
    .local v34, "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 523
    .local v19, "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 524
    .local v29, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :cond_49
    :goto_19
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 525
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/vkontakte/android/Message;

    .line 526
    .restart local v32    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 527
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->remove()V

    goto :goto_19

    .line 530
    :cond_4a
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 531
    const/4 v3, 0x1

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 533
    :cond_4b
    move-object/from16 v0, v32

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 534
    const/4 v3, 0x0

    move-object/from16 v0, v32

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_19

    .line 537
    .end local v32    # "m":Lcom/vkontakte/android/Message;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2400(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 542
    .end local v18    # "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "found":Z
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v29    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    .end local v33    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v34    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2600(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2900(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3000(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    goto/16 :goto_0

    .line 499
    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    .line 500
    :array_1
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method
