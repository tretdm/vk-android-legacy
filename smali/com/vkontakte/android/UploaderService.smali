.class public Lcom/vkontakte/android/UploaderService;
.super Landroid/app/Service;
.source "UploaderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/UploaderService$UploadEntity;,
        Lcom/vkontakte/android/UploaderService$UploadCallback;,
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

    .line 1278
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/UploaderService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkontakte/android/UploaderService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/UploaderService;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/UploaderService;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/UploaderService;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/UploaderService;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/UploaderService;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/UploaderService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/UploaderService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    return-void
.end method

.method private doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 13
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 597
    const/4 v7, 0x0

    .line 598
    .local v7, "response":Lorg/apache/http/HttpResponse;
    const/4 v3, 0x0

    .line 600
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 601
    .local v2, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 602
    .local v1, "hParams":Lorg/apache/http/params/HttpParams;
    const/4 v10, 0x0

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 603
    sget-object v10, Lcom/vkontakte/android/APIController;->USER_AGENT:Ljava/lang/String;

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 604
    const/16 v10, 0x2000

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 605
    const/16 v10, 0x7530

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 606
    const/16 v10, 0x7530

    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 607
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadServer:Ljava/lang/String;

    invoke-direct {v5, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 608
    .local v5, "post":Lorg/apache/http/client/methods/HttpPost;
    iput-object v5, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 610
    const-string v10, "vk"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FILE="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v10, :cond_0

    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_3

    .line 613
    :cond_0
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "photo"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 625
    :goto_0
    invoke-interface {v2, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 626
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 627
    iget-boolean v10, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_9

    .line 628
    if-eqz v3, :cond_1

    .line 630
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 635
    :try_start_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 638
    :cond_2
    :goto_2
    const/4 v10, 0x0

    .line 666
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_3
    return v10

    .line 614
    .restart local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_3
    :try_start_3
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 615
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file1"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 652
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v9

    .line 653
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    if-eqz v3, :cond_4

    .line 656
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 659
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 661
    :try_start_5
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 665
    :cond_5
    :goto_5
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 666
    const/4 v10, 0x0

    goto :goto_3

    .line 616
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .restart local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_6
    :try_start_6
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_7

    .line 617
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 618
    :cond_7
    iget v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 619
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "video_file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 621
    :cond_8
    new-instance v10, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v12, "file"

    invoke-direct {v10, p0, v11, v12}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 640
    :cond_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 641
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v6, v10, [B

    .line 642
    .local v6, "rd":[B
    const/4 v4, 0x0

    .line 643
    .local v4, "l":I
    :goto_6
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_a

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    .line 644
    :cond_a
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 645
    .local v8, "s":Ljava/lang/String;
    const-string v10, "vk"

    invoke-static {v10, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iput-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    .line 647
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 648
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 649
    const/4 v3, 0x0

    .line 650
    const/4 v7, 0x0

    .line 651
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 631
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "l":I
    .end local v6    # "rd":[B
    .end local v8    # "s":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto/16 :goto_1

    .line 657
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v2    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v9    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    goto :goto_4

    .line 662
    :catch_3
    move-exception v10

    goto :goto_5

    .line 636
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
    .line 1258
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1259
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, "ctype":Ljava/lang/String;
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1261
    const-string v1, "image.jpg"

    .line 1267
    .end local v0    # "ctype":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1262
    .restart local v0    # "ctype":Ljava/lang/String;
    :cond_0
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1263
    const-string v1, "audio.mp3"

    goto :goto_0

    .line 1264
    :cond_1
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1265
    const-string v1, "video.mp4"

    goto :goto_0

    .line 1267
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getNewID()I
    .locals 2

    .prologue
    .line 1400
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
    .line 1148
    packed-switch p1, :pswitch_data_0

    .line 1158
    const v0, 0x7f0d0348

    :goto_0
    return v0

    .line 1151
    :pswitch_0
    const v0, 0x7f0d034a

    goto :goto_0

    .line 1153
    :pswitch_1
    const v0, 0x7f0d034e

    goto :goto_0

    .line 1155
    :pswitch_2
    const v0, 0x7f0d0346

    goto :goto_0

    .line 1148
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

    .line 502
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v3, :cond_0

    .line 503
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getWallUploadServer"

    invoke-direct {v1, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 504
    .local v1, "req":Lcom/vkontakte/android/APIRequest;
    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v4, "owner_id"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 505
    .local v2, "uid":I
    const-string v3, "owner_id"

    invoke-virtual {v1, v3, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 506
    new-instance v3, Lcom/vkontakte/android/UploaderService$1;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$1;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    .line 593
    .end local v1    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v2    # "uid":I
    :goto_0
    return v3

    .line 514
    :cond_0
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x6

    if-ne v3, v5, :cond_1

    .line 515
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getProfileUploadServer"

    invoke-direct {v1, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 516
    .restart local v1    # "req":Lcom/vkontakte/android/APIRequest;
    new-instance v3, Lcom/vkontakte/android/UploaderService$2;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$2;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto :goto_0

    .line 524
    .end local v1    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_1
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    .line 525
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getChatUploadServer"

    invoke-direct {v1, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v1    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v4, "chat_id"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "chat_id"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 527
    new-instance v3, Lcom/vkontakte/android/UploaderService$3;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$3;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v1, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto :goto_0

    .line 535
    .end local v1    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    .line 536
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getUploadServer"

    invoke-direct {v5, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v6, "album_id"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "aid"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

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

    new-instance v4, Lcom/vkontakte/android/UploaderService$4;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$4;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_1

    .line 547
    :cond_4
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    .line 548
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v4, "photos.getMessagesUploadServer"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vkontakte/android/UploaderService$5;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$5;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    .line 557
    :cond_5
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_6

    .line 558
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v4, "audio.getUploadServer"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vkontakte/android/UploaderService$6;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$6;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    .line 567
    :cond_6
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 568
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v3, "video.save"

    invoke-direct {v4, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v5, "name"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "name"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    const-string v5, "description"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "description"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v4

    const-string v5, "is_private"

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "is_private"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/UploaderService$7;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$7;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    .line 581
    :cond_7
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_a

    .line 582
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

    .line 583
    .local v0, "method":Ljava/lang/String;
    :goto_2
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    invoke-direct {v5, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

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

    new-instance v4, Lcom/vkontakte/android/UploaderService$8;

    invoke-direct {v4, p0, p1}, Lcom/vkontakte/android/UploaderService$8;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v3

    goto/16 :goto_0

    .line 582
    .end local v0    # "method":Ljava/lang/String;
    :cond_8
    const-string v0, "docs.getUploadServer"

    goto :goto_2

    .restart local v0    # "method":Ljava/lang/String;
    :cond_9
    move-object v3, v4

    .line 583
    goto :goto_3

    .line 593
    .end local v0    # "method":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static hasTaskWithId(I)Z
    .locals 4
    .param p0, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 1140
    sget-object v3, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v3, v3, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    iget-object v3, v3, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget v3, v3, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-ne v3, p0, :cond_0

    .line 1144
    :goto_0
    return v2

    .line 1141
    :cond_0
    sget-object v3, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 1142
    .local v1, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    iget v3, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-ne v3, p0, :cond_1

    goto :goto_0

    .line 1144
    .end local v1    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 17
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 834
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v13, :cond_5

    .line 835
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v14, "_nopost"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 837
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 838
    .local v8, "o":Lorg/json/JSONObject;
    const-string v13, "type"

    const-string v14, "photo"

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 839
    const-string v13, "photo"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 840
    invoke-static {v8}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    .line 841
    .local v2, "att":Lcom/vkontakte/android/PhotoAttachment;
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v6, "intent":Landroid/content/Intent;
    const-string v13, "id"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    const-string v13, "attachment"

    invoke-virtual {v6, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 844
    const-string v13, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    .end local v2    # "att":Lcom/vkontakte/android/PhotoAttachment;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "o":Lorg/json/JSONObject;
    :goto_0
    const/4 v13, 0x1

    .line 1073
    :goto_1
    return v13

    .line 845
    :catch_0
    move-exception v12

    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 848
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_0
    new-instance v9, Lcom/vkontakte/android/APIRequest;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v14, "_edit"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "wall.edit"

    :goto_2
    invoke-direct {v9, v13}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 849
    .local v9, "req":Lcom/vkontakte/android/APIRequest;
    const-string v13, "device"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 850
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 851
    .local v7, "key":Ljava/lang/String;
    const-string v13, "_"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 852
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v7, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_3

    .line 848
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    const-string v13, "wall.post"

    goto :goto_2

    .line 854
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v9    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_3
    const-string v3, ""

    .line 855
    .local v3, "atts":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 856
    .local v10, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    const-string v15, "\\|"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 858
    .end local v10    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_4
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 863
    const-string v13, "attachments"

    invoke-virtual {v9, v13, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 864
    new-instance v13, Lcom/vkontakte/android/UploaderService$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/vkontakte/android/UploaderService$16;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v9, v13}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v13

    goto/16 :goto_1

    .line 975
    .end local v3    # "atts":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_5
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 991
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 993
    :cond_6
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_8

    .line 994
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v13, :cond_7

    .line 996
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 997
    .restart local v8    # "o":Lorg/json/JSONObject;
    const-string v13, "type"

    const-string v14, "photo"

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    const-string v13, "photo"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 999
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "photo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v16, "pid"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadDone(Ljava/lang/String;Lcom/vkontakte/android/Attachment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1003
    .end local v8    # "o":Lorg/json/JSONObject;
    :cond_7
    :goto_5
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1004
    .restart local v8    # "o":Lorg/json/JSONObject;
    const-string v13, "type"

    const-string v14, "photo"

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    const-string v13, "photo"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v8, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    invoke-static {v8}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment;

    .line 1007
    .restart local v2    # "att":Lcom/vkontakte/android/PhotoAttachment;
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v13, "id"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    const-string v13, "attachment"

    invoke-virtual {v6, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1010
    const-string v13, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1011
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-static {v13, v2}, Lcom/vkontakte/android/data/Messages;->uploadDone(ILcom/vkontakte/android/Attachment;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1013
    .end local v2    # "att":Lcom/vkontakte/android/PhotoAttachment;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "o":Lorg/json/JSONObject;
    :goto_6
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1015
    :cond_8
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_9

    .line 1016
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1018
    :cond_9
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_a

    .line 1020
    :try_start_3
    new-instance v11, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v11}, Lcom/vkontakte/android/api/VideoFile;-><init>()V

    .line 1021
    .local v11, "vf":Lcom/vkontakte/android/api/VideoFile;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v14, "owner_id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/vkontakte/android/api/VideoFile;->oid:I

    .line 1022
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v14, "video_id"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/vkontakte/android/api/VideoFile;->vid:I

    .line 1023
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v14, "title"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    .line 1024
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v14, "description"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/vkontakte/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 1025
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v14, "access_key"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 1026
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v14, "duration"

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v11, Lcom/vkontakte/android/api/VideoFile;->duration:I

    .line 1027
    const-string v13, ""

    iput-object v13, v11, Lcom/vkontakte/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v13, v13

    iput v13, v11, Lcom/vkontakte/android/api/VideoFile;->date:I

    .line 1029
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v13, "id"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    const-string v13, "attachment"

    new-instance v14, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v14, v11}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1032
    const-string v13, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1033
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    new-instance v14, Lcom/vkontakte/android/VideoAttachment;

    invoke-direct {v14, v11}, Lcom/vkontakte/android/VideoAttachment;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    invoke-static {v13, v14}, Lcom/vkontakte/android/data/Messages;->uploadDone(ILcom/vkontakte/android/Attachment;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1035
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v11    # "vf":Lcom/vkontakte/android/api/VideoFile;
    :goto_7
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1034
    :catch_1
    move-exception v12

    .restart local v12    # "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1037
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_b

    .line 1038
    new-instance v4, Lcom/vkontakte/android/api/Document;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-direct {v4, v13}, Lcom/vkontakte/android/api/Document;-><init>(Lorg/json/JSONObject;)V

    .line 1039
    .local v4, "doc":Lcom/vkontakte/android/api/Document;
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1040
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v13, "id"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1041
    const-string v13, "attachment"

    new-instance v14, Lcom/vkontakte/android/DocumentAttachment;

    invoke-direct {v14, v4}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1042
    const-string v13, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1043
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    new-instance v14, Lcom/vkontakte/android/DocumentAttachment;

    invoke-direct {v14, v4}, Lcom/vkontakte/android/DocumentAttachment;-><init>(Lcom/vkontakte/android/api/Document;)V

    invoke-static {v13, v14}, Lcom/vkontakte/android/data/Messages;->uploadDone(ILcom/vkontakte/android/Attachment;)V

    .line 1044
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1046
    .end local v4    # "doc":Lcom/vkontakte/android/api/Document;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_c

    .line 1047
    new-instance v6, Landroid/content/Intent;

    const-string v13, "com.vkontakte.android.UPLOAD_DONE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v13, "id"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    const-string v13, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1050
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 1052
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p1

    iget v13, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_e

    .line 1053
    new-instance v13, Lcom/vkontakte/android/APIRequest;

    const-string v14, "getProfiles"

    invoke-direct {v13, v14}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v14, "user_ids"

    sget v15, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v13, v14, v15}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v14

    const-string v15, "fields"

    sget v13, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v16

    if-lez v13, :cond_d

    const-string v13, "photo_medium_rec"

    :goto_8
    invoke-virtual {v14, v15, v13}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v13

    new-instance v14, Lcom/vkontakte/android/UploaderService$17;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/vkontakte/android/UploaderService$17;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v13

    goto/16 :goto_1

    :cond_d
    const-string v13, "photo_rec"

    goto :goto_8

    .line 1073
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1012
    :catch_2
    move-exception v13

    goto/16 :goto_6

    .line 1000
    :catch_3
    move-exception v13

    goto/16 :goto_5
.end method

.method private processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z
    .locals 10
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;
    .param p2, "isSub"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 272
    :cond_0
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    if-eqz v5, :cond_6

    .line 273
    const-string v5, "vk"

    const-string v6, "UploaderService: multiattach upload"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 275
    .local v1, "u":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UploaderService: uploading subTask = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v5, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 277
    iget-object v5, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 357
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "u":Lcom/vkontakte/android/UploaderService$UploadTask;
    :goto_1
    return v3

    .line 282
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 289
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 290
    const-string v3, "vk"

    const-string v5, "UploaderService: multiattach upload OK!"

    invoke-static {v3, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 291
    goto :goto_1

    .line 284
    :cond_4
    iget-boolean v4, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 285
    :cond_5
    iput-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto :goto_1

    .line 293
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_7

    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v5, :cond_7

    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_7

    iget-boolean v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    if-eqz v5, :cond_7

    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    invoke-direct {p0, v5}, Lcom/vkontakte/android/UploaderService;->showProgress(I)V

    .line 294
    :cond_7
    const-string v5, "vk"

    const-string v6, "UploaderService: taskState = NEW"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v5, v9, :cond_8

    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v5, v8, :cond_8

    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v5, v7, :cond_8

    .line 298
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :cond_8
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-nez v5, :cond_9

    .line 305
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getUploadServer(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v5

    if-eqz v5, :cond_11

    iput v4, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 313
    :cond_9
    const-string v5, "vk"

    const-string v6, "UploaderService: taskState = UPLOADING"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v5, v4, :cond_a

    .line 316
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v5

    if-eqz v5, :cond_13

    iput v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 324
    :cond_a
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_b

    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v5, :cond_b

    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_b

    iget-boolean v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    if-eqz v5, :cond_b

    invoke-direct {p0, v3, v4, v4}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    .line 325
    :cond_b
    iget-object v5, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v5, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v5, :cond_c

    .line 326
    iget-object v5, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v5, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    const/4 v6, -0x1

    invoke-interface {v5, v6, v4}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 328
    :cond_c
    const-string v5, "vk"

    const-string v6, "UploaderService: taskState = SAVING"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v5, v7, :cond_d

    .line 331
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v5

    if-eqz v5, :cond_15

    iput v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 339
    :cond_d
    const-string v5, "vk"

    const-string v6, "UploaderService: taskState = FINISHING"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v5, v8, :cond_e

    if-nez p2, :cond_e

    .line 342
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v5

    if-eqz v5, :cond_17

    iput v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 350
    :cond_e
    const-string v3, "vk"

    const-string v5, "UploaderService: taskState = DONE"

    invoke-static {v3, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_f

    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v3, :cond_f

    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v5, 0x7

    if-eq v3, v5, :cond_f

    if-nez p2, :cond_f

    iget-boolean v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    if-eqz v3, :cond_f

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 353
    :cond_f
    iget-boolean v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    if-eqz v3, :cond_10

    .line 354
    new-instance v3, Ljava/io/File;

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_10
    move v3, v4

    .line 357
    goto/16 :goto_1

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "x":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 307
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_11
    iget-boolean v4, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v4, :cond_12

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 308
    :cond_12
    iput-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 318
    :cond_13
    iget-boolean v4, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v4, :cond_14

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 319
    :cond_14
    iput-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 333
    :cond_15
    iget-boolean v4, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v4, :cond_16

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 334
    :cond_16
    iput-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 344
    :cond_17
    iget-boolean v4, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 345
    :cond_18
    iput-boolean v3, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

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

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VK/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

    .line 499
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

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in img size "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sample size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "img rotation is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exif orientation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    const/16 v3, 0x5a

    move-object/from16 v0, v22

    invoke-virtual {v12, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 469
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "out img size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " x "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 471
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 472
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_e

    .line 473
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 474
    .local v24, "path":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v24

    .line 475
    new-instance v29, Landroid/media/ExifInterface;

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 476
    .local v29, "srcExif":Landroid/media/ExifInterface;
    new-instance v14, Landroid/media/ExifInterface;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 477
    .local v14, "dstExif":Landroid/media/ExifInterface;
    const-string v2, "GPSAltitude"

    const-string v3, "GPSAltitude"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v2, "GPSAltitudeRef"

    const-string v3, "GPSAltitudeRef"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "GPSLatitude"

    const-string v3, "GPSLatitude"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v2, "GPSLatitudeRef"

    const-string v3, "GPSLatitudeRef"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v2, "GPSLongitude"

    const-string v3, "GPSLongitude"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v2, "GPSLongitudeRef"

    const-string v3, "GPSLongitudeRef"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v2, "Make"

    const-string v3, "Make"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "Model"

    const-string v3, "Model"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 492
    .end local v14    # "dstExif":Landroid/media/ExifInterface;
    .end local v24    # "path":Ljava/lang/String;
    .end local v29    # "srcExif":Landroid/media/ExifInterface;
    :cond_e
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file size = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 494
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    .line 496
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v22    # "out":Ljava/io/FileOutputStream;
    .end local v23    # "outfile":Ljava/io/File;
    .end local v27    # "rotation":I
    .end local v28    # "sample":F
    .end local v30    # "vkDir":Ljava/io/File;
    :cond_f
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    .line 497
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2

    .line 498
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
    .line 1252
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 1253
    sget-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1254
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    .line 1255
    return-void
.end method

.method private saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 10
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v7, 0x1

    .line 670
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v6, :cond_1

    .line 671
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveWallPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 672
    .local v4, "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 673
    const-string v6, "device"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

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

    .line 675
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 676
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 677
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 678
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 679
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 682
    :cond_0
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "owner_id"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 683
    .local v5, "uid":I
    const-string v6, "owner_id"

    invoke-virtual {v4, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 684
    new-instance v6, Lcom/vkontakte/android/UploaderService$9;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$9;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    .line 830
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v5    # "uid":I
    :goto_1
    return v6

    .line 694
    :cond_1
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x6

    if-ne v6, v8, :cond_3

    .line 695
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveProfilePhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 696
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "device"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

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

    .line 698
    :try_start_1
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 699
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 700
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 702
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 704
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 705
    :cond_2
    new-instance v6, Lcom/vkontakte/android/UploaderService$10;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$10;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto :goto_1

    .line 714
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_3
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_4

    .line 715
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "messages.setChatPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 717
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_2
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 718
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "file"

    const-string v7, "response"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 720
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_3
    new-instance v6, Lcom/vkontakte/android/UploaderService$11;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$11;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_1

    .line 729
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_4
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x5

    if-ne v6, v8, :cond_6

    .line 730
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveMessagesPhoto"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 732
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_3
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 733
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 734
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 735
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 736
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 738
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    .line 739
    :cond_5
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 740
    new-instance v6, Lcom/vkontakte/android/UploaderService$12;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$12;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_1

    .line 750
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_6
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v6, v7, :cond_b

    .line 751
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 752
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "device"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

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

    .line 754
    :try_start_4
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 755
    .restart local v3    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 756
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 757
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 758
    .restart local v1    # "k":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 760
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v6

    .line 761
    :cond_7
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "gid"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 762
    const-string v8, "group_id"

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v9, "gid"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 764
    :cond_8
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/HashMap;

    const-string v8, "aid"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 765
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/HashMap;

    const-string v8, "aid"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 766
    .local v0, "aid":Ljava/lang/String;
    iget-object v6, v4, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/HashMap;

    const-string v8, "album_id"

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .end local v0    # "aid":Ljava/lang/String;
    :cond_9
    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 770
    const-string v8, "caption"

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v9, "text"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v8, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 772
    :cond_a
    const-string v6, "photo_sizes"

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 774
    new-instance v6, Lcom/vkontakte/android/UploaderService$13;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$13;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_1

    .line 792
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_b
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x3

    if-ne v6, v8, :cond_c

    .line 793
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "audio.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 795
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_5
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 796
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "server"

    const-string v7, "server"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 797
    const-string v6, "audio"

    const-string v7, "audio"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 798
    const-string v6, "hash"

    const-string v7, "hash"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 802
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_6
    new-instance v6, Lcom/vkontakte/android/UploaderService$14;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/UploaderService$14;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_1

    .line 807
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_c
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_d

    move v6, v7

    .line 808
    goto/16 :goto_1

    .line 810
    :cond_d
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_e

    .line 811
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v6, "docs.save"

    invoke-direct {v4, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 813
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_6
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 814
    .restart local v3    # "obj":Lorg/json/JSONObject;
    const-string v6, "file"

    const-string v7, "file"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 818
    .end local v3    # "obj":Lorg/json/JSONObject;
    :goto_7
    new-instance v6, Lcom/vkontakte/android/UploaderService$15;

    invoke-direct {v6, p0, p1}, Lcom/vkontakte/android/UploaderService$15;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v4, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v6

    goto/16 :goto_1

    .line 830
    .end local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 815
    .restart local v4    # "req":Lcom/vkontakte/android/APIRequest;
    :catch_4
    move-exception v6

    goto :goto_7

    .line 799
    :catch_5
    move-exception v6

    goto :goto_6

    .line 719
    :catch_6
    move-exception v6

    goto/16 :goto_3
.end method

.method private showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 12
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/high16 v11, 0x8000000

    const/4 v10, 0x0

    .line 1188
    const v6, 0x7f0d036c

    .local v6, "rIdOkLong":I
    const v7, 0x7f0d036b

    .line 1189
    .local v7, "rIdOkShort":I
    iget v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v8, :pswitch_data_0

    .line 1219
    :goto_0
    :pswitch_0
    iget v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v8, :pswitch_data_1

    .line 1236
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1237
    .local v5, "notificationIntent":Landroid/content/Intent;
    const-string v8, "NOTHING"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1242
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    :goto_1
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 1243
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x143

    invoke-virtual {v3, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1244
    new-instance v4, Landroid/app/Notification;

    const v8, 0x7f020155

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1245
    .local v4, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1246
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0027

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v2, v8, v9, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1247
    iget v8, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v4, Landroid/app/Notification;->flags:I

    .line 1248
    const/16 v8, 0x144

    invoke-virtual {v3, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1249
    return-void

    .line 1191
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v4    # "notification1":Landroid/app/Notification;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    :pswitch_1
    iget v8, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 1192
    const v6, 0x7f0d01f8

    .line 1193
    const v7, 0x7f0d01f7

    goto :goto_0

    .line 1195
    :cond_0
    const v6, 0x7f0d01f6

    .line 1196
    const v7, 0x7f0d01f5

    .line 1198
    goto :goto_0

    .line 1200
    :pswitch_2
    const v6, 0x7f0d0041

    .line 1201
    const v7, 0x7f0d0040

    .line 1202
    goto :goto_0

    .line 1204
    :pswitch_3
    const v6, 0x7f0d00b0

    .line 1205
    const v7, 0x7f0d00af

    .line 1206
    goto :goto_0

    .line 1208
    :pswitch_4
    const v6, 0x7f0d035f

    .line 1209
    const v7, 0x7f0d035e

    .line 1210
    goto/16 :goto_0

    .line 1212
    :pswitch_5
    const v6, 0x7f0d01f6

    .line 1213
    const v7, 0x7f0d01f5

    goto/16 :goto_0

    .line 1221
    :pswitch_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1222
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "entry"

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    check-cast v8, Landroid/os/Parcelable;

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1223
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1224
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    const-string v8, "args"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1225
    const-string v8, "class"

    const-string v9, "PostViewFragment"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1226
    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1227
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 1189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1219
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

    .line 1163
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1164
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NOTHING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0027

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

    .line 1166
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 1167
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v4, v8, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    .line 1168
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x22

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1169
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03005b

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    .line 1170
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f080104

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->notificationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1171
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f080105

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 1172
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1173
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1184
    :goto_0
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x143

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1185
    return-void

    .line 1175
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->notificationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0d01fd

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

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v6, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notifyBuilder:Landroid/app/Notification$Builder;

    .line 1182
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
    const v8, 0x7f0d01fd

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 241
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploaderService: progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

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

    const v2, 0x7f080106

    invoke-virtual {v1, v2, p2, p1, p3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 244
    iget-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f080105

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

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

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->notificationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

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

    invoke-virtual {v1, p2, p1, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080088

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

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

    invoke-virtual {v1, p2, p1, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 12
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v9, 0x5

    const/4 v11, 0x0

    .line 1095
    const-string v7, "vk"

    const-string v8, "UploaderService: FAILED"

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v7, :cond_0

    .line 1097
    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    invoke-interface {v7}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadFailed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1098
    invoke-direct {p0, p1, v11}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 1102
    :cond_0
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v7, v9, :cond_1

    .line 1103
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-static {v7}, Lcom/vkontakte/android/data/Messages;->uploadFailed(I)V

    .line 1106
    :cond_1
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    if-eqz v7, :cond_2

    .line 1107
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPLOAD_FAILED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "id"

    iget v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1109
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/UploaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1112
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v7, v9, :cond_3

    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v7, :cond_3

    .line 1113
    sget-object v7, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v7, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1115
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1116
    .local v4, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v7, 0x143

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1117
    new-instance v5, Landroid/app/Notification;

    const v7, 0x1080078

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d034c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1118
    .local v5, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1119
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1120
    .local v6, "notificationIntent":Landroid/content/Intent;
    const-string v7, "RETRY"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    invoke-static {p0, v11, v6, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1122
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v2, 0x7f0d034d

    .line 1123
    .local v2, "err":I
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v7, :pswitch_data_0

    .line 1134
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v1, v7, v8, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1135
    const/16 v7, 0x145

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1137
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "err":I
    .end local v4    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v5    # "notification1":Landroid/app/Notification;
    .end local v6    # "notificationIntent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 1125
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "err":I
    .restart local v4    # "mNotificationManager":Landroid/app/NotificationManager;
    .restart local v5    # "notification1":Landroid/app/Notification;
    .restart local v6    # "notificationIntent":Landroid/content/Intent;
    :pswitch_0
    const v2, 0x7f0d0347

    .line 1126
    goto :goto_0

    .line 1128
    :pswitch_1
    const v2, 0x7f0d034f

    .line 1129
    goto :goto_0

    .line 1131
    :pswitch_2
    const v2, 0x7f0d0349

    goto :goto_0

    .line 1123
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
    .line 1077
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/UploaderService$18;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/UploaderService$18;-><init>(Lcom/vkontakte/android/UploaderService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1092
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
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v10, 0x0

    .line 121
    sput-object p0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 122
    const-string v8, "RETRY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 123
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    const/16 v9, 0x145

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 124
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->retryAll()V

    .line 181
    :cond_0
    :goto_0
    const/4 v8, 0x2

    return v8

    .line 125
    :cond_1
    const-string v8, "NOTHING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 126
    iget-boolean v8, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    goto :goto_0

    .line 127
    :cond_2
    const-string v8, "CANCEL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 128
    const-string v8, "id"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/UploaderService;->cancel(I)V

    goto :goto_0

    .line 129
    :cond_3
    const-string v8, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 132
    const-string v8, "new"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 133
    new-instance v6, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v6}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 134
    .local v6, "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v8, "id"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    .line 135
    const-string v8, "file"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 136
    const-string v8, "type"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 137
    const-string v8, "req_params"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 138
    const-string v8, "req_params"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 139
    :cond_4
    const-string v8, "no_notify"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 140
    iput-boolean v10, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->showNotification:Z

    .line 141
    :cond_5
    sget-object v8, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 178
    .end local v6    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_6
    :goto_1
    iget-boolean v8, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 179
    :cond_7
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    goto/16 :goto_0

    .line 142
    :cond_8
    const-string v8, "multiattach"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 143
    new-instance v6, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v6}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 144
    .restart local v6    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v8, "files"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "files":[Ljava/lang/String;
    const-string v8, "types"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 146
    .local v7, "types":[I
    const-string v8, "req_params"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 147
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    .line 148
    const-string v8, "attachments"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->attcahments:Ljava/util/HashMap;

    .line 149
    const-string v8, "info"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "info"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 150
    :cond_9
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v8, v0

    if-ge v2, v8, :cond_a

    .line 151
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 152
    .local v5, "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    aget-object v8, v0, v2

    iput-object v8, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 153
    aget v8, v7, v2

    iput v8, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 154
    iget-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    iput-object v8, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 155
    iget-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    .end local v5    # "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_a
    sget-object v8, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 158
    .end local v0    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v6    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v7    # "types":[I
    :cond_b
    const-string v8, "files"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 159
    const-string v8, "files"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 161
    .local v4, "p":Landroid/os/Parcelable;
    new-instance v6, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v6}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 162
    .restart local v6    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v8, "info"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "info"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 163
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 164
    const-string v8, "type"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 165
    const-string v8, "req_params"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 166
    sget-object v8, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 169
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Landroid/os/Parcelable;
    .end local v6    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_d
    new-instance v6, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v6}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 170
    .restart local v6    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v8, "info"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "info"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 171
    :cond_e
    const-string v8, "file"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 172
    const-string v8, "type"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 173
    const-string v8, "req_params"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iput-object v8, v6, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 174
    sget-object v8, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

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

    if-lez v1, :cond_1

    .line 229
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

    .line 234
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_1
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
.end method

.method public setCallbackForFile(Ljava/lang/String;Lcom/vkontakte/android/UploaderService$UploadCallback;)V
    .locals 3
    .param p1, "fileURI"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/vkontakte/android/UploaderService$UploadCallback;

    .prologue
    .line 185
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iput-object p2, v2, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    sget-object v2, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 190
    .local v1, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    iput-object p2, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    goto :goto_0
.end method
