.class public Lcom/vkontakte/android/UploaderService;
.super Landroid/app/Service;
.source "UploaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/UploaderService$UploadCallback;,
        Lcom/vkontakte/android/UploaderService$UploadEntity;,
        Lcom/vkontakte/android/UploaderService$UploadTask;
    }
.end annotation


# static fields
.field public static final ACTION_PHOTO_ADDED:Ljava/lang/String; = "com.vkontakte.android.PHOTO_ADDED"

.field public static final ACTION_PHOTO_REMOVED:Ljava/lang/String; = "com.vkontakte.android.PHOTO_REMOVED"

.field public static final ACTION_UPLOAD_DONE:Ljava/lang/String; = "com.vkontakte.android.UPLOAD_DONE"

.field public static final ACTION_UPLOAD_FAILED:Ljava/lang/String; = "com.vkontakte.android.UPLOAD_FAILED"

.field public static final ACTION_UPLOAD_PROGRESS:Ljava/lang/String; = "com.vkontakte.android.UPLOAD_PROGRESS"

.field public static final ACTION_UPLOAD_STARTED:Ljava/lang/String; = "com.vkontakte.android.UPLOAD_STARTED"

.field private static final ID_NOTIFICATION_DONE:I = 0x144

.field private static final ID_NOTIFICATION_FAIL:I = 0x145

.field private static final ID_NOTIFICATION_PROGRESS:I = 0x143

.field private static final TASK_STATE_DONE:I = 0x4

.field private static final TASK_STATE_FINISHING:I = 0x3

.field private static final TASK_STATE_NEW:I = 0x0

.field private static final TASK_STATE_SAVING:I = 0x2

.field private static final TASK_STATE_UPLOADING:I = 0x1

.field public static final TYPE_ALBUM_PHOTO:I = 0x1

.field public static final TYPE_AUDIO:I = 0x3

.field public static final TYPE_CHAT_PHOTO:I = 0x7

.field public static final TYPE_DOCUMENT:I = 0x4

.field public static final TYPE_MESSAGE_PHOTO:I = 0x5

.field public static final TYPE_PROFILE_PHOTO:I = 0x6

.field public static final TYPE_VIDEO:I = 0x2

.field public static final TYPE_WALL_PHOTO:I

.field public static currentInstance:Lcom/vkontakte/android/UploaderService;

.field private static failedTasks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UploaderService$UploadTask;",
            ">;"
        }
    .end annotation
.end field

.field private static lastID:I

.field private static taskQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/UploaderService$UploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentRequest:Lorg/apache/http/client/methods/HttpPost;

.field private currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

.field private nDone:I

.field private needCancelCurrent:Z

.field private needUpdateNumber:Z

.field private notification:Landroid/app/Notification;

.field private running:Z

.field private uploadView:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/vkontakte/android/UploaderService;->lastID:I

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 94
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    .line 97
    iput v1, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 98
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 101
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UploaderService;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/UploaderService;IIZ)V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    return-void
.end method

.method private doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 13
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 544
    const/4 v7, 0x0

    .line 545
    .local v7, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 547
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 548
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 549
    .local v1, "hParams":Lorg/apache/http/params/HttpParams;
    const/4 v10, 0x0

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 550
    sget-object v10, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 551
    const/16 v10, 0x2000

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 552
    const/16 v10, 0x7530

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 553
    const/16 v10, 0x7530

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 554
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadServer:Ljava/lang/String;

    invoke-direct {v5, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 555
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    iput-object v5, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 557
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "FILE="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v10, :cond_0

    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 560
    :cond_0
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "photo"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 572
    :goto_0
    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 573
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 574
    iget-boolean v10, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_9

    .line 575
    if-eqz v3, :cond_1

    .line 577
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 580
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 582
    :try_start_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 585
    :cond_2
    :goto_2
    const/4 v10, 0x0

    .line 613
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_3
    return v10

    .line 561
    .restart local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_3
    :try_start_3
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 562
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file1"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 599
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v9

    .line 600
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 601
    if-eqz v3, :cond_4

    .line 603
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 606
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 608
    :try_start_5
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 612
    :cond_5
    :goto_5
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 613
    const/4 v10, 0x0

    goto :goto_3

    .line 563
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_6
    :try_start_6
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 564
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 565
    :cond_7
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 566
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "video_file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 568
    :cond_8
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 587
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 588
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v6, v10, [B

    .line 589
    .local v6, "rd":[B
    const/4 v4, 0x0

    .line 590
    .local v4, "l":I
    :goto_6
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_a

    .line 591
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 592
    .local v8, "s":Ljava/lang/String;
    const-string v10, "vk"

    invoke-static {v10, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iput-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    .line 594
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 595
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 596
    const/4 v3, 0x0

    .line 597
    const/4 v7, 0x0

    .line 598
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 590
    .end local v8    # "s":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 578
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "l":I
    .end local v6    # "rd":[B
    :catch_1
    move-exception v10

    goto/16 :goto_1

    .line 604
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 609
    :catch_3
    move-exception v10

    goto :goto_5

    .line 583
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_4
    move-exception v10

    goto/16 :goto_2
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1150
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1151
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "ctype":Ljava/lang/String;
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1153
    const-string v1, "image.jpg"

    .line 1159
    .end local v0    # "ctype":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1154
    .restart local v0    # "ctype":Ljava/lang/String;
    :cond_0
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    const-string v1, "audio.mp3"

    goto :goto_0

    .line 1156
    :cond_1
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1157
    const-string v1, "video.mp4"

    goto :goto_0

    .line 1159
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNewID()I
    .locals 2

    .prologue
    .line 1291
    sget v0, Lcom/vkontakte/android/UploaderService;->lastID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/vkontakte/android/UploaderService;->lastID:I

    return v0
.end method

.method private static getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 332
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 333
    .local v2, "proj":[Ljava/lang/String;
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 334
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 335
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 336
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, "path":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 338
    return-object v8
.end method

.method private getStringResForProgress(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1052
    packed-switch p1, :pswitch_data_0

    .line 1062
    const v0, 0x7f060097

    :goto_0
    return v0

    .line 1055
    :pswitch_0
    const v0, 0x7f060030

    goto :goto_0

    .line 1057
    :pswitch_1
    const v0, 0x7f060095

    goto :goto_0

    .line 1059
    :pswitch_2
    const v0, 0x7f060096

    goto :goto_0

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUploadServer(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 6
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 453
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v2, :cond_0

    .line 454
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getWallUploadServer"

    invoke-direct {v0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "req":Lcom/vkontakte/android/APIRequest;
    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 456
    .local v1, "uid":I
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 457
    new-instance v2, Lcom/vkontakte/android/UploaderService$1;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/UploaderService$1;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 463
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    .line 540
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v1    # "uid":I
    :goto_0
    return v2

    .line 465
    :cond_0
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 466
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getProfileUploadServer"

    invoke-direct {v0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 467
    .restart local v0    # "req":Lcom/vkontakte/android/APIRequest;
    new-instance v2, Lcom/vkontakte/android/UploaderService$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/UploaderService$2;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 473
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto :goto_0

    .line 475
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_1
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 476
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getChatUploadServer"

    invoke-direct {v0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 477
    .restart local v0    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v3, "chat_id"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v4, "chat_id"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 478
    new-instance v2, Lcom/vkontakte/android/UploaderService$3;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/UploaderService$3;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 484
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto :goto_0

    .line 486
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 487
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getUploadServer"

    invoke-direct {v3, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 488
    const-string v4, "album_id"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "aid"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 489
    const-string v4, "group_id"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "gid"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "gid"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 490
    new-instance v3, Lcom/vkontakte/android/UploaderService$4;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$4;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_0

    .line 489
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 498
    :cond_4
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 499
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getMessagesUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 500
    new-instance v3, Lcom/vkontakte/android/UploaderService$5;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$5;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 506
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_0

    .line 508
    :cond_5
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 509
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "audio.getUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 510
    new-instance v3, Lcom/vkontakte/android/UploaderService$6;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$6;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_0

    .line 518
    :cond_6
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 519
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v2, "video.save"

    invoke-direct {v3, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 520
    const-string v4, "name"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "name"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 521
    const-string v4, "description"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "description"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 522
    new-instance v3, Lcom/vkontakte/android/UploaderService$7;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$7;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_0

    .line 530
    :cond_7
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 531
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "docs.getUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 532
    new-instance v3, Lcom/vkontakte/android/UploaderService$8;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$8;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_0

    .line 540
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static hasTaskWithId(I)Z
    .locals 4
    .param p0, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 1044
    sget-object v2, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-ne v2, p0, :cond_0

    .line 1048
    :goto_0
    return v1

    .line 1045
    :cond_0
    sget-object v2, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1048
    const/4 v1, 0x0

    goto :goto_0

    .line 1045
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 1046
    .local v0, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    iget v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-ne v3, p0, :cond_1

    goto :goto_0
.end method

.method private post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 13
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 775
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v7, :cond_5

    .line 776
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v10, "_nopost"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 778
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 779
    .local v4, "o":Lorg/json/JSONObject;
    const-string v7, "type"

    const-string v9, "photo"

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 780
    const-string v7, "photo"

    iget-object v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 781
    const/4 v7, -0x1

    invoke-static {v4, v7}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .line 782
    .local v0, "att":Lcom/vkontakte/android/PhotoAttachment;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "id"

    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 784
    const-string v7, "attachment"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 785
    const-string v7, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v2, v7}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0    # "att":Lcom/vkontakte/android/PhotoAttachment;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "o":Lorg/json/JSONObject;
    :goto_0
    move v7, v8

    .line 993
    :goto_1
    return v7

    .line 789
    :cond_0
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v10, "_edit"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "wall.edit"

    :goto_2
    invoke-direct {v5, v7}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 790
    .local v5, "req":Lcom/vkontakte/android/APIRequest;
    const-string v7, "device"

    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v7, v10}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 791
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 795
    const-string v1, ""

    .line 796
    .local v1, "atts":Ljava/lang/String;
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 799
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 804
    const-string v7, "attachments"

    invoke-virtual {v5, v7, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 805
    new-instance v7, Lcom/vkontakte/android/UploaderService$16;

    invoke-direct {v7, p0, p1}, Lcom/vkontakte/android/UploaderService$16;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 915
    invoke-virtual {v7}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v7

    goto :goto_1

    .line 789
    .end local v1    # "atts":Ljava/lang/String;
    .end local v5    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    const-string v7, "wall.post"

    goto :goto_2

    .line 791
    .restart local v5    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 792
    .local v3, "key":Ljava/lang/String;
    const-string v7, "_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 793
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v3, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_3

    .line 796
    .end local v3    # "key":Ljava/lang/String;
    .restart local v1    # "atts":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 797
    .local v6, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    const-string v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 917
    .end local v1    # "atts":Ljava/lang/String;
    .end local v5    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v6    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_5
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v7, v8, :cond_6

    move v7, v8

    .line 933
    goto/16 :goto_1

    .line 935
    :cond_6
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x5

    if-ne v7, v10, :cond_8

    .line 936
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v7, :cond_7

    .line 938
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 939
    .restart local v4    # "o":Lorg/json/JSONObject;
    const-string v7, "type"

    const-string v9, "photo"

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    const-string v7, "photo"

    iget-object v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 941
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "photo"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v11, "pid"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-static {v4, v10}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadDone(Ljava/lang/String;Lcom/vkontakte/android/Attachment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 945
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_7
    :goto_5
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 946
    .restart local v4    # "o":Lorg/json/JSONObject;
    const-string v7, "type"

    const-string v9, "photo"

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 947
    const-string v7, "photo"

    iget-object v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 948
    const/4 v7, -0x1

    invoke-static {v4, v7}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .line 949
    .restart local v0    # "att":Lcom/vkontakte/android/PhotoAttachment;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 950
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "id"

    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 951
    const-string v7, "attachment"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 952
    const-string v7, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v2, v7}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 953
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-static {v7, v0}, Lcom/vkontakte/android/data/Messages;->uploadDone(ILcom/vkontakte/android/PhotoAttachment;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "att":Lcom/vkontakte/android/PhotoAttachment;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "o":Lorg/json/JSONObject;
    :goto_6
    move v7, v8

    .line 955
    goto/16 :goto_1

    .line 957
    :cond_8
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_9

    move v7, v8

    .line 958
    goto/16 :goto_1

    .line 960
    :cond_9
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_a

    move v7, v8

    .line 961
    goto/16 :goto_1

    .line 963
    :cond_a
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x4

    if-ne v7, v10, :cond_b

    move v7, v8

    .line 964
    goto/16 :goto_1

    .line 966
    :cond_b
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x7

    if-ne v7, v10, :cond_c

    .line 967
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 968
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "id"

    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 969
    const-string v7, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v2, v7}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v7, v8

    .line 970
    goto/16 :goto_1

    .line 972
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_c
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_e

    .line 973
    new-instance v7, Lcom/vkontakte/android/APIRequest;

    const-string v8, "getProfiles"

    invoke-direct {v7, v8}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 974
    const-string v8, "user_ids"

    sget v9, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v8

    .line 975
    const-string v9, "fields"

    sget v7, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v10

    if-lez v7, :cond_d

    const-string v7, "photo_medium_rec"

    :goto_7
    invoke-virtual {v8, v9, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 976
    new-instance v8, Lcom/vkontakte/android/UploaderService$17;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/UploaderService$17;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 990
    invoke-virtual {v7}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v7

    goto/16 :goto_1

    .line 975
    :cond_d
    const-string v7, "photo_rec"

    goto :goto_7

    :cond_e
    move v7, v9

    .line 993
    goto/16 :goto_1

    .line 954
    :catch_0
    move-exception v7

    goto :goto_6

    .line 942
    :catch_1
    move-exception v7

    goto/16 :goto_5

    .line 786
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method private processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z
    .locals 9
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;
    .param p2, "isSub"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 244
    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 245
    :cond_0
    iget-object v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    if-eqz v4, :cond_6

    .line 246
    const-string v4, "vk"

    const-string v5, "UploaderService: multiattach upload"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 255
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x4

    iput v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 262
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 263
    const-string v2, "vk"

    const-string v4, "UploaderService: multiattach upload OK!"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 328
    :goto_1
    return v2

    .line 247
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 248
    .local v0, "u":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "UploaderService: uploading subTask = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 257
    .end local v0    # "u":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_4
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 258
    :cond_5
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto :goto_1

    .line 266
    :cond_6
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v4, v6, :cond_7

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v4, :cond_7

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v4, v7, :cond_7

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    invoke-direct {p0, v4}, Lcom/vkontakte/android/UploaderService;->showProgress(I)V

    .line 267
    :cond_7
    const-string v4, "vk"

    const-string v5, "UploaderService: taskState = NEW"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-nez v4, :cond_8

    .line 276
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getUploadServer(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_10

    iput v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 284
    :cond_8
    const-string v4, "vk"

    const-string v5, "UploaderService: taskState = UPLOADING"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v4, v3, :cond_9

    .line 287
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_12

    iput v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 295
    :cond_9
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v4, v6, :cond_a

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v4, :cond_a

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v4, v7, :cond_a

    invoke-direct {p0, v2, v3, v3}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    .line 296
    :cond_a
    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v4, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v4, :cond_b

    .line 297
    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v4, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    const/4 v5, -0x1

    invoke-interface {v4, v5, v3}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 299
    :cond_b
    const-string v4, "vk"

    const-string v5, "UploaderService: taskState = SAVING"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v4, v8, :cond_c

    .line 302
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x3

    iput v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 310
    :cond_c
    const-string v4, "vk"

    const-string v5, "UploaderService: taskState = FINISHING"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d

    if-nez p2, :cond_d

    .line 313
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v2, 0x4

    iput v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 321
    :cond_d
    const-string v2, "vk"

    const-string v4, "UploaderService: taskState = DONE"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v2, v6, :cond_e

    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v2, :cond_e

    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v2, v7, :cond_e

    if-nez p2, :cond_e

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 324
    :cond_e
    iget-boolean v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    if-eqz v2, :cond_f

    .line 325
    new-instance v2, Ljava/io/File;

    iget-object v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_f
    move v2, v3

    .line 328
    goto/16 :goto_1

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "x":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 278
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_10
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_11

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 279
    :cond_11
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 289
    :cond_12
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 290
    :cond_13
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 304
    :cond_14
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 305
    :cond_15
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 315
    :cond_16
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 316
    :cond_17
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1
.end method

.method private resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 30
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 343
    .local v23, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v3, "impick://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const/16 v5, 0x500

    const/16 v6, 0x59

    new-instance v7, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, ".vkontakte/temp_upload.jpg"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->getPathForStyledImage(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 345
    .local v24, "result":Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 450
    .end local v24    # "result":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const-string v2, "compressPhotos"

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    :try_start_0
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 351
    .local v19, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v16

    .line 353
    .local v16, "f":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v17

    .line 354
    .local v17, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 355
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 356
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "in img size "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_2

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x500

    if-gt v2, v3, :cond_3

    .line 359
    :cond_2
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, v3, :cond_c

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x400

    if-le v2, v3, :cond_c

    .line 360
    :cond_3
    const/16 v26, 0x0

    .line 361
    .local v26, "sample":F
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_d

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44a00000    # 1280.0f

    div-float v26, v2, v3

    .line 363
    :goto_1
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "sample size="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    move/from16 v26, v0

    .line 365
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "new size="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float v5, v5, v26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float v5, v5, v26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x0

    move-object/from16 v0, v19

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 367
    move/from16 v0, v26

    float-to-int v2, v0

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 375
    .local v12, "bmp":Landroid/graphics/Bitmap;
    :goto_2
    :try_start_2
    new-instance v28, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte"

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 376
    .local v28, "vkDir":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdirs()Z

    .line 377
    :cond_4
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte/temp_upload.jpg"

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 378
    .local v21, "outfile":Ljava/io/File;
    const/16 v25, 0x0

    .line 379
    .local v25, "rotation":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_6

    .line 381
    const/4 v2, 0x1

    :try_start_3
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "orientation"

    aput-object v3, v4, v2

    .line 382
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 383
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 382
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 384
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 385
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 387
    :cond_5
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "img rotation is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 390
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_6
    :goto_3
    :try_start_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v25, :cond_8

    .line 391
    :cond_7
    new-instance v15, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 392
    .local v15, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v18

    .line 393
    .local v18, "o":I
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Exif orientation "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    packed-switch v18, :pswitch_data_0

    .line 409
    .end local v15    # "exif":Landroid/media/ExifInterface;
    .end local v18    # "o":I
    :cond_8
    :goto_4
    :pswitch_0
    if-eqz v25, :cond_9

    .line 410
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 411
    .local v10, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v25

    int-to-float v2, v0

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preRotate(F)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 413
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    move-object v5, v12

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v12

    .line 419
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_9
    :goto_5
    :try_start_6
    new-instance v20, Ljava/io/FileOutputStream;

    invoke-direct/range {v20 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 420
    .local v20, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x59

    move-object/from16 v0, v20

    invoke-virtual {v12, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 421
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 423
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_b

    .line 424
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 425
    .local v22, "path":Ljava/lang/String;
    const-string v2, "content:"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v22

    .line 426
    :cond_a
    new-instance v27, Landroid/media/ExifInterface;

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 427
    .local v27, "srcExif":Landroid/media/ExifInterface;
    new-instance v14, Landroid/media/ExifInterface;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 428
    .local v14, "dstExif":Landroid/media/ExifInterface;
    const-string v2, "GPSAltitude"

    const-string v3, "GPSAltitude"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v2, "GPSAltitudeRef"

    const-string v3, "GPSAltitudeRef"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v2, "GPSLatitude"

    const-string v3, "GPSLatitude"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v2, "GPSLatitudeRef"

    const-string v3, "GPSLatitudeRef"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v2, "GPSLongitude"

    const-string v3, "GPSLongitude"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v2, "GPSLongitudeRef"

    const-string v3, "GPSLongitudeRef"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v2, "Make"

    const-string v3, "Make"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v2, "Model"

    const-string v3, "Model"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 443
    .end local v14    # "dstExif":Landroid/media/ExifInterface;
    .end local v22    # "path":Ljava/lang/String;
    .end local v27    # "srcExif":Landroid/media/ExifInterface;
    :cond_b
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "file size = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 445
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    .line 447
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v20    # "out":Ljava/io/FileOutputStream;
    .end local v21    # "outfile":Ljava/io/File;
    .end local v25    # "rotation":I
    .end local v26    # "sample":F
    .end local v28    # "vkDir":Ljava/io/File;
    :cond_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->close()V

    .line 448
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_0

    .line 449
    .end local v16    # "f":Landroid/content/res/AssetFileDescriptor;
    .end local v17    # "is":Ljava/io/FileInputStream;
    .end local v19    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 362
    .restart local v16    # "f":Landroid/content/res/AssetFileDescriptor;
    .restart local v17    # "is":Ljava/io/FileInputStream;
    .restart local v19    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v26    # "sample":F
    :cond_d
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v26, v2, v3

    goto/16 :goto_1

    .line 371
    :catch_1
    move-exception v29

    .line 372
    .local v29, "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 373
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12    # "bmp":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 396
    .end local v29    # "x":Ljava/lang/OutOfMemoryError;
    .restart local v15    # "exif":Landroid/media/ExifInterface;
    .restart local v18    # "o":I
    .restart local v21    # "outfile":Ljava/io/File;
    .restart local v25    # "rotation":I
    .restart local v28    # "vkDir":Ljava/io/File;
    :pswitch_1
    const/16 v25, 0x0

    .line 397
    goto/16 :goto_4

    .line 399
    :pswitch_2
    const/16 v25, 0x5a

    .line 400
    goto/16 :goto_4

    .line 402
    :pswitch_3
    const/16 v25, 0xb4

    .line 403
    goto/16 :goto_4

    .line 405
    :pswitch_4
    const/16 v25, 0x10e

    goto/16 :goto_4

    .line 414
    .end local v15    # "exif":Landroid/media/ExifInterface;
    .end local v18    # "o":I
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    :catch_2
    move-exception v29

    .line 415
    .restart local v29    # "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 416
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    move-object v5, v12

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v12

    goto/16 :goto_5

    .line 388
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v29    # "x":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    goto/16 :goto_3

    .line 394
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private retryAll()V
    .locals 2

    .prologue
    .line 1144
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1145
    sget-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1146
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    .line 1147
    return-void
.end method

.method private saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 10
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v7, 0x1

    .line 617
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v6, :cond_1

    .line 618
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveWallPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 619
    .local v4, "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 620
    const-string v6, "device"

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 622
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 623
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 624
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 629
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_1
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "owner_id"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 630
    .local v5, "uid":I
    const-string v6, "owner_id"

    invoke-virtual {v4, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 631
    new-instance v6, Lcom/vkontakte/android/UploaderService$9;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$9;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 639
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    .line 771
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v5    # "uid":I
    :goto_2
    return v6

    .line 625
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 626
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 628
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 641
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_1
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x6

    if-ne v6, v8, :cond_3

    .line 642
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveProfilePhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 643
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "device"

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 645
    :try_start_2
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 646
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 647
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-nez v6, :cond_2

    .line 652
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_4
    new-instance v6, Lcom/vkontakte/android/UploaderService$10;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$10;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 659
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto :goto_2

    .line 648
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 649
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 651
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    goto :goto_4

    .line 661
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_3
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_4

    .line 662
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "messages.setChatPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 664
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_4
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 665
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "file"

    const-string v7, "response"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 667
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_5
    new-instance v6, Lcom/vkontakte/android/UploaderService$11;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$11;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 674
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 676
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_4
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_6

    .line 677
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveMessagesPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 679
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_5
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 680
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 681
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v6

    if-nez v6, :cond_5

    .line 686
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_7
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 687
    new-instance v6, Lcom/vkontakte/android/UploaderService$12;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$12;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 695
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 682
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_5
    :try_start_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 683
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 685
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    goto :goto_7

    .line 697
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_6
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v6, v7, :cond_b

    .line 698
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 699
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "device"

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 701
    :try_start_7
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 702
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 703
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result v6

    if-nez v6, :cond_a

    .line 708
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_9
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "gid"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 709
    const-string v8, "group_id"

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v9, "gid"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 711
    :cond_7
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v8, "aid"

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 712
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v8, "aid"

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 713
    .local v0, "aid":Ljava/lang/String;
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v8, "album_id"

    invoke-virtual {v6, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    .end local v0    # "aid":Ljava/lang/String;
    :cond_8
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 717
    const-string v8, "caption"

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v9, "text"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 719
    :cond_9
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 721
    new-instance v6, Lcom/vkontakte/android/UploaderService$13;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$13;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 737
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 704
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_a
    :try_start_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 705
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    .line 707
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v6

    goto :goto_9

    .line 739
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_b
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_c

    .line 740
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "audio.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 742
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_9
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 743
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "server"

    const-string v7, "server"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 744
    const-string v6, "audio"

    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 745
    const-string v6, "hash"

    const-string v7, "hash"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 749
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_a
    new-instance v6, Lcom/vkontakte/android/UploaderService$14;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/UploaderService$14;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 752
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 754
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_c
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_d

    move v6, v7

    .line 755
    goto/16 :goto_2

    .line 757
    :cond_d
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_e

    .line 758
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "docs.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 760
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_a
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 761
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "file"

    const-string v7, "file"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 765
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_b
    new-instance v6, Lcom/vkontakte/android/UploaderService$15;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/UploaderService$15;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 768
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 771
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 762
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :catch_4
    move-exception v6

    goto :goto_b

    .line 746
    :catch_5
    move-exception v6

    goto :goto_a

    .line 666
    :catch_6
    move-exception v6

    goto/16 :goto_5
.end method

.method private showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 12
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/high16 v11, 0x8000000

    const/4 v10, 0x0

    .line 1080
    const v6, 0x7f060040

    .local v6, "rIdOkLong":I
    const v7, 0x7f06003f

    .line 1081
    .local v7, "rIdOkShort":I
    iget v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v8, :pswitch_data_0

    .line 1111
    :goto_0
    :pswitch_0
    iget v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v8, :pswitch_data_1

    .line 1128
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1129
    .local v5, "notificationIntent":Landroid/content/Intent;
    const-string v8, "NOTHING"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1134
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    :goto_1
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1135
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x143

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1136
    new-instance v4, Landroid/app/Notification;

    const v8, 0x7f0201b0

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1137
    .local v4, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1138
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06000f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v2, v8, v9, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1139
    iget v8, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 1140
    const/16 v8, 0x144

    invoke-virtual {v3, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1141
    return-void

    .line 1083
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v4    # "notification1":Landroid/app/Notification;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    :pswitch_1
    iget v8, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 1084
    const v6, 0x7f06009c

    .line 1085
    const v7, 0x7f0600a1

    .line 1086
    goto :goto_0

    .line 1087
    :cond_0
    const v6, 0x7f060098

    .line 1088
    const v7, 0x7f06009d

    .line 1090
    goto :goto_0

    .line 1092
    :pswitch_2
    const v6, 0x7f060099

    .line 1093
    const v7, 0x7f06009e

    .line 1094
    goto :goto_0

    .line 1096
    :pswitch_3
    const v6, 0x7f06009b

    .line 1097
    const v7, 0x7f0600a0

    .line 1098
    goto :goto_0

    .line 1100
    :pswitch_4
    const v6, 0x7f06009a

    .line 1101
    const v7, 0x7f06009f

    .line 1102
    goto/16 :goto_0

    .line 1104
    :pswitch_5
    const v6, 0x7f060098

    .line 1105
    const v7, 0x7f06009d

    goto/16 :goto_0

    .line 1113
    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1114
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "entry"

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1115
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1116
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    const-string v8, "args"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1117
    const-string v8, "class"

    const-string v9, "PostViewFragment"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1119
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 1081
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method private showProgress(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1067
    new-instance v1, Landroid/app/Notification;

    const v2, 0x1080088

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    .line 1068
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x22

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1069
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030052

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    .line 1070
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f0800f9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<b>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b> - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getStringResForProgress(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1071
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f0800fa

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    sget-object v5, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1072
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1073
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NOTHING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1075
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1076
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x143

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1077
    return-void
.end method

.method private startThread()V
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    .line 214
    :cond_0
    return-void
.end method

.method private updateProgress(IIZ)V
    .locals 5
    .param p1, "loaded"    # I
    .param p2, "total"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 234
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UploaderService: progress = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v1, 0x7f0800fb

    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 236
    iget-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v1, 0x7f0800fa

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    sget-object v4, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 240
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x143

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 241
    return-void
.end method

.method private uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 11
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v8, 0x5

    const/4 v10, 0x0

    .line 1011
    const-string v6, "vk"

    const-string v7, "UploaderService: FAILED"

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v6, :cond_0

    .line 1013
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    invoke-interface {v6}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadFailed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1014
    invoke-direct {p0, p1, v10}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 1018
    :cond_0
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v6, v8, :cond_1

    .line 1019
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-static {v6}, Lcom/vkontakte/android/data/Messages;->uploadFailed(I)V

    .line 1022
    :cond_1
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-eqz v6, :cond_2

    .line 1023
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "id"

    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1025
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1028
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v6, v8, :cond_3

    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v6, :cond_3

    .line 1029
    sget-object v6, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1031
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1032
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v6, 0x143

    invoke-virtual {v3, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1033
    new-instance v4, Landroid/app/Notification;

    const v6, 0x1080078

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1034
    .local v4, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1035
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1036
    .local v5, "notificationIntent":Landroid/content/Intent;
    const-string v6, "RETRY"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    invoke-static {p0, v10, v5, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1038
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06000f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1039
    const/16 v6, 0x145

    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1041
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v4    # "notification1":Landroid/app/Notification;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    :cond_3
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 997
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget v1, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-ne v1, p1, :cond_0

    .line 998
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    .line 999
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 1002
    :cond_0
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1008
    :goto_0
    return-void

    .line 1002
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 1003
    .local v0, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    iget v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-ne v2, p1, :cond_1

    .line 1004
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vkontakte/android/UploaderService;->onStartCommand(Landroid/content/Intent;II)I

    .line 113
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v9, 0x0

    .line 117
    sput-object p0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 118
    const-string v7, "RETRY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 119
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const/16 v8, 0x145

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 120
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->retryAll()V

    .line 175
    :cond_0
    :goto_0
    const/4 v7, 0x2

    return v7

    .line 121
    :cond_1
    const-string v7, "NOTHING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 122
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    goto :goto_0

    .line 123
    :cond_2
    const-string v7, "CANCEL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 124
    const-string v7, "id"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->cancel(I)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 128
    const-string v7, "new"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 129
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 130
    .local v5, "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "id"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    .line 131
    const-string v7, "file"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 132
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 133
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 134
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 135
    :cond_4
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_5
    :goto_1
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 173
    :cond_6
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    goto :goto_0

    .line 136
    :cond_7
    const-string v7, "multiattach"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 137
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 138
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "files":[Ljava/lang/String;
    const-string v7, "types"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 140
    .local v6, "types":[I
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 141
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    .line 142
    const-string v7, "attachments"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->attcahments:Ljava/util/HashMap;

    .line 143
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 144
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v0

    if-lt v2, v7, :cond_9

    .line 151
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    :cond_9
    new-instance v4, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v4}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 146
    .local v4, "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    aget-object v7, v0, v2

    iput-object v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 147
    aget v7, v6, v2

    iput v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 148
    iget-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    iput-object v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 149
    iget-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    .end local v0    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v6    # "types":[I
    :cond_a
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 153
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 154
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 155
    .local v3, "p":Landroid/os/Parcelable;
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 156
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 157
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 158
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 159
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 160
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 163
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_c
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 164
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 165
    :cond_d
    const-string v7, "file"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 166
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 167
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 168
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    const-string v1, "vk"

    const-string v2, "UploaderService started"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    .line 228
    iput v3, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 229
    const-string v1, "vk"

    const-string v2, "UploaderService stopped"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v1, 0x0

    sput-object v1, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 231
    return-void

    .line 222
    :cond_1
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UploaderService$UploadTask;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 223
    iget v1, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 224
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    const-string v2, "Error uploading!"

    invoke-static {v1, v2, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCallbackForFile(Ljava/lang/String;Lcom/vkontakte/android/UploaderService$UploadCallback;)V
    .locals 3
    .param p1, "fileURI"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/vkontakte/android/UploaderService$UploadCallback;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v1, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iput-object p2, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 184
    .local v0, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iput-object p2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    goto :goto_0
.end method
