.class Lcom/vkontakte/android/NetworkStateReceiver$5$2;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver$5;->success([Lcom/vkontakte/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NetworkStateReceiver$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NetworkStateReceiver$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$5$2;->this$1:Lcom/vkontakte/android/NetworkStateReceiver$5;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 324
    const/16 v11, 0x13

    :try_start_0
    invoke-static {v11}, Landroid/os/Process;->setThreadPriority(I)V

    .line 326
    new-instance v2, Ljava/io/File;

    sget-object v11, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    const-string v12, "stats"

    invoke-direct {v2, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_1

    .line 355
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 329
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    new-instance v7, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "http://188.93.18.154/android/stats.php?act=send&tablet="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v12, Lcom/vkontakte/android/Global;->isTablet:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 330
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 331
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 332
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 334
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 335
    .local v6, "os":Ljava/io/OutputStream;
    new-instance v10, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v10, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 336
    .local v10, "zos":Ljava/util/zip/GZIPOutputStream;
    const/16 v11, 0x400

    new-array v0, v11, [B

    .line 338
    .local v0, "buf":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 339
    .local v4, "is":Ljava/io/FileInputStream;
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "num":I
    if-gtz v5, :cond_2

    .line 343
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 344
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 345
    invoke-virtual {v10}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 347
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 348
    .local v3, "in":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v8

    .line 349
    .local v8, "v":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 350
    const/16 v11, 0x31

    if-ne v8, v11, :cond_0

    .line 351
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    .end local v0    # "buf":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .end local v5    # "num":I
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "v":I
    .end local v10    # "zos":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v9

    .local v9, "x":Ljava/lang/Exception;
    const-string v11, "vk"

    invoke-static {v11, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 340
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v0    # "buf":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "num":I
    .restart local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    .restart local v10    # "zos":Ljava/util/zip/GZIPOutputStream;
    :cond_2
    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v10, v0, v11, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
