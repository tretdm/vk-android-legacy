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
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    .line 80
    iput v1, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 81
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 84
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UploaderService;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/UploaderService;IIZ)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    return-void
.end method

.method private doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 12
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 443
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 444
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 445
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadServer:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 446
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    iput-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 448
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "FILE="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v9, :cond_0

    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    .line 451
    :cond_0
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "photo"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 453
    :cond_1
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 454
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "file1"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 456
    :cond_2
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 457
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "file"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 459
    :cond_3
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 460
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "video_file"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 462
    :cond_4
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    .line 463
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "file"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 467
    :cond_5
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 468
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 469
    .local v2, "is":Ljava/io/InputStream;
    iget-boolean v9, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    .line 483
    .end local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return v9

    .line 470
    .restart local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 471
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v5, v9, [B

    .line 472
    .local v5, "rd":[B
    const/4 v3, 0x0

    .line 473
    .local v3, "l":I
    :goto_1
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_7

    .line 474
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v7, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 475
    .local v7, "s":Ljava/lang/String;
    const-string v9, "vk"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iput-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    .line 477
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 478
    const/4 v9, 0x1

    goto :goto_0

    .line 473
    .end local v7    # "s":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 479
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "l":I
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "rd":[B
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 480
    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 483
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 911
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 912
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "ctype":Ljava/lang/String;
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    const-string v1, "image.jpg"

    .line 920
    .end local v0    # "ctype":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 915
    .restart local v0    # "ctype":Ljava/lang/String;
    :cond_0
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 916
    const-string v1, "audio.mp3"

    goto :goto_0

    .line 917
    :cond_1
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 918
    const-string v1, "video.mp4"

    goto :goto_0

    .line 920
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getStringResForProgress(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 816
    packed-switch p1, :pswitch_data_0

    .line 826
    const v0, 0x7f0900b0

    :goto_0
    return v0

    .line 819
    :pswitch_0
    const v0, 0x7f09002c

    goto :goto_0

    .line 821
    :pswitch_1
    const v0, 0x7f0900ae

    goto :goto_0

    .line 823
    :pswitch_2
    const v0, 0x7f0900af

    goto :goto_0

    .line 816
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
    .line 361
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v2, :cond_1

    .line 362
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getWallUploadServer"

    invoke-direct {v0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "req":Lcom/vkontakte/android/APIRequest;
    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 364
    .local v1, "uid":I
    if-lez v1, :cond_0

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 366
    :goto_0
    new-instance v2, Lcom/vkontakte/android/UploaderService$1;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/UploaderService$1;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 372
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    .line 438
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v1    # "uid":I
    :goto_1
    return v2

    .line 365
    .restart local v0    # "req":Lcom/vkontakte/android/APIRequest;
    .restart local v1    # "uid":I
    :cond_0
    const-string v2, "gid"

    neg-int v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 374
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v1    # "uid":I
    :cond_1
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 375
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getProfileUploadServer"

    invoke-direct {v0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 376
    .restart local v0    # "req":Lcom/vkontakte/android/APIRequest;
    new-instance v2, Lcom/vkontakte/android/UploaderService$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/UploaderService$2;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 382
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto :goto_1

    .line 384
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 385
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getUploadServer"

    invoke-direct {v3, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 386
    const-string v4, "aid"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "aid"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 387
    const-string v4, "gid"

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

    :goto_2
    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 388
    new-instance v3, Lcom/vkontakte/android/UploaderService$3;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$3;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 394
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto :goto_1

    .line 387
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 396
    :cond_4
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 397
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getMessagesUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 398
    new-instance v3, Lcom/vkontakte/android/UploaderService$4;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$4;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 404
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_1

    .line 406
    :cond_5
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 407
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "audio.getUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 408
    new-instance v3, Lcom/vkontakte/android/UploaderService$5;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$5;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_1

    .line 416
    :cond_6
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 417
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v2, "video.save"

    invoke-direct {v3, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 418
    const-string v4, "name"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "name"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 419
    const-string v4, "description"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "description"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 420
    new-instance v3, Lcom/vkontakte/android/UploaderService$6;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$6;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_1

    .line 428
    :cond_7
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 429
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "docs.getUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 430
    new-instance v3, Lcom/vkontakte/android/UploaderService$7;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$7;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 436
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_1

    .line 438
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 10
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v6, 0x1

    .line 628
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v5, :cond_3

    .line 629
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "wall.post"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 630
    .local v3, "req":Lcom/vkontakte/android/APIRequest;
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 634
    const-string v0, ""

    .line 635
    .local v0, "atts":Ljava/lang/String;
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 638
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    const-string v5, "attachments"

    invoke-virtual {v3, v5, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 640
    new-instance v5, Lcom/vkontakte/android/UploaderService$14;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$14;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 716
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    .line 775
    .end local v0    # "atts":Ljava/lang/String;
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :goto_2
    return v5

    .line 630
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 631
    .local v1, "key":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 632
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 635
    .end local v1    # "key":Ljava/lang/String;
    .restart local v0    # "atts":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 636
    .local v4, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 718
    .end local v0    # "atts":Ljava/lang/String;
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v4    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_3
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v5, v6, :cond_7

    .line 719
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "text"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "text"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    move v5, v6

    goto :goto_2

    .line 721
    :cond_5
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "gid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 722
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.edit"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 723
    const-string v6, "uid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 724
    const-string v6, "pid"

    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 725
    const-string v7, "caption"

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 726
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_2

    .line 728
    :cond_6
    new-instance v6, Lcom/vkontakte/android/APIRequest;

    const-string v5, "photos.edit"

    invoke-direct {v6, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 729
    const-string v7, "gid"

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "gid"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 730
    const-string v6, "pid"

    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 731
    const-string v7, "caption"

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 732
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_2

    .line 735
    :cond_7
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_9

    .line 736
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v5, :cond_8

    .line 738
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 739
    .local v2, "o":Lorg/json/JSONObject;
    const-string v5, "type"

    const-string v7, "photo"

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    const-string v5, "photo"

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "photo"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    const-string v9, "pid"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v2, v8}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadDone(Ljava/lang/String;Lcom/vkontakte/android/Attachment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "o":Lorg/json/JSONObject;
    :cond_8
    :goto_3
    move v5, v6

    .line 744
    goto/16 :goto_2

    .line 746
    :cond_9
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x3

    if-ne v5, v7, :cond_a

    move v5, v6

    .line 747
    goto/16 :goto_2

    .line 749
    :cond_a
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_b

    move v5, v6

    .line 750
    goto/16 :goto_2

    .line 752
    :cond_b
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_c

    move v5, v6

    .line 753
    goto/16 :goto_2

    .line 755
    :cond_c
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_e

    .line 756
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "getProfiles"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 757
    const-string v6, "uids"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 758
    const-string v7, "fields"

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_d

    const-string v5, "photo_medium_rec"

    :goto_4
    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 759
    new-instance v6, Lcom/vkontakte/android/UploaderService$15;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/UploaderService$15;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 772
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_2

    .line 758
    :cond_d
    const-string v5, "photo_rec"

    goto :goto_4

    .line 775
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 742
    :catch_0
    move-exception v5

    goto :goto_3
.end method

.method private processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z
    .locals 8
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;
    .param p2, "isSub"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 211
    :cond_0
    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    if-eqz v3, :cond_6

    .line 212
    const-string v3, "vk"

    const-string v4, "UploaderService: multiattach upload"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 221
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x4

    iput v1, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 228
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 229
    const-string v1, "vk"

    const-string v3, "UploaderService: multiattach upload OK!"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 290
    :goto_1
    return v1

    .line 213
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 214
    .local v0, "u":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UploaderService: uploading subTask = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    goto :goto_0

    .line 219
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 223
    .end local v0    # "u":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_4
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 224
    :cond_5
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto :goto_1

    .line 232
    :cond_6
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v3, v5, :cond_7

    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->showProgress(I)V

    .line 233
    :cond_7
    const-string v3, "vk"

    const-string v4, "UploaderService: taskState = NEW"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 237
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-nez v3, :cond_8

    .line 238
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getUploadServer(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_10

    iput v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 246
    :cond_8
    const-string v3, "vk"

    const-string v4, "UploaderService: taskState = UPLOADING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v3, v2, :cond_9

    .line 249
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_12

    iput v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 257
    :cond_9
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v3, v5, :cond_a

    invoke-direct {p0, v1, v2, v2}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    .line 258
    :cond_a
    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v3, v3, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v3, :cond_b

    .line 259
    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v3, v3, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    const/4 v4, -0x1

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 261
    :cond_b
    const-string v3, "vk"

    const-string v4, "UploaderService: taskState = SAVING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v3, v6, :cond_c

    .line 264
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_14

    iput v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 272
    :cond_c
    const-string v3, "vk"

    const-string v4, "UploaderService: taskState = FINISHING"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v3, v7, :cond_d

    if-nez p2, :cond_d

    .line 275
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v1, 0x4

    iput v1, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 283
    :cond_d
    const-string v1, "vk"

    const-string v3, "UploaderService: taskState = DONE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget v1, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v1, v5, :cond_e

    if-nez p2, :cond_e

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 286
    :cond_e
    iget-boolean v1, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    if-eqz v1, :cond_f

    .line 287
    new-instance v1, Ljava/io/File;

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_f
    move v1, v2

    .line 290
    goto/16 :goto_1

    .line 240
    :cond_10
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 241
    :cond_11
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 251
    :cond_12
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 252
    :cond_13
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 266
    :cond_14
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 267
    :cond_15
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 277
    :cond_16
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 278
    :cond_17
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1
.end method

.method private resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 23
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 295
    .local v18, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "compressPhotos"

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    :goto_0
    return-void

    .line 297
    :cond_0
    :try_start_0
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 298
    .local v15, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "r"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v13

    .line 300
    .local v13, "f":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v13}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v14

    .line 301
    .local v14, "is":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    invoke-static {v14, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 302
    invoke-virtual {v14}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 303
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "in img size "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v1, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_1

    iget v1, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v2, 0x500

    if-gt v1, v2, :cond_2

    .line 306
    :cond_1
    iget v1, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v1, v2, :cond_7

    iget v1, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x400

    if-le v1, v2, :cond_7

    .line 307
    :cond_2
    const/16 v20, 0x0

    .line 308
    .local v20, "sample":F
    iget v1, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, v2, :cond_8

    iget v1, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44a00000    # 1280.0f

    div-float v20, v1, v2

    .line 310
    :goto_1
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sample size="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v0, v1

    move/from16 v20, v0

    .line 312
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "new size="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v4, v4

    div-float v4, v4, v20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    div-float v4, v4, v20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v1, 0x0

    iput-boolean v1, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 314
    move/from16 v0, v20

    float-to-int v1, v0

    iput v1, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v14, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 322
    .local v11, "bmp":Landroid/graphics/Bitmap;
    :goto_2
    :try_start_2
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte"

    move-object/from16 v0, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 323
    .local v21, "vkDir":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdirs()Z

    .line 324
    :cond_3
    new-instance v17, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".vkontakte/temp_upload.jpg"

    move-object/from16 v0, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    .local v17, "outfile":Ljava/io/File;
    const/16 v19, 0x0

    .line 326
    .local v19, "rotation":I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v2, "content:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    const/4 v1, 0x1

    :try_start_3
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "orientation"

    aput-object v2, v3, v1

    .line 329
    .local v3, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 330
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 329
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 331
    .local v12, "c":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 334
    :cond_4
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "img rotation is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 337
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_3
    if-eqz v19, :cond_6

    .line 338
    :try_start_4
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 339
    .local v9, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v19

    int-to-float v1, v0

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->preRotate(F)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 341
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v11

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v11

    .line 347
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :cond_6
    :goto_4
    :try_start_6
    new-instance v16, Ljava/io/FileOutputStream;

    invoke-direct/range {v16 .. v17}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 348
    .local v16, "out":Ljava/io/FileOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x59

    move-object/from16 v0, v16

    invoke-virtual {v11, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 349
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 350
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    .line 351
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "file size = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 353
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    .line 355
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v16    # "out":Ljava/io/FileOutputStream;
    .end local v17    # "outfile":Ljava/io/File;
    .end local v19    # "rotation":I
    .end local v20    # "sample":F
    .end local v21    # "vkDir":Ljava/io/File;
    :cond_7
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    .line 356
    invoke-virtual {v13}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_0

    .line 357
    .end local v13    # "f":Landroid/content/res/AssetFileDescriptor;
    .end local v14    # "is":Ljava/io/FileInputStream;
    .end local v15    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 309
    .restart local v13    # "f":Landroid/content/res/AssetFileDescriptor;
    .restart local v14    # "is":Ljava/io/FileInputStream;
    .restart local v15    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "sample":F
    :cond_8
    iget v1, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x44800000    # 1024.0f

    div-float v20, v1, v2

    goto/16 :goto_1

    .line 318
    :catch_1
    move-exception v22

    .line 319
    .local v22, "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 320
    const/4 v1, 0x0

    invoke-static {v14, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .restart local v11    # "bmp":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 342
    .end local v22    # "x":Ljava/lang/OutOfMemoryError;
    .restart local v9    # "matrix":Landroid/graphics/Matrix;
    .restart local v17    # "outfile":Ljava/io/File;
    .restart local v19    # "rotation":I
    .restart local v21    # "vkDir":Ljava/io/File;
    :catch_2
    move-exception v22

    .line 343
    .restart local v22    # "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 344
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    move-object v4, v11

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v11

    goto :goto_4

    .line 335
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v22    # "x":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v1

    goto/16 :goto_3
.end method

.method private retryAll()V
    .locals 2

    .prologue
    .line 905
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 906
    sget-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 907
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    .line 908
    return-void
.end method

.method private saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 8
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v5, 0x1

    .line 487
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v6, :cond_3

    .line 488
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveWallPhoto"

    invoke-direct {v3, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 489
    .local v3, "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "photo_sizes"

    invoke-virtual {v3, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 491
    :try_start_0
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 492
    .local v2, "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 493
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 498
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_1
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "owner_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 499
    .local v4, "uid":I
    if-lez v4, :cond_2

    const-string v5, "uid"

    invoke-virtual {v3, v5, v4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 501
    :goto_2
    new-instance v5, Lcom/vkontakte/android/UploaderService$8;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$8;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 509
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    .line 624
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v4    # "uid":I
    :cond_0
    :goto_3
    return v5

    .line 494
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 495
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 497
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 500
    .restart local v4    # "uid":I
    :cond_2
    const-string v5, "gid"

    neg-int v6, v4

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    .line 511
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v4    # "uid":I
    :cond_3
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    .line 512
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "photos.saveProfilePhoto"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 514
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_2
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 515
    .restart local v2    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 516
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-nez v5, :cond_4

    .line 521
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_5
    new-instance v5, Lcom/vkontakte/android/UploaderService$9;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$9;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 528
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto :goto_3

    .line 517
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    .restart local v0    # "k":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 520
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    goto :goto_5

    .line 530
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_5
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 531
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveMessagesPhoto"

    invoke-direct {v3, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 533
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_4
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 534
    .restart local v2    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 535
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v6

    if-nez v6, :cond_6

    .line 540
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_7
    const-string v6, "photo_sizes"

    invoke-virtual {v3, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 541
    new-instance v5, Lcom/vkontakte/android/UploaderService$10;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$10;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 549
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 536
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_6
    :try_start_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    .restart local v0    # "k":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 539
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    goto :goto_7

    .line 551
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_7
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v6, v5, :cond_a

    .line 552
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "photos.save"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_6
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 555
    .restart local v2    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 556
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v5

    if-nez v5, :cond_9

    .line 561
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_9
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "gid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 562
    const-string v6, "gid"

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "gid"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 564
    :cond_8
    new-instance v5, Lcom/vkontakte/android/UploaderService$11;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$11;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 590
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 557
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_9
    :try_start_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    .restart local v0    # "k":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    .line 560
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v5

    goto :goto_9

    .line 592
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_a
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    .line 593
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "audio.save"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 595
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_8
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 596
    .restart local v2    # "obj":Lorg/json/JSONObject;
    const-string v5, "server"

    const-string v6, "server"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 597
    const-string v5, "audio"

    const-string v6, "audio"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 598
    const-string v5, "hash"

    const-string v6, "hash"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 602
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_a
    new-instance v5, Lcom/vkontakte/android/UploaderService$12;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/UploaderService$12;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 605
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 607
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_b
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 610
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_c

    .line 611
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "docs.save"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 613
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_9
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 614
    .restart local v2    # "obj":Lorg/json/JSONObject;
    const-string v5, "file"

    const-string v6, "file"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 618
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_b
    new-instance v5, Lcom/vkontakte/android/UploaderService$13;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/UploaderService$13;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 621
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 624
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 615
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :catch_4
    move-exception v5

    goto :goto_b

    .line 599
    :catch_5
    move-exception v5

    goto :goto_a
.end method

.method private showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 13
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/high16 v12, 0x8000000

    const/4 v11, 0x0

    .line 844
    const v5, 0x7f09003c

    .local v5, "rIdOkLong":I
    const v6, 0x7f09003b

    .line 845
    .local v6, "rIdOkShort":I
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v7, :pswitch_data_0

    .line 875
    :goto_0
    :pswitch_0
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v7, :pswitch_data_1

    .line 889
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 890
    .local v4, "notificationIntent":Landroid/content/Intent;
    const-string v7, "NOTHING"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    invoke-static {p0, v11, v4, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 895
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    :goto_1
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 896
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v7, 0x143

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 897
    new-instance v3, Landroid/app/Notification;

    const v7, 0x7f02018b

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 898
    .local v3, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 899
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f090000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v1, v7, v8, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 900
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 901
    const/16 v7, 0x144

    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 902
    return-void

    .line 847
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notification1":Landroid/app/Notification;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    :pswitch_1
    iget v7, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 848
    const v5, 0x7f0900b5

    .line 849
    const v6, 0x7f0900ba

    goto :goto_0

    .line 851
    :cond_0
    const v5, 0x7f0900b1

    .line 852
    const v6, 0x7f0900b6

    .line 854
    goto :goto_0

    .line 856
    :pswitch_2
    const v5, 0x7f0900b2

    .line 857
    const v6, 0x7f0900b7

    .line 858
    goto :goto_0

    .line 860
    :pswitch_3
    const v5, 0x7f0900b4

    .line 861
    const v6, 0x7f0900b9

    .line 862
    goto :goto_0

    .line 864
    :pswitch_4
    const v5, 0x7f0900b3

    .line 865
    const v6, 0x7f0900b8

    .line 866
    goto/16 :goto_0

    .line 868
    :pswitch_5
    const v5, 0x7f0900b1

    .line 869
    const v6, 0x7f0900b6

    goto/16 :goto_0

    .line 877
    :pswitch_6
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    const-string v8, "entry"

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 879
    invoke-static {p0, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 880
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 882
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    :pswitch_7
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/PhotoListActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    const-string v8, "aid"

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v9, "aid"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    const-string v8, "title"

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, "aid="

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v10, "aid"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "     "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v10, "aid"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-static {p0, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 887
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 845
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 875
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private showProgress(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 831
    new-instance v1, Landroid/app/Notification;

    const v2, 0x1080088

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    .line 832
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x22

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 833
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03002a

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    .line 834
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f0600bb

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<b>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f090000

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

    .line 835
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f0600bc

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

    .line 836
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 837
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NOTHING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 839
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 840
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x143

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 841
    return-void
.end method

.method private startThread()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    :cond_0
    return-void
.end method

.method private updateProgress(IIZ)V
    .locals 5
    .param p1, "loaded"    # I
    .param p2, "total"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 200
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v1, 0x7f0600bd

    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 202
    iget-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v1, 0x7f0600bc

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

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 206
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x143

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 207
    return-void
.end method

.method private uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 10
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v9, 0x0

    .line 793
    const-string v5, "vk"

    const-string v6, "UploaderService: FAILED"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v5, :cond_0

    .line 795
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    invoke-interface {v5}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadFailed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 796
    invoke-direct {p0, p1, v9}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 800
    :cond_0
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    .line 801
    sget-object v5, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 803
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 804
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v5, 0x143

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 805
    new-instance v3, Landroid/app/Notification;

    const v5, 0x1080078

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 806
    .local v3, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 807
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 808
    .local v4, "notificationIntent":Landroid/content/Intent;
    const-string v5, "RETRY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    invoke-static {p0, v9, v4, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 810
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f090000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v5, v6, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 811
    const/16 v5, 0x145

    invoke-virtual {v2, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 813
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notification1":Landroid/app/Notification;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 779
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v1, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    .line 781
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 784
    :cond_0
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 790
    :goto_0
    return-void

    .line 784
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 785
    .local v0, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vkontakte/android/UploaderService;->onStartCommand(Landroid/content/Intent;II)I

    .line 95
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v9, 0x0

    .line 99
    sput-object p0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 100
    const-string v7, "RETRY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const/16 v8, 0x145

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 102
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->retryAll()V

    .line 146
    :cond_0
    :goto_0
    const/4 v7, 0x2

    return v7

    .line 103
    :cond_1
    const-string v7, "NOTHING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    goto :goto_0

    .line 105
    :cond_2
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 108
    const-string v7, "multiattach"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 109
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 110
    .local v5, "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "files":[Ljava/lang/String;
    const-string v7, "types"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 112
    .local v6, "types":[I
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 113
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    .line 114
    const-string v7, "attachments"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->attcahments:Ljava/util/HashMap;

    .line 115
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v0

    if-lt v2, v7, :cond_6

    .line 122
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v0    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v6    # "types":[I
    :cond_3
    :goto_2
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    .line 142
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-eqz v7, :cond_b

    const v7, 0x7f0900ad

    :goto_3
    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 143
    :cond_4
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 144
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    goto :goto_0

    .line 116
    .restart local v0    # "files":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .restart local v6    # "types":[I
    :cond_6
    new-instance v4, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v4}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 117
    .local v4, "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    aget-object v7, v0, v2

    iput-object v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 118
    aget v7, v6, v2

    iput v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 119
    iget-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    iput-object v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 120
    iget-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v6    # "types":[I
    :cond_7
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 124
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 125
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 126
    .local v3, "p":Landroid/os/Parcelable;
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 127
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 128
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 129
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 130
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 131
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 134
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_9
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 135
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 136
    :cond_a
    const-string v7, "file"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 137
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 138
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 139
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 142
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_b
    const v7, 0x7f0900ac

    goto/16 :goto_3
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    const-string v0, "vk"

    const-string v1, "UploaderService started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    .line 188
    :cond_0
    :goto_0
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    .line 194
    iput v2, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 195
    const-string v0, "vk"

    const-string v1, "UploaderService stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 197
    return-void

    .line 189
    :cond_1
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v0, v2}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 190
    iget v0, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 191
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallbackForFile(Ljava/lang/String;Lcom/vkontakte/android/UploaderService$UploadCallback;)V
    .locals 3
    .param p1, "fileURI"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/vkontakte/android/UploaderService$UploadCallback;

    .prologue
    .line 150
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v1, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iput-object p2, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
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

    .line 155
    .local v0, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    iput-object p2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    goto :goto_0
.end method
