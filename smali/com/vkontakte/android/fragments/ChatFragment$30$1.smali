.class Lcom/vkontakte/android/fragments/ChatFragment$30$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$30;->onMessagesLoaded(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

.field final synthetic val$msgs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$30;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f0800de

    const v10, 0x7f0800dd

    const/4 v6, 0x1

    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 1668
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1669
    .local v4, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 1670
    .local v3, "m":Lcom/vkontakte/android/Message;
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1672
    .end local v3    # "m":Lcom/vkontakte/android/Message;
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 1673
    .restart local v3    # "m":Lcom/vkontakte/android/Message;
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1675
    .end local v3    # "m":Lcom/vkontakte/android/Message;
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1676
    .local v2, "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1677
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 1678
    .restart local v3    # "m":Lcom/vkontakte/android/Message;
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1679
    :cond_2
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1687
    .end local v3    # "m":Lcom/vkontakte/android/Message;
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 1688
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1689
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1690
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4802(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1691
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4602(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1725
    :cond_4
    :goto_3
    return-void

    .line 1694
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v8, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$800(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v5

    if-lez v5, :cond_8

    move v5, v6

    :goto_4
    invoke-static {v8, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4802(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1695
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4800(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1696
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1703
    :goto_5
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4700(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1704
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2600(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1711
    :goto_6
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_c

    move v0, v6

    .line 1712
    .local v0, "btnVisible":Z
    :goto_7
    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4800(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1713
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1716
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1717
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1100(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1200(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1718
    :cond_7
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4602(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1719
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1720
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4900(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1721
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1722
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4902(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1723
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6500(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_3

    .end local v0    # "btnVisible":Z
    :cond_8
    move v5, v7

    .line 1694
    goto/16 :goto_4

    .line 1699
    :cond_9
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1700
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1705
    :cond_a
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v8, 0x1e

    if-le v5, v8, :cond_b

    .line 1706
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1e

    invoke-virtual {v8, v7, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5000(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 1707
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2600(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1e

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 1709
    :cond_b
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$30;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$30;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$30$1;->val$msgs:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5000(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    goto/16 :goto_6

    :cond_c
    move v0, v7

    .line 1711
    goto/16 :goto_7
.end method
