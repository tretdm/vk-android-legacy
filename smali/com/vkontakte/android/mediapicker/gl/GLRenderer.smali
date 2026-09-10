.class public Lcom/vkontakte/android/mediapicker/gl/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/gl/GLRenderer$Renderer;
    }
.end annotation


# static fields
.field private static instance:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;


# instance fields
.field private buffer:Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

.field private queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;


# direct methods
.method private constructor <init>(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const-string v1, "ImagePickerGLThread"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->start()V

    .line 44
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$1;-><init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;II)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;)Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->buffer:Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;)Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/gl/GLRenderer;
    .param p1, "x1"    # Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->buffer:Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;

    return-object p1
.end method

.method static declared-synchronized instance(II)Lcom/vkontakte/android/mediapicker/gl/GLRenderer;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 24
    const-class v1, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->instance:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;-><init>(II)V

    sput-object v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->instance:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    .line 33
    :goto_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->instance:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :cond_0
    :try_start_1
    sget-object v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->instance:Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->updateSurface(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateSurface(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 55
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$2;-><init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;II)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method


# virtual methods
.method invoke(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 71
    return-void
.end method

.method invoke_async(Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "unused"    # Z

    .prologue
    .line 75
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$3;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$3;-><init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method invoke_sync(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    if-ne v2, v3, :cond_0

    .line 89
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 117
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 96
    .local v0, "lock":Ljava/util/concurrent/Semaphore;
    new-instance v2, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$4;-><init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke(Ljava/lang/Runnable;)V

    .line 109
    :try_start_0
    const-string v2, "GLRenderer, near 113"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 115
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "Cannot block %s for GLRenderer.invoke_sync, something bad may happen"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLWarn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method invoke_sync(Ljava/lang/Runnable;Z)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "unused"    # Z

    .prologue
    .line 121
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$5;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer$5;-><init>(Lcom/vkontakte/android/mediapicker/gl/GLRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke_sync(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
