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
    .locals 5
    .param p2, "_file"    # Ljava/lang/String;
    .param p3, "_field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1019
    iput-object p1, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->offset:I

    .line 1010
    const-string v0, "\r\n--VK-FILE-UPLOAD-BOUNDARY\r\nContent-Disposition: form-data; name=\"photo\"; filename=\"photo.jpg\"\r\nContent-Type: image/jpeg\r\n\r\n"

    .line 1012
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->header:[B

    .line 1013
    const-string v0, "\r\n--VK-FILE-UPLOAD-BOUNDARY\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\n\r\n"

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->fileHeaderTemplate:Ljava/lang/String;

    .line 1017
    const-string v0, "\r\n--VK-FILE-UPLOAD-BOUNDARY--\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->footer:[B

    .line 1021
    :try_start_0
    iput-object p2, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    .line 1022
    iput-object p3, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->field:Ljava/lang/String;

    .line 1023
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    .line 1024
    :cond_0
    const-string v0, "\r\n--VK-FILE-UPLOAD-BOUNDARY\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: %s\r\n\r\n"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->field:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/vkontakte/android/UploaderService;->access$0(Lcom/vkontakte/android/UploaderService;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService$UploadEntity;->header:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    :goto_0
    return-void

    .line 1025
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
    .line 1029
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
    .line 1034
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 1038
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .locals 7

    .prologue
    .line 1043
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

    .line 1044
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

    .line 1045
    .local v1, "l":J
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .end local v0    # "f":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "l":J
    :goto_0
    return-wide v1

    .line 1047
    :catch_0
    move-exception v3

    .line 1050
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 1055
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data; boundary=\"VK-FILE-UPLOAD-BOUNDARY\""

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 16
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1069
    const/4 v5, 0x0

    .line 1070
    .local v5, "is":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1072
    .local v4, "f":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-virtual {v12}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->file:Ljava/lang/String;

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "r"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1074
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v10, v12

    .line 1075
    .local v10, "total":I
    const/4 v8, 0x0

    .line 1076
    .local v8, "loaded":I
    const-wide/16 v6, 0x0

    .line 1077
    .local v6, "last":J
    const/16 v12, 0x400

    new-array v3, v12, [B

    .line 1078
    .local v3, "buffer":[B
    const/4 v9, 0x0

    .line 1079
    .local v9, "nread":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->header:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V

    .line 1081
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v5

    .line 1083
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v12

    if-gtz v12, :cond_3

    .line 1099
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v12}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v12

    iget v12, v12, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    const/16 v13, 0xa

    const/16 v14, 0xa

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/vkontakte/android/UploaderService;->access$2(Lcom/vkontakte/android/UploaderService;IIZ)V

    .line 1100
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v12}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v12

    iget-object v12, v12, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v12, :cond_2

    .line 1101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v12}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v12

    iget-object v12, v12, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    const/4 v13, -0x1

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 1103
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->footer:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1108
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1110
    .end local v3    # "buffer":[B
    .end local v6    # "last":J
    .end local v8    # "loaded":I
    .end local v9    # "nread":I
    .end local v10    # "total":I
    :goto_2
    return-void

    .line 1084
    .restart local v3    # "buffer":[B
    .restart local v6    # "last":J
    .restart local v8    # "loaded":I
    .restart local v9    # "nread":I
    .restart local v10    # "total":I
    :cond_3
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    .line 1085
    const/4 v12, -0x1

    if-eq v9, v12, :cond_0

    .line 1086
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 1087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    const-wide/16 v14, 0x320

    cmp-long v12, v12, v14

    if-ltz v12, :cond_5

    .line 1088
    move v2, v10

    .line 1089
    .local v2, "_total":I
    move v1, v8

    .line 1090
    .local v1, "_loaded":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v12}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v12

    iget v12, v12, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    const/4 v13, 0x0

    invoke-static {v12, v1, v2, v13}, Lcom/vkontakte/android/UploaderService;->access$2(Lcom/vkontakte/android/UploaderService;IIZ)V

    .line 1091
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1093
    .end local v1    # "_loaded":I
    .end local v2    # "_total":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v12}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v12

    iget-object v12, v12, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v12, :cond_6

    .line 1094
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->this$0:Lcom/vkontakte/android/UploaderService;

    invoke-static {v12}, Lcom/vkontakte/android/UploaderService;->access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;

    move-result-object v12

    iget-object v12, v12, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    invoke-interface {v12, v8, v10}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 1095
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->offset:I

    add-int/lit16 v12, v12, 0x400

    move-object/from16 v0, p0

    iput v12, v0, Lcom/vkontakte/android/UploaderService$UploadEntity;->offset:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1096
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1104
    .end local v3    # "buffer":[B
    .end local v6    # "last":J
    .end local v8    # "loaded":I
    .end local v9    # "nread":I
    .end local v10    # "total":I
    :catch_0
    move-exception v11

    .line 1105
    .local v11, "x":Ljava/lang/Exception;
    :try_start_3
    const-string v12, "vk"

    invoke-static {v12, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1107
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1108
    :goto_3
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 1106
    .end local v11    # "x":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 1107
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1108
    :goto_4
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1109
    throw v12

    .line 1107
    .restart local v11    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    goto :goto_3

    .end local v11    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    goto :goto_4

    .restart local v3    # "buffer":[B
    .restart local v6    # "last":J
    .restart local v8    # "loaded":I
    .restart local v9    # "nread":I
    .restart local v10    # "total":I
    :catch_3
    move-exception v12

    goto :goto_1
.end method
