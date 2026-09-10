.class public Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;
.super Ljava/lang/Object;
.source "LocalImageCache.java"


# static fields
.field private static instance:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;


# instance fields
.field private lruCache:Lcom/vkontakte/android/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/cache/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private references:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private styled_thumbs:Ljava/util/HashMap;
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
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->references:Ljava/util/HashMap;

    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->styled_thumbs:Ljava/util/HashMap;

    .line 36
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 37
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v0, v2, 0x400

    .line 39
    .local v0, "cacheSize":I
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->lruCache:Lcom/vkontakte/android/cache/LruCache;

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->references:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->styled_thumbs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->parseRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    .line 26
    :cond_0
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance:Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    return-object v0
.end method

.method private parseRawKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string v0, "local"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "styled"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 72
    if-nez p2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cacheStyledThumb(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 97
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public clearStyledThumbsCache()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$3;-><init>(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public getFilterPreviewCacheKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "filterId"    # I

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIsCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIsStyledThumbCached(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->styled_thumbs:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->parseRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIsStyledThumbCachedSync(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getQueue()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsStyledThumbCached(Ljava/lang/String;)Z

    move-result v3

    .line 219
    :goto_0
    return v3

    .line 196
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [Z

    .line 197
    .local v1, "result":[Z
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 199
    .local v0, "lock":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$5;-><init>(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;[ZLjava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 211
    :try_start_0
    const-string v3, "LocalImageCache.check, near 225"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    aget-boolean v3, v1, v5

    goto :goto_0

    .line 214
    :catch_0
    move-exception v2

    .line 216
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "Cannot block thread"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getLruCache()Lcom/vkontakte/android/cache/LruCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkontakte/android/cache/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->lruCache:Lcom/vkontakte/android/cache/LruCache;

    return-object v0
.end method

.method public getStyledThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->styled_thumbs:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->parseRawKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getStyledThumbSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getQueue()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getStyledThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 188
    :goto_0
    return-object v3

    .line 165
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/graphics/Bitmap;

    .line 166
    .local v1, "result":[Landroid/graphics/Bitmap;
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 168
    .local v0, "lock":Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$4;

    invoke-direct {v4, p0, v1, p1, v0}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$4;-><init>(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;[Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 180
    :try_start_0
    const-string v3, "LocalImageCache.get, near 194"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    aget-object v3, v1, v5

    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    .line 185
    .local v2, "throwable":Ljava/lang/Throwable;
    const-string v3, "Cannot block thread"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public removeStyledThumb(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache$2;-><init>(Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
