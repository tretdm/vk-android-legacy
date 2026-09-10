.class public Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;
.super Ljava/lang/Object;
.source "ReallyWorkingPriorityQueue.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue$PriorityElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/BlockingQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private sp:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    const/4 v1, 0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->lock:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->sp:Ljava/util/concurrent/Semaphore;

    .line 13
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 102
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 1
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "arg0":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->sp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, p1

    .line 119
    check-cast v4, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue$PriorityElement;

    invoke-interface {v4}, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue$PriorityElement;->getPriority()I

    move-result v3

    .line 120
    .local v3, "priority":I
    const/4 v0, 0x0

    .line 121
    .local v0, "added":Z
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-gez v2, :cond_1

    .line 137
    :goto_2
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 140
    :try_start_1
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 139
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->sp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 144
    const/4 v4, 0x1

    return v4

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue$PriorityElement;

    invoke-interface {v4}, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue$PriorityElement;->getPriority()I

    move-result v1

    .line 123
    .local v1, "ep":I
    if-ne v1, v3, :cond_2

    .line 124
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 125
    const/4 v0, 0x1

    .line 126
    goto :goto_2

    .line 127
    :cond_2
    if-le v1, v3, :cond_3

    .line 128
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 129
    const/4 v0, 0x1

    .line 130
    goto :goto_2

    .line 131
    :cond_3
    if-nez v2, :cond_4

    if-ge v1, v3, :cond_4

    .line 132
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 133
    const/4 v0, 0x1

    .line 134
    goto :goto_2

    .line 121
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 139
    .end local v1    # "ep":I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 118
    .end local v0    # "added":Z
    .end local v2    # "i":I
    .end local v3    # "priority":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method public remainingCapacity()I
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 175
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    const/4 v3, 0x0

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "entry":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->sp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->sp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    move-object v1, v0

    .line 203
    .end local v0    # "entry":Ljava/lang/Object;, "TE;"
    .local v1, "entry":Ljava/lang/Object;, "TE;"
    :goto_1
    return-object v1

    .line 199
    .end local v1    # "entry":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v2

    .line 201
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->sp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 190
    :cond_0
    iget-object v3, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 191
    :try_start_1
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 190
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :try_start_2
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->sp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 196
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .restart local v0    # "entry":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->sp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    .line 203
    .end local v0    # "entry":Ljava/lang/Object;, "TE;"
    .restart local v1    # "entry":Ljava/lang/Object;, "TE;"
    goto :goto_1

    .line 190
    .end local v1    # "entry":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 183
    .restart local v0    # "entry":Ljava/lang/Object;, "TE;"
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;, "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue<TE;>;"
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
