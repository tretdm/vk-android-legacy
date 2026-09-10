.class public Lcom/vkontakte/android/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ImageCache$CacheOpenHelper;,
        Lcom/vkontakte/android/ImageCache$ClearCacheTask;,
        Lcom/vkontakte/android/ImageCache$ProgressCallback;,
        Lcom/vkontakte/android/ImageCache$RequestWrapper;,
        Lcom/vkontakte/android/ImageCache$SqlRunner;
    }
.end annotation


# static fields
.field public static final MAX_CACHE_SIZE_INTERNAL:J = 0x500000L

.field public static final MAX_CACHE_SIZE_RAM:I = 0x300000

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

.field public static cachedb:Landroid/database/sqlite/SQLiteDatabase;

.field public static clearTimer:Ljava/util/Timer;

.field public static currentUserPhoto:Landroid/graphics/Bitmap;

.field private static dbsp:Ljava/util/concurrent/Semaphore;

.field public static maxCacheID:I

.field public static maxCacheSize:J

.field private static sql:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sqlRunning:Z

.field private static tries:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    sput-object v0, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    sput v2, Lcom/vkontakte/android/ImageCache;->maxCacheID:I

    .line 30
    sput-object v0, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    .line 34
    const-wide/32 v0, 0x500000

    sput-wide v0, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 38
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/ImageCache;->dbsp:Ljava/util/concurrent/Semaphore;

    .line 40
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ImageCache;->sql:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 41
    sput v2, Lcom/vkontakte/android/ImageCache;->tries:I

    .line 42
    sput-boolean v2, Lcom/vkontakte/android/ImageCache;->sqlRunning:Z

    .line 44
    new-instance v0, Lcom/vkontakte/android/ImageCache$1;

    const/high16 v1, 0x300000

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ImageCache$1;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vkontakte/android/ImageCache;->dbsp:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->openDB()V

    return-void
.end method

.method static synthetic access$2()Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/vkontakte/android/ImageCache;->sql:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public static clear()V
    .locals 4

    .prologue
    .line 313
    sget-object v2, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/vkontakte/android/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    .line 314
    :cond_0
    sget-object v2, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 315
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 318
    return-void

    .line 315
    :cond_1
    aget-object v0, v1, v2

    .line 316
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static clearTopLevel()V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0}, Lcom/vkontakte/android/cache/LruCache;->evictAll()V

    .line 97
    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 290
    :cond_0
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/ImageCache;->dbsp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :goto_1
    :try_start_1
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 292
    sget-object v0, Lcom/vkontakte/android/ImageCache;->dbsp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    goto :goto_0

    .line 290
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static decodeImage([B)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/16 v6, 0x400

    const/4 v3, 0x0

    .line 261
    if-nez p0, :cond_1

    .line 262
    const-string v4, "vk"

    const-string v5, "tried to decode null image"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_0
    return-object v3

    .line 266
    :cond_1
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 267
    .local v1, "opts1":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 268
    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {p0, v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 269
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v5, 0x500

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v4, v6, :cond_0

    .line 271
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 272
    .local v0, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 273
    const/4 v4, 0x0

    array-length v5, p0

    invoke-static {p0, v4, v5, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 274
    .end local v0    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v1    # "opts1":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 275
    .local v2, "t":Ljava/lang/Throwable;
    const-string v4, "vk"

    const-string v5, "OH SHI~"

    invoke-static {v4, v5, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    sget-object v4, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v4}, Lcom/vkontakte/android/cache/LruCache;->size()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 277
    sget-object v3, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v3}, Lcom/vkontakte/android/cache/LruCache;->evictAll()V

    .line 278
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 280
    invoke-static {p0}, Lcom/vkontakte/android/ImageCache;->decodeImage([B)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 283
    :cond_2
    const-string v4, "vk"

    const-string v5, "WTF?!"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0, v0}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .param p2, "pc"    # Lcom/vkontakte/android/ImageCache$ProgressCallback;

    .prologue
    .line 139
    sget-boolean v0, Lcom/vkontakte/android/ImageCache;->sqlRunning:Z

    if-nez v0, :cond_0

    .line 140
    new-instance v13, Ljava/lang/Thread;

    new-instance v0, Lcom/vkontakte/android/ImageCache$SqlRunner;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ImageCache$SqlRunner;-><init>(Lcom/vkontakte/android/ImageCache$SqlRunner;)V

    invoke-direct {v13, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    .local v13, "t":Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 142
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 145
    .end local v13    # "t":Ljava/lang/Thread;
    :cond_0
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/vkontakte/android/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_1
    :try_start_1
    sget-object v0, Lcom/vkontakte/android/ImageCache;->dbsp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 147
    :goto_0
    :try_start_2
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 148
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->openDB()V

    .line 149
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/ImageCache;->clearTimer:Ljava/util/Timer;

    .line 150
    sget-object v0, Lcom/vkontakte/android/ImageCache;->clearTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/ImageCache$ClearCacheTask;

    invoke-direct {v1}, Lcom/vkontakte/android/ImageCache$ClearCacheTask;-><init>()V

    const-wide/16 v2, 0x3e8

    const-wide/32 v4, 0x927c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 152
    :cond_2
    sget-object v0, Lcom/vkontakte/android/ImageCache;->dbsp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 157
    :try_start_3
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 159
    .local v6, "bmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 214
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :goto_1
    return-object v6

    .line 153
    :catch_0
    move-exception v14

    .line 154
    .local v14, "x":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_1

    .line 160
    .end local v14    # "x":Ljava/lang/Exception;
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    invoke-static {p0}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    .local v8, "filename":Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    if-le v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 164
    :cond_5
    new-instance v10, Ljava/io/File;

    sget-object v0, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    invoke-direct {v10, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v10, "imgFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 167
    .local v11, "in":Ljava/io/FileInputStream;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v7, v0, [B

    .line 168
    .local v7, "buffer":[B
    invoke-virtual {v11, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 169
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 173
    sget-object v0, Lcom/vkontakte/android/ImageCache;->sql:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update `images` set `last_access`="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where `filename`=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 176
    invoke-static {v7}, Lcom/vkontakte/android/ImageCache;->decodeImage([B)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 180
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v0, :cond_6

    invoke-static {v6}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 182
    :cond_6
    :try_start_4
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0, v6}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 183
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 186
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "buffer":[B
    .end local v11    # "in":Ljava/io/FileInputStream;
    :cond_7
    :try_start_5
    sget-boolean v0, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    if-nez v0, :cond_8

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 187
    :cond_8
    invoke-static/range {p0 .. p2}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v9

    .line 188
    .local v9, "imgData":[B
    if-nez v9, :cond_9

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 190
    :cond_9
    :try_start_6
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 191
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 192
    .local v12, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v12, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 193
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 196
    sget-object v0, Lcom/vkontakte/android/ImageCache;->sql:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert into `images` values ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkontakte/android/ImageCache;->maxCacheID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 198
    sget v0, Lcom/vkontakte/android/ImageCache;->maxCacheID:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vkontakte/android/ImageCache;->maxCacheID:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 200
    .end local v12    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_7
    invoke-static {v9}, Lcom/vkontakte/android/ImageCache;->decodeImage([B)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 204
    .restart local v6    # "bmp":Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/vkontakte/android/Global;->useBitmapHack:Z

    if-eqz v0, :cond_a

    invoke-static {v6}, Lcom/vkontakte/android/BitmapHack;->hackBitmap(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 206
    :cond_a
    :try_start_8
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0, v6}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 207
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 210
    .end local v6    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "imgData":[B
    .end local v10    # "imgFile":Ljava/io/File;
    :catch_3
    move-exception v14

    .line 211
    .local v14, "x":Ljava/lang/Throwable;
    const-string v0, "vk"

    invoke-static {v0, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    const-string v0, "vk"

    const-string v1, "WTF2"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 199
    .end local v14    # "x":Ljava/lang/Throwable;
    .restart local v8    # "filename":Ljava/lang/String;
    .restart local v9    # "imgData":[B
    .restart local v10    # "imgFile":Ljava/io/File;
    :catch_4
    move-exception v0

    goto :goto_2

    .line 146
    .end local v8    # "filename":Ljava/lang/String;
    .end local v9    # "imgData":[B
    .end local v10    # "imgFile":Ljava/io/File;
    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)[B
    .locals 13
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "w"    # Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .prologue
    const/4 v6, 0x0

    .line 219
    :try_start_0
    invoke-static {p0}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "filename":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_0

    const-string v7, "."

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    if-le v7, v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    :cond_0
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    invoke-direct {v3, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .local v3, "imgFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 223
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v4, "in":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 225
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 226
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :try_start_1
    sget-object v7, Lcom/vkontakte/android/ImageCache;->dbsp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 228
    :goto_0
    :try_start_2
    sget-object v7, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "update `images` set `last_access`="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " where `filename`=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    sget-object v7, Lcom/vkontakte/android/ImageCache;->dbsp:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->release()V

    .line 244
    .end local v0    # "buffer":[B
    .end local v1    # "filename":Ljava/lang/String;
    .end local v3    # "imgFile":Ljava/io/File;
    .end local v4    # "in":Ljava/io/FileInputStream;
    :goto_1
    return-object v0

    .line 232
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v3    # "imgFile":Ljava/io/File;
    :cond_1
    sget-boolean v7, Lcom/vkontakte/android/MainActivity;->loadImages:Z

    if-nez v7, :cond_2

    move-object v0, v6

    goto :goto_1

    .line 233
    :cond_2
    const/4 v7, 0x0

    invoke-static {p0, p1, v7}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 234
    .local v2, "imgData":[B
    if-nez v2, :cond_3

    move-object v0, v6

    goto :goto_1

    .line 236
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 237
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 238
    .local v5, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 239
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v5    # "out":Ljava/io/FileOutputStream;
    :goto_2
    move-object v0, v2

    .line 241
    goto :goto_1

    .line 243
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "imgData":[B
    .end local v3    # "imgFile":Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v0, v6

    .line 244
    goto :goto_1

    .line 240
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "imgData":[B
    .restart local v3    # "imgFile":Ljava/io/File;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 227
    .end local v2    # "imgData":[B
    .restart local v0    # "buffer":[B
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    goto :goto_0
.end method

.method public static getCacheDir()Ljava/io/File;
    .locals 6

    .prologue
    .line 297
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 298
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sd"

    const-string v4, "imgCacheLocation"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".vkontakte/cache/images"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 301
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, ".vkontakte/.nomedia"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v1, "nomedia":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_1
    :goto_0
    const-wide/32 v3, 0xf00000

    sput-wide v3, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 309
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "nomedia":Ljava/io/File;
    :goto_1
    return-object v0

    .line 308
    :cond_2
    const-wide/32 v3, 0x500000

    sput-wide v3, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    .line 309
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 304
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
    .line 112
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static isInCache(Ljava/lang/String;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v2, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v2, p0}, Lcom/vkontakte/android/cache/LruCache;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    const/4 v2, 0x1

    .line 121
    :goto_0
    return v2

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "filename":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v1, "imgFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_0
.end method

.method public static isInTopCache(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 108
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

.method private static openDB()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 74
    :try_start_0
    new-instance v3, Lcom/vkontakte/android/ImageCache$CacheOpenHelper;

    invoke-direct {v3}, Lcom/vkontakte/android/ImageCache$CacheOpenHelper;-><init>()V

    .line 75
    .local v3, "helper":Lcom/vkontakte/android/ImageCache$CacheOpenHelper;
    invoke-virtual {v3}, Lcom/vkontakte/android/ImageCache$CacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    sput-object v5, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    sget-object v5, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "select max(`id`) from `images`"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 77
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    :goto_0
    sput v5, Lcom/vkontakte/android/ImageCache;->maxCacheID:I

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "c":Landroid/database/Cursor;
    :goto_1
    return-void

    .line 77
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 80
    .local v4, "x":Ljava/lang/Exception;
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "imgcache"

    invoke-virtual {v5, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 81
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 82
    .local v2, "files":[Ljava/io/File;
    array-length v7, v2

    move v5, v6

    :goto_2
    if-lt v5, v7, :cond_1

    .line 86
    sget v5, Lcom/vkontakte/android/ImageCache;->tries:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/vkontakte/android/ImageCache;->tries:I

    .line 87
    sget v5, Lcom/vkontakte/android/ImageCache;->tries:I

    const/4 v7, 0x3

    if-le v5, v7, :cond_4

    .line 88
    sput v6, Lcom/vkontakte/android/ImageCache;->tries:I

    goto :goto_1

    .line 82
    :cond_1
    aget-object v1, v2, v5

    .line 83
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".gif"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 84
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 82
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 91
    .end local v1    # "f":Ljava/io/File;
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->openDB()V

    goto :goto_1
.end method

.method public static put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 104
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0, p1}, Lcom/vkontakte/android/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v0, Lcom/vkontakte/android/ImageCache;->cache:Lcom/vkontakte/android/cache/LruCache;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public static save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 248
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/vkontakte/android/ImageCache;->getBytes(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;)[B

    move-result-object v0

    .line 250
    .local v0, "b":[B
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 252
    .local v2, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 253
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    const/4 v4, 0x1

    .line 256
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 255
    :catch_0
    move-exception v3

    .line 256
    .local v3, "x":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method
