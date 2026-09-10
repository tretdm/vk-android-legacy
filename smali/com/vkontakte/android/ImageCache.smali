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

    .line 41
    sput-object v2, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    .line 44
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lcom/vkontakte/android/ImageCache;->MAX_CACHE_SIZE_RAM:I

    .line 45
    const-wide/32 v0, 0x500000

    sput-wide v0, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ImageCache;->uncachedBitmaps:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/vkontakte/android/ImageCache$1;

    sget v1, Lcom/vkontakte/android/ImageCache;->MAX_CACHE_SIZE_RAM:I

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ImageCache$1;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    .line 59
    sput-object v2, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    .line 62
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->open()V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 354
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->open()V

    .line 357
    return-void

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static clearTopLevel()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0}, Lcom/vkontakte/android/cache/LruCache;->evictAll()V

    .line 67
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 111
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-virtual {v0}, Lcom/jakewharton/DiskLruCache;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "data"    # Ljava/io/InputStream;

    .prologue
    const/16 v8, 0x400

    const/4 v5, 0x0

    .line 243
    if-nez p0, :cond_0

    .line 244
    const-string v4, "vk"

    const-string v6, "tried to decode null image"

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 271
    :goto_0
    return-object v4

    .line 248
    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 249
    .local v2, "opts1":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 251
    instance-of v4, p0, Ljava/io/FileInputStream;

    if-eqz v4, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 253
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 254
    instance-of v4, p0, Ljava/io/FileInputStream;

    if-eqz v4, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 255
    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v6, 0x500

    if-gt v4, v6, :cond_3

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, v8, :cond_4

    :cond_3
    move-object v4, v5

    goto :goto_0

    .line 257
    :cond_4
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 258
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 260
    const/4 v4, 0x0

    invoke-static {p0, v4, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 261
    .end local v1    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "opts1":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v3

    .line 262
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "vk"

    const-string v6, "OH SHI~"

    invoke-static {v4, v6, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    sget-object v4, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v4}, Lcom/vkontakte/android/cache/LruCache;->size()I

    move-result v4

    if-le v4, v8, :cond_5

    .line 264
    sget-object v4, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v4}, Lcom/vkontakte/android/cache/LruCache;->evictAll()V

    .line 265
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 267
    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 270
    :cond_5
    const-string v4, "vk"

    const-string v6, "WTF?!"

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 271
    goto :goto_0
.end method

.method public static downloadFile(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Ljava/io/OutputStream;)Z
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .param p2, "pc"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;
    .param p3, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 276
    sget-object v12, Lcom/vkontakte/android/ImageCache;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v12, :cond_0

    .line 277
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 278
    .local v3, "hParams":Lorg/apache/http/params/HttpParams;
    const/4 v12, 0x0

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 279
    sget-object v12, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 280
    const/16 v12, 0x2000

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 281
    const/16 v12, 0x7530

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 282
    const/16 v12, 0x7530

    invoke-static {v3, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 285
    new-instance v10, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 286
    .local v10, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v12, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v14

    const/16 v15, 0x1bb

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v10, v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 287
    new-instance v12, Lorg/apache/http/conn/scheme/Scheme;

    const-string v13, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v14

    const/16 v15, 0x50

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v10, v12}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 288
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v3, v10}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 289
    .local v1, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v12, Lcom/vkontakte/android/ImageCache;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 291
    .end local v1    # "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    .end local v3    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v10    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 292
    .local v4, "httppost":Lorg/apache/http/client/methods/HttpGet;
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 293
    :cond_1
    const/4 v5, 0x0

    .line 294
    .local v5, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 297
    .local v11, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    sget-object v12, Lcom/vkontakte/android/ImageCache;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v12, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 300
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 301
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    long-to-int v7, v12

    .line 302
    .local v7, "len":I
    const/4 v8, 0x0

    .line 303
    .local v8, "loaded":I
    const/16 v12, 0x1400

    new-array v9, v12, [B

    .line 304
    .local v9, "rd":[B
    const/4 v6, 0x0

    .line 305
    .local v6, "l":I
    :cond_2
    :goto_0
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_6

    .line 312
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 313
    const/4 v5, 0x0

    .line 314
    const/4 v11, 0x0

    .line 315
    if-eqz p1, :cond_3

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :cond_3
    if-eqz v11, :cond_4

    .line 323
    :try_start_1
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 326
    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    .line 328
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 316
    :cond_5
    :goto_2
    const/4 v12, 0x1

    .line 333
    .end local v6    # "l":I
    .end local v7    # "len":I
    .end local v8    # "loaded":I
    .end local v9    # "rd":[B
    :goto_3
    return v12

    .line 306
    .restart local v6    # "l":I
    .restart local v7    # "len":I
    .restart local v8    # "loaded":I
    .restart local v9    # "rd":[B
    :cond_6
    const/4 v12, 0x0

    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v12, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 307
    if-eqz p2, :cond_2

    .line 308
    add-int/2addr v8, v6

    .line 309
    move-object/from16 v0, p2

    invoke-interface {v0, v8, v7}, Lcom/vkontakte/android/ImageCache$ProgressCallback;->onProgressChanged(II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 317
    .end local v6    # "l":I
    .end local v7    # "len":I
    .end local v8    # "loaded":I
    .end local v9    # "rd":[B
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    sget-object v12, Lcom/vkontakte/android/Log;->logFile:Ljava/io/File;

    if-eqz v12, :cond_7

    .line 319
    const-string v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error downloading "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 321
    :cond_7
    if-eqz v11, :cond_8

    .line 323
    :try_start_5
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 326
    :cond_8
    :goto_4
    if-eqz v5, :cond_9

    .line 328
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 332
    :cond_9
    :goto_5
    if-eqz p1, :cond_a

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    .line 333
    :cond_a
    const/4 v12, 0x0

    goto :goto_3

    .line 320
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v12

    .line 321
    if-eqz v11, :cond_b

    .line 323
    :try_start_7
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 326
    :cond_b
    :goto_6
    if-eqz v5, :cond_c

    .line 328
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 331
    :cond_c
    :goto_7
    throw v12

    .line 329
    .restart local v6    # "l":I
    .restart local v7    # "len":I
    .restart local v8    # "loaded":I
    .restart local v9    # "rd":[B
    :catch_1
    move-exception v12

    goto :goto_2

    .end local v6    # "l":I
    .end local v7    # "len":I
    .end local v8    # "loaded":I
    .end local v9    # "rd":[B
    .restart local v2    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v12

    goto :goto_5

    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v13

    goto :goto_7

    .line 324
    :catch_4
    move-exception v13

    goto :goto_6

    .restart local v2    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v12

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v6    # "l":I
    .restart local v7    # "len":I
    .restart local v8    # "loaded":I
    .restart local v9    # "rd":[B
    :catch_6
    move-exception v12

    goto :goto_1
.end method

.method private static fn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x1

    invoke-static {p0, v1, v1, v0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .param p2, "pc"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;
    .param p3, "decode"    # Z

    .prologue
    const/4 v7, 0x0

    .line 135
    :try_start_0
    sget-object v8, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 136
    if-nez p3, :cond_1

    move-object v0, v7

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    sget-object v8, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 139
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 140
    sget-object v8, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v8, p0}, Lcom/vkontakte/android/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v8, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v2

    .line 143
    .local v2, "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    if-eqz v2, :cond_5

    .line 144
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    .line 145
    .local v3, "in":Ljava/io/InputStream;
    if-eqz p3, :cond_4

    invoke-static {v3}, Lcom/vkontakte/android/ImageCache;->decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 147
    if-eqz p3, :cond_0

    .line 148
    sget-boolean v8, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v8, :cond_3

    invoke-static {v0}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 150
    :cond_3
    :try_start_1
    sget-object v8, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v8, p0, v0}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 151
    :catch_0
    move-exception v7

    goto :goto_0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    move-object v0, v7

    .line 145
    goto :goto_1

    .line 157
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_5
    const/4 v1, 0x0

    .line 159
    .local v1, "editor":Lcom/jakewharton/DiskLruCache$Editor;
    :try_start_2
    sget-object v8, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    .line 160
    if-nez v1, :cond_b

    .line 161
    :goto_2
    sget-object v8, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 164
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V

    .line 165
    :cond_6
    invoke-static {p0, p1, p2, p3}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_7
    const-wide/16 v8, 0xa

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 178
    :catch_1
    move-exception v6

    .line 179
    .local v6, "x":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "vk"

    invoke-static {v8, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    if-eqz v1, :cond_8

    .line 181
    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V

    .line 184
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_8
    :goto_3
    sget-object v8, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v2

    .line 185
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    .line 186
    .restart local v3    # "in":Ljava/io/InputStream;
    if-eqz p1, :cond_9

    iget-boolean p3, p1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->decode:Z

    .line 187
    :cond_9
    if-eqz p3, :cond_d

    invoke-static {v3}, Lcom/vkontakte/android/ImageCache;->decodeImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :goto_4
    if-eqz p3, :cond_0

    .line 189
    sget-boolean v8, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v8, :cond_a

    invoke-static {v0}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 191
    :cond_a
    :try_start_4
    sget-object v8, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v8, p0, v0}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 192
    :catch_2
    move-exception v7

    goto/16 :goto_0

    .line 167
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_b
    const/4 v8, 0x0

    :try_start_5
    invoke-virtual {v1, v8}, Lcom/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 168
    .local v5, "out":Ljava/io/OutputStream;
    invoke-static {p0, p1, p2, v5}, Lcom/vkontakte/android/ImageCache;->downloadFile(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Ljava/io/OutputStream;)Z

    move-result v4

    .line 169
    .local v4, "ok":Z
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 170
    if-eqz v4, :cond_c

    .line 171
    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache$Editor;->commit()V

    .line 177
    const/4 v1, 0x0

    goto :goto_3

    .line 173
    :cond_c
    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache$Editor;->abort()V

    .line 174
    sget-object v8, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jakewharton/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-object v0, v7

    .line 175
    goto/16 :goto_0

    .end local v4    # "ok":Z
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_d
    move-object v0, v7

    .line 187
    goto :goto_4

    .line 197
    .end local v1    # "editor":Lcom/jakewharton/DiskLruCache$Editor;
    .end local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    .end local v3    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v6

    .line 198
    .local v6, "x":Ljava/lang/Throwable;
    const-string v8, "vk"

    invoke-static {v8, p0, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    const-string v8, "vk"

    const-string v9, "WTF2"

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 201
    goto/16 :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)[B
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .prologue
    const/4 v6, 0x0

    .line 206
    :try_start_0
    sget-object v7, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jakewharton/DiskLruCache;->get(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Snapshot;

    move-result-object v2

    .line 207
    .local v2, "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    if-eqz v2, :cond_0

    .line 208
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/jakewharton/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    .line 209
    .local v4, "in":Ljava/io/InputStream;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/jakewharton/DiskLruCache$Snapshot;->getLength(I)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 210
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 211
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 226
    .end local v0    # "buffer":[B
    .end local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    .end local v4    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 214
    .restart local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    :cond_0
    const/4 v7, 0x0

    invoke-static {p0, p1, v7}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 215
    .local v3, "imgData":[B
    if-nez v3, :cond_1

    move-object v0, v6

    goto :goto_0

    .line 217
    :cond_1
    :try_start_1
    sget-object v6, Lcom/vkontakte/android/ImageCache;->diskCache:Lcom/jakewharton/DiskLruCache;

    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->fn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jakewharton/DiskLruCache;->edit(Ljava/lang/String;)Lcom/jakewharton/DiskLruCache$Editor;

    move-result-object v1

    .line 218
    .local v1, "editor":Lcom/jakewharton/DiskLruCache$Editor;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/jakewharton/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v5

    .line 219
    .local v5, "out":Ljava/io/OutputStream;
    invoke-virtual {v5, v3}, Ljava/io/OutputStream;->write([B)V

    .line 220
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 221
    invoke-virtual {v1}, Lcom/jakewharton/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "editor":Lcom/jakewharton/DiskLruCache$Editor;
    .end local v5    # "out":Ljava/io/OutputStream;
    :goto_1
    move-object v0, v3

    .line 223
    goto :goto_0

    .line 225
    .end local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    .end local v3    # "imgData":[B
    :catch_0
    move-exception v7

    move-object v0, v6

    .line 226
    goto :goto_0

    .line 222
    .restart local v2    # "entry":Lcom/jakewharton/DiskLruCache$Snapshot;
    .restart local v3    # "imgData":[B
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 6

    .prologue
    .line 337
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 338
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sd"

    const-string v4, "imgCacheLocation"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 339
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".vkontakte/cache/images"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 341
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".vkontakte/.nomedia"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v1, "nomedia":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_1
    :goto_0
    const-wide/32 v3, 0xf00000

    sput-wide v3, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 349
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "nomedia":Ljava/io/File;
    :goto_1
    return-object v0

    .line 348
    :cond_2
    const-wide/32 v3, 0x500000

    sput-wide v3, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 349
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 344
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "nomedia":Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
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
    .line 70
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    return-object v0
.end method

.method public static isInCache(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 90
    sget-object v1, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 93
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

    .line 96
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static isInTopCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 82
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

.method private static open()V
    .locals 5

    .prologue
    .line 105
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

    .line 107
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0, p1}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public static save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/vkontakte/android/ImageCache;->getBytes(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)[B

    move-result-object v0

    .line 232
    .local v0, "b":[B
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 234
    .local v2, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 235
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const/4 v4, 0x1

    .line 238
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "x":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method
