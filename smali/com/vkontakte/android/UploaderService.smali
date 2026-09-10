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
    .line 77
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    .line 83
    iput v1, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 84
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 87
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/UploaderService;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/UploaderService;)Lcom/vkontakte/android/UploaderService$UploadTask;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/UploaderService;IIZ)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    return-void
.end method

.method private doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 12
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 477
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 478
    .local v1, "httpclient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 479
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadServer:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 480
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    iput-object v4, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 482
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "FILE="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eqz v9, :cond_0

    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    .line 485
    :cond_0
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "photo"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 487
    :cond_1
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 488
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "file1"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 490
    :cond_2
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 491
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "file"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 493
    :cond_3
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 494
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "video_file"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 496
    :cond_4
    iget v9, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_5

    .line 497
    new-instance v9, Lcom/vkontakte/android/UploaderService$UploadEntity;

    iget-object v10, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v11, "file"

    invoke-direct {v9, p0, v10, v11}, Lcom/vkontakte/android/UploaderService$UploadEntity;-><init>(Lcom/vkontakte/android/UploaderService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 501
    :cond_5
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 502
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 503
    .local v2, "is":Ljava/io/InputStream;
    iget-boolean v9, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    .line 517
    .end local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return v9

    .line 504
    .restart local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 505
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v5, v9, [B

    .line 506
    .local v5, "rd":[B
    const/4 v3, 0x0

    .line 507
    .local v3, "l":I
    :goto_1
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_7

    .line 508
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v7, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 509
    .local v7, "s":Ljava/lang/String;
    const-string v9, "vk"

    invoke-static {v9, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iput-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    .line 511
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 512
    const/4 v9, 0x1

    goto :goto_0

    .line 507
    .end local v7    # "s":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 513
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "l":I
    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "rd":[B
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 514
    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 516
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 517
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 987
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "ctype":Ljava/lang/String;
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    const-string v1, "image.jpg"

    .line 996
    .end local v0    # "ctype":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 991
    .restart local v0    # "ctype":Ljava/lang/String;
    :cond_0
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 992
    const-string v1, "audio.mp3"

    goto :goto_0

    .line 993
    :cond_1
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 994
    const-string v1, "video.mp4"

    goto :goto_0

    .line 996
    .end local v0    # "ctype":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 298
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 299
    .local v2, "proj":[Ljava/lang/String;
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 300
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 301
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 302
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, "path":Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 304
    return-object v8
.end method

.method private getStringResForProgress(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 892
    packed-switch p1, :pswitch_data_0

    .line 902
    const v0, 0x7f0900b1

    :goto_0
    return v0

    .line 895
    :pswitch_0
    const v0, 0x7f09002c

    goto :goto_0

    .line 897
    :pswitch_1
    const v0, 0x7f0900af

    goto :goto_0

    .line 899
    :pswitch_2
    const v0, 0x7f0900b0

    goto :goto_0

    .line 892
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
    .line 395
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v2, :cond_1

    .line 396
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getWallUploadServer"

    invoke-direct {v0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "req":Lcom/vkontakte/android/APIRequest;
    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v3, "owner_id"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 398
    .local v1, "uid":I
    if-lez v1, :cond_0

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 400
    :goto_0
    new-instance v2, Lcom/vkontakte/android/UploaderService$1;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/UploaderService$1;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 406
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    .line 472
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v1    # "uid":I
    :goto_1
    return v2

    .line 399
    .restart local v0    # "req":Lcom/vkontakte/android/APIRequest;
    .restart local v1    # "uid":I
    :cond_0
    const-string v2, "gid"

    neg-int v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 408
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v1    # "uid":I
    :cond_1
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 409
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getProfileUploadServer"

    invoke-direct {v0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 410
    .restart local v0    # "req":Lcom/vkontakte/android/APIRequest;
    new-instance v2, Lcom/vkontakte/android/UploaderService$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/UploaderService$2;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto :goto_1

    .line 418
    .end local v0    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 419
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v2, "photos.getUploadServer"

    invoke-direct {v3, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 420
    const-string v4, "aid"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "aid"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 421
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

    .line 422
    new-instance v3, Lcom/vkontakte/android/UploaderService$3;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$3;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto :goto_1

    .line 421
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 430
    :cond_4
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 431
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "photos.getMessagesUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 432
    new-instance v3, Lcom/vkontakte/android/UploaderService$4;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$4;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 438
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_1

    .line 440
    :cond_5
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 441
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "audio.getUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 442
    new-instance v3, Lcom/vkontakte/android/UploaderService$5;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$5;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 448
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_1

    .line 450
    :cond_6
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 451
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v2, "video.save"

    invoke-direct {v3, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 452
    const-string v4, "name"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "name"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 453
    const-string v4, "description"

    iget-object v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v5, "description"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 454
    new-instance v3, Lcom/vkontakte/android/UploaderService$6;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$6;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_1

    .line 462
    :cond_7
    iget v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 463
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v3, "docs.getUploadServer"

    invoke-direct {v2, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 464
    new-instance v3, Lcom/vkontakte/android/UploaderService$7;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/UploaderService$7;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v2

    goto/16 :goto_1

    .line 472
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 11
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 665
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v5, :cond_4

    .line 666
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "_edit"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "wall.edit"

    :goto_0
    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 667
    .local v3, "req":Lcom/vkontakte/android/APIRequest;
    const-string v5, "device"

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

    invoke-virtual {v3, v5, v8}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 668
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 672
    const-string v0, ""

    .line 673
    .local v0, "atts":Ljava/lang/String;
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 676
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    const-string v5, "attachments"

    invoke-virtual {v3, v5, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 682
    new-instance v5, Lcom/vkontakte/android/UploaderService$14;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$14;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 792
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    .line 851
    .end local v0    # "atts":Ljava/lang/String;
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :goto_3
    return v5

    .line 666
    :cond_1
    const-string v5, "wall.post"

    goto :goto_0

    .line 668
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 669
    .local v1, "key":Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 670
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_1

    .line 673
    .end local v1    # "key":Ljava/lang/String;
    .restart local v0    # "atts":Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 674
    .local v4, "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 794
    .end local v0    # "atts":Ljava/lang/String;
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v4    # "t":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_4
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v5, v6, :cond_8

    .line 795
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "text"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "text"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    move v5, v6

    goto :goto_3

    .line 797
    :cond_6
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "gid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 798
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.edit"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 799
    const-string v6, "uid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 800
    const-string v6, "pid"

    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 801
    const-string v7, "caption"

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 802
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 804
    :cond_7
    new-instance v6, Lcom/vkontakte/android/APIRequest;

    const-string v5, "photos.edit"

    invoke-direct {v6, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 805
    const-string v7, "gid"

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "gid"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 806
    const-string v6, "pid"

    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->id:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 807
    const-string v7, "caption"

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v8, "text"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 808
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 811
    :cond_8
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x5

    if-ne v5, v8, :cond_a

    .line 812
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v5, :cond_9

    .line 814
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 815
    .local v2, "o":Lorg/json/JSONObject;
    const-string v5, "type"

    const-string v7, "photo"

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    const-string v5, "photo"

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->resultObj:Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 817
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
    :cond_9
    :goto_4
    move v5, v6

    .line 820
    goto/16 :goto_3

    .line 822
    :cond_a
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_b

    move v5, v6

    .line 823
    goto/16 :goto_3

    .line 825
    :cond_b
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_c

    move v5, v6

    .line 826
    goto/16 :goto_3

    .line 828
    :cond_c
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v8, 0x4

    if-ne v5, v8, :cond_d

    move v5, v6

    .line 829
    goto/16 :goto_3

    .line 831
    :cond_d
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_f

    .line 832
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "getProfiles"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 833
    const-string v6, "uids"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v6

    .line 834
    const-string v7, "fields"

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_e

    const-string v5, "photo_medium_rec"

    :goto_5
    invoke-virtual {v6, v7, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 835
    new-instance v6, Lcom/vkontakte/android/UploaderService$15;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/UploaderService$15;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 848
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 834
    :cond_e
    const-string v5, "photo_rec"

    goto :goto_5

    :cond_f
    move v5, v7

    .line 851
    goto/16 :goto_3

    .line 818
    :catch_0
    move-exception v5

    goto :goto_4
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

    .line 214
    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 215
    :cond_0
    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    if-eqz v3, :cond_6

    .line 216
    const-string v3, "vk"

    const-string v4, "UploaderService: multiattach upload"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 225
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x4

    iput v1, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 232
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 233
    const-string v1, "vk"

    const-string v3, "UploaderService: multiattach upload OK!"

    invoke-static {v1, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 294
    :goto_1
    return v1

    .line 217
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 218
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

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v5, "A"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 220
    iget-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->mediaIdString:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 227
    .end local v0    # "u":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_4
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 228
    :cond_5
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto :goto_1

    .line 236
    :cond_6
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v3, v5, :cond_7

    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    invoke-direct {p0, v3}, Lcom/vkontakte/android/UploaderService;->showProgress(I)V

    .line 237
    :cond_7
    const-string v3, "vk"

    const-string v4, "UploaderService: taskState = NEW"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 241
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-nez v3, :cond_8

    .line 242
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->getUploadServer(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_10

    iput v2, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 250
    :cond_8
    const-string v3, "vk"

    const-string v4, "UploaderService: taskState = UPLOADING"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v3, v2, :cond_9

    .line 253
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->doUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_12

    iput v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 261
    :cond_9
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v3, v5, :cond_a

    invoke-direct {p0, v1, v2, v2}, Lcom/vkontakte/android/UploaderService;->updateProgress(IIZ)V

    .line 262
    :cond_a
    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v3, v3, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v3, :cond_b

    .line 263
    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v3, v3, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    const/4 v4, -0x1

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/UploaderService$UploadCallback;->setProgress(II)V

    .line 265
    :cond_b
    const-string v3, "vk"

    const-string v4, "UploaderService: taskState = SAVING"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v3, v6, :cond_c

    .line 268
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_14

    iput v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 276
    :cond_c
    const-string v3, "vk"

    const-string v4, "UploaderService: taskState = FINISHING"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    if-ne v3, v7, :cond_d

    if-nez p2, :cond_d

    .line 279
    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->post(Lcom/vkontakte/android/UploaderService$UploadTask;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v1, 0x4

    iput v1, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->state:I

    .line 287
    :cond_d
    const-string v1, "vk"

    const-string v3, "UploaderService: taskState = DONE"

    invoke-static {v1, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget v1, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-eq v1, v5, :cond_e

    if-nez p2, :cond_e

    invoke-direct {p0, p1}, Lcom/vkontakte/android/UploaderService;->showDone(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 290
    :cond_e
    iget-boolean v1, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    if-eqz v1, :cond_f

    .line 291
    new-instance v1, Ljava/io/File;

    iget-object v3, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_f
    move v1, v2

    .line 294
    goto/16 :goto_1

    .line 244
    :cond_10
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 245
    :cond_11
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 255
    :cond_12
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 256
    :cond_13
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 270
    :cond_14
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 271
    :cond_15
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1

    .line 281
    :cond_16
    iget-boolean v2, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/UploaderService;->uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V

    .line 282
    :cond_17
    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    goto/16 :goto_1
.end method

.method private resizeImageIfNeeded(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 27
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 309
    .local v21, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "compressPhotos"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    :goto_0
    return-void

    .line 311
    :cond_0
    :try_start_0
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 312
    .local v17, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "r"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v15

    .line 314
    .local v15, "f":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v15}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v16

    .line 315
    .local v16, "is":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 316
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 317
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "in img size "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_1

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x500

    if-gt v2, v3, :cond_2

    .line 320
    :cond_1
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v2, v3, :cond_9

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x400

    if-le v2, v3, :cond_9

    .line 321
    :cond_2
    const/16 v23, 0x0

    .line 322
    .local v23, "sample":F
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_a

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44a00000    # 1280.0f

    div-float v23, v2, v3

    .line 324
    :goto_1
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "sample size="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v0, v2

    move/from16 v23, v0

    .line 326
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "new size="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float v5, v5, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float v5, v5, v23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 328
    move/from16 v0, v23

    float-to-int v2, v0

    move-object/from16 v0, v17

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 336
    .local v12, "bmp":Landroid/graphics/Bitmap;
    :goto_2
    :try_start_2
    new-instance v25, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte"

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    .local v25, "vkDir":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->mkdirs()Z

    .line 338
    :cond_3
    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, ".vkontakte/temp_upload.jpg"

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v19, "outfile":Ljava/io/File;
    const/16 v22, 0x0

    .line 340
    .local v22, "rotation":I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    const-string v3, "content:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    .line 342
    const/4 v2, 0x1

    :try_start_3
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "orientation"

    aput-object v3, v4, v2

    .line 343
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/UploaderService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 344
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 343
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 345
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 346
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 348
    :cond_4
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "img rotation is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 351
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_3
    if-eqz v22, :cond_6

    .line 352
    :try_start_4
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 353
    .local v10, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v22

    int-to-float v2, v0

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preRotate(F)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 355
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

    .line 361
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    :cond_6
    :goto_4
    :try_start_6
    new-instance v18, Ljava/io/FileOutputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 362
    .local v18, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x59

    move-object/from16 v0, v18

    invoke-virtual {v12, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 363
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 364
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V

    .line 365
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_8

    .line 366
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 367
    .local v20, "path":Ljava/lang/String;
    const-string v2, "content:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/UploaderService;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    .line 368
    :cond_7
    new-instance v24, Landroid/media/ExifInterface;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 369
    .local v24, "srcExif":Landroid/media/ExifInterface;
    new-instance v14, Landroid/media/ExifInterface;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 370
    .local v14, "dstExif":Landroid/media/ExifInterface;
    const-string v2, "GPSAltitude"

    const-string v3, "GPSAltitude"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v2, "GPSAltitudeRef"

    const-string v3, "GPSAltitudeRef"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "GPSLatitude"

    const-string v3, "GPSLatitude"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v2, "GPSLatitudeRef"

    const-string v3, "GPSLatitudeRef"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "GPSLongitude"

    const-string v3, "GPSLongitude"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v2, "GPSLongitudeRef"

    const-string v3, "GPSLongitudeRef"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v2, "Make"

    const-string v3, "Make"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "Model"

    const-string v3, "Model"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-virtual {v14}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 385
    .end local v14    # "dstExif":Landroid/media/ExifInterface;
    .end local v20    # "path":Ljava/lang/String;
    .end local v24    # "srcExif":Landroid/media/ExifInterface;
    :cond_8
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "file size = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 387
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->isTemp:Z

    .line 389
    .end local v12    # "bmp":Landroid/graphics/Bitmap;
    .end local v18    # "out":Ljava/io/FileOutputStream;
    .end local v19    # "outfile":Ljava/io/File;
    .end local v22    # "rotation":I
    .end local v23    # "sample":F
    .end local v25    # "vkDir":Ljava/io/File;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V

    .line 390
    invoke-virtual {v15}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto/16 :goto_0

    .line 391
    .end local v15    # "f":Landroid/content/res/AssetFileDescriptor;
    .end local v16    # "is":Ljava/io/FileInputStream;
    .end local v17    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 323
    .restart local v15    # "f":Landroid/content/res/AssetFileDescriptor;
    .restart local v16    # "is":Ljava/io/FileInputStream;
    .restart local v17    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v23    # "sample":F
    :cond_a
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44800000    # 1024.0f

    div-float v23, v2, v3

    goto/16 :goto_1

    .line 332
    :catch_1
    move-exception v26

    .line 333
    .local v26, "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 334
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .restart local v12    # "bmp":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 356
    .end local v26    # "x":Ljava/lang/OutOfMemoryError;
    .restart local v10    # "matrix":Landroid/graphics/Matrix;
    .restart local v19    # "outfile":Ljava/io/File;
    .restart local v22    # "rotation":I
    .restart local v25    # "vkDir":Ljava/io/File;
    :catch_2
    move-exception v26

    .line 357
    .restart local v26    # "x":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/vkontakte/android/ImageCache;->clearTopLevel()V

    .line 358
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

    goto/16 :goto_4

    .line 349
    .end local v10    # "matrix":Landroid/graphics/Matrix;
    .end local v26    # "x":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v2

    goto/16 :goto_3
.end method

.method private retryAll()V
    .locals 2

    .prologue
    .line 981
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    sget-object v1, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 982
    sget-object v0, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 983
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    .line 984
    return-void
.end method

.method private saveAfterUpload(Lcom/vkontakte/android/UploaderService$UploadTask;)Z
    .locals 8
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v5, 0x1

    .line 521
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-nez v6, :cond_3

    .line 522
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveWallPhoto"

    invoke-direct {v3, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 523
    .local v3, "req":Lcom/vkontakte/android/APIRequest;
    const-string v6, "photo_sizes"

    invoke-virtual {v3, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 524
    const-string v5, "device"

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 526
    :try_start_0
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 527
    .local v2, "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 528
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 533
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

    .line 534
    .local v4, "uid":I
    if-lez v4, :cond_2

    const-string v5, "uid"

    invoke-virtual {v3, v5, v4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 536
    :goto_2
    new-instance v5, Lcom/vkontakte/android/UploaderService$8;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$8;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 544
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    .line 661
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v4    # "uid":I
    :cond_0
    :goto_3
    return v5

    .line 529
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 530
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 532
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 535
    .restart local v4    # "uid":I
    :cond_2
    const-string v5, "gid"

    neg-int v6, v4

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    .line 546
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    .end local v4    # "uid":I
    :cond_3
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    .line 547
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "photos.saveProfilePhoto"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 548
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v5, "device"

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 550
    :try_start_2
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 551
    .restart local v2    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 552
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-nez v5, :cond_4

    .line 557
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_5
    new-instance v5, Lcom/vkontakte/android/UploaderService$9;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$9;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 564
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto :goto_3

    .line 553
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_4
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .restart local v0    # "k":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 556
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    goto :goto_5

    .line 566
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_5
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    .line 567
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v6, "photos.saveMessagesPhoto"

    invoke-direct {v3, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 569
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_4
    new-instance v6, Lorg/json/JSONTokener;

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 570
    .restart local v2    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 571
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v6

    if-nez v6, :cond_6

    .line 576
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_7
    const-string v6, "photo_sizes"

    invoke-virtual {v3, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 577
    new-instance v5, Lcom/vkontakte/android/UploaderService$10;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$10;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 585
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 572
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_6
    :try_start_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 573
    .restart local v0    # "k":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    .line 575
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_2
    move-exception v6

    goto :goto_7

    .line 587
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_7
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    if-ne v6, v5, :cond_a

    .line 588
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "photos.save"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 589
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    const-string v5, "device"

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 591
    :try_start_6
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 592
    .restart local v2    # "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 593
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result v5

    if-nez v5, :cond_9

    .line 598
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_9
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v6, "gid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 599
    const-string v6, "gid"

    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    const-string v7, "gid"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 601
    :cond_8
    new-instance v5, Lcom/vkontakte/android/UploaderService$11;

    invoke-direct {v5, p0, p1}, Lcom/vkontakte/android/UploaderService$11;-><init>(Lcom/vkontakte/android/UploaderService;Lcom/vkontakte/android/UploaderService$UploadTask;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 627
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 594
    .restart local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_9
    :try_start_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 595
    .restart local v0    # "k":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    .line 597
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v5

    goto :goto_9

    .line 629
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_a
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_b

    .line 630
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "audio.save"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_8
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 633
    .restart local v2    # "obj":Lorg/json/JSONObject;
    const-string v5, "server"

    const-string v6, "server"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 634
    const-string v5, "audio"

    const-string v6, "audio"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 635
    const-string v5, "hash"

    const-string v6, "hash"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 639
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_a
    new-instance v5, Lcom/vkontakte/android/UploaderService$12;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/UploaderService$12;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 642
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 644
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_b
    iget v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 647
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_c

    .line 648
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v5, "docs.save"

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 650
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :try_start_9
    new-instance v5, Lorg/json/JSONTokener;

    iget-object v6, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->uploadResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 651
    .restart local v2    # "obj":Lorg/json/JSONObject;
    const-string v5, "file"

    const-string v6, "file"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 655
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_b
    new-instance v5, Lcom/vkontakte/android/UploaderService$13;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/UploaderService$13;-><init>(Lcom/vkontakte/android/UploaderService;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 658
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    move-result v5

    goto/16 :goto_3

    .line 661
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 652
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :catch_4
    move-exception v5

    goto :goto_b

    .line 636
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

    .line 920
    const v5, 0x7f09003c

    .local v5, "rIdOkLong":I
    const v6, 0x7f09003b

    .line 921
    .local v6, "rIdOkShort":I
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v7, :pswitch_data_0

    .line 951
    :goto_0
    :pswitch_0
    iget v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    packed-switch v7, :pswitch_data_1

    .line 965
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 966
    .local v4, "notificationIntent":Landroid/content/Intent;
    const-string v7, "NOTHING"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 967
    invoke-static {p0, v11, v4, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 971
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    :goto_1
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 972
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v7, 0x143

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 973
    new-instance v3, Landroid/app/Notification;

    const v7, 0x7f0201a4

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v3, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 974
    .local v3, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 975
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

    .line 976
    iget v7, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v3, Landroid/app/Notification;->flags:I

    .line 977
    const/16 v7, 0x144

    invoke-virtual {v2, v7, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 978
    return-void

    .line 923
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notification1":Landroid/app/Notification;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    :pswitch_1
    iget v7, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    .line 924
    const v5, 0x7f0900b6

    .line 925
    const v6, 0x7f0900bb

    .line 926
    goto :goto_0

    .line 927
    :cond_0
    const v5, 0x7f0900b2

    .line 928
    const v6, 0x7f0900b7

    .line 930
    goto :goto_0

    .line 932
    :pswitch_2
    const v5, 0x7f0900b3

    .line 933
    const v6, 0x7f0900b8

    .line 934
    goto :goto_0

    .line 936
    :pswitch_3
    const v5, 0x7f0900b5

    .line 937
    const v6, 0x7f0900ba

    .line 938
    goto :goto_0

    .line 940
    :pswitch_4
    const v5, 0x7f0900b4

    .line 941
    const v6, 0x7f0900b9

    .line 942
    goto/16 :goto_0

    .line 944
    :pswitch_5
    const v5, 0x7f0900b2

    .line 945
    const v6, 0x7f0900b7

    goto/16 :goto_0

    .line 953
    :pswitch_6
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 954
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    const-string v8, "entry"

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 955
    invoke-static {p0, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 956
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 958
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    :pswitch_7
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/vkontakte/android/PhotoListActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 959
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

    .line 960
    const-string v8, "title"

    iget-object v7, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 961
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

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {p0, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 963
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 921
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

    .line 951
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

    .line 907
    new-instance v1, Landroid/app/Notification;

    const v2, 0x1080088

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v6, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    .line 908
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x22

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 909
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030032

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    .line 910
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f0600ce

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

    .line 911
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v2, 0x7f0600cf

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

    .line 912
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 913
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NOTHING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 914
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, v7, v0, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 915
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 916
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x143

    iget-object v3, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 917
    return-void
.end method

.method private startThread()V
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 186
    :cond_0
    return-void
.end method

.method private updateProgress(IIZ)V
    .locals 5
    .param p1, "loaded"    # I
    .param p2, "total"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 204
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

    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v1, 0x7f0600d0

    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 206
    iget-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/UploaderService;->uploadView:Landroid/widget/RemoteViews;

    const v1, 0x7f0600cf

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

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 210
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x143

    iget-object v2, p0, Lcom/vkontakte/android/UploaderService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 211
    return-void
.end method

.method private uploadFailed(Lcom/vkontakte/android/UploaderService$UploadTask;)V
    .locals 10
    .param p1, "ut"    # Lcom/vkontakte/android/UploaderService$UploadTask;

    .prologue
    const/4 v9, 0x0

    .line 869
    const-string v5, "vk"

    const-string v6, "UploaderService: FAILED"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    if-eqz v5, :cond_0

    .line 871
    iget-object v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    invoke-interface {v5}, Lcom/vkontakte/android/UploaderService$UploadCallback;->uploadFailed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 872
    invoke-direct {p0, p1, v9}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 876
    :cond_0
    iget v5, p1, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    .line 877
    sget-object v5, Lcom/vkontakte/android/UploaderService;->failedTasks:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 879
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 880
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v5, 0x143

    invoke-virtual {v2, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 881
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

    .line 882
    .local v3, "notification1":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 883
    .local v1, "context":Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 884
    .local v4, "notificationIntent":Landroid/content/Intent;
    const-string v5, "RETRY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    invoke-static {p0, v9, v4, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 886
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

    .line 887
    const/16 v5, 0x145

    invoke-virtual {v2, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 889
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
    .line 855
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v1, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/UploaderService;->needCancelCurrent:Z

    .line 857
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 860
    :cond_0
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 866
    :goto_0
    return-void

    .line 860
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    .line 861
    .local v0, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    sget-object v1, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vkontakte/android/UploaderService;->onStartCommand(Landroid/content/Intent;II)I

    .line 98
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v9, 0x0

    .line 102
    sput-object p0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 103
    const-string v7, "RETRY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/UploaderService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    const/16 v8, 0x145

    invoke-virtual {v7, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 105
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->retryAll()V

    .line 150
    :cond_0
    :goto_0
    const/4 v7, 0x2

    return v7

    .line 106
    :cond_1
    const-string v7, "NOTHING"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    goto :goto_0

    .line 108
    :cond_2
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 111
    const-string v7, "multiattach"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 112
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 113
    .local v5, "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "files":[Ljava/lang/String;
    const-string v7, "types"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    .line 115
    .local v6, "types":[I
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 116
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    .line 117
    const-string v7, "attachments"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->attcahments:Ljava/util/HashMap;

    .line 118
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 119
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v7, v0

    if-lt v2, v7, :cond_7

    .line 126
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v0    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v6    # "types":[I
    :cond_4
    :goto_2
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_5

    .line 146
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-eqz v7, :cond_c

    const v7, 0x7f0900ae

    :goto_3
    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 147
    :cond_5
    iget-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/UploaderService;->needUpdateNumber:Z

    .line 148
    :cond_6
    invoke-direct {p0}, Lcom/vkontakte/android/UploaderService;->startThread()V

    goto/16 :goto_0

    .line 120
    .restart local v0    # "files":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .restart local v6    # "types":[I
    :cond_7
    new-instance v4, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v4}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 121
    .local v4, "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    aget-object v7, v0, v2

    iput-object v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 122
    aget v7, v6, v2

    iput v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 123
    iget-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    iput-object v7, v4, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 124
    iget-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->sub:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    .end local v0    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "st":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    .end local v6    # "types":[I
    :cond_8
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 128
    const-string v7, "files"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 129
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 130
    .local v3, "p":Landroid/os/Parcelable;
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 131
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 132
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 133
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 134
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 135
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 138
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_a
    new-instance v5, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {v5}, Lcom/vkontakte/android/UploaderService$UploadTask;-><init>()V

    .line 139
    .restart local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "info"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->info:Ljava/lang/Object;

    .line 140
    :cond_b
    const-string v7, "file"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    .line 141
    const-string v7, "type"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->type:I

    .line 142
    const-string v7, "req_params"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    iput-object v7, v5, Lcom/vkontakte/android/UploaderService$UploadTask;->requestParams:Ljava/util/HashMap;

    .line 143
    sget-object v7, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v7, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 146
    .end local v5    # "task":Lcom/vkontakte/android/UploaderService$UploadTask;
    :cond_c
    const v7, 0x7f0900ad

    goto/16 :goto_3
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    const-string v0, "vk"

    const-string v1, "UploaderService started"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/UploaderService;->running:Z

    .line 192
    :cond_0
    :goto_0
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/vkontakte/android/UploaderService;->stopSelf()V

    .line 198
    iput v2, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 199
    const-string v0, "vk"

    const-string v1, "UploaderService stopped"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/UploaderService;->currentInstance:Lcom/vkontakte/android/UploaderService;

    .line 201
    return-void

    .line 193
    :cond_1
    sget-object v0, Lcom/vkontakte/android/UploaderService;->taskQueue:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/UploaderService$UploadTask;

    invoke-direct {p0, v0, v2}, Lcom/vkontakte/android/UploaderService;->processTask(Lcom/vkontakte/android/UploaderService$UploadTask;Z)Z

    .line 194
    iget v0, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/UploaderService;->nDone:I

    .line 195
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
    .line 154
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iget-object v1, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/UploaderService;->currentTask:Lcom/vkontakte/android/UploaderService$UploadTask;

    iput-object p2, v1, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
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

    .line 159
    .local v0, "ut":Lcom/vkontakte/android/UploaderService$UploadTask;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->file:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    iput-object p2, v0, Lcom/vkontakte/android/UploaderService$UploadTask;->callback:Lcom/vkontakte/android/UploaderService$UploadCallback;

    goto :goto_0
.end method
