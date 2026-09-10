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

.field final synthetic val$msgs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$29;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const v11, 0x7f0800de

    const v10, 0x7f0800dd

    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1529
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    move v0, v6

    .line 1530
    .local v0, "btnVisible":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$800(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v5

    if-lez v5, :cond_0

    .line 1531
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1533
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-boolean v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->val$fromUnread:Z

    if-nez v5, :cond_1

    .line 1534
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$100(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1536
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1537
    .local v4, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 1538
    .local v3, "m":Lcom/vkontakte/android/Message;
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0    # "btnVisible":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lcom/vkontakte/android/Message;
    .end local v4    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    move v0, v7

    .line 1529
    goto :goto_0

    .line 1540
    .restart local v0    # "btnVisible":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 1541
    .restart local v3    # "m":Lcom/vkontakte/android/Message;
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1543
    .end local v3    # "m":Lcom/vkontakte/android/Message;
    :cond_4
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1544
    .local v2, "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1545
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 1546
    .restart local v3    # "m":Lcom/vkontakte/android/Message;
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1547
    :cond_5
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1549
    .end local v3    # "m":Lcom/vkontakte/android/Message;
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$000(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 1550
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5500(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/ui/ErrorView;->clearAnimation()V

    .line 1551
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5500(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 1552
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2900(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v5

    const/16 v8, 0x12c

    invoke-static {v5, v6, v8}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1553
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v5

    const/16 v8, 0x12c

    invoke-static {v5, v7, v8}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1555
    :cond_7
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v8, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$800(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v5

    if-lez v5, :cond_a

    move v5, v6

    :goto_4
    invoke-static {v8, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4802(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1556
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4800(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1557
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1560
    :cond_8
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b

    .line 1561
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1562
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1563
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4302(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1564
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1597
    :cond_9
    :goto_5
    return-void

    :cond_a
    move v5, v7

    .line 1555
    goto :goto_4

    .line 1567
    :cond_b
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1568
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4100(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1569
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4302(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1573
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4200(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1574
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1583
    :goto_6
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1584
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1100(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1200(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1585
    :cond_c
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$702(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1586
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4202(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1587
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4400(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1588
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4202(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1589
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4402(Lcom/vkontakte/android/fragments/ChatFragment;Z)Z

    .line 1590
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6200(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1592
    :cond_d
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-boolean v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->val$fromUnread:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5800(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_9

    .line 1593
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6300(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1594
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$500(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v5

    const v6, 0x98967f

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 1595
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$6400(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_5

    .line 1575
    :cond_e
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v8, 0x1e

    if-le v5, v8, :cond_f

    .line 1577
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1e

    iget-object v10, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4500(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 1578
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$2500(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1e

    invoke-virtual {v8, v7, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 1580
    :cond_f
    iget-object v5, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$29;

    iget-object v5, v5, Lcom/vkontakte/android/fragments/ChatFragment$29;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$29$1;->val$msgs:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/vkontakte/android/fragments/ChatFragment;->access$4500(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    goto/16 :goto_6
.end method
