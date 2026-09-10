.class Lcom/vkontakte/android/data/Messages$11;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->getHistory(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

.field private final synthetic val$count:I

.field private final synthetic val$offset:I

.field private final synthetic val$peer:I

.field private final synthetic val$startMsgID:I


# direct methods
.method constructor <init>(IIIILcom/vkontakte/android/data/Messages$GetMessagesCallback;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    iput p2, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iput p3, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    iput p4, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    iput-object p5, p0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, -0x1

    const/4 v0, 0x0

    .line 588
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetHistory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 590
    const/4 v10, 0x0

    .line 591
    .local v10, "numUnread":I
    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-ne v1, v5, :cond_0

    .line 592
    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v1}, Lcom/vkontakte/android/data/Messages;->getUnreadCount(I)I

    move-result v10

    .line 595
    :cond_0
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-ne v1, v5, :cond_2

    if-nez v10, :cond_2

    .line 600
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$5()Ljava/util/HashMap;

    move-result-object v1

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 601
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$5()Ljava/util/HashMap;

    move-result-object v1

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 602
    .local v9, "h":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    if-ge v1, v3, :cond_2

    .line 603
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    add-int/2addr v3, v4

    if-lt v1, v3, :cond_2

    .line 604
    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    add-int/2addr v3, v4

    invoke-virtual {v9, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 605
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    invoke-interface {v1, v2, v0}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 606
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Returnig peer "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " history from RAM"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    sget-object v0, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 656
    .end local v9    # "h":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :goto_1
    return-void

    .line 621
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    invoke-static {v1}, Lcom/vkontakte/android/cache/Cache;->getMessagesHistoryCount(I)I

    move-result v7

    .line 623
    .local v7, "ccnt":I
    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v1, v10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    add-int/2addr v1, v3

    if-lt v7, v1, :cond_5

    .line 624
    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v3, v10

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    invoke-static {v1, v3, v4}, Lcom/vkontakte/android/cache/Cache;->getMessagesHistory(III)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 625
    iget-object v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v3, v10

    if-gtz v3, :cond_4

    :cond_3
    :goto_2
    invoke-interface {v1, v2, v0}, Lcom/vkontakte/android/data/Messages$GetMessagesCallback;->onMessagesLoaded(Ljava/util/ArrayList;I)V

    .line 628
    sget-object v0, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 625
    :cond_4
    iget v0, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v0, v10

    goto :goto_2

    .line 632
    :cond_5
    move v6, v10

    .line 634
    .local v6, "_numUnread":I
    new-instance v11, Lcom/vkontakte/android/api/MessagesGetHistory;

    iget v1, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    add-int/2addr v3, v10

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$count:I

    invoke-direct {v11, v1, v0, v3}, Lcom/vkontakte/android/api/MessagesGetHistory;-><init>(III)V

    .line 635
    new-instance v0, Lcom/vkontakte/android/data/Messages$11$1;

    iget-object v3, p0, Lcom/vkontakte/android/data/Messages$11;->val$callback:Lcom/vkontakte/android/data/Messages$GetMessagesCallback;

    iget v4, p0, Lcom/vkontakte/android/data/Messages$11;->val$startMsgID:I

    iget v5, p0, Lcom/vkontakte/android/data/Messages$11;->val$offset:I

    iget v8, p0, Lcom/vkontakte/android/data/Messages$11;->val$peer:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/data/Messages$11$1;-><init>(Lcom/vkontakte/android/data/Messages$11;Ljava/util/ArrayList;Lcom/vkontakte/android/data/Messages$GetMessagesCallback;IIIII)V

    invoke-virtual {v11, v0}, Lcom/vkontakte/android/api/MessagesGetHistory;->setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 655
    sget-object v0, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 596
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v6    # "_numUnread":I
    .end local v7    # "ccnt":I
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
