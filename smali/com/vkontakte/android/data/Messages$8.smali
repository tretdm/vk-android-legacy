.class final Lcom/vkontakte/android/data/Messages$8;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->setReadState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mid:I

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 493
    iput p1, p0, Lcom/vkontakte/android/data/Messages$8;->val$mid:I

    iput-boolean p2, p0, Lcom/vkontakte/android/data/Messages$8;->val$state:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 495
    :try_start_0
    sget-object v7, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    iget v7, p0, Lcom/vkontakte/android/data/Messages$8;->val$mid:I

    iget-boolean v8, p0, Lcom/vkontakte/android/data/Messages$8;->val$state:Z

    invoke-static {v7, v8}, Lcom/vkontakte/android/cache/Cache;->setMessageReadState(IZ)V

    .line 498
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$000()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 499
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v7, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v7, v7, Lcom/vkontakte/android/Message;->id:I

    iget v8, p0, Lcom/vkontakte/android/data/Messages$8;->val$mid:I

    if-ne v7, v8, :cond_0

    .line 500
    iget-object v7, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v8, p0, Lcom/vkontakte/android/data/Messages$8;->val$state:Z

    iput-boolean v8, v7, Lcom/vkontakte/android/Message;->readState:Z

    .line 506
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$300()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 507
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 508
    .local v3, "k":I
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$300()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 509
    .local v6, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Message;

    .line 510
    .local v5, "msg":Lcom/vkontakte/android/Message;
    iget v7, v5, Lcom/vkontakte/android/Message;->id:I

    iget v8, p0, Lcom/vkontakte/android/data/Messages$8;->val$mid:I

    if-ne v7, v8, :cond_3

    .line 511
    iget-boolean v7, p0, Lcom/vkontakte/android/data/Messages$8;->val$state:Z

    iput-boolean v7, v5, Lcom/vkontakte/android/Message;->readState:Z

    .line 512
    sget-object v7, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 518
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "k":I
    .end local v5    # "msg":Lcom/vkontakte/android/Message;
    .end local v6    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :goto_1
    return-void

    .line 517
    :cond_4
    sget-object v7, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    .line 496
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v7

    goto :goto_0
.end method
