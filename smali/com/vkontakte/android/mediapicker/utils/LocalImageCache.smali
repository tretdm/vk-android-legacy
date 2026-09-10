.class public Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;
.super Ljava/lang/Object;
.source "LocalImageCache.java"


# static fields
.field private static instance:Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    .line 23
    return-void
.end method

.method public static instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;->instance:Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;->instance:Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;

    .line 17
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;->instance:Lcom/vkontakte/android/mediapicker/utils/LocalImageCache;

    return-object v0
.end method
