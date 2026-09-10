.class Lcom/vkontakte/android/fragments/ChatFragment$29$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$29;->onMessagesLoaded(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

.field private final synthetic val$msgs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$29;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    .line 1633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f0900f9

    const v9, 0x7f0900f8

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 1636
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1637
    .local v3, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1640
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1643
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1644
    .local v1, "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1655
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 1656
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1657
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1658
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$69(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1659
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$75(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1693
    :cond_0
    :goto_3
    return-void

    .line 1637
    .end local v1    # "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 1638
    .local v2, "m":Lcom/vkontakte/android/Message;
    iget v7, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1640
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 1641
    .restart local v2    # "m":Lcom/vkontakte/android/Message;
    iget v7, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1645
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    .restart local v1    # "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 1646
    .restart local v2    # "m":Lcom/vkontakte/android/Message;
    iget v4, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1647
    :cond_4
    iget v4, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1662
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$8(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-lez v4, :cond_8

    move v4, v5

    :goto_4
    invoke-static {v7, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$69(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1663
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$53(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1664
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1665
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1671
    :goto_5
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$52(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1672
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1679
    :goto_6
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_c

    move v0, v5

    .line 1680
    .local v0, "btnVisible":Z
    :goto_7
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$53(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1681
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$73(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1684
    :cond_6
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1685
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$12(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1686
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$75(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1687
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$54(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1688
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$76(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1689
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$54(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1690
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$55(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1691
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$77(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_3

    .end local v0    # "btnVisible":Z
    :cond_8
    move v4, v6

    .line 1662
    goto/16 :goto_4

    .line 1667
    :cond_9
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1668
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1673
    :cond_a
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v7, 0x1e

    if-le v4, v7, :cond_b

    .line 1674
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1e

    invoke-virtual {v7, v6, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$56(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 1675
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$27(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1e

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 1677
    :cond_b
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$29;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$29;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-static {v4, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$56(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    goto/16 :goto_6

    :cond_c
    move v0, v6

    .line 1679
    goto/16 :goto_7
.end method
