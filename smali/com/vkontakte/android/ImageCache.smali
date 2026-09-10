.class public Lcom/vkontakte/android/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ImageCache$ProgressCallback;,
        Lcom/vkontakte/android/ImageCache$RequestWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MAX_CACHE_SIZE_INTERNAL:J = 0x500000L

.field public static final MAX_CACHE_SIZE_RAM:I

.field public static final MAX_CACHE_SIZE_SD:J = 0xf00000L

.field private static cache:Lcom/vkontakte/android/cache/LruCache;
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

.field public static cacheDir:Ljava/io/File;

.field private static diskCache:Lcom/jakewharton/DiskLruCache;

.field private static httpClient:Lorg/apache/http/client/HttpClient;

.field public static maxCacheSize:J

.field private static uncachedBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    sput-object v2, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    .line 46
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lcom/vkontakte/android/ImageCache;->MAX_CACHE_SIZE_RAM:I

    .line 47
    const-wide/32 v0, 0x500000

    sput-wide v0, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ImageCache;->uncachedBitmaps:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/vkontakte/android/ImageCache$1;

    sget v1, Lcom/vkontakte/android/ImageCache;->MAX_CACHE_SIZE_RAM:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ImageCache$1;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    .line 61
    sput-object v2, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    .line 64
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->open()V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    return-void
.end method

.method private static _isInTopCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 96
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 453
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->open()V

    .line 456
    return-void

    .line 454
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static clearTopLevel()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0}, Lcom/vkontakte/android/cache/LruCache;->evictAll()V

    .line 69
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 132
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "data"    # Ljava/io/InputStream;

    .prologue
    const/16 v8, 0x5dc

    const/4 v5, 0x0

    .line 339
    if-nez p0, :cond_0

    .line 340
    const-string v4, "vk"

    const-string v6, "tried to decode null image"

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 370
    :goto_0
    return-object v4

    .line 344
    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 345
    .local v2, "opts1":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 347
    instance-of v4, p0, Ljava/io/FileInputStream;

    if-eqz v4, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 349
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 350
    instance-of v4, p0, Ljava/io/FileInputStream;

    if-eqz v4, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 351
    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v4, v8, :cond_3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v8, :cond_4

    .line 352
    :cond_3
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Image too big: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 353
    goto :goto_0

    .line 356
    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 357
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 359
    const/4 v4, 0x0

    invoke-static {p0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 360
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "opts1":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 361
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "vk"

    const-string v6, "OH SHI~"

    invoke-static {v4, v6, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    sget-object v4, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v4}, Lcom/vkontakte/android/cache/LruCache;->size()I

    move-result v4

    const/16 v6, 0x400

    if-le v4, v6, :cond_5

    .line 363
    sget-object v4, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v4}, Lcom/vkontakte/android/cache/LruCache;->evictAll()V

    .line 364
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 366
    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    .line 369
    :cond_5
    const-string v4, "vk"

    const-string v6, "WTF?!"

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 370
    goto/16 :goto_0
.end method

.method public static downloadFile(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Ljava/io/OutputStream;)Z
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .param p2, "pc"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;
    .param p3, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 375
    sget-object v12, Lcom/vkontakte/android/ImageCache;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v12, :cond_0

    .line 376
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 377
    .local v3, "hParams":Lorg/apache/http/params/HttpParams;
    const/4 v12, 0x0

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 378
    sget-object v12, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 379
    const/16 v12, 0x2000

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 380
    const/16 v12, 0x7530

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 381
    const/16 v12, 0x7530

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 384
    new-instance v10, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 385
    .local v10, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v12, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v14

    const/16 v15, 0x1bb

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v10, v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 386
    new-instance v12, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v14

    const/16 v15, 0x50

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v10, v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 387
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v3, v10}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 388
    .local v1, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v12, Lcom/vkontakte/android/ImageCache;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 390
    .end local v1    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v3    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v10    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 391
    .local v4, "httppost":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 392
    :cond_1
    const/4 v5, 0x0

    .line 393
    .local v5, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 396
    .local v11, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    sget-object v12, Lcom/vkontakte/android/ImageCache;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v12, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 399
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 400
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v7, v12

    .line 401
    .local v7, "len":I
    const/4 v8, 0x0

    .line 402
    .local v8, "loaded":I
    const/16 v12, 0x1400

    new-array v9, v12, [B

    .line 403
    .local v9, "rd":[B
    const/4 v6, 0x0

    .line 404
    .local v6, "l":I
    :cond_2
    :goto_0
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_7

    .line 405
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v12, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 406
    add-int/2addr v8, v6

    .line 407
    if-eqz p2, :cond_2

    .line 408
    move-object/from16 v0, p2

    invoke-interface {v0, v8, v7}, Lcom/vkontakte/android/ImageCache$ProgressCallback;->onProgressChanged(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 416
    .end local v6    # "l":I
    .end local v7    # "len":I
    .end local v8    # "loaded":I
    .end local v9    # "rd":[B
    :catch_0
    move-exception v2

    .line 417
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v12, Lcom/vkontakte/android/Log;->logFile:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_c

    .line 420
    :goto_1
    if-eqz v11, :cond_3

    .line 422
    :try_start_2
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 425
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    .line 427
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 431
    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 432
    :cond_5
    const/4 v12, 0x0

    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_4
    return v12

    .line 411
    .restart local v6    # "l":I
    .restart local v7    # "len":I
    .restart local v8    # "loaded":I
    .restart local v9    # "rd":[B
    :cond_7
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 412
    const/4 v5, 0x0

    .line 413
    const/4 v11, 0x0

    .line 414
    if-eqz p1, :cond_8

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 415
    :cond_8
    if-lez v7, :cond_9

    if-ne v8, v7, :cond_b

    :cond_9
    const/4 v12, 0x1

    .line 420
    :goto_5
    if-eqz v11, :cond_a

    .line 422
    :try_start_5
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 425
    :cond_a
    :goto_6
    if-eqz v5, :cond_6

    .line 427
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 428
    :catch_1
    move-exception v13

    goto :goto_4

    .line 415
    :cond_b
    const/4 v12, 0x0

    goto :goto_5

    .line 418
    .end local v6    # "l":I
    .end local v7    # "len":I
    .end local v8    # "loaded":I
    .end local v9    # "rd":[B
    .restart local v2    # "e":Ljava/lang/Throwable;
    :cond_c
    :try_start_7
    const-string v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error downloading "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 420
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    if-eqz v11, :cond_d

    .line 422
    :try_start_8
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 425
    :cond_d
    :goto_7
    if-eqz v5, :cond_e

    .line 427
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 428
    :cond_e
    :goto_8
    throw v12

    .restart local v2    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v12

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v13

    goto :goto_8

    .line 423
    :catch_4
    move-exception v13

    goto :goto_7

    .restart local v2    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v12

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v6    # "l":I
    .restart local v7    # "len":I
    .restart local v8    # "loaded":I
    .restart local v9    # "rd":[B
    :catch_6
    move-exception v13

    goto :goto_6
.end method

.method private static fn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 142
    const/4 v0, 0x1

    invoke-static {p0, v1, v1, v0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .param p2, "pc"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;
    .param p3, "decode"    # Z

    .prologue
    .line 156
    :try_start_0
    sget-object v12, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v12, p0}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 157
    if-nez p3, :cond_1

    const/4 v1, 0x0

    .line 259
    :cond_0
    :goto_0
    return-object v1

    .line 158
    :cond_1
    sget-object v12, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v12, p0}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 160
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 161
    sget-object v12, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v12, p0}, Lcom/vkontakte/android/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v12, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v3

    .line 164
    .local v3, "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    if-eqz v3, :cond_6

    if-eqz p3, :cond_3

    invoke-static {v3}, Lcom/vkontakte/android/ImageCache;->isValidBitmap(Lcom/jakewharton/DiskLruCache$Snapshot;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 165
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    .line 166
    .local v4, "in":Ljava/io/InputStream;
    if-eqz p3, :cond_5

    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 167
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 168
    if-eqz p3, :cond_0

    .line 169
    sget-boolean v12, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v12, :cond_4

    invoke-static {v1}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 171
    :cond_4
    :try_start_1
    sget-object v12, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v12, p0, v1}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 172
    :catch_0
    move-exception v12

    goto :goto_0

    .line 166
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 176
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_6
    :try_start_2
    const-string v12, "content:"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 177
    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 178
    .restart local v4    # "in":Ljava/io/InputStream;
    if-eqz p3, :cond_8

    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 179
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 180
    if-eqz p3, :cond_0

    .line 181
    sget-boolean v12, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v12, :cond_7

    invoke-static {v1}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 183
    :cond_7
    :try_start_3
    sget-object v12, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v12, p0, v1}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 184
    :catch_1
    move-exception v12

    goto :goto_0

    .line 178
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 188
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_9
    :try_start_4
    const-string v12, "file:"

    invoke-virtual {p0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 189
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 190
    .local v9, "uri":Landroid/net/Uri;
    const/4 v10, 0x0

    .line 191
    .local v10, "width":I
    const-string v12, "w"

    invoke-virtual {v9, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 192
    const-string v12, "w"

    invoke-virtual {v9, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 193
    :cond_a
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 194
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    if-lez v10, :cond_b

    .line 195
    const/4 v12, 0x1

    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 197
    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 198
    iget v12, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v12, v12

    int-to-float v13, v10

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v8, v12

    .line 199
    .local v8, "ssize":I
    iput v8, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 201
    .end local v8    # "ssize":I
    :cond_b
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v1

    .line 203
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :try_start_5
    sget-object v12, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v12, p0, v1}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 204
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 208
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "width":I
    :cond_c
    const/4 v2, 0x0

    .line 210
    .local v2, "editor":Lcom/jakewharton/DiskLruCache$Editor;
    :try_start_6
    sget-object v12, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v2

    .line 211
    if-nez v2, :cond_11

    .line 212
    :goto_3
    sget-object v12, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_f

    .line 213
    const-wide/16 v12, 0xa

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    .line 229
    :catch_3
    move-exception v11

    .line 230
    .local v11, "x":Ljava/lang/Exception;
    :try_start_7
    const-string v12, "vk"

    invoke-static {v12, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    if-eqz v2, :cond_d

    .line 232
    invoke-virtual {v2}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V

    .line 235
    .end local v11    # "x":Ljava/lang/Exception;
    :cond_d
    :goto_4
    sget-object v12, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v3

    .line 236
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    .line 237
    .restart local v4    # "in":Ljava/io/InputStream;
    if-eqz p1, :cond_e

    iget-boolean v0, p1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->decode:Z

    move/from16 p3, v0

    .line 238
    :cond_e
    if-eqz p3, :cond_13

    .line 239
    invoke-static {v3}, Lcom/vkontakte/android/ImageCache;->isValidBitmap(Lcom/jakewharton/DiskLruCache$Snapshot;)Z

    move-result v12

    if-nez v12, :cond_13

    .line 240
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 241
    sget-object v12, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    .line 242
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 215
    .end local v4    # "in":Ljava/io/InputStream;
    :cond_f
    if-eqz v2, :cond_10

    :try_start_8
    invoke-virtual {v2}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V

    .line 216
    :cond_10
    invoke-static/range {p0 .. p3}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    .line 218
    :cond_11
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v7

    .line 219
    .local v7, "out":Ljava/io/OutputStream;
    move-object/from16 v0, p2

    invoke-static {p0, p1, v0, v7}, Lcom/vkontakte/android/ImageCache;->downloadFile(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Ljava/io/OutputStream;)Z

    move-result v5

    .line 220
    .local v5, "ok":Z
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 221
    if-eqz v5, :cond_12

    .line 222
    invoke-virtual {v2}, Lcom/jakewharton/DiskLruCache$Editor;->commit()V

    .line 228
    const/4 v2, 0x0

    goto :goto_4

    .line 224
    :cond_12
    invoke-virtual {v2}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V

    .line 225
    sget-object v12, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 226
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 245
    .end local v5    # "ok":Z
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_13
    if-eqz p3, :cond_15

    :try_start_9
    invoke-static {v4}, Lcom/vkontakte/android/ImageCache;->decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 246
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_5
    if-eqz p3, :cond_0

    .line 247
    sget-boolean v12, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v12, :cond_14

    invoke-static {v1}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 249
    :cond_14
    :try_start_a
    sget-object v12, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v12, p0, v1}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 250
    :catch_4
    move-exception v12

    goto/16 :goto_0

    .line 245
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :cond_15
    const/4 v1, 0x0

    goto :goto_5

    .line 255
    .end local v2    # "editor":Lcom/jakewharton/DiskLruCache$Editor;
    .end local v3    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_5
    move-exception v11

    .line 256
    .local v11, "x":Ljava/lang/Throwable;
    const-string v12, "vk"

    invoke-static {v12, p0, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    const-string v12, "vk"

    const-string v13, "WTF2"

    invoke-static {v12, v13}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)[B
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .prologue
    const/4 v6, 0x0

    .line 264
    :try_start_0
    sget-object v7, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v2

    .line 265
    .local v2, "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    if-eqz v2, :cond_0

    .line 266
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    .line 267
    .local v4, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/jakewharton/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 268
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 269
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 284
    .end local v0    # "buffer":[B
    .end local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    .end local v4    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 272
    .restart local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    :cond_0
    const/4 v7, 0x0

    invoke-static {p0, p1, v7}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 273
    .local v3, "imgData":[B
    if-nez v3, :cond_1

    move-object v0, v6

    goto :goto_0

    .line 275
    :cond_1
    :try_start_1
    sget-object v6, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    .line 276
    .local v1, "editor":Lcom/jakewharton/DiskLruCache$Editor;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 277
    .local v5, "out":Ljava/io/OutputStream;
    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V

    .line 278
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 279
    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "editor":Lcom/jakewharton/DiskLruCache$Editor;
    .end local v5    # "out":Ljava/io/OutputStream;
    :goto_1
    move-object v0, v3

    .line 281
    goto :goto_0

    .line 283
    .end local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    .end local v3    # "imgData":[B
    :catch_0
    move-exception v7

    move-object v0, v6

    .line 284
    goto :goto_0

    .line 280
    .restart local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    .restart local v3    # "imgData":[B
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 6

    .prologue
    .line 436
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 437
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sd"

    const-string v4, "imgCacheLocation"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 438
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".vkontakte/cache/images"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 440
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".vkontakte/.nomedia"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    .local v1, "nomedia":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_1
    :goto_0
    const-wide/32 v3, 0xf00000

    sput-wide v3, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 448
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "nomedia":Ljava/io/File;
    :goto_1
    return-object v0

    .line 447
    :cond_2
    const-wide/32 v3, 0x500000

    sput-wide v3, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 448
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 443
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "nomedia":Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v2, "A"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "urls":[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 103
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/vkontakte/android/ImageCache;->_isInTopCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-object v2, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 107
    .end local v0    # "i":I
    .end local v1    # "urls":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 102
    .restart local v0    # "i":I
    .restart local v1    # "urls":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    .end local v1    # "urls":[Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public static getLruCache()Lcom/vkontakte/android/cache/LruCache;
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
    .line 72
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    return-object v0
.end method

.method public static isInCache(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 111
    sget-object v1, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 117
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static isInTopCache(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 84
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 92
    :goto_0
    return v2

    .line 85
    :cond_0
    const-string v2, "A"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "urls":[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 88
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/vkontakte/android/ImageCache;->_isInTopCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const/4 v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    .end local v0    # "i":I
    .end local v1    # "urls":[Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->_isInTopCache(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method private static isValidBitmap(Lcom/jakewharton/DiskLruCache$Snapshot;)Z
    .locals 14
    .param p0, "e"    # Lcom/jakewharton/DiskLruCache$Snapshot;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 301
    invoke-virtual {p0, v9}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    .line 304
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 305
    .local v4, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 306
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    .local v2, "in":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 308
    .local v1, "header":I
    move-object v0, v3

    check-cast v0, Ljava/io/FileInputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/jakewharton/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v10

    const-wide/16 v12, 0x4

    sub-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 309
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 313
    .local v5, "trailer":I
    const/high16 v7, -0x10000

    and-int/2addr v7, v1

    const/high16 v10, -0x280000

    if-ne v7, v10, :cond_0

    const v7, 0xffff

    and-int/2addr v7, v5

    const v10, 0xffd9

    if-ne v7, v10, :cond_0

    move v7, v8

    .line 335
    .end local v1    # "header":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "trailer":I
    :goto_0
    return v7

    .line 317
    .restart local v1    # "header":I
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "trailer":I
    :cond_0
    const v7, 0x47494638

    if-ne v1, v7, :cond_1

    and-int/lit16 v7, v5, 0xff

    const/16 v10, 0x3b

    if-ne v7, v10, :cond_1

    move v7, v8

    .line 319
    goto :goto_0

    .line 321
    :cond_1
    const v7, -0x76afb1b9

    if-ne v1, v7, :cond_2

    const v7, -0x51bd9f7e

    if-ne v5, v7, :cond_2

    move v7, v8

    .line 323
    goto :goto_0

    .line 325
    .end local v1    # "header":I
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v4    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "trailer":I
    :catch_0
    move-exception v6

    .line 326
    .local v6, "x":Ljava/lang/Throwable;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    .end local v6    # "x":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move v7, v9

    .line 335
    goto :goto_0

    .line 332
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private static open()V
    .locals 5

    .prologue
    .line 126
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/32 v3, 0x500000

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jakewharton/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/jakewharton/DiskLruCache;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 80
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0, p1}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public static save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/vkontakte/android/ImageCache;->getBytes(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)[B

    move-result-object v0

    .line 290
    .local v0, "b":[B
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 292
    .local v2, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 293
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    const/4 v4, 0x1

    .line 296
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 295
    :catch_0
    move-exception v3

    .line 296
    .local v3, "x":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method
