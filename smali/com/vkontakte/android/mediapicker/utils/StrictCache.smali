.class public Lcom/vkontakte/android/mediapicker/utils/StrictCache;
.super Ljava/lang/Object;
.source "StrictCache.java"


# static fields
.field private static instance:Lcom/vkontakte/android/mediapicker/utils/StrictCache;


# instance fields
.field private values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->values:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->values:Ljava/util/HashMap;

    return-object v0
.end method

.method public static instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    .line 24
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance:Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    return-object v0
.end method

.method private invoke(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->invoke(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method private queue()Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getQueue()Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache$1;-><init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->invoke(Ljava/lang/Runnable;)V

    .line 60
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/StrictCache$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache$5;-><init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public clearExcept(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "exceptionKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache$6;-><init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->get(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    const/4 v5, 0x0

    .line 69
    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->queue()Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 70
    :cond_0
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 95
    :goto_0
    return-object v3

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->values:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->getRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 72
    :cond_2
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/graphics/Bitmap;

    .line 73
    .local v1, "result":[Landroid/graphics/Bitmap;
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 75
    .local v0, "lock":Ljava/util/concurrent/Semaphore;
    new-instance v3, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache$2;-><init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;[Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->invoke(Ljava/lang/Runnable;)V

    .line 87
    :try_start_0
    const-string v3, "StrictCache.get, near 194"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    aget-object v3, v1, v5

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 92
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "Cannot block thread"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getRawKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 215
    :cond_0
    const-string v0, "local"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "local"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 216
    :cond_1
    const-string v0, "styled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "styled"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v0, p1

    .line 218
    goto :goto_0
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->isCached(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isCached(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 105
    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->queue()Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 106
    :cond_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->values:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->getRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    new-array v1, v3, [Z

    .line 109
    .local v1, "result":[Z
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 111
    .local v0, "lock":Ljava/util/concurrent/Semaphore;
    new-instance v3, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache$3;-><init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;[ZLjava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-direct {p0, v3}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->invoke(Ljava/lang/Runnable;)V

    .line 123
    :try_start_0
    const-string v3, "LocalImageCache.check, near 225"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_1
    aget-boolean v3, v1, v4

    goto :goto_0

    .line 126
    :catch_0
    move-exception v2

    .line 128
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "Cannot block thread"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 138
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/StrictCache$4;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache$4;-><init>(Lcom/vkontakte/android/mediapicker/utils/StrictCache;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 147
    :cond_0
    return-void
.end method
