.class final Lcom/vkontakte/android/data/Messages$11;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

.field final synthetic val$count:I

.field final synthetic val$offset:I

.field final synthetic val$peer:I

.field final synthetic val$startMsgID:I


# direct methods
.method constructor <init>(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V
    .locals 0

    .prologue
    .line 594
    iput p1, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    iput p2, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iput p3, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    iput p4, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    iput-object p5, p0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    .line 596
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GetHistory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 598
    const/4 v3, 0x0

    .line 599
    .local v3, "numUnread":I
    iget v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-ne v6, v9, :cond_0

    .line 600
    iget v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v6}, Lcom/vkontakte/android/data/Messages;->getUnreadCount(I)I

    move-result v3

    .line 603
    :cond_0
    :try_start_0
    sget-object v6, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-ne v6, v9, :cond_2

    if-nez v3, :cond_2

    .line 608
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$300()Ljava/util/HashMap;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 609
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$300()Ljava/util/HashMap;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 610
    .local v2, "h":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    if-ge v6, v7, :cond_2

    .line 611
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v8, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    add-int/2addr v7, v8

    if-lt v6, v7, :cond_2

    .line 612
    iget v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v8, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    add-int/2addr v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 613
    iget-object v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    invoke-interface {v6, v4, v5}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 614
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Returnig peer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " history from RAM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    sget-object v5, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 664
    .end local v2    # "h":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :goto_1
    return-void

    .line 629
    :cond_2
    iget v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v6}, Lcom/vkontakte/android/cache/Cache;->getMessagesHistoryCount(I)I

    move-result v1

    .line 631
    .local v1, "ccnt":I
    iget v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v6, v3

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    add-int/2addr v6, v7

    if-lt v1, v6, :cond_5

    .line 632
    iget v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v7, v3

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/cache/Cache;->getMessagesHistory(III)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 633
    iget-object v6, p0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v7, v3

    if-gtz v7, :cond_4

    :cond_3
    :goto_2
    invoke-interface {v6, v4, v5}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 636
    sget-object v5, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 633
    :cond_4
    iget v5, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v5, v3

    goto :goto_2

    .line 640
    :cond_5
    move v0, v3

    .line 642
    .local v0, "_numUnread":I
    new-instance v6, Lcom/vkontakte/android/api/MessagesGetHistory;

    iget v7, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    iget v8, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v8, v3

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v8, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    invoke-direct {v6, v7, v5, v8}, Lcom/vkontakte/android/api/MessagesGetHistory;-><init>(III)V

    new-instance v5, Lcom/vkontakte/android/data/Messages$11$1;

    invoke-direct {v5, p0, v4, v0, v1}, Lcom/vkontakte/android/data/Messages$11$1;-><init>(Lcom/vkontakte/android/data/Messages$11;Ljava/util/ArrayList;II)V

    invoke-virtual {v6, v5}, Lcom/vkontakte/android/api/MessagesGetHistory;->setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 663
    sget-object v5, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 604
    .end local v0    # "_numUnread":I
    .end local v1    # "ccnt":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method
