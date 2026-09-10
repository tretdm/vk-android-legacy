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
    .locals 2
    .param p1, "s"    # Ljava/net/Socket;

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    .line 561
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    .line 562
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 565
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 566
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 567
    return-void

    .line 563
    .end local v0    # "thread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

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
    .line 753
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 754
    .local v0, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "([A-Za-z-]+): ([^\r]+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 755
    .local v2, "ptn":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 756
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    .line 759
    return-object v0

    .line 757
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
    .locals 25

    .prologue
    .line 571
    const/4 v8, 0x0

    .line 573
    .local v8, "is":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 574
    .local v17, "tmp":I
    :try_start_0
    const-string v15, ""

    .line 575
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

    .line 581
    :goto_0
    const-string v20, "vk"

    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_2

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    .line 750
    .end local v15    # "s":Ljava/lang/String;
    :goto_1
    return-void

    .line 576
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

    .line 577
    const-string v20, "\r\n\r\n"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    goto :goto_0

    .line 588
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 591
    .local v6, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    const-string v20, "\r\n"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const-string v21, "/"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 592
    const-string v20, ".mp3"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 593
    :cond_3
    const-string v20, "android.util.Base64"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    const-string v21, "decode"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-class v24, Ljava/lang/String;

    aput-object v24, v22, v23

    const/16 v23, 0x1

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 594
    .local v5, "d":[B
    new-instance v18, Ljava/lang/String;

    const-string v20, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 598
    .end local v5    # "d":[B
    .local v18, "u":Ljava/lang/String;
    :goto_2
    :try_start_2
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "URL "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v20, "___"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, "d":[Ljava/lang/String;
    const/16 v20, 0x1

    aget-object v20, v5, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .local v11, "oid":I
    const/16 v20, 0x2

    aget-object v20, v5, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 604
    .local v3, "aid":I
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->oid:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v11, :cond_4

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->aid:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v3, :cond_9

    .line 605
    :cond_4
    new-instance v20, Lcom/vkontakte/android/cache/AudioCache$Downloader;

    const/16 v21, 0x0

    aget-object v21, v5, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11, v3}, Lcom/vkontakte/android/cache/AudioCache$Downloader;-><init>(Ljava/lang/String;II)V

    invoke-static/range {v20 .. v20}, Lcom/vkontakte/android/cache/AudioCache;->access$2(Lcom/vkontakte/android/cache/AudioCache$Downloader;)V

    .line 607
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Created downloader "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "wait start "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-static {v11, v3}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v20

    if-nez v20, :cond_5

    .line 612
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v21

    monitor-enter v21
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 614
    :try_start_3
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    :goto_3
    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 618
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->error:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 619
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "current downloader error "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->notfound:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    const-string v21, "HTTP/1.1 404 Not Found\r\nConnection: close\r\n\r\n"

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/OutputStream;->write([B)V

    .line 625
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 740
    .end local v3    # "aid":I
    .end local v5    # "d":[Ljava/lang/String;
    .end local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "oid":I
    .end local v15    # "s":Ljava/lang/String;
    .end local v18    # "u":Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 741
    .local v19, "x":Ljava/lang/Exception;
    if-eqz v8, :cond_6

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 748
    :cond_6
    :goto_5
    const-string v20, "vk"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 595
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v15    # "s":Ljava/lang/String;
    :catch_1
    move-exception v19

    .line 596
    .restart local v19    # "x":Ljava/lang/Exception;
    move-object/from16 v18, v15

    .restart local v18    # "u":Ljava/lang/String;
    goto/16 :goto_2

    .line 612
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v3    # "aid":I
    .restart local v5    # "d":[Ljava/lang/String;
    .restart local v11    # "oid":I
    :catchall_0
    move-exception v20

    :try_start_7
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v20

    .line 623
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    const-string v21, "HTTP/1.1 500 Internal Server Error\r\nConnection: close\r\n\r\n"

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4

    .line 630
    :cond_8
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "wait end "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_9
    const-string v14, "HTTP/1.1 200 OK\r\nContent-Type: audio/mpeg\r\nContent-Encoding: none\r\n"

    .line 640
    .local v14, "resp":Ljava/lang/String;
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/cache/AudioCache$Downloader;->getLength()I

    move-result v20

    if-lez v20, :cond_a

    .line 641
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

    .line 643
    :cond_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 644
    const/16 v16, 0x0

    .line 646
    .local v16, "startPosition":I
    const-string v20, "range"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 647
    const-string v20, "bytes=([0-9]+)-"

    invoke-static/range {v20 .. v20}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 648
    .local v13, "ptn1":Ljava/util/regex/Pattern;
    const-string v20, "range"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 649
    .local v9, "matcher1":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 650
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 651
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v20, v0

    const v21, 0x493e0

    sub-int v20, v20, v21

    move/from16 v0, v16

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->offset:I

    move/from16 v20, v0

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v21, v0

    const v22, 0x493e0

    sub-int v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    const/16 v16, 0x0

    .line 652
    :cond_b
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

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "HTTP/1.1 206 Partial Content\r\nContent-Type: audio/mpeg\r\nContent-Length: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 655
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

    .line 656
    const-string v21, "Content-Range: bytes="

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

    .line 657
    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 653
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 672
    .end local v9    # "matcher1":Ljava/util/regex/Matcher;
    .end local v13    # "ptn1":Ljava/util/regex/Pattern;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    const-string v21, "UTF-8"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/OutputStream;->write([B)V

    .line 674
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/cache/AudioCache$Downloader;->getInputStream()Ljava/io/FileInputStream;

    move-result-object v8

    .line 675
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v20

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 677
    const/16 v20, 0x2800

    move/from16 v0, v20

    new-array v4, v0, [B

    .line 678
    .local v4, "buf":[B
    const/4 v12, 0x0

    .line 679
    .local v12, "pos":I
    const/16 v17, 0x0

    .line 680
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    const/16 v20, 0x14

    move/from16 v0, v20

    if-lt v7, v0, :cond_14

    .line 690
    :goto_8
    const/4 v10, 0x0

    .line 700
    .local v10, "nOutErrors":I
    :cond_d
    if-nez v17, :cond_e

    .line 701
    const-wide/16 v20, 0x64

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 703
    :cond_e
    add-int v12, v12, v17

    .line 704
    if-lez v17, :cond_f

    .line 706
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 722
    :cond_f
    :goto_9
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->available()I

    move-result v20

    const/16 v21, 0x2800

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v20, v0

    sub-int v20, v20, v12

    const/16 v21, 0x2800

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_15

    .line 732
    :cond_10
    :goto_a
    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v17

    if-gtz v17, :cond_d

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v20, v0

    if-lez v20, :cond_11

    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->len:I

    move/from16 v20, v0

    .line 691
    move/from16 v0, v20

    if-lt v12, v0, :cond_d

    .line 735
    :cond_11
    :goto_b
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "proxy runner exited "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 737
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_1

    .line 660
    .end local v4    # "buf":[B
    .end local v7    # "i":I
    .end local v10    # "nOutErrors":I
    .end local v12    # "pos":I
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 682
    .restart local v4    # "buf":[B
    .restart local v7    # "i":I
    .restart local v12    # "pos":I
    :cond_14
    :try_start_b
    invoke-virtual {v8, v4}, Ljava/io/FileInputStream;->read([B)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    move-result v17

    goto/16 :goto_8

    .line 684
    :catch_2
    move-exception v19

    .line 686
    .restart local v19    # "x":Ljava/lang/Exception;
    const-wide/16 v20, 0x12c

    :try_start_c
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 680
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 707
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v10    # "nOutErrors":I
    :catch_3
    move-exception v19

    .line 708
    .restart local v19    # "x":Ljava/lang/Exception;
    const-wide/16 v20, 0x1f4

    :try_start_d
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V

    .line 713
    add-int/lit8 v10, v10, 0x1

    .line 714
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Out error "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v20, "vk"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v10, v0, :cond_10

    goto :goto_b

    .line 723
    .end local v19    # "x":Ljava/lang/Exception;
    :cond_15
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->access$1()Lcom/vkontakte/android/cache/AudioCache$Downloader;

    move-result-object v20

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/vkontakte/android/cache/AudioCache$Downloader;->error:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    .line 724
    const-string v20, "vk"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Current downloader error 2 "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->in:Ljava/io/InputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->out:Ljava/io/OutputStream;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/OutputStream;->close()V

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/AudioCache$ProxyRunner;->sck:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->close()V

    goto/16 :goto_a

    .line 730
    :cond_16
    const-wide/16 v20, 0x32

    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_9

    .line 687
    .end local v10    # "nOutErrors":I
    .restart local v19    # "x":Ljava/lang/Exception;
    :catch_4
    move-exception v20

    goto :goto_c

    .line 741
    .end local v3    # "aid":I
    .end local v4    # "buf":[B
    .end local v5    # "d":[Ljava/lang/String;
    .end local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v11    # "oid":I
    .end local v12    # "pos":I
    .end local v14    # "resp":Ljava/lang/String;
    .end local v15    # "s":Ljava/lang/String;
    .end local v16    # "startPosition":I
    .end local v18    # "u":Ljava/lang/String;
    :catch_5
    move-exception v20

    goto/16 :goto_5

    .line 615
    .end local v19    # "x":Ljava/lang/Exception;
    .restart local v3    # "aid":I
    .restart local v5    # "d":[Ljava/lang/String;
    .restart local v6    # "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "oid":I
    .restart local v15    # "s":Ljava/lang/String;
    .restart local v18    # "u":Ljava/lang/String;
    :catch_6
    move-exception v20

    goto/16 :goto_3
.end method
