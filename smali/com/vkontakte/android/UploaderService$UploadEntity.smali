.class public Lcom/vkontakte/android/UploaderService$UploadEntity;
.super Ljava/lang/Object;
.source "UploaderService.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/UploaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadEntity"
.end annotation


# instance fields
.field field:Ljava/lang/String;

.field file:Ljava/lang/String;

.field final fileHeaderTemplate:Ljava/lang/String;

.field footer:[B

.field header:[B

.field offset:I

.field final synthetic this$0:Lcom/vkontakte/android/UploaderService;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p2, "_file"    # Ljava/lang/String;
    .param p3, "_field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1289
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->offset:I

    .line 1280
    const-string v0, "\r\n--VK-FILE-UPLOAD-BOUNDARY\r\nContent-Disposition: form-data; name=\"photo\"; filename=\"photo.jpg\"\r\nContent-Type: image/jpeg\r\n\r\n"

    .line 1282
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->header:[B

    .line 1283
    const-string v0, "\r\n--VK-FILE-UPLOAD-BOUNDARY\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\n\r\n"

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->fileHeaderTemplate:Ljava/lang/String;

    .line 1287
    const-string v0, "\r\n--VK-FILE-UPLOAD-BOUNDARY--\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->footer:[B

    .line 1291
    :try_start_0
    iput-object p2, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    .line 1292
    iput-object p3, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->field:Ljava/lang/String;

    .line 1293
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    .line 1294
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\r\n--VK-FILE-UPLOAD-BOUNDARY\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\n\r\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->field:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/vkontakte/android/UploaderService;->access$0(Lcom/vkontakte/android/UploaderService;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->header:[B

    .line 1295
    sget-boolean v0, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Will upload "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    :cond_1
    :goto_0
    return-void

    .line 1296
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1305
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 7

    .prologue
    .line 1314
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-virtual {v3}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 1315
    .local v0, "f":Landroid/content/res/AssetFileDescriptor;
    iget-object v3, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->header:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->footer:[B

    array-length v4, v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    add-long v1, v3, v5

    .line 1316
    .local v1, "l":J
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1321
    .end local v0    # "f":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "l":J
    :goto_0
    return-wide v1

    .line 1318
    :catch_0
    move-exception v3

    .line 1321
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 1326
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data; boundary=\"VK-FILE-UPLOAD-BOUNDARY\""

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 1333
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 17
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1340
    const/4 v6, 0x0

    .line 1341
    .local v6, "is":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1343
    .local v4, "f":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-virtual {v13}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "r"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1345
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v13

    long-to-double v13, v13

    const-wide/high16 v15, 0x4090000000000000L    # 1024.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v11, v13

    .line 1346
    .local v11, "total":I
    const/4 v9, 0x0

    .line 1347
    .local v9, "loaded":I
    const-wide/16 v7, 0x0

    .line 1348
    .local v7, "last":J
    const/16 v13, 0x400

    new-array v3, v13, [B

    .line 1349
    .local v3, "buffer":[B
    const/4 v10, 0x0

    .line 1350
    .local v10, "nread":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->header:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V

    .line 1352
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    .line 1354
    :goto_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v13

    if-gtz v13, :cond_4

    .line 1377
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x7

    if-eq v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget-boolean v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    const/16 v14, 0xa

    const/16 v15, 0xa

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Lcom/vkontakte/android/UploaderService;->access$2(Lcom/vkontakte/android/UploaderService;IIZ)V

    .line 1378
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget-object v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v13, :cond_2

    .line 1379
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget-object v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 1380
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.vkontakte.android.UPLOAD_PROGRESS"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1381
    .local v5, "intent":Landroid/content/Intent;
    const-string v13, "done"

    invoke-virtual {v5, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1382
    const-string v13, "total"

    invoke-virtual {v5, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1383
    const-string v13, "id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v14}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v14

    iget v14, v14, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1384
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    const-string v14, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v13, v5, v14}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->footer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    if-eqz v6, :cond_3

    .line 1391
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1393
    :cond_3
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1395
    .end local v3    # "buffer":[B
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "last":J
    .end local v9    # "loaded":I
    .end local v10    # "nread":I
    .end local v11    # "total":I
    :goto_2
    return-void

    .line 1355
    .restart local v3    # "buffer":[B
    .restart local v7    # "last":J
    .restart local v9    # "loaded":I
    .restart local v10    # "nread":I
    .restart local v11    # "total":I
    :cond_4
    :try_start_2
    invoke-virtual {v6, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .line 1356
    const/4 v13, -0x1

    if-eq v10, v13, :cond_0

    .line 1357
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 1358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v7

    const-wide/16 v15, 0x320

    cmp-long v13, v13, v15

    if-ltz v13, :cond_6

    .line 1359
    move v2, v11

    .line 1360
    .local v2, "_total":I
    move v1, v9

    .line 1361
    .local v1, "_loaded":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x7

    if-eq v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget-boolean v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    const/4 v14, 0x0

    invoke-static {v13, v1, v2, v14}, Lcom/vkontakte/android/UploaderService;->access$2(Lcom/vkontakte/android/UploaderService;IIZ)V

    .line 1362
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1364
    .end local v1    # "_loaded":I
    .end local v2    # "_total":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget-object v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v13, :cond_7

    .line 1365
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v13}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v13

    iget-object v13, v13, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    invoke-interface {v13, v9, v11}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 1366
    :cond_7
    rem-int/lit8 v13, v9, 0xa

    if-nez v13, :cond_8

    .line 1367
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.vkontakte.android.UPLOAD_PROGRESS"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1368
    .restart local v5    # "intent":Landroid/content/Intent;
    const-string v13, "done"

    invoke-virtual {v5, v13, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1369
    const-string v13, "total"

    invoke-virtual {v5, v13, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1370
    const-string v13, "id"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v14}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v14

    iget v14, v14, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1371
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    const-string v14, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v13, v5, v14}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1373
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->offset:I

    add-int/lit16 v13, v13, 0x400

    move-object/from16 v0, p0

    iput v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->offset:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1374
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1387
    .end local v3    # "buffer":[B
    .end local v7    # "last":J
    .end local v9    # "loaded":I
    .end local v10    # "nread":I
    .end local v11    # "total":I
    :catch_0
    move-exception v12

    .line 1388
    .local v12, "x":Ljava/lang/Exception;
    :try_start_3
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1390
    if-eqz v6, :cond_9

    .line 1391
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1393
    :cond_9
    :goto_3
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_2

    .line 1389
    .end local v12    # "x":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 1390
    if-eqz v6, :cond_a

    .line 1391
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1393
    :cond_a
    :goto_4
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1394
    throw v13

    .line 1391
    .restart local v12    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    goto :goto_3

    .end local v12    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v14

    goto :goto_4

    .restart local v3    # "buffer":[B
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v7    # "last":J
    .restart local v9    # "loaded":I
    .restart local v10    # "nread":I
    .restart local v11    # "total":I
    :catch_3
    move-exception v13

    goto/16 :goto_1
.end method
