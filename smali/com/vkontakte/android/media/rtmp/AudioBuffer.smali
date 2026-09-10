.class public Lcom/vkontakte/android/media/rtmp/AudioBuffer;
.super Ljava/lang/Object;
.source "AudioBuffer.java"


# instance fields
.field private buffer:[S

.field private needed:I

.field private neededDone:I

.field private readLock:Ljava/lang/Object;

.field private readLoops:I

.field private readPos:I

.field private writeLoops:I

.field private writePos:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readLock:Ljava/lang/Object;

    .line 9
    iput v1, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->needed:I

    .line 10
    iput v1, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->neededDone:I

    .line 13
    new-array v0, p1, [S

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    .line 14
    return-void
.end method

.method private waitForData(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->needed:I

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->needed:I

    .line 75
    return-void

    .line 70
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public read([S)V
    .locals 6
    .param p1, "b"    # [S

    .prologue
    const/4 v5, 0x0

    .line 37
    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    array-length v3, p1

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 38
    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    array-length v3, p1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    if-ge v2, v3, :cond_0

    .line 39
    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    array-length v4, p1

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->waitForData(I)V

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    array-length v4, p1

    invoke-static {v2, v3, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    array-length v3, p1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    .line 65
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    array-length v2, v2

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    sub-int v0, v2, v3

    .line 45
    .local v0, "r1":I
    array-length v2, p1

    sub-int v1, v2, v0

    .line 46
    .local v1, "r2":I
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    invoke-static {v2, v3, p1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    invoke-static {v2, v5, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iput v1, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readPos:I

    goto :goto_0
.end method

.method public write([SI)V
    .locals 5
    .param p1, "data"    # [S
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x0

    .line 17
    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 18
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    invoke-static {p1, v4, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    .line 27
    :goto_0
    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->needed:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->neededDone:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->neededDone:I

    .line 28
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->neededDone:I

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->needed:I

    if-lt v2, v3, :cond_1

    .line 29
    iget-object v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readLock:Ljava/lang/Object;

    monitor-enter v3

    .line 30
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->readLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 29
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    iput v4, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->needed:I

    iput v4, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->neededDone:I

    .line 34
    :cond_1
    return-void

    .line 21
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    array-length v2, v2

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    sub-int v0, v2, v3

    .line 22
    .local v0, "r1":I
    sub-int v1, p2, v0

    .line 23
    .local v1, "r2":I
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    iget v3, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    invoke-static {p1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->buffer:[S

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    iput v1, p0, Lcom/vkontakte/android/media/rtmp/AudioBuffer;->writePos:I

    goto :goto_0

    .line 29
    .end local v0    # "r1":I
    .end local v1    # "r2":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
