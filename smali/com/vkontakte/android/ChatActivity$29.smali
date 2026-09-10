.class Lcom/vkontakte/android/ChatActivity$29;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/MessagesGetHistory$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->loadHistory()V
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
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 5
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1498
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$48(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1500
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$49(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/StateShadowButton2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/StateShadowButton2;->setVisibility(I)V

    .line 1501
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1502
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$50(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1503
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 20
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1414
    .local p2, "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$45(Lcom/vkontakte/android/ChatActivity;)I

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v18

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/ChatCache;->add(Landroid/content/Context;ILjava/util/List;Z)V

    .line 1415
    :cond_0
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 1416
    .local v11, "readIDs":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_1
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_b

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$45(Lcom/vkontakte/android/ChatActivity;)I

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->clear()V

    .line 1420
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$46(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/TextView;

    move-result-object v18

    if-lez p1, :cond_c

    const/16 v17, 0x8

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$45(Lcom/vkontakte/android/ChatActivity;)I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v19

    add-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$47(Lcom/vkontakte/android/ChatActivity;I)V

    .line 1423
    const/4 v10, 0x0

    .local v10, "prevtime":I
    const/4 v6, 0x0

    .local v6, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v13

    .local v13, "sizeBeforeAdd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1424
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    if-lez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v17

    iget v15, v0, Lcom/vkontakte/android/Message;->time:I

    .line 1426
    .local v15, "time":I
    const-string v18, "vk"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v17, "msg t diff "

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/Message;->time:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    const/16 v18, 0xe10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 1430
    .end local v15    # "time":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ui/RefreshableListView;->getFirstVisiblePosition()I

    move-result v5

    .line 1431
    .local v5, "firstVisible":I
    const/4 v7, -0x1

    .line 1432
    .local v7, "itemOffset":I
    if-nez v5, :cond_d

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 1434
    add-int/lit8 v5, v5, 0x1

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1436
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "itemOfset="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_e

    .line 1459
    const/4 v8, 0x0

    .line 1460
    .local v8, "lastTime":I
    const/4 v12, 0x0

    .line 1461
    .local v12, "sRemoved":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_11

    .line 1471
    :goto_5
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 1472
    .local v16, "unknownUsers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_13

    .line 1476
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v17

    if-lez v17, :cond_7

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/ChatActivity;->access$3(Lcom/vkontakte/android/ChatActivity;Ljava/util/Vector;)V

    .line 1479
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->updateList()V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$48(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$49(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/StateShadowButton2;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$45(Lcom/vkontakte/android/ChatActivity;)I

    move-result v17

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_14

    const/16 v17, 0x0

    :goto_7
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/StateShadowButton2;->setVisibility(I)V

    .line 1483
    if-lez v13, :cond_8

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v18

    add-int v17, v5, v6

    add-int/lit8 v19, v17, 0x1

    if-eqz v12, :cond_15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v5, v0, :cond_15

    const/16 v17, 0x1

    :goto_8
    sub-int v19, v19, v17

    if-eqz v12, :cond_16

    const/16 v17, 0x1

    move/from16 v0, v17

    if-gt v5, v0, :cond_16

    const/high16 v17, 0x41880000    # 17.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v17

    :goto_9
    add-int v17, v17, v7

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/RefreshableListView;->setSelectionFromTop(II)V

    .line 1487
    :cond_8
    sget-object v17, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    sget-object v17, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    invoke-virtual/range {v17 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    :cond_9
    sget-object v17, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Vector;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->clear()V

    .line 1489
    sget-object v17, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$5(Lcom/vkontakte/android/ChatActivity;)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$6(Lcom/vkontakte/android/ChatActivity;)V

    .line 1493
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$50(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/ProgressBar;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1494
    sget-object v18, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$0(Lcom/vkontakte/android/ChatActivity;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$45(Lcom/vkontakte/android/ChatActivity;)I

    move-result v17

    move/from16 v0, p1

    move/from16 v1, v17

    if-le v0, v1, :cond_17

    const/16 v17, 0x1

    :goto_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    return-void

    .line 1416
    .end local v4    # "firstPos":I
    .end local v5    # "firstVisible":I
    .end local v6    # "idx":I
    .end local v7    # "itemOffset":I
    .end local v8    # "lastTime":I
    .end local v10    # "prevtime":I
    .end local v12    # "sRemoved":Z
    .end local v13    # "sizeBeforeAdd":I
    .end local v16    # "unknownUsers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Message;

    .line 1417
    .local v9, "m":Lcom/vkontakte/android/Message;
    iget-boolean v0, v9, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    iget-boolean v0, v9, Lcom/vkontakte/android/Message;->readState:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    iget v0, v9, Lcom/vkontakte/android/Message;->id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1421
    .end local v9    # "m":Lcom/vkontakte/android/Message;
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1439
    .restart local v4    # "firstPos":I
    .restart local v5    # "firstVisible":I
    .restart local v6    # "idx":I
    .restart local v7    # "itemOffset":I
    .restart local v10    # "prevtime":I
    .restart local v13    # "sizeBeforeAdd":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$14(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/vkontakte/android/ui/RefreshableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v7

    .line 1441
    const-string v17, "vk"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "itemOfset="

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1445
    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Message;

    .line 1446
    .restart local v9    # "m":Lcom/vkontakte/android/Message;
    iget v0, v9, Lcom/vkontakte/android/Message;->time:I

    move/from16 v18, v0

    sub-int v18, v18, v10

    const/16 v19, 0xe10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_f

    .line 1447
    new-instance v14, Lcom/vkontakte/android/Message;

    invoke-direct {v14}, Lcom/vkontakte/android/Message;-><init>()V

    .line 1448
    .local v14, "sm":Lcom/vkontakte/android/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v14, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 1449
    iget v0, v9, Lcom/vkontakte/android/Message;->time:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/vkontakte/android/Message;->time:I

    .line 1451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v14}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1452
    add-int/lit8 v6, v6, 0x1

    .line 1454
    .end local v14    # "sm":Lcom/vkontakte/android/Message;
    :cond_f
    iget v10, v9, Lcom/vkontakte/android/Message;->time:I

    .line 1455
    iget v0, v9, Lcom/vkontakte/android/Message;->id:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v9, Lcom/vkontakte/android/Message;->readState:Z

    .line 1456
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v9}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 1457
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 1461
    .end local v9    # "m":Lcom/vkontakte/android/Message;
    .restart local v8    # "lastTime":I
    .restart local v12    # "sRemoved":Z
    :cond_11
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Message;

    .line 1462
    .restart local v9    # "m":Lcom/vkontakte/android/Message;
    iget-boolean v0, v9, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    iget v0, v9, Lcom/vkontakte/android/Message;->time:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v8, :cond_12

    .line 1463
    iget v8, v9, Lcom/vkontakte/android/Message;->time:I

    .line 1464
    goto/16 :goto_4

    .line 1465
    :cond_12
    iget-boolean v0, v9, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/ChatActivity;->access$1(Lcom/vkontakte/android/ChatActivity;)Ljava/util/Vector;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1467
    const/4 v12, 0x1

    .line 1468
    goto/16 :goto_5

    .line 1472
    .end local v9    # "m":Lcom/vkontakte/android/Message;
    .restart local v16    # "unknownUsers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_13
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vkontakte/android/Message;

    .line 1473
    .restart local v9    # "m":Lcom/vkontakte/android/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ChatActivity$29;->this$0:Lcom/vkontakte/android/ChatActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/ChatActivity;->access$2(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v18

    iget v0, v9, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    iget v0, v9, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1474
    iget v0, v9, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1481
    .end local v9    # "m":Lcom/vkontakte/android/Message;
    :cond_14
    const/16 v17, 0x8

    goto/16 :goto_7

    .line 1484
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_16
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 1494
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_a
.end method
