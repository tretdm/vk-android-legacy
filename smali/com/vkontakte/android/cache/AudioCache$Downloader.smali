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


# static fields
.field private static final retryIntervals:[J


# instance fields
.field aid:I

.field aurl:Ljava/lang/String;

.field conn:Ljava/net/URLConnection;

.field error:Z

.field file:Ljava/io/File;

.field len:I

.field needStop:Z

.field notfound:Z

.field offset:I

.field oid:I

.field thread:Ljava/lang/Thread;

.field tries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->retryIntervals:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x3a98
        0x2710
        0x1388
        0x7d0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "_aurl"    # Ljava/lang/String;
    .param p2, "_oid"    # I
    .param p3, "_aid"    # I

    .prologue
    const/4 v0, 0x0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-boolean v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->needStop:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->error:Z

    .line 435
    iput-boolean v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->notfound:Z

    .line 436
    iput v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    .line 437
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->tries:I

    .line 441
    iput-object p1, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aurl:Ljava/lang/String;

    .line 442
    iput p2, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    .line 443
    iput p3, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    .line 444
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 445
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 446
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
    .line 466
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 468
    :goto_0
    return-object v0

    .line 467
    :cond_0
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    .line 462
    :goto_0
    return v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 458
    :catch_0
    move-exception v0

    .line 460
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 461
    :catch_1
    move-exception v0

    .line 462
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget v3, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 475
    :goto_0
    return v0

    .line 473
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 474
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 482
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v10, ".vkontakte/cache/audio/"

    invoke-direct {v1, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 484
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, ".vkontakte/cache/audio/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    .line 486
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    if-lez v7, :cond_a

    .line 487
    :cond_1
    new-instance v5, Ljava/net/URL;

    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aurl:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 488
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    .line 489
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 490
    iget v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    if-lez v7, :cond_2

    .line 491
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    const-string v10, "Range"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "bytes="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v7, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Downloading from offset "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V

    .line 495
    iget-boolean v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->needStop:Z

    if-eqz v7, :cond_3

    .line 546
    .end local v1    # "dir":Ljava/io/File;
    .end local v5    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 496
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 497
    .local v2, "is":Ljava/io/InputStream;
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    invoke-virtual {v7}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    .line 498
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 499
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    iget v10, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    add-int/lit16 v10, v10, -0x2800

    if-le v7, v10, :cond_6

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    .line 531
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Err downloading audio "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 532
    instance-of v7, v6, Ljava/io/FileNotFoundException;

    if-eqz v7, :cond_b

    .line 533
    iput-boolean v8, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->notfound:Z

    .line 542
    :cond_5
    iput-boolean v8, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->error:Z

    .line 543
    monitor-enter p0

    .line 544
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 543
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 500
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_6
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->file:Ljava/io/File;

    iget v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    if-lez v7, :cond_8

    move v7, v8

    :goto_2
    invoke-direct {v3, v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 503
    .local v3, "os":Ljava/io/FileOutputStream;
    const-string v7, "vk"

    const-string v10, "in stream open"

    invoke-static {v7, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 505
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 507
    :try_start_4
    const-string v7, "vk"

    const-string v10, "notified"

    invoke-static {v7, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const/4 v7, 0x5

    iput v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->tries:I

    .line 511
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 512
    .local v0, "buf":[B
    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "tmp":I
    if-gtz v4, :cond_9

    .line 518
    :cond_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 519
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 520
    const-string v7, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "downloader "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " done!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    .line 528
    .end local v0    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "tmp":I
    .end local v5    # "url":Ljava/net/URL;
    :goto_4
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteOld()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_8
    move v7, v9

    .line 500
    goto :goto_2

    .line 504
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v7

    .line 513
    .restart local v0    # "buf":[B
    .restart local v4    # "tmp":I
    :cond_9
    iget-boolean v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->needStop:Z

    if-nez v7, :cond_7

    .line 514
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 515
    iget v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    goto :goto_3

    .line 523
    .end local v0    # "buf":[B
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "tmp":I
    .end local v5    # "url":Ljava/net/URL;
    :cond_a
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 524
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 523
    monitor-exit p0

    goto :goto_4

    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 534
    .end local v1    # "dir":Ljava/io/File;
    .restart local v6    # "x":Ljava/lang/Exception;
    :cond_b
    instance-of v7, v6, Ljava/io/IOException;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->tries:I

    if-lez v7, :cond_5

    .line 535
    iget v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->tries:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->tries:I

    .line 536
    const-string v7, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Retrying connect, "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->tries:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tries left."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :try_start_9
    sget-object v7, Lcom/vkontakte/android/cache/AudioCache$Downloader;->retryIntervals:[J

    iget v10, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->tries:I

    aget-wide v10, v7, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 539
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->needStop:Z

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->conn:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    goto :goto_0
.end method
