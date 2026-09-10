.class public Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;
.super Ljava/lang/Thread;
.source "DispatchQueue.java"


# instance fields
.field public handler:Landroid/os/Handler;

.field private handlerSyncObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "threadName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->setName(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handlerSyncObject:Ljava/lang/Object;

    .line 20
    return-void
.end method


# virtual methods
.method public postRunnable(Ljava/lang/Runnable;I)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 50
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handlerSyncObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handlerSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 57
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 67
    if-gtz p2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_1
    :goto_1
    return-void

    .line 57
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    .line 80
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handlerSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handlerSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendMessage(Landroid/os/Message;I)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delay"    # I

    .prologue
    .line 24
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handlerSyncObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handlerSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 31
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 41
    if-gtz p2, :cond_2

    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    :cond_1
    :goto_1
    return-void

    .line 31
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->handler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
