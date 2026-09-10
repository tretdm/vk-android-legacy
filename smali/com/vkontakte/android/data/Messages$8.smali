.class Lcom/vkontakte/android/data/Messages$8;
.super Ljava/lang/Object;
.source "Messages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/data/Messages;->setReadState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mid:I

.field private final synthetic val$state:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkontakte/android/data/Messages$8;->val$mid:I

    iput-boolean p2, p0, Lcom/vkontakte/android/data/Messages$8;->val$state:Z

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 487
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    iget v5, p0, Lcom/vkontakte/android/data/Messages$8;->val$mid:I

    iget-boolean v6, p0, Lcom/vkontakte/android/data/Messages$8;->val$state:Z

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/Cache;->setMessageReadState(IZ)V

    .line 490
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$0()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 498
    :goto_1
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$5()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 499
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 509
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 510
    :goto_2
    return-void

    .line 490
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 491
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v6, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget v6, v6, Lcom/vkontakte/android/Message;->id:I

    iget v7, p0, Lcom/vkontakte/android/data/Messages$8;->val$mid:I

    if-ne v6, v7, :cond_0

    .line 492
    iget-object v5, v0, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    iget-boolean v6, p0, Lcom/vkontakte/android/data/Messages$8;->val$state:Z

    iput-boolean v6, v5, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_1

    .line 499
    .end local v0    # "e":Lcom/vkontakte/android/DialogEntry;
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 500
    .local v1, "k":I
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->access$5()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 501
    .local v4, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 502
    .local v3, "msg":Lcom/vkontakte/android/Message;
    iget v7, v3, Lcom/vkontakte/android/Message;->id:I

    iget v8, p0, Lcom/vkontakte/android/data/Messages$8;->val$mid:I

    if-ne v7, v8, :cond_4

    .line 503
    iget-boolean v5, p0, Lcom/vkontakte/android/data/Messages$8;->val$state:Z

    iput-boolean v5, v3, Lcom/vkontakte/android/Message;->readState:Z

    .line 504
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    .line 488
    .end local v1    # "k":I
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "msg":Lcom/vkontakte/android/Message;
    .end local v4    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    :catch_0
    move-exception v5

    goto :goto_0
.end method
