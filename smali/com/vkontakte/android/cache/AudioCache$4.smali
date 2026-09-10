.class Lcom/vkontakte/android/cache/AudioCache$4;
.super Ljava/lang/Object;
.source "AudioCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/cache/AudioCache;->downloadParts(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$ri:Lcom/vkontakte/android/cache/AudioCache$RangesInfo;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/cache/AudioCache$RangesInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/cache/AudioCache$4;->val$ri:Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 440
    const/4 v8, 0x0

    .line 441
    .local v8, "retries":I
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$2()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v12

    if-gtz v12, :cond_0

    .line 484
    :goto_1
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/vkontakte/android/cache/AudioCache;->access$4(Ljava/lang/Thread;)V

    .line 485
    return-void

    .line 442
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$2()Ljava/util/Vector;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    .local v4, "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    :try_start_2
    new-instance v10, Ljava/net/URL;

    iget-object v12, v4, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->url:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 445
    .local v10, "url":Ljava/net/URL;
    :goto_2
    iget-object v12, v4, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gtz v12, :cond_1

    .line 472
    const/4 v12, 0x1

    iget-object v13, v4, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->file:Lcom/vkontakte/android/AudioFile;

    invoke-static {v12, v13}, Lcom/vkontakte/android/cache/AudioCache;->saveFile(ZLcom/vkontakte/android/AudioFile;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 473
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v11

    .line 474
    .local v11, "x":Ljava/io/IOException;
    :try_start_3
    const-string v12, "vk"

    const-string v13, "IOException, retrying..."

    invoke-static {v12, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-wide/16 v12, 0x3e8

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 476
    add-int/lit8 v8, v8, 0x1

    .line 477
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$2()Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 480
    .end local v4    # "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    .end local v11    # "x":Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 481
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    const-string v13, "error downloading"

    invoke-static {v12, v13, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 482
    iget-object v12, p0, Lcom/vkontakte/android/cache/AudioCache$4;->val$ri:Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    iget v12, v12, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->oid:I

    iget-object v13, p0, Lcom/vkontakte/android/cache/AudioCache$4;->val$ri:Lcom/vkontakte/android/cache/AudioCache$RangesInfo;

    iget v13, v13, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->aid:I

    invoke-static {v12, v13}, Lcom/vkontakte/android/cache/AudioCache;->access$3(II)V

    goto :goto_1

    .line 446
    .end local v11    # "x":Ljava/lang/Exception;
    .restart local v4    # "info":Lcom/vkontakte/android/cache/AudioCache$RangesInfo;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_1
    :try_start_4
    iget-object v12, v4, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;

    .line 447
    .local v6, "r":Lcom/vkontakte/android/cache/AudioCache$FileRange;
    const-string v12, "vk"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Downloading: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    const-string v13, ".vkontakte/cache/audio/"

    invoke-direct {v2, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 450
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    iget v13, v4, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->oid:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v4, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->aid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v2, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 453
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string v12, "Range"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "bytes="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->endOffset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 455
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 456
    .local v9, "sin":Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v12, 0x1

    invoke-direct {v5, v3, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 457
    .local v5, "os":Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    iget v13, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 460
    const/4 v7, 0x0

    .line 461
    .local v7, "read":I
    const/16 v12, 0x2800

    new-array v0, v12, [B

    .line 462
    .local v0, "buf":[B
    :goto_3
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_3

    .line 466
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 467
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 468
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 469
    iget-object v12, v4, Lcom/vkontakte/android/cache/AudioCache$RangesInfo;->a:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 470
    const-string v12, "vk"

    const-string v13, "Done!"

    invoke-static {v12, v13}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 463
    :cond_3
    const/4 v12, 0x0

    invoke-virtual {v5, v0, v12, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 464
    iget v12, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I

    add-int/2addr v12, v7

    iput v12, v6, Lcom/vkontakte/android/cache/AudioCache$FileRange;->startOffset:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method
