.class public Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;
.super Ljava/lang/Object;
.source "LruCacheProvider.java"


# static fields
.field private static final SMALL_CACHE_KEY_SUFFIX:Ljava/lang/String; = "_small"

.field private static instance:Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;


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


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/cache/LruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/cache/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "lruCache":Lcom/vkontakte/android/cache/LruCache;, "Lcom/vkontakte/android/cache/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->lruCache:Lcom/vkontakte/android/cache/LruCache;

    .line 50
    return-void
.end method

.method private getLruCache()Lcom/vkontakte/android/cache/LruCache;
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
    .line 54
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;
    .locals 4

    .prologue
    .line 19
    sget-object v2, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance:Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    if-nez v2, :cond_0

    .line 21
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 22
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v0, v2, 0x400

    .line 24
    .local v0, "cacheSize":I
    new-instance v2, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    new-instance v3, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider$1;

    invoke-direct {v3, v0}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider$1;-><init>(I)V

    invoke-direct {v2, v3}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;-><init>(Lcom/vkontakte/android/cache/LruCache;)V

    sput-object v2, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance:Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    .line 42
    :cond_0
    sget-object v2, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance:Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/cache/LruCache;->evictAll()V

    .line 61
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 81
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getFilterPreviewCacheKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "filterId"    # I

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filter"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageCacheKey(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "isStyled"    # Z
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v0, "styled"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "local"

    goto :goto_0
.end method

.method public getSmallImageCacheKeySuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "_small"

    return-object v0
.end method

.method public isCached(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 72
    if-nez p2, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->getLruCache()Lcom/vkontakte/android/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
