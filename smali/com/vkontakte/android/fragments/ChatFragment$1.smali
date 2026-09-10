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

    .line 146
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 46
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v3, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 152
    const-string v3, "msg_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 153
    .local v33, "mid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 159
    :goto_1
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v43, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2(Lcom/vkontakte/android/fragments/ChatFragment;)I

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto :goto_0

    .line 153
    .end local v43    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/Message;

    .line 154
    .local v34, "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v34

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v33

    if-ne v4, v0, :cond_2

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    .end local v34    # "msg":Lcom/vkontakte/android/Message;
    .restart local v43    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 161
    .local v26, "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v33

    if-ne v4, v0, :cond_3

    .line 162
    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 168
    .end local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v33    # "mid":I
    .end local v43    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/fragments/ChatFragment$ListItem;>;"
    :cond_6
    const-string v3, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 169
    const-string v3, "msg_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 170
    .restart local v33    # "mid":I
    const-string v3, "read_state"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    .line 172
    .local v41, "state":Z
    const-string v3, "le"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 173
    const-string v3, "in"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 174
    .local v24, "in":Z
    const-string v3, "peer_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 175
    .local v38, "peer":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v38

    if-ne v0, v3, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_a

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v22

    .line 183
    .local v22, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 185
    .restart local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v33

    if-gt v3, v0, :cond_9

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isOut:Z

    move/from16 v0, v24

    if-eq v3, v0, :cond_9

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-gt v3, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-lt v3, v0, :cond_8

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v16, v22, v3

    .line 189
    .local v16, "childNum":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v3, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

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

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

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

    .line 190
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 191
    .local v15, "cd":Landroid/graphics/drawable/ColorDrawable;
    const v3, -0x291f18

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    const-string v5, "alpha"

    const/4 v3, 0x1

    new-array v6, v3, [I

    const/4 v7, 0x0

    if-eqz v41, :cond_b

    const/4 v3, 0x0

    :goto_5
    aput v3, v6, v7

    invoke-static {v15, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 198
    .end local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v16    # "childNum":I
    :cond_8
    :goto_6
    move/from16 v0, v41

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 200
    :cond_9
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 176
    .end local v22    # "i":I
    .end local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/vkontakte/android/Message;

    .line 177
    .local v30, "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v33

    if-gt v4, v0, :cond_7

    move-object/from16 v0, v30

    iget-boolean v4, v0, Lcom/vkontakte/android/Message;->out:Z

    move/from16 v0, v24

    if-eq v4, v0, :cond_7

    .line 179
    move/from16 v0, v41

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto/16 :goto_3

    .line 193
    .end local v30    # "m":Lcom/vkontakte/android/Message;
    .restart local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .restart local v16    # "childNum":I
    .restart local v22    # "i":I
    .restart local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_b
    const/16 v3, 0xff

    goto :goto_5

    .line 195
    .end local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v41, :cond_d

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6

    :cond_d
    const v3, -0x291f18

    goto :goto_7

    .line 203
    .end local v16    # "childNum":I
    .end local v22    # "i":I
    .end local v24    # "in":Z
    .end local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v38    # "peer":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11

    .line 209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v22

    .line 210
    .restart local v22    # "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 212
    .restart local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v33

    if-ne v3, v0, :cond_10

    .line 214
    move/from16 v0, v41

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->readState:Z

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-gt v3, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-lt v3, v0, :cond_10

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v16, v22, v3

    .line 217
    .restart local v16    # "childNum":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v3, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

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

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

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

    .line 218
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 219
    .restart local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    const v3, -0x291f18

    invoke-virtual {v15, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    const-string v5, "alpha"

    const/4 v3, 0x1

    new-array v6, v3, [I

    const/4 v7, 0x0

    if-eqz v41, :cond_12

    const/4 v3, 0x0

    :goto_a
    aput v3, v6, v7

    invoke-static {v15, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 227
    .end local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .end local v16    # "childNum":I
    :cond_10
    :goto_b
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_9

    .line 203
    .end local v22    # "i":I
    .end local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/vkontakte/android/Message;

    .line 204
    .restart local v30    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v33

    if-ne v4, v0, :cond_f

    .line 206
    move/from16 v0, v41

    move-object/from16 v1, v30

    iput-boolean v0, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto/16 :goto_8

    .line 221
    .end local v30    # "m":Lcom/vkontakte/android/Message;
    .restart local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    .restart local v16    # "childNum":I
    .restart local v22    # "i":I
    .restart local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    :cond_12
    const/16 v3, 0xff

    goto :goto_a

    .line 223
    .end local v15    # "cd":Landroid/graphics/drawable/ColorDrawable;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v41, :cond_14

    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_b

    :cond_14
    const v3, -0x291f18

    goto :goto_c

    .line 230
    .end local v16    # "childNum":I
    .end local v22    # "i":I
    .end local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v33    # "mid":I
    .end local v41    # "state":Z
    :cond_15
    const-string v3, "com.vkontakte.android.CHAT_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 231
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const v4, 0x77359400

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    goto/16 :goto_0

    .line 234
    :cond_16
    const-string v3, "com.vkontakte.android.NEW_MESSAGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$7(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    :cond_17
    const-string v3, "peer_id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$8(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    if-lez v3, :cond_18

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$8(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$9(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    goto/16 :goto_0

    .line 241
    :cond_18
    const-string v3, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v30

    check-cast v30, Lcom/vkontakte/android/Message;

    .line 242
    .restart local v30    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_19

    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_mid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$10(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v0, v30

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

    .line 245
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 248
    const/16 v25, -0x1

    .line 249
    .local v25, "insertAt":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_20

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_1b
    :goto_d
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Insert at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v35, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v21, "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_26

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1, v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$11(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 286
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$12(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 288
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$14(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/ArrayList;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-ge v3, v4, :cond_1d

    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$15(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 290
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-le v3, v4, :cond_1e

    move-object/from16 v0, v30

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-nez v3, :cond_1e

    .line 291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$16(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v30

    iget v4, v0, Lcom/vkontakte/android/Message;->sender:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$17(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 294
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$18(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$19(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 245
    .end local v21    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25    # "insertAt":I
    .end local v35    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/vkontakte/android/Message;

    .line 246
    .restart local v34    # "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v34

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move-object/from16 v0, v30

    iget v5, v0, Lcom/vkontakte/android/Message;->id:I

    if-ne v4, v5, :cond_1a

    goto/16 :goto_0

    .line 252
    .end local v34    # "msg":Lcom/vkontakte/android/Message;
    .restart local v25    # "insertAt":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    iget v3, v3, Lcom/vkontakte/android/Message;->time:I

    move-object/from16 v0, v30

    iget v4, v0, Lcom/vkontakte/android/Message;->time:I

    if-ge v3, v4, :cond_21

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 255
    :cond_21
    const v39, 0x7fffffff

    .line 256
    .local v39, "prevTime":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v22, v3, -0x1

    .restart local v22    # "i":I
    :goto_f
    if-ltz v22, :cond_1b

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/vkontakte/android/Message;

    .line 258
    .local v29, "lm":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v30

    iget v3, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v0, v39

    if-lt v3, v0, :cond_24

    move-object/from16 v0, v29

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    if-lez v3, :cond_22

    move-object/from16 v0, v29

    iget v3, v0, Lcom/vkontakte/android/Message;->time:I

    :goto_10
    move-object/from16 v0, v30

    iget v4, v0, Lcom/vkontakte/android/Message;->time:I

    if-gt v3, v4, :cond_24

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

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

    .line 260
    .local v12, "afterID":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v22, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 261
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inserting after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/16 v28, 0x0

    .local v28, "j":I
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_1b

    .line 263
    const-string v4, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "items["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "] = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    iget v3, v3, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    if-ne v3, v12, :cond_23

    .line 265
    move/from16 v25, v28

    .line 266
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Insert item at: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 258
    .end local v12    # "afterID":I
    .end local v28    # "j":I
    :cond_22
    const v3, 0x7fffffff

    goto/16 :goto_10

    .line 262
    .restart local v12    # "afterID":I
    .restart local v28    # "j":I
    :cond_23
    add-int/lit8 v28, v28, 0x1

    goto :goto_11

    .line 272
    .end local v12    # "afterID":I
    .end local v28    # "j":I
    :cond_24
    move-object/from16 v0, v29

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    if-lez v3, :cond_25

    move-object/from16 v0, v29

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v39, v0

    .line 256
    :goto_12
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_f

    .line 272
    :cond_25
    const v39, 0x7fffffff

    goto :goto_12

    .line 283
    .end local v22    # "i":I
    .end local v29    # "lm":Lcom/vkontakte/android/Message;
    .end local v39    # "prevTime":I
    .restart local v21    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v35    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1, v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$11(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2(Lcom/vkontakte/android/fragments/ChatFragment;)I

    goto/16 :goto_e

    .line 298
    .end local v21    # "fuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25    # "insertAt":I
    .end local v30    # "m":Lcom/vkontakte/android/Message;
    .end local v35    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :cond_27
    const-string v3, "com.vkontakte.android.TYPING"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 299
    const-string v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v44

    .line 301
    .local v44, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v44

    if-ne v0, v3, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    const v4, 0x77359400

    if-ge v3, v4, :cond_28

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$17(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$15(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$20(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 307
    :cond_28
    const-string v3, "user"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v44

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$16(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$16(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$21(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2a

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 317
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move/from16 v0, v44

    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$22(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$17(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 321
    .end local v44    # "uid":I
    :cond_2b
    const-string v3, "com.vkontakte.android.USER_PRESENCE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 322
    const-string v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v44

    .line 323
    .restart local v44    # "uid":I
    const-string v3, "online"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 324
    .local v37, "online":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v44

    if-ne v0, v3, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    move/from16 v0, v37

    invoke-static {v3, v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$23(Lcom/vkontakte/android/fragments/ChatFragment;I)V

    goto/16 :goto_0

    .line 327
    .end local v37    # "online":I
    .end local v44    # "uid":I
    :cond_2c
    const-string v3, "com.vkontakte.android.MESSAGE_ID_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 328
    const-string v3, "oldID"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v33

    .line 329
    .restart local v33    # "mid":I
    const-string v3, "newID"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 331
    .local v36, "nid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_30

    .line 355
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_31

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-ne v3, v4, :cond_2f

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$15(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 365
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 331
    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/vkontakte/android/Message;

    .line 332
    .restart local v30    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v33

    if-ne v4, v0, :cond_2d

    .line 333
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set msg id "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move/from16 v0, v36

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/Message;->id:I

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto :goto_13

    .line 355
    .end local v30    # "m":Lcom/vkontakte/android/Message;
    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 356
    .restart local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v33

    if-ne v4, v0, :cond_2e

    .line 358
    move/from16 v0, v36

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    goto :goto_14

    .line 366
    .end local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v33    # "mid":I
    .end local v36    # "nid":I
    :cond_32
    const-string v3, "com.vkontakte.android.UPLOAD_DONE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 367
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 368
    .local v23, "id":I
    const/16 v34, 0x0

    .line 369
    .restart local v34    # "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 409
    :goto_15
    if-eqz v34, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_34
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 369
    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/vkontakte/android/Message;

    .line 370
    .restart local v30    # "m":Lcom/vkontakte/android/Message;
    const/16 v22, 0x0

    .line 371
    .restart local v22    # "i":I
    move-object/from16 v0, v30

    iget-object v3, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_36

    .line 407
    :goto_18
    if-eqz v34, :cond_33

    goto :goto_15

    .line 371
    :cond_36
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 372
    .local v11, "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v3, :cond_37

    move-object v3, v11

    .line 373
    check-cast v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v3, v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_37

    .line 374
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v0, v22

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v42

    .line 377
    .local v42, "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v42, v3

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-static {v3, v0, v5}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 379
    move-object/from16 v34, v30

    .line 380
    goto :goto_18

    .line 383
    .end local v42    # "sz":I
    :cond_37
    instance-of v3, v11, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v3, :cond_38

    move-object v3, v11

    .line 384
    check-cast v3, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v3, v3, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_38

    .line 385
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v0, v22

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v42

    .line 388
    .restart local v42    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v42, v3

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-static {v3, v0, v5}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 390
    move-object/from16 v34, v30

    .line 391
    goto/16 :goto_18

    .line 394
    .end local v42    # "sz":I
    :cond_38
    instance-of v3, v11, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v3, :cond_39

    .line 395
    check-cast v11, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v11    # "a":Lcom/vkontakte/android/Attachment;
    iget v3, v11, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_39

    .line 396
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/VideoAttachment;

    move/from16 v0, v22

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v42

    .line 399
    .restart local v42    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v42, v3

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-static {v3, v0, v5}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    .line 401
    move-object/from16 v34, v30

    .line 402
    goto/16 :goto_18

    .line 405
    .end local v42    # "sz":I
    :cond_39
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_17

    .line 410
    .end local v22    # "i":I
    .end local v30    # "m":Lcom/vkontakte/android/Message;
    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 412
    .restart local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    const/16 v22, 0x0

    .line 413
    .restart local v22    # "i":I
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 414
    .restart local v11    # "a":Lcom/vkontakte/android/Attachment;
    instance-of v3, v11, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    if-eqz v3, :cond_3b

    move-object v3, v11

    .line 415
    check-cast v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;

    iget v3, v3, Lcom/vkontakte/android/ui/PendingPhotoAttachment;->id:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_3b

    .line 416
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment;

    move/from16 v0, v22

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v42

    .line 419
    .restart local v42    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v42, v3

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-static {v3, v0, v5}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_16

    .line 424
    .end local v42    # "sz":I
    :cond_3b
    instance-of v3, v11, Lcom/vkontakte/android/PendingDocumentAttachment;

    if-eqz v3, :cond_3c

    move-object v3, v11

    .line 425
    check-cast v3, Lcom/vkontakte/android/PendingDocumentAttachment;

    iget v3, v3, Lcom/vkontakte/android/PendingDocumentAttachment;->did:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_3c

    .line 426
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v0, v22

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v42

    .line 429
    .restart local v42    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v42, v3

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-static {v3, v0, v5}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_16

    .line 434
    .end local v42    # "sz":I
    :cond_3c
    instance-of v3, v11, Lcom/vkontakte/android/PendingVideoAttachment;

    if-eqz v3, :cond_3d

    .line 435
    check-cast v11, Lcom/vkontakte/android/PendingVideoAttachment;

    .end local v11    # "a":Lcom/vkontakte/android/Attachment;
    iget v3, v11, Lcom/vkontakte/android/PendingVideoAttachment;->vid:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_3d

    .line 436
    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    const-string v3, "attachment"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DocumentAttachment;

    move/from16 v0, v22

    invoke-virtual {v5, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$24(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    const/high16 v5, 0x43af0000    # 350.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v42

    .line 439
    .restart local v42    # "sz":I
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    sub-int v3, v42, v3

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->attachments:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-static {v3, v0, v5}, Lcom/vkontakte/android/ZhukovLayout;->processThumbs(IILjava/util/ArrayList;)V

    goto/16 :goto_16

    .line 444
    .end local v42    # "sz":I
    :cond_3d
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_19

    .line 460
    .end local v22    # "i":I
    .end local v23    # "id":I
    .end local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .end local v34    # "msg":Lcom/vkontakte/android/Message;
    :cond_3e
    const-string v3, "com.vkontakte.android.MESSAGE_SEND_FAILED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 461
    const-string v3, "id"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 462
    .restart local v23    # "id":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_40

    .line 468
    :goto_1a
    const/16 v22, 0x0

    .line 469
    .restart local v22    # "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_41

    .line 485
    :goto_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    add-int v22, v22, v3

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-gt v3, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    move/from16 v0, v22

    if-lt v3, v0, :cond_0

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v22, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v45

    .line 488
    .local v45, "v":Landroid/view/View;
    const v3, 0x7f0900f4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 489
    const v3, 0x7f0900f2

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 490
    const v3, 0x7f0900f3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 491
    const v3, 0x7f0900f4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 492
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_45

    .line 493
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

    .line 494
    .local v2, "sa":Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 495
    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 496
    const v3, 0x7f0900f4

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 462
    .end local v2    # "sa":Landroid/view/animation/ScaleAnimation;
    .end local v22    # "i":I
    .end local v45    # "v":Landroid/view/View;
    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/vkontakte/android/Message;

    .line 463
    .restart local v30    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/vkontakte/android/Message;->id:I

    move/from16 v0, v23

    if-ne v4, v0, :cond_3f

    .line 464
    const/4 v3, 0x1

    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->sendFailed:Z

    goto/16 :goto_1a

    .line 469
    .end local v30    # "m":Lcom/vkontakte/android/Message;
    .restart local v22    # "i":I
    :cond_41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;

    .line 470
    .restart local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    move-object/from16 v0, v26

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->msgId:I

    move/from16 v0, v23

    if-ne v4, v0, :cond_44

    move-object/from16 v0, v26

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_42

    move-object/from16 v0, v26

    iget v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_44

    .line 471
    :cond_42
    const-string v3, "privacy"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_43

    .line 472
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f080081

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 480
    :goto_1d
    const/4 v3, 0x1

    move-object/from16 v0, v26

    iput-boolean v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$ListItem;->isFailed:Z

    goto/16 :goto_1c

    .line 474
    :cond_43
    new-instance v3, Lcom/vkontakte/android/VKAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 475
    const v4, 0x7f08005b

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 476
    const v4, 0x7f08005c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 477
    const v4, 0x7f080042

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 478
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1d

    .line 483
    :cond_44
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1b

    .line 498
    .end local v26    # "item":Lcom/vkontakte/android/fragments/ChatFragment$ListItem;
    .restart local v45    # "v":Landroid/view/View;
    :cond_45
    const v3, 0x7f0900f4

    move-object/from16 v0, v45

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

    .line 499
    .local v13, "animx":Landroid/animation/Animator;
    const v3, 0x7f0900f4

    move-object/from16 v0, v45

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

    .line 500
    .local v14, "animy":Landroid/animation/Animator;
    new-instance v40, Landroid/animation/AnimatorSet;

    invoke-direct/range {v40 .. v40}, Landroid/animation/AnimatorSet;-><init>()V

    .line 501
    .local v40, "set":Landroid/animation/AnimatorSet;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v14, v3, v4

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 502
    new-instance v3, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v3}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    invoke-virtual/range {v40 .. v40}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 507
    .end local v13    # "animx":Landroid/animation/Animator;
    .end local v14    # "animy":Landroid/animation/Animator;
    .end local v22    # "i":I
    .end local v23    # "id":I
    .end local v40    # "set":Landroid/animation/AnimatorSet;
    .end local v45    # "v":Landroid/view/View;
    :cond_46
    const-string v3, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 508
    const-string v3, "no_refresh_chat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 509
    const-string v3, "reload_chats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 510
    const-string v3, "reload_chats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 511
    .local v18, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 512
    .local v20, "found":Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_49

    .line 518
    :goto_1e
    if-nez v20, :cond_4d

    .line 519
    const-string v3, "marked_as_read"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v31

    .line 520
    .local v31, "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "marked_as_unread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v32

    .line 521
    .local v32, "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "deleted"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 522
    .local v19, "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 523
    .local v27, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :cond_48
    :goto_1f
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$25(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_0

    .line 512
    .end local v19    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    .end local v31    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v32    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 513
    .local v17, "cid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_47

    .line 514
    const/16 v20, 0x1

    .line 515
    goto :goto_1e

    .line 524
    .end local v17    # "cid":I
    .restart local v19    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v27    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    .restart local v31    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v32    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/vkontakte/android/Message;

    .line 525
    .restart local v30    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v30

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 526
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    goto :goto_1f

    .line 529
    :cond_4b
    move-object/from16 v0, v30

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 530
    const/4 v3, 0x1

    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 532
    :cond_4c
    move-object/from16 v0, v30

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 533
    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_1f

    .line 541
    .end local v18    # "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "deleted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v20    # "found":Z
    .end local v27    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    .end local v30    # "m":Lcom/vkontakte/android/Message;
    .end local v31    # "markedAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v32    # "markedAsUnread":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$28(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v3}, Lcom/vkontakte/android/fragments/ChatFragment;->access$30(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/fragments/ChatFragment$1;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$31(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    goto/16 :goto_0

    .line 498
    :array_0
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data

    .line 499
    :array_1
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3f800000    # 1.0f
    .end array-data
.end method
