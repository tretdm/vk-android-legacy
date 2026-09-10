.class Lcom/vkontakte/android/fragments/ChatFragment$28$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment$28;->onMessagesLoaded(Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

.field private final synthetic val$fromUnread:Z

.field private final synthetic val$msgs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment$28;ZLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    iput-boolean p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$fromUnread:Z

    iput-object p3, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f0900f9

    const v9, 0x7f0900f8

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1497
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move v0, v5

    .line 1498
    .local v0, "btnVisible":Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$8(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-lez v4, :cond_0

    .line 1499
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    :cond_0
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$fromUnread:Z

    if-nez v4, :cond_1

    .line 1502
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$1(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1504
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1505
    .local v3, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1508
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1511
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1512
    .local v1, "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1517
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$0(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1518
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$61(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/ui/ErrorView;->clearAnimation()V

    .line 1519
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$61(Lcom/vkontakte/android/fragments/ChatFragment;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/vkontakte/android/ui/ErrorView;->setVisibility(I)V

    .line 1520
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$30(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/FrameLayout;

    move-result-object v4

    const/16 v7, 0x12c

    invoke-static {v4, v5, v7}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1521
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$29(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ProgressBar;

    move-result-object v4

    const/16 v7, 0x12c

    invoke-static {v4, v6, v7}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 1523
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v7

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$8(Lcom/vkontakte/android/fragments/ChatFragment;)I

    move-result v4

    if-lez v4, :cond_a

    move v4, v5

    :goto_4
    invoke-static {v7, v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$69(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1524
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$53(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1525
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1526
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$57(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1528
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 1529
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1531
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$70(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1532
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$68(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1565
    :cond_4
    :goto_5
    return-void

    .end local v0    # "btnVisible":Z
    .end local v1    # "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    .end local v3    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    move v0, v6

    .line 1497
    goto/16 :goto_0

    .line 1505
    .restart local v0    # "btnVisible":Z
    .restart local v3    # "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 1506
    .local v2, "m":Lcom/vkontakte/android/Message;
    iget v7, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1508
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 1509
    .restart local v2    # "m":Lcom/vkontakte/android/Message;
    iget v7, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1513
    .end local v2    # "m":Lcom/vkontakte/android/Message;
    .restart local v1    # "imsgs":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/Message;>;"
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 1514
    .restart local v2    # "m":Lcom/vkontakte/android/Message;
    iget v4, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_3

    .line 1515
    :cond_9
    iget v4, v2, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .end local v2    # "m":Lcom/vkontakte/android/Message;
    :cond_a
    move v4, v6

    .line 1523
    goto/16 :goto_4

    .line 1535
    :cond_b
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1536
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$45(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$70(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1541
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$46(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1542
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1551
    :goto_6
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$3(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1552
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$12(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$13(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1553
    :cond_c
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$68(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1554
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$48(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1555
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$71(Lcom/vkontakte/android/fragments/ChatFragment;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1556
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$48(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1557
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/vkontakte/android/fragments/ChatFragment;->access$49(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1558
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/vkontakte/android/fragments/ChatFragment;->access$72(Lcom/vkontakte/android/fragments/ChatFragment;Z)V

    .line 1560
    :cond_d
    iget-boolean v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$fromUnread:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$64(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 1561
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$73(Lcom/vkontakte/android/fragments/ChatFragment;)V

    .line 1562
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$5(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/ListView;

    move-result-object v4

    const v5, 0x98967f

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 1563
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$74(Lcom/vkontakte/android/fragments/ChatFragment;)V

    goto/16 :goto_5

    .line 1543
    :cond_e
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v7, 0x1e

    if-le v4, v7, :cond_f

    .line 1545
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1e

    iget-object v9, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$50(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    .line 1546
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment;->access$26(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1e

    invoke-virtual {v7, v6, v8}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 1548
    :cond_f
    iget-object v4, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->this$1:Lcom/vkontakte/android/fragments/ChatFragment$28;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/ChatFragment$28;->access$0(Lcom/vkontakte/android/fragments/ChatFragment$28;)Lcom/vkontakte/android/fragments/ChatFragment;

    move-result-object v4

    iget-object v7, p0, Lcom/vkontakte/android/fragments/ChatFragment$28$1;->val$msgs:Ljava/util/ArrayList;

    invoke-static {v4, v7}, Lcom/vkontakte/android/fragments/ChatFragment;->access$50(Lcom/vkontakte/android/fragments/ChatFragment;Ljava/util/List;)V

    goto/16 :goto_6
.end method
