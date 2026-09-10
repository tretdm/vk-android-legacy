.class public Lcom/vkontakte/android/ImageCache$ClearCacheTask;
.super Ljava/util/TimerTask;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearCacheTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 323
    const-wide/16 v8, 0x0

    .line 324
    .local v8, "sz":J
    sget-object v11, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    if-nez v11, :cond_0

    invoke-static {}, Lcom/vkontakte/android/ImageCache;->getCacheDir()Ljava/io/File;

    move-result-object v11

    sput-object v11, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    .line 325
    :cond_0
    sget-object v11, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 326
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_2

    .line 377
    :cond_1
    return-void

    .line 327
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v11, v2

    if-lt v4, v11, :cond_7

    .line 332
    sget-wide v11, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    cmp-long v11, v8, v11

    if-lez v11, :cond_1

    .line 334
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 335
    :goto_1
    sget-object v11, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_3

    invoke-static {}, Lcom/vkontakte/android/ImageCache;->access$1()V

    .line 336
    :cond_3
    sget-object v11, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "select * from `images` order by `last_access` asc"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 337
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->release()V

    .line 338
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 339
    const-string v6, ""

    .line 340
    .local v6, "ids":Ljava/lang/String;
    :cond_4
    sget-wide v11, Lcom/vkontakte/android/ImageCache;->maxCacheSize:J

    cmp-long v11, v8, v11

    if-gtz v11, :cond_8

    .line 358
    :cond_5
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 359
    const-string v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 360
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 361
    const/4 v7, 0x0

    .line 362
    .local v7, "success":Z
    :goto_3
    if-nez v7, :cond_1

    .line 364
    :try_start_1
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 365
    :goto_4
    :try_start_2
    sget-object v11, Lcom/vkontakte/android/ImageCache;->cachedb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "delete from `images` where `id` in ("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->access$0()Ljava/util/concurrent/Semaphore;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 367
    const/4 v7, 0x1

    goto :goto_3

    .line 329
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v6    # "ids":Ljava/lang/String;
    .end local v7    # "success":Z
    :cond_7
    aget-object v11, v2, v4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v8, v11

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 342
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v6    # "ids":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x1

    :try_start_3
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "fname":Ljava/lang/String;
    const/4 v11, 0x0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 344
    .local v5, "id":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 345
    new-instance v1, Ljava/io/File;

    sget-object v11, Lcom/vkontakte/android/ImageCache;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v11, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v11

    sub-long/2addr v8, v11

    .line 347
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 356
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_2

    .line 348
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "fname":Ljava/lang/String;
    .end local v5    # "id":I
    :catch_0
    move-exception v10

    .line 349
    .local v10, "x":Landroid/database/CursorIndexOutOfBoundsException;
    array-length v12, v2

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v12, :cond_5

    aget-object v1, v2, v11

    .line 350
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".jpg"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".gif"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 351
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 349
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 368
    .end local v1    # "f":Ljava/io/File;
    .end local v10    # "x":Landroid/database/CursorIndexOutOfBoundsException;
    .restart local v7    # "success":Z
    :catch_1
    move-exception v10

    .line 370
    .local v10, "x":Ljava/lang/Exception;
    const-wide/16 v11, 0x3e8

    :try_start_4
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 371
    :catch_2
    move-exception v11

    goto/16 :goto_3

    .line 364
    .end local v10    # "x":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto/16 :goto_4

    .line 334
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v6    # "ids":Ljava/lang/String;
    .end local v7    # "success":Z
    :catch_4
    move-exception v11

    goto/16 :goto_1
.end method
