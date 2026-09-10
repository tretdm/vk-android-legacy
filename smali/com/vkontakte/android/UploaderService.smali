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

.field private notificationTitle:Ljava/lang/CharSequence;

.field private notifyBuilder:Landroid/app/Notification$Builder;

.field private running:Z

.field private uploadView:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 93
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    .line 94
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/vkontakte/android/UploaderService;->lastID:I

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    .line 99
    iput v1, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 100
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 103
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UploaderService;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1256
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/UploaderService;IIZ)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/UploaderService;Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/UploaderService;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    return-object v0
.end method

.method private doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 13
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 596
    const/4 v7, 0x0

    .line 597
    .local v7, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 599
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 600
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 601
    .local v1, "hParams":Lorg/apache/http/params/HttpParams;
    const/4 v10, 0x0

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 602
    sget-object v10, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 603
    const/16 v10, 0x2000

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 604
    const/16 v10, 0x7530

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 605
    const/16 v10, 0x7530

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 606
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadServer:Ljava/lang/String;

    invoke-direct {v5, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 607
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    iput-object v5, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 609
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

    .line 611
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v10, :cond_0

    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 612
    :cond_0
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "photo"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 624
    :goto_0
    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 625
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 626
    iget-boolean v10, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_9

    .line 627
    if-eqz v3, :cond_1

    .line 629
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 634
    :try_start_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 637
    :cond_2
    :goto_2
    const/4 v10, 0x0

    .line 665
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_3
    return v10

    .line 613
    .restart local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_3
    :try_start_3
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 614
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file1"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 651
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v9

    .line 652
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    if-eqz v3, :cond_4

    .line 655
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 658
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 660
    :try_start_5
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 664
    :cond_5
    :goto_5
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 665
    const/4 v10, 0x0

    goto :goto_3

    .line 615
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_6
    :try_start_6
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 616
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 617
    :cond_7
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 618
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "video_file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 620
    :cond_8
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 639
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 640
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v6, v10, [B

    .line 641
    .local v6, "rd":[B
    const/4 v4, 0x0

    .line 642
    .local v4, "l":I
    :goto_6
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_a

    .line 643
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 644
    .local v8, "s":Ljava/lang/String;
    const-string v10, "vk"

    invoke-static {v10, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iput-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    .line 646
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 647
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 648
    const/4 v3, 0x0

    .line 649
    const/4 v7, 0x0

    .line 650
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 642
    .end local v8    # "s":Ljava/lang/String;
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 630
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "l":I
    .end local v6    # "rd":[B
    :catch_1
    move-exception v10

    goto/16 :goto_1

    .line 656
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 661
    :catch_3
    move-exception v10

    goto :goto_5

    .line 635
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
    .line 1257
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1258
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, "ctype":Ljava/lang/String;
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    const-string v1, "image.jpg"

    .line 1266
    .end local v0    # "ctype":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1261
    .restart local v0    # "ctype":Ljava/lang/String;
    :cond_0
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    const-string v1, "audio.mp3"

    goto :goto_0

    .line 1263
    :cond_1
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1264
    const-string v1, "video.mp4"

    goto :goto_0

    .line 1266
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNewID()I
    .locals 2

    .prologue
    .line 1399
    sget v0, Lcom/vkontakte/android/UploaderService;->lastID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/vkontakte/android/UploaderService;->lastID:I

    return v0
.end method

.method public static getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 361
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 370
    :goto_0
    return-object v8

    .line 364
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 365
    .local v2, "proj":[Ljava/lang/String;
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 366
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 367
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "path":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getStringResForProgress(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1147
    packed-switch p1, :pswitch_data_0

    .line 1157
    const v0, 0x7f0800b1

    :goto_0
    return v0

    .line 1150
    :pswitch_0
    const v0, 0x7f08004a

    goto :goto_0

    .line 1152
    :pswitch_1
    const v0, 0x7f0800af

    goto :goto_0

    .line 1154
    :pswitch_2
    const v0, 0x7f0800b0

    goto :goto_0

    .line 1147
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
    .locals 8
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v4, 0x0

    .line 501
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v3, :cond_0

    .line 502
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getWallUploadServer"

    invoke-direct {v1, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 503
    .local v1, "req":Lcom/vkontakte/android/APIRequest;
    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 504
    .local v2, "uid":I
    const-string v3, "owner_id"

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 505
    new-instance v3, Lcom/vkontakte/android/UploaderService$1;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$1;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 511
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    .line 592
    .end local v1    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v2    # "uid":I
    :goto_0
    return v3

    .line 513
    :cond_0
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_1

    .line 514
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getProfileUploadServer"

    invoke-direct {v1, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 515
    .restart local v1    # "req":Lcom/vkontakte/android/APIRequest;
    new-instance v3, Lcom/vkontakte/android/UploaderService$2;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$2;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 521
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto :goto_0

    .line 523
    .end local v1    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_1
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    .line 524
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getChatUploadServer"

    invoke-direct {v1, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 525
    .restart local v1    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v4, "chat_id"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "chat_id"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 526
    new-instance v3, Lcom/vkontakte/android/UploaderService$3;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$3;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 532
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto :goto_0

    .line 534
    .end local v1    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 535
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getUploadServer"

    invoke-direct {v5, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 536
    const-string v6, "album_id"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "aid"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 537
    const-string v6, "group_id"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "gid"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v4, "gid"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 538
    new-instance v4, Lcom/vkontakte/android/UploaderService$4;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$4;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 544
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    :cond_3
    move-object v3, v4

    .line 537
    goto :goto_1

    .line 546
    :cond_4
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    .line 547
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v4, "photos.getMessagesUploadServer"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 548
    new-instance v4, Lcom/vkontakte/android/UploaderService$5;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$5;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 554
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    .line 556
    :cond_5
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 557
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v4, "audio.getUploadServer"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 558
    new-instance v4, Lcom/vkontakte/android/UploaderService$6;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$6;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 564
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    .line 566
    :cond_6
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 567
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v3, "video.save"

    invoke-direct {v4, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 568
    const-string v5, "name"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "name"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 569
    const-string v5, "description"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "description"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    .line 570
    const-string v5, "is_private"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "is_private"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 571
    new-instance v4, Lcom/vkontakte/android/UploaderService$7;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$7;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 578
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    .line 580
    :cond_7
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_a

    .line 581
    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "_method"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "method"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    .line 582
    .local v0, "method":Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    invoke-direct {v5, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 583
    const-string v6, "group_id"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "group_id"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v4, "group_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_3
    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 584
    new-instance v4, Lcom/vkontakte/android/UploaderService$8;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$8;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 590
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    .line 581
    .end local v0    # "method":Ljava/lang/String;
    :cond_8
    const-string v0, "docs.getUploadServer"

    goto :goto_2

    .restart local v0    # "method":Ljava/lang/String;
    :cond_9
    move-object v3, v4

    .line 583
    goto :goto_3

    .line 592
    .end local v0    # "method":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static hasTaskWithId(I)Z
    .locals 4
    .param p0, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 1139
    sget-object v2, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-ne v2, p0, :cond_0

    .line 1143
    :goto_0
    return v1

    .line 1140
    :cond_0
    sget-object v2, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1143
    const/4 v1, 0x0

    goto :goto_0

    .line 1140
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 1141
    .local v0, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    iget v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-ne v3, p0, :cond_1

    goto :goto_0
.end method

.method private post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 14
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 833
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v10, :cond_5

    .line 834
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v11, "_nopost"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 836
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 837
    .local v5, "o":Lorg/json/JSONObject;
    const-string v10, "type"

    const-string v11, "photo"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    const-string v10, "photo"

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    invoke-static {v5}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .line 840
    .local v0, "att":Lcom/vkontakte/android/PhotoAttachment;
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "id"

    iget v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const-string v10, "attachment"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 843
    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v3, v10}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v0    # "att":Lcom/vkontakte/android/PhotoAttachment;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "o":Lorg/json/JSONObject;
    :goto_0
    const/4 v10, 0x1

    .line 1072
    :goto_1
    return v10

    .line 844
    :catch_0
    move-exception v9

    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 847
    .end local v9    # "x":Ljava/lang/Exception;
    :cond_0
    new-instance v6, Lcom/vkontakte/android/APIRequest;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v11, "_edit"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "wall.edit"

    :goto_2
    invoke-direct {v6, v10}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 848
    .local v6, "req":Lcom/vkontakte/android/APIRequest;
    const-string v10, "device"

    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 849
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 853
    const-string v1, ""

    .line 854
    .local v1, "atts":Ljava/lang/String;
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 857
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 862
    const-string v10, "attachments"

    invoke-virtual {v6, v10, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 863
    new-instance v10, Lcom/vkontakte/android/UploaderService$16;

    invoke-direct {v10, p0, p1}, Lcom/vkontakte/android/UploaderService$16;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v6, v10}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 972
    invoke-virtual {v10}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v10

    goto/16 :goto_1

    .line 847
    .end local v1    # "atts":Ljava/lang/String;
    .end local v6    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    const-string v10, "wall.post"

    goto :goto_2

    .line 849
    .restart local v6    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 850
    .local v4, "key":Ljava/lang/String;
    const-string v10, "_"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 851
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v6, v4, v10}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_3

    .line 854
    .end local v4    # "key":Ljava/lang/String;
    .restart local v1    # "atts":Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 855
    .local v7, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    const-string v13, "\\|"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 974
    .end local v1    # "atts":Ljava/lang/String;
    .end local v6    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v7    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_5
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 990
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 992
    :cond_6
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_8

    .line 993
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v10, :cond_7

    .line 995
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 996
    .restart local v5    # "o":Lorg/json/JSONObject;
    const-string v10, "type"

    const-string v11, "photo"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 997
    const-string v10, "photo"

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "photo"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v12, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v13, "pid"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadDone(Ljava/lang/String;Lcom/vkontakte/android/Attachment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1002
    .end local v5    # "o":Lorg/json/JSONObject;
    :cond_7
    :goto_5
    :try_start_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1003
    .restart local v5    # "o":Lorg/json/JSONObject;
    const-string v10, "type"

    const-string v11, "photo"

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1004
    const-string v10, "photo"

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v5, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    invoke-static {v5}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    .line 1006
    .restart local v0    # "att":Lcom/vkontakte/android/PhotoAttachment;
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1007
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "id"

    iget v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    const-string v10, "attachment"

    invoke-virtual {v3, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1009
    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v3, v10}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1010
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-static {v10, v0}, Lcom/vkontakte/android/data/Messages;->uploadDone(ILcom/vkontakte/android/Attachment;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1012
    .end local v0    # "att":Lcom/vkontakte/android/PhotoAttachment;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "o":Lorg/json/JSONObject;
    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1014
    :cond_8
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    .line 1015
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1017
    :cond_9
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    .line 1019
    :try_start_3
    new-instance v8, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v8}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 1020
    .local v8, "vf":Lcom/vkontakte/android/api/VideoFile;
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v11, "owner_id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 1021
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v11, "video_id"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 1022
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v11, "title"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 1023
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v11, "description"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 1024
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v11, "access_key"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 1025
    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v11, "duration"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 1026
    const-string v10, ""

    iput-object v10, v8, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 1027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v8, Lcom/vkontakte/android/api/VideoFile;->date:I

    .line 1028
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1029
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "id"

    iget v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v10, "attachment"

    new-instance v11, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v11, v8}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1031
    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v3, v10}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1032
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    new-instance v11, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v11, v8}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-static {v10, v11}, Lcom/vkontakte/android/data/Messages;->uploadDone(ILcom/vkontakte/android/Attachment;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1034
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1033
    :catch_1
    move-exception v9

    .restart local v9    # "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1036
    .end local v9    # "x":Ljava/lang/Exception;
    :cond_a
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_b

    .line 1037
    new-instance v2, Lcom/vkontakte/android/api/Document;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-direct {v2, v10}, Lcom/vkontakte/android/api/Document;-><init>(Lorg/json/JSONObject;)V

    .line 1038
    .local v2, "doc":Lcom/vkontakte/android/api/Document;
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "id"

    iget v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1040
    const-string v10, "attachment"

    new-instance v11, Lcom/vkontakte/android/DocumentAttachment;

    invoke-direct {v11, v2}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1041
    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v3, v10}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1042
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    new-instance v11, Lcom/vkontakte/android/DocumentAttachment;

    invoke-direct {v11, v2}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    invoke-static {v10, v11}, Lcom/vkontakte/android/data/Messages;->uploadDone(ILcom/vkontakte/android/Attachment;)V

    .line 1043
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1045
    .end local v2    # "doc":Lcom/vkontakte/android/api/Document;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_b
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_c

    .line 1046
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v10, "id"

    iget v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v3, v10}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1049
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 1051
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_c
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_e

    .line 1052
    new-instance v10, Lcom/vkontakte/android/APIRequest;

    const-string v11, "getProfiles"

    invoke-direct {v10, v11}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1053
    const-string v11, "user_ids"

    sget v12, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v10, v11, v12}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v11

    .line 1054
    const-string v12, "fields"

    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v13

    if-lez v10, :cond_d

    const-string v10, "photo_medium_rec"

    :goto_8
    invoke-virtual {v11, v12, v10}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 1055
    new-instance v11, Lcom/vkontakte/android/UploaderService$17;

    invoke-direct {v11, p0}, Lcom/vkontakte/android/UploaderService$17;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v10, v11}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v10

    .line 1069
    invoke-virtual {v10}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v10

    goto/16 :goto_1

    .line 1054
    :cond_d
    const-string v10, "photo_rec"

    goto :goto_8

    .line 1072
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1011
    :catch_2
    move-exception v10

    goto/16 :goto_6

    .line 999
    :catch_3
    move-exception v10

    goto/16 :goto_5
.end method

.method private processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z
    .locals 9
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;
    .param p2, "isSub"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 272
    :cond_0
    iget-object v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    if-eqz v4, :cond_6

    .line 273
    const-string v4, "vk"

    const-string v5, "UploaderService: multiattach upload"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 282
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 289
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 290
    const-string v2, "vk"

    const-string v4, "UploaderService: multiattach upload OK!"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 357
    :goto_1
    return v2

    .line 274
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 275
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

    .line 276
    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 277
    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 284
    .end local v0    # "u":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_4
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 285
    :cond_5
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto :goto_1

    .line 293
    :cond_6
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v4, :cond_7

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_7

    iget-boolean v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    if-eqz v4, :cond_7

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    invoke-direct {p0, v4}, Lcom/vkontakte/android/UploaderService;->showProgress(I)V

    .line 294
    :cond_7
    const-string v4, "vk"

    const-string v5, "UploaderService: taskState = NEW"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v4, v8, :cond_8

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v4, v7, :cond_8

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v4, v6, :cond_8

    .line 298
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_8
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-nez v4, :cond_9

    .line 305
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getUploadServer(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_11

    iput v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 313
    :cond_9
    const-string v4, "vk"

    const-string v5, "UploaderService: taskState = UPLOADING"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v4, v3, :cond_a

    .line 316
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_13

    iput v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 324
    :cond_a
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_b

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v4, :cond_b

    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_b

    iget-boolean v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    if-eqz v4, :cond_b

    invoke-direct {p0, v2, v3, v3}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    .line 325
    :cond_b
    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v4, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v4, :cond_c

    .line 326
    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v4, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    const/4 v5, -0x1

    invoke-interface {v4, v5, v3}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 328
    :cond_c
    const-string v4, "vk"

    const-string v5, "UploaderService: taskState = SAVING"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v4, v6, :cond_d

    .line 331
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_15

    iput v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 339
    :cond_d
    const-string v4, "vk"

    const-string v5, "UploaderService: taskState = FINISHING"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v4, v7, :cond_e

    if-nez p2, :cond_e

    .line 342
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v4

    if-eqz v4, :cond_17

    iput v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 350
    :cond_e
    const-string v2, "vk"

    const-string v4, "UploaderService: taskState = DONE"

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_f

    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v2, :cond_f

    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v4, 0x7

    if-eq v2, v4, :cond_f

    if-nez p2, :cond_f

    iget-boolean v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    if-eqz v2, :cond_f

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 353
    :cond_f
    iget-boolean v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    if-eqz v2, :cond_10

    .line 354
    new-instance v2, Ljava/io/File;

    iget-object v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_10
    move v2, v3

    .line 357
    goto/16 :goto_1

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "x":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 307
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_11
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 308
    :cond_12
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 318
    :cond_13
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 319
    :cond_14
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 333
    :cond_15
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 334
    :cond_16
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 344
    :cond_17
    iget-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 345
    :cond_18
    iput-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1
.end method

.method private resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 32
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 375
    .local v25, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v3, "impick://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 377
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "saveProcessedImage"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VK/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 380
    .local v17, "filePath":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "VK"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .local v18, "folder":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 390
    :cond_0
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_4

    const/16 v2, 0x800

    :goto_1
    const/16 v6, 0x5c

    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v2, v6, v0}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getPathForStyledImage(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 391
    .local v26, "result":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "image/jpeg"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 392
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 498
    .end local v17    # "filePath":Ljava/lang/String;
    .end local v18    # "folder":Ljava/io/File;
    .end local v26    # "result":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 384
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v5, ".vkontakte/temp_upload.jpg"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    .line 385
    .restart local v17    # "filePath":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte"

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 386
    .restart local v18    # "folder":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 387
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdir()Z

    .line 388
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    goto :goto_0

    .line 390
    :cond_4
    const/16 v2, 0x400

    goto :goto_1

    .line 395
    .end local v17    # "filePath":Ljava/lang/String;
    .end local v18    # "folder":Ljava/io/File;
    :cond_5
    const-string v2, "compressPhotos"

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    :try_start_0
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 398
    .local v21, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v16

    .line 401
    .local v16, "f":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v19

    .line 402
    .local v19, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 403
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 404
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "in img size "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_6

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x500

    if-gt v2, v3, :cond_7

    .line 407
    :cond_6
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, v3, :cond_f

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x400

    if-le v2, v3, :cond_f

    .line 408
    :cond_7
    const/16 v28, 0x0

    .line 409
    .local v28, "sample":F
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_10

    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44a00000    # 1280.0f

    div-float v28, v2, v3

    .line 411
    :goto_3
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "sample size="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    move/from16 v28, v0

    .line 413
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "new size="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float v5, v5, v28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float v5, v5, v28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 415
    move/from16 v0, v28

    float-to-int v2, v0

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 423
    .local v12, "bmp":Landroid/graphics/Bitmap;
    :goto_4
    :try_start_2
    new-instance v30, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte"

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 424
    .local v30, "vkDir":Ljava/io/File;
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->mkdirs()Z

    .line 425
    :cond_8
    new-instance v23, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte/temp_upload.jpg"

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 426
    .local v23, "outfile":Ljava/io/File;
    const/16 v27, 0x0

    .line 427
    .local v27, "rotation":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_a

    .line 429
    const/4 v2, 0x1

    :try_start_3
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "orientation"

    aput-object v3, v4, v2

    .line 430
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 431
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 430
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 432
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 433
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 435
    :cond_9
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "img rotation is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 438
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_a
    :goto_5
    :try_start_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v27, :cond_c

    .line 439
    :cond_b
    new-instance v15, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 440
    .local v15, "exif":Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v20

    .line 441
    .local v20, "o":I
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Exif orientation "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    packed-switch v20, :pswitch_data_0

    .line 457
    .end local v15    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "o":I
    :cond_c
    :goto_6
    :pswitch_0
    if-eqz v27, :cond_d

    .line 458
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 459
    .local v10, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v27

    int-to-float v2, v0

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preRotate(F)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 461
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

    .line 467
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_d
    :goto_7
    :try_start_6
    new-instance v22, Ljava/io/FileOutputStream;

    invoke-direct/range {v22 .. v23}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 468
    .local v22, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x5c

    move-object/from16 v0, v22

    invoke-virtual {v12, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 469
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 470
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 471
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_e

    .line 472
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 473
    .local v24, "path":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v24

    .line 474
    new-instance v29, Landroid/media/ExifInterface;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 475
    .local v29, "srcExif":Landroid/media/ExifInterface;
    new-instance v14, Landroid/media/ExifInterface;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 476
    .local v14, "dstExif":Landroid/media/ExifInterface;
    const-string v2, "GPSAltitude"

    const-string v3, "GPSAltitude"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v2, "GPSAltitudeRef"

    const-string v3, "GPSAltitudeRef"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v2, "GPSLatitude"

    const-string v3, "GPSLatitude"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "GPSLatitudeRef"

    const-string v3, "GPSLatitudeRef"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v2, "GPSLongitude"

    const-string v3, "GPSLongitude"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v2, "GPSLongitudeRef"

    const-string v3, "GPSLongitudeRef"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v2, "Make"

    const-string v3, "Make"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v2, "Model"

    const-string v3, "Model"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 491
    .end local v14    # "dstExif":Landroid/media/ExifInterface;
    .end local v24    # "path":Ljava/lang/String;
    .end local v29    # "srcExif":Landroid/media/ExifInterface;
    :cond_e
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "file size = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 493
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    .line 495
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "outfile":Ljava/io/File;
    .end local v27    # "rotation":I
    .end local v28    # "sample":F
    .end local v30    # "vkDir":Ljava/io/File;
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    .line 496
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 497
    .end local v16    # "f":Landroid/content/res/AssetFileDescriptor;
    .end local v19    # "is":Ljava/io/FileInputStream;
    .end local v21    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v31

    .local v31, "x":Ljava/lang/Throwable;
    const-string v2, "vk"

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 410
    .end local v31    # "x":Ljava/lang/Throwable;
    .restart local v16    # "f":Landroid/content/res/AssetFileDescriptor;
    .restart local v19    # "is":Ljava/io/FileInputStream;
    .restart local v21    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v28    # "sample":F
    :cond_10
    :try_start_7
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v28, v2, v3

    goto/16 :goto_3

    .line 419
    :catch_1
    move-exception v31

    .line 420
    .local v31, "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 421
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12    # "bmp":Landroid/graphics/Bitmap;
    goto/16 :goto_4

    .line 444
    .end local v31    # "x":Ljava/lang/OutOfMemoryError;
    .restart local v15    # "exif":Landroid/media/ExifInterface;
    .restart local v20    # "o":I
    .restart local v23    # "outfile":Ljava/io/File;
    .restart local v27    # "rotation":I
    .restart local v30    # "vkDir":Ljava/io/File;
    :pswitch_1
    const/16 v27, 0x0

    .line 445
    goto/16 :goto_6

    .line 447
    :pswitch_2
    const/16 v27, 0x5a

    .line 448
    goto/16 :goto_6

    .line 450
    :pswitch_3
    const/16 v27, 0xb4

    .line 451
    goto/16 :goto_6

    .line 453
    :pswitch_4
    const/16 v27, 0x10e

    goto/16 :goto_6

    .line 462
    .end local v15    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "o":I
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    :catch_2
    move-exception v31

    .line 463
    .restart local v31    # "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 464
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    move-object v5, v12

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v12

    goto/16 :goto_7

    .line 436
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v31    # "x":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    goto/16 :goto_5

    .line 442
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
    .line 1251
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1252
    sget-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1253
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    .line 1254
    return-void
.end method

.method private saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 10
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v7, 0x1

    .line 669
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v6, :cond_1

    .line 670
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveWallPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 671
    .local v4, "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 672
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

    .line 674
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 675
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 676
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 681
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

    .line 682
    .local v5, "uid":I
    const-string v6, "owner_id"

    invoke-virtual {v4, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 683
    new-instance v6, Lcom/vkontakte/android/UploaderService$9;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$9;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 691
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    .line 829
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v5    # "uid":I
    :goto_2
    return v6

    .line 677
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 678
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 680
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 693
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_1
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x6

    if-ne v6, v8, :cond_3

    .line 694
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveProfilePhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 695
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

    .line 697
    :try_start_2
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 698
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 699
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    if-nez v6, :cond_2

    .line 704
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_4
    new-instance v6, Lcom/vkontakte/android/UploaderService$10;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$10;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 711
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto :goto_2

    .line 700
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 701
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 703
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    goto :goto_4

    .line 713
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_3
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_4

    .line 714
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "messages.setChatPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 716
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_4
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 717
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "file"

    const-string v7, "response"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 719
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_5
    new-instance v6, Lcom/vkontakte/android/UploaderService$11;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$11;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 726
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 728
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_4
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_6

    .line 729
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveMessagesPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_5
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 732
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 733
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result v6

    if-nez v6, :cond_5

    .line 738
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_7
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 739
    new-instance v6, Lcom/vkontakte/android/UploaderService$12;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$12;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 747
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 734
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_5
    :try_start_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 735
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_6

    .line 737
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    goto :goto_7

    .line 749
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_6
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v6, v7, :cond_b

    .line 750
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 751
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

    .line 753
    :try_start_7
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 754
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 755
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result v6

    if-nez v6, :cond_a

    .line 760
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_9
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "gid"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 761
    const-string v8, "group_id"

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v9, "gid"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 763
    :cond_7
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v8, "aid"

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 764
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v8, "aid"

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 765
    .local v0, "aid":Ljava/lang/String;
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    const-string v8, "album_id"

    invoke-virtual {v6, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .end local v0    # "aid":Ljava/lang/String;
    :cond_8
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 769
    const-string v8, "caption"

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v9, "text"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 771
    :cond_9
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 773
    new-instance v6, Lcom/vkontakte/android/UploaderService$13;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$13;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 789
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 756
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_a
    :try_start_8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 757
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_8

    .line 759
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v6

    goto :goto_9

    .line 791
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_b
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_c

    .line 792
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "audio.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 794
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_9
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 795
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "server"

    const-string v7, "server"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 796
    const-string v6, "audio"

    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 797
    const-string v6, "hash"

    const-string v7, "hash"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 801
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_a
    new-instance v6, Lcom/vkontakte/android/UploaderService$14;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/UploaderService$14;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 804
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 806
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_c
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_d

    move v6, v7

    .line 807
    goto/16 :goto_2

    .line 809
    :cond_d
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_e

    .line 810
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "docs.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 812
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_a
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 813
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "file"

    const-string v7, "file"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 817
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_b
    new-instance v6, Lcom/vkontakte/android/UploaderService$15;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$15;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 826
    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_2

    .line 829
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 814
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :catch_4
    move-exception v6

    goto :goto_b

    .line 798
    :catch_5
    move-exception v6

    goto :goto_a

    .line 718
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

    .line 1187
    const v6, 0x7f08005a

    .local v6, "rIdOkLong":I
    const v7, 0x7f080059

    .line 1188
    .local v7, "rIdOkShort":I
    iget v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v8, :pswitch_data_0

    .line 1218
    :goto_0
    :pswitch_0
    iget v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v8, :pswitch_data_1

    .line 1235
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1236
    .local v5, "notificationIntent":Landroid/content/Intent;
    const-string v8, "NOTHING"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1241
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    :goto_1
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1242
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x143

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1243
    new-instance v4, Landroid/app/Notification;

    const v8, 0x7f0201d6

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1244
    .local v4, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1245
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080029

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v2, v8, v9, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1246
    iget v8, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 1247
    const/16 v8, 0x144

    invoke-virtual {v3, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1248
    return-void

    .line 1190
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v4    # "notification1":Landroid/app/Notification;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    :pswitch_1
    iget v8, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 1191
    const v6, 0x7f0800b6

    .line 1192
    const v7, 0x7f0800bb

    .line 1193
    goto :goto_0

    .line 1194
    :cond_0
    const v6, 0x7f0800b2

    .line 1195
    const v7, 0x7f0800b7

    .line 1197
    goto :goto_0

    .line 1199
    :pswitch_2
    const v6, 0x7f0800b3

    .line 1200
    const v7, 0x7f0800b8

    .line 1201
    goto :goto_0

    .line 1203
    :pswitch_3
    const v6, 0x7f0800b5

    .line 1204
    const v7, 0x7f0800ba

    .line 1205
    goto :goto_0

    .line 1207
    :pswitch_4
    const v6, 0x7f0800b4

    .line 1208
    const v7, 0x7f0800b9

    .line 1209
    goto/16 :goto_0

    .line 1211
    :pswitch_5
    const v6, 0x7f0800b2

    .line 1212
    const v7, 0x7f0800b7

    goto/16 :goto_0

    .line 1220
    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1221
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "entry"

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1222
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1223
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    const-string v8, "args"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1224
    const-string v8, "class"

    const-string v9, "PostViewFragment"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1225
    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1226
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 1188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1218
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method private showProgress(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const v4, 0x1080088

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1162
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1163
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NOTHING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b> - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getStringResForProgress(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notificationTitle:Ljava/lang/CharSequence;

    .line 1165
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 1166
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v4, v8, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    .line 1167
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x22

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1168
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030069

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    .line 1169
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f090122

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->notificationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1170
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f090123

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

    .line 1171
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1172
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1183
    :goto_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x143

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1184
    return-void

    .line 1174
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1175
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1176
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->notificationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1177
    const v2, 0x7f080088

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    sget-object v5, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/UploaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1178
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v6, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1179
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1180
    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1174
    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    .line 1181
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    goto :goto_0
.end method

.method private startThread()V
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    .line 221
    :cond_0
    return-void
.end method

.method private updateProgress(IIZ)V
    .locals 9
    .param p1, "loaded"    # I
    .param p2, "total"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    const v8, 0x7f080088

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 241
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UploaderService: progress = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, p1

    int-to-float v4, p2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "% ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 243
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f090124

    invoke-virtual {v1, v2, p2, p1, p3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 244
    iget-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f090123

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

    .line 246
    iput-boolean v6, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 267
    :cond_0
    :goto_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x143

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 268
    return-void

    .line 249
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NOTHING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    if-nez v1, :cond_2

    .line 252
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->notificationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 255
    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    sget-object v4, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Lcom/vkontakte/android/UploaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 256
    invoke-virtual {v1, p2, p1, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 257
    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 258
    const v2, 0x1080088

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 252
    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    .line 265
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    .line 261
    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    sget-object v4, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8, v2}, Lcom/vkontakte/android/UploaderService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1, p2, p1, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 12
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v9, 0x5

    const/4 v11, 0x0

    .line 1094
    const-string v7, "vk"

    const-string v8, "UploaderService: FAILED"

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v7, :cond_0

    .line 1096
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    invoke-interface {v7}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadFailed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1097
    invoke-direct {p0, p1, v11}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 1101
    :cond_0
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v7, v9, :cond_1

    .line 1102
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-static {v7}, Lcom/vkontakte/android/data/Messages;->uploadFailed(I)V

    .line 1105
    :cond_1
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-eqz v7, :cond_2

    .line 1106
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "id"

    iget v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1108
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1111
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v7, v9, :cond_3

    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v7, :cond_3

    .line 1112
    sget-object v7, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1114
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1115
    .local v4, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v7, 0x143

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1116
    new-instance v5, Landroid/app/Notification;

    const v7, 0x1080078

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08004b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1117
    .local v5, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1118
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1119
    .local v6, "notificationIntent":Landroid/content/Intent;
    const-string v7, "RETRY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    invoke-static {p0, v11, v6, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1121
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v2, 0x7f08004c

    .line 1122
    .local v2, "err":I
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v7, :pswitch_data_0

    .line 1133
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v7, v8, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1134
    const/16 v7, 0x145

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1136
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "err":I
    .end local v4    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v5    # "notification1":Landroid/app/Notification;
    .end local v6    # "notificationIntent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 1124
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "err":I
    .restart local v4    # "mNotificationManager":Landroid/app/NotificationManager;
    .restart local v5    # "notification1":Landroid/app/Notification;
    .restart local v6    # "notificationIntent":Landroid/content/Intent;
    :pswitch_0
    const v2, 0x7f08036d

    .line 1125
    goto :goto_0

    .line 1127
    :pswitch_1
    const v2, 0x7f08036c

    .line 1128
    goto :goto_0

    .line 1130
    :pswitch_2
    const v2, 0x7f08036e

    goto :goto_0

    .line 1122
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancel(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1076
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/UploaderService$18;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/UploaderService$18;-><init>(Lcom/vkontakte/android/UploaderService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1090
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1091
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vkontakte/android/UploaderService;->onStartCommand(Landroid/content/Intent;II)I

    .line 117
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v9, 0x0

    .line 121
    sput-object p0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 122
    const-string v7, "RETRY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const/16 v8, 0x145

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 124
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->retryAll()V

    .line 181
    :cond_0
    :goto_0
    const/4 v7, 0x2

    return v7

    .line 125
    :cond_1
    const-string v7, "NOTHING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    goto :goto_0

    .line 127
    :cond_2
    const-string v7, "CANCEL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    const-string v7, "id"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->cancel(I)V

    goto :goto_0

    .line 129
    :cond_3
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 132
    const-string v7, "new"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 133
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 134
    .local v5, "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "id"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    .line 135
    const-string v7, "file"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 136
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 137
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 138
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 139
    :cond_4
    const-string v7, "no_notify"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 140
    iput-boolean v9, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    .line 141
    :cond_5
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_6
    :goto_1
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 179
    :cond_7
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    goto/16 :goto_0

    .line 142
    :cond_8
    const-string v7, "multiattach"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 143
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 144
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "files":[Ljava/lang/String;
    const-string v7, "types"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 146
    .local v6, "types":[I
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 147
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    .line 148
    const-string v7, "attachments"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->attcahments:Ljava/util/HashMap;

    .line 149
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 150
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v7, v0

    if-lt v2, v7, :cond_a

    .line 157
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_a
    new-instance v4, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v4}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 152
    .local v4, "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    aget-object v7, v0, v2

    iput-object v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 153
    aget v7, v6, v2

    iput v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 154
    iget-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    iput-object v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 155
    iget-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 158
    .end local v0    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v6    # "types":[I
    :cond_b
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 159
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 161
    .local v3, "p":Landroid/os/Parcelable;
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 162
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 163
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 164
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 165
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 166
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 169
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_d
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 170
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 171
    :cond_e
    const-string v7, "file"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 172
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 173
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 174
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    const-string v1, "vk"

    const-string v2, "UploaderService started"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    .line 235
    iput v3, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 236
    const-string v1, "vk"

    const-string v2, "UploaderService stopped"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x0

    sput-object v1, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 238
    return-void

    .line 229
    :cond_1
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UploaderService$UploadTask;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 230
    iget v1, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 231
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

    .line 232
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
    .line 185
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v1, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iput-object p2, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
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

    .line 190
    .local v0, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    iput-object p2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    goto :goto_0
.end method
