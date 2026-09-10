.class Lcom/vkontakte/android/cache/AudioCache$Downloader;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/cache/AudioCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Downloader"
.end annotation


# instance fields
.field aid:I

.field aurl:Ljava/lang/String;

.field conn:Ljava/net/URLConnection;

.field error:Z

.field file:Ljava/io/File;

.field len:I

.field needStop:Z

.field oid:I

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "_aurl"    # Ljava/lang/String;
    .param p2, "_oid"    # I
    .param p3, "_aid"    # I

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-boolean v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->needStop:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->error:Z

    .line 395
    iput-object p1, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aurl:Ljava/lang/String;

    .line 396
    iput p2, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    .line 397
    iput p3, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    .line 398
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 399
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 414
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 11

    .prologue
    .line 420
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aurl:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 421
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    .line 422
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 423
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 424
    iget-boolean v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->needStop:Z

    if-eqz v7, :cond_0

    .line 460
    .end local v5    # "url":Ljava/net/URL;
    :goto_0
    return-void

    .line 425
    .restart local v5    # "url":Ljava/net/URL;
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 426
    .local v2, "is":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    .line 428
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".vkontakte/cache/audio/"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 429
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 431
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ".vkontakte/cache/audio/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    .line 432
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 433
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 436
    .local v3, "os":Ljava/io/FileOutputStream;
    const-string v7, "vk"

    const-string v8, "in stream open"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 437
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 440
    :try_start_2
    const-string v7, "vk"

    const-string v8, "notified"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 444
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "tmp":I
    if-gtz v4, :cond_3

    .line 448
    :cond_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 449
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 450
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "downloader "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " done!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    .line 452
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteOld()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 453
    .end local v0    # "buf":[B
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "tmp":I
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 454
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Err downloading audio "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->error:Z

    .line 456
    monitor-enter p0

    .line 457
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 456
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 437
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v7

    .line 445
    .restart local v0    # "buf":[B
    .restart local v4    # "tmp":I
    :cond_3
    iget-boolean v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->needStop:Z

    if-nez v7, :cond_2

    .line 446
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->needStop:Z

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    goto :goto_0
.end method
