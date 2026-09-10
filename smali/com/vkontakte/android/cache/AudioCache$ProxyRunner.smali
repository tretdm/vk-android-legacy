.class Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;
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
    name = "ProxyRunner"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field sck:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    .line 472
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    .line 473
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 476
    return-void

    .line 474
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "req"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 628
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "([A-Za-z-]+): ([^\r]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 629
    .local v2, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 630
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 633
    return-object v0

    .line 631
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 480
    const/4 v7, 0x0

    .line 482
    .local v7, "is":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 483
    .local v17, "tmp":I
    :try_start_0
    const-string v15, ""

    .line 484
    .local v15, "s":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->read()I

    move-result v17

    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 490
    :goto_0
    const-string v20, "vk"

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_2

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    .line 624
    .end local v15    # "s":Ljava/lang/String;
    :goto_1
    return-void

    .line 485
    .restart local v15    # "s":Ljava/lang/String;
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 486
    const-string v20, "\r\n\r\n"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    goto :goto_0

    .line 497
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 498
    .local v6, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v20, "http://[^ ]+"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 499
    .local v12, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v12, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 500
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 501
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v18

    .line 502
    .local v18, "u":Ljava/lang/String;
    const-string v20, "\\,"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, "d":[Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v20, v5, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .local v10, "oid":I
    const/16 v20, 0x2

    aget-object v20, v5, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 507
    .local v3, "aid":I
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v10, :cond_3

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v3, :cond_6

    .line 508
    :cond_3
    new-instance v20, Lcom/vkontakte/android/cache/AudioCache$Downloader;

    const/16 v21, 0x0

    aget-object v21, v5, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v10, v3}, Lcom/vkontakte/android/cache/AudioCache$Downloader;-><init>(Ljava/lang/String;II)V

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/cache/AudioCache;->access$2(Lcom/vkontakte/android/cache/AudioCache$Downloader;)V

    .line 510
    const-string v20, "vk"

    const-string v21, "Created downloader"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v20, "vk"

    const-string v21, "wait start"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v21

    monitor-enter v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :try_start_1
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :goto_2
    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    :try_start_3
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->error:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 614
    .end local v3    # "aid":I
    .end local v5    # "d":[Ljava/lang/String;
    .end local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "oid":I
    .end local v12    # "ptn":Ljava/util/regex/Pattern;
    .end local v15    # "s":Ljava/lang/String;
    .end local v18    # "u":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 615
    .local v19, "x":Ljava/lang/Exception;
    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 622
    :cond_4
    :goto_3
    const-string v20, "vk"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 514
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v3    # "aid":I
    .restart local v5    # "d":[Ljava/lang/String;
    .restart local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "matcher":Ljava/util/regex/Matcher;
    .restart local v10    # "oid":I
    .restart local v12    # "ptn":Ljava/util/regex/Pattern;
    .restart local v15    # "s":Ljava/lang/String;
    .restart local v18    # "u":Ljava/lang/String;
    :catchall_0
    move-exception v20

    :try_start_5
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v20

    .line 525
    :cond_5
    const-string v20, "vk"

    const-string v21, "wait end"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_6
    const-string v14, "HTTP/1.1 200 OK\r\nContent-Type: audio/mpeg\r\nContent-Encoding: none\r\n"

    .line 535
    .local v14, "resp":Ljava/lang/String;
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/cache/AudioCache$Downloader;->getLength()I

    move-result v20

    if-lez v20, :cond_7

    .line 536
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "Content-Length: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/cache/AudioCache$Downloader;->getLength()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 538
    :cond_7
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 539
    const/16 v16, 0x0

    .line 541
    .local v16, "startPosition":I
    const-string v20, "range"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 542
    const-string v20, "bytes=([0-9]+)-"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 543
    .local v13, "ptn1":Ljava/util/regex/Pattern;
    const-string v20, "range"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 544
    .local v9, "matcher1":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 545
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 546
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v20, v0

    const v21, 0x186a0

    sub-int v20, v20, v21

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    const/16 v16, 0x0

    .line 547
    :cond_8
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "startPos = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "; L = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "HTTP/1.1 206 Partial Content\r\nContent-Type: audio/mpeg\r\nContent-Length: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v21, v0

    sub-int v21, v21, v16

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 551
    const-string v21, "Content-Range: bytes "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 552
    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 548
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 567
    .end local v9    # "matcher1":Ljava/util/regex/Matcher;
    .end local v13    # "ptn1":Ljava/util/regex/Pattern;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    const-string v21, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/OutputStream;->write([B)V

    .line 569
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/cache/AudioCache$Downloader;->getInputStream()Ljava/io/FileInputStream;

    move-result-object v7

    .line 570
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v20

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 572
    const/16 v20, 0x2800

    move/from16 v0, v20

    new-array v4, v0, [B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 573
    .local v4, "buf":[B
    const/4 v11, 0x0

    .line 574
    .local v11, "pos":I
    const/16 v17, 0x0

    .line 584
    :cond_a
    add-int v11, v11, v17

    .line 585
    if-lez v17, :cond_b

    .line 587
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 597
    :cond_b
    :goto_5
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I

    move-result v20

    const/16 v21, 0x2800

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v20, v0

    sub-int v20, v20, v11

    const/16 v21, 0x2800

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_f

    .line 606
    :cond_c
    :goto_6
    invoke-virtual {v7, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    if-gtz v17, :cond_a

    .line 609
    :goto_7
    const-string v20, "vk"

    const-string v21, "proxy runner exited"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 611
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    goto/16 :goto_1

    .line 555
    .end local v4    # "buf":[B
    .end local v11    # "pos":I
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 588
    .restart local v4    # "buf":[B
    .restart local v11    # "pos":I
    :catch_1
    move-exception v19

    .line 589
    .restart local v19    # "x":Ljava/lang/Exception;
    const-wide/16 v20, 0x1f4

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_7

    .line 598
    .end local v19    # "x":Ljava/lang/Exception;
    :cond_f
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->error:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    goto :goto_6

    .line 604
    :cond_10
    const-wide/16 v20, 0x32

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_5

    .line 615
    .end local v3    # "aid":I
    .end local v4    # "buf":[B
    .end local v5    # "d":[Ljava/lang/String;
    .end local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "oid":I
    .end local v11    # "pos":I
    .end local v12    # "ptn":Ljava/util/regex/Pattern;
    .end local v14    # "resp":Ljava/lang/String;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "startPosition":I
    .end local v18    # "u":Ljava/lang/String;
    .restart local v19    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v20

    goto/16 :goto_3

    .line 517
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v3    # "aid":I
    .restart local v5    # "d":[Ljava/lang/String;
    .restart local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "matcher":Ljava/util/regex/Matcher;
    .restart local v10    # "oid":I
    .restart local v12    # "ptn":Ljava/util/regex/Pattern;
    .restart local v15    # "s":Ljava/lang/String;
    .restart local v18    # "u":Ljava/lang/String;
    :catch_3
    move-exception v20

    goto/16 :goto_2
.end method
