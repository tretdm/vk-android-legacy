.class public Lcom/vkontakte/android/LongPollService;
.super Landroid/app/Service;
.source "LongPollService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ACTION_CHAT_CHANGED:Ljava/lang/String; = "com.vkontakte.android.CHAT_CHANGED"

.field public static final ACTION_COUNTERS_UPDATED:Ljava/lang/String; = "com.vkontakte.android.COUNTERS_UPDATED"

.field public static final ACTION_MESSAGE_DELETED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_DELETED"

.field public static final ACTION_MESSAGE_RSTATE_CHANGED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

.field public static final ACTION_NEW_MESSAGE:Ljava/lang/String; = "com.vkontakte.android.NEW_MESSAGE"

.field public static final ACTION_REFRESH_DIALOGS_LIST:Ljava/lang/String; = "com.vkontakte.android.REFRESH_DIALOGS"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.vkontakte.android.STATE_CHANGED"

.field public static final ACTION_TYPING:Ljava/lang/String; = "com.vkontakte.android.TYPING"

.field public static final ACTION_USER_PRESENCE:Ljava/lang/String; = "com.vkontakte.android.USER_PRESENCE"

.field public static final ACTION_VOIP_HANGUP:Ljava/lang/String; = "com.vkontakte.android.VOIP_HANGUP"

.field public static final DEBUG:Z = false

.field private static final EVENT_CHAT_CHANGED:I = 0x33

.field private static final EVENT_CHAT_TYPING:I = 0x3e

.field private static final EVENT_FRIEND_OFFLINE:I = 0x9

.field private static final EVENT_FRIEND_ONLINE:I = 0x8

.field private static final EVENT_MSG_ADD:I = 0x4

.field private static final EVENT_MSG_ADD_EXTENDED:I = 0x65

.field private static final EVENT_MSG_DELETE:I = 0x0

.field private static final EVENT_MSG_FLAG_ADD:I = 0x2

.field private static final EVENT_MSG_FLAG_CLEAR:I = 0x3

.field private static final EVENT_MSG_FLAG_REPLACE:I = 0x1

.field private static final EVENT_MSG_IN_READ_UPTO:I = 0x6

.field private static final EVENT_MSG_OUT_READ_UPTO:I = 0x7

.field private static final EVENT_UPDATE_COUNTER:I = 0x50

.field private static final EVENT_USER_TYPING:I = 0x3d

.field private static final EVENT_VOIP_HANGUP:I = 0x70

.field private static final EVENT_VOIP_INCOMING:I = 0x6e

.field private static final EVENT_VOIP_REPLIED:I = 0x6f

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final EXTRA_PEER_ID:Ljava/lang/String; = "peer_id"

.field public static final EXTRA_READ_STATE:Ljava/lang/String; = "read_state"

.field public static final INTRO_IMPORT_FRIENDS:I = 0x1

.field public static final INTRO_SUGGEST_GROUPS:I = 0x2

.field public static final MOBILE_ONLINE_TYPES:[I

.field public static final MSG_CHAT:I = 0x10

.field public static final MSG_DELETED:I = 0x80

.field public static final MSG_FIXED:I = 0x100

.field public static final MSG_FRIENDS:I = 0x20

.field public static final MSG_IMPORTANT:I = 0x8

.field public static final MSG_MEDIA:I = 0x200

.field public static final MSG_OUTBOX:I = 0x2

.field public static final MSG_REPLIED:I = 0x4

.field public static final MSG_SPAM:I = 0x40

.field public static final MSG_UNREAD:I = 0x1

.field public static final NOTIFY_ID_MESSAGE:I = 0xa

.field public static final ONLINE_TYPE_ANDROID:I = 0x4

.field public static final ONLINE_TYPE_DEFAULT:I = 0x7

.field public static final ONLINE_TYPE_IPAD:I = 0x3

.field public static final ONLINE_TYPE_IPHONE:I = 0x2

.field public static final ONLINE_TYPE_MOBILE:I = 0x1

.field public static final ONLINE_TYPE_WINDOWS8:I = 0x6

.field public static final ONLINE_TYPE_WINPHONE:I = 0x5

.field public static final PERMISSION:Ljava/lang/String; = "com.vkontakte.android.permission.ACCESS_DATA"

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_UPDATING:I = 0x1

.field public static final STATE_WAITING:I

.field public static addMessage:Ljava/util/concurrent/Semaphore;

.field public static addOwnMessage:Ljava/util/concurrent/Semaphore;

.field private static broadcastStateTimer:Ljava/util/Timer;

.field public static connected:Z

.field public static lastMessageProfile:Lcom/vkontakte/android/UserProfile;

.field public static longPollActive:Z

.field private static longPollClient:Lorg/apache/http/client/HttpClient;

.field public static longPollRunning:Z

.field public static needFinishAllActivities:Z

.field public static needReloadDialogs:Z

.field static notification1:Landroid/app/Notification;

.field public static numFriendRequests:I

.field public static numGroupInvitations:I

.field public static numNewMessages:I

.field public static numNotifications:I

.field public static pendingReceivedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static prevNumNewMessages:I

.field public static realLastProfile:Lcom/vkontakte/android/UserProfile;

.field public static sendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static updating:Z


# instance fields
.field private currentIsHttps:Z

.field private key:Ljava/lang/String;

.field lastReqTime:J

.field lpThread:Ljava/lang/Thread;

.field private needResendOnline:Z

.field private needStop:Z

.field private newSystem:Z

.field onlineTimer:Ljava/util/Timer;

.field private server:Ljava/lang/String;

.field private started:Z

.field stopDelayTimer:Ljava/util/Timer;

.field private ts:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->MOBILE_ONLINE_TYPES:[I

    .line 146
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    .line 147
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 148
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 149
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 150
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->updating:Z

    .line 151
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->connected:Z

    .line 154
    sput v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v1, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sput v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 155
    sput v1, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 156
    sput v1, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 157
    sput-object v3, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 161
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    .line 164
    sput-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    sput-object v3, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    .line 170
    return-void

    .line 118
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 77
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needResendOnline:Z

    .line 78
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    .line 160
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LongPollService;I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/LongPollService;Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/vkontakte/android/LongPollService;->currentIsHttps:Z

    return-void
.end method

.method static synthetic access$4(Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 170
    sput-object p0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/LongPollService;)V
    .locals 0

    .prologue
    .line 1262
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->sendOnline()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/LongPollService;Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/vkontakte/android/LongPollService;->needResendOnline:Z

    return-void
.end method

.method private static broadcastStateChanged()V
    .locals 4

    .prologue
    .line 470
    sget-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 472
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    .line 476
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    .line 477
    sget-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/LongPollService$4;

    invoke-direct {v1}, Lcom/vkontakte/android/LongPollService$4;-><init>()V

    .line 484
    const-wide/16 v2, 0xc8

    .line 477
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 485
    return-void

    .line 473
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static createNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "expandedTitle"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "photoUrl"    # Ljava/lang/String;
    .param p5, "contentIntent"    # Landroid/app/PendingIntent;
    .param p6, "tickerText"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0201d4

    const/16 v7, 0x32

    const/high16 v6, 0x42800000    # 64.0f

    .line 1194
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {p6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1195
    .local v3, "ticker":Ljava/lang/String;
    :goto_0
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 1196
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v8, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1197
    .local v1, "n":Landroid/app/Notification;
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, p1, p0, p5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1229
    .end local v1    # "n":Landroid/app/Notification;
    :goto_1
    return-object v1

    .end local v3    # "ticker":Ljava/lang/String;
    :cond_0
    move-object v3, p6

    .line 1194
    goto :goto_0

    .line 1200
    .restart local v3    # "ticker":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 1201
    .local v2, "photo":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_2

    .line 1202
    invoke-static {p4}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1205
    :goto_2
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1206
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1207
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1208
    invoke-virtual {v4, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1209
    sget v5, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1210
    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v2, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1211
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1212
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1213
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_3

    .line 1222
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1223
    invoke-virtual {v4, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 1224
    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 1225
    invoke-virtual {v4, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 1226
    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    .line 1204
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_2
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02027c

    invoke-static {v4, v5}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 1229
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1
.end method

.method public static getState()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 173
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    sget-boolean v1, Lcom/vkontakte/android/LongPollService;->connected:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 175
    :cond_2
    sget-boolean v1, Lcom/vkontakte/android/LongPollService;->updating:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getURL(Ljava/lang/String;)[B
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const v11, 0xea60

    const/4 v10, 0x0

    .line 720
    sget-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    if-nez v9, :cond_0

    .line 721
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 722
    .local v1, "hParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 723
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 724
    const/16 v9, 0x2000

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 725
    invoke-static {v1, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 726
    invoke-static {v1, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 727
    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 728
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 729
    .local v6, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v11

    const/16 v12, 0x1bb

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 730
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v11

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 731
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v10, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v10, v1, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v9, v10, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    .line 733
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 735
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v9, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 736
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 737
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 738
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v5, v9, [B

    .line 739
    .local v5, "rd":[B
    const/4 v4, 0x0

    .line 740
    .local v4, "l":I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_1

    .line 741
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 742
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 745
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "rd":[B
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v8

    .line 740
    .restart local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "l":I
    .restart local v5    # "rd":[B
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 743
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "rd":[B
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public static logOut(ZZ)V
    .locals 11
    .param p0, "full"    # Z
    .param p1, "force"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1336
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "========== LOGOUT! "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v5, :cond_0

    .line 1338
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-direct {v5}, Lcom/vkontakte/android/LongPollService;->sendOffline()V

    .line 1339
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 1340
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-direct {v5}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 1343
    :cond_0
    if-nez p1, :cond_3

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eqz v5, :cond_1

    sget-object v5, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1344
    :cond_1
    const-string v5, "vk"

    const-string v6, "Already logged out"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    :cond_2
    :goto_0
    return-void

    .line 1349
    :cond_3
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1351
    :goto_1
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1353
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "c2dm_regID"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1354
    .local v2, "oldToken":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1355
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "c2dm_regID"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1356
    new-instance v5, Lcom/vkontakte/android/api/C2DMUnregisterDevice;

    invoke-direct {v5, v2}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;-><init>(Ljava/lang/String;)V

    .line 1357
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->setBackground(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 1358
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1361
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    .line 1363
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1365
    .local v3, "prefs":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v8, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1371
    if-nez p0, :cond_6

    .line 1372
    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-lez v5, :cond_5

    .line 1373
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "reauth_uid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1374
    :cond_5
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1375
    const-string v6, "uid"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1376
    const-string v6, "sid"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1377
    const-string v6, "secret"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1378
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1379
    sput-object v10, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 1380
    sput v9, Lcom/vkontakte/android/Global;->uid:I

    .line 1381
    sput-object v10, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    goto/16 :goto_0

    .line 1384
    :cond_6
    sput-object v10, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 1385
    sput v9, Lcom/vkontakte/android/Global;->uid:I

    .line 1386
    sput-object v10, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 1388
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1389
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1391
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1392
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "drafts"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1393
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "news"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1394
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "longpoll"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1395
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "stickers"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1403
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "posts.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1404
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "friends.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1405
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "dialogs.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1406
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "chats.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1407
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "groups.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1408
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "vk.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1409
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->reset()V

    .line 1410
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 1411
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->reset()V

    .line 1412
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->reset()V

    .line 1413
    sput-boolean v9, Lcom/vkontakte/android/Global;->inited:Z

    .line 1414
    sput-object v10, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 1416
    sput v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 1417
    sput v9, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 1418
    sput v9, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 1419
    sget-object v5, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1420
    const-string v5, "0"

    sput-object v5, Lcom/vkontakte/android/data/Posts;->feedFrom:Ljava/lang/String;

    .line 1421
    sput v9, Lcom/vkontakte/android/data/Posts;->feedItem:I

    .line 1422
    sput v9, Lcom/vkontakte/android/data/Posts;->feedOffset:I

    .line 1423
    sput v9, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    .line 1424
    sget-object v5, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1426
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "replies"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1428
    if-eqz p0, :cond_2

    .line 1430
    :try_start_1
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1431
    .local v0, "am":Landroid/accounts/AccountManager;
    const-string v5, "com.vkontakte.account"

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1432
    .end local v0    # "am":Landroid/accounts/AccountManager;
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1350
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "oldToken":Ljava/lang/String;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method

.method public static onNotificationOpened()V
    .locals 1

    .prologue
    .line 1317
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1318
    return-void
.end method

.method public static onReauthError()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1437
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1446
    .local v0, "act":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 1438
    .end local v0    # "act":Landroid/app/Activity;
    :cond_1
    invoke-static {v3, v3}, Lcom/vkontakte/android/LongPollService;->logOut(ZZ)V

    .line 1440
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1441
    .restart local v0    # "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1442
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1443
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1444
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1445
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static playNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1233
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1234
    .local v1, "n":Landroid/app/Notification;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1235
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "dnd_end"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1236
    const-string v3, "notifySound"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1237
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "notifyRingtone"

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1239
    :cond_0
    const-string v3, "notifyVibrate"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 1241
    :cond_1
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1242
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1243
    return-void
.end method

.method private processAddFlags(III)V
    .locals 3
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v2, 0x0

    .line 622
    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    if-nez v1, :cond_0

    .line 623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 625
    const-string v1, "read_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 628
    invoke-static {p1, v2}, Lcom/vkontakte/android/data/Messages;->setReadState(IZ)V

    .line 630
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    if-nez v1, :cond_0

    .line 631
    sget v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 633
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 636
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    and-int/lit16 v1, p3, 0x80

    if-lez v1, :cond_1

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 640
    invoke-static {p1}, Lcom/vkontakte/android/data/Messages;->deleteMessageLocally(I)V

    .line 642
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private processChatChanged(I)V
    .locals 2
    .param p1, "chatID"    # I

    .prologue
    .line 749
    invoke-static {p1}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.CHAT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 753
    return-void
.end method

.method private processClearFlags(III)V
    .locals 20
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    .line 557
    and-int/lit8 v17, p3, 0x1

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 558
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    .local v5, "intent":Landroid/content/Intent;
    const-string v17, "msg_id"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    const-string v17, "read_state"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 562
    const-string v17, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 564
    const/4 v6, 0x0

    .line 566
    .local v6, "isOut":Z
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Messages;->setReadState(IZ)V

    .line 568
    if-nez v6, :cond_1

    sget v17, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 569
    sget v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v17, v17, -0x1

    sput v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 570
    sget v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-gez v17, :cond_0

    const/16 v17, 0x0

    sput v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 572
    :cond_0
    sget v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v17, :cond_1

    .line 573
    const-string v17, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 574
    .local v8, "mgr":Landroid/app/NotificationManager;
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 575
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 579
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "isOut":Z
    .end local v8    # "mgr":Landroid/app/NotificationManager;
    :cond_1
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 580
    const/4 v9, 0x0

    .line 581
    .local v9, "msg":Lcom/vkontakte/android/Message;
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v17, "messages.getById"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 582
    .local v4, "getMsg":Lcom/vkontakte/android/APIRequest;
    const-string v17, "message_ids"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v17

    const-string v18, "photo_sizes"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v17

    const-string v18, "fields"

    const-string v19, "first_name,last_name,photo_100,photo_50"

    invoke-virtual/range {v17 .. v19}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 583
    invoke-static {v4}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;

    move-result-object v13

    .line 584
    .local v13, "res":Lorg/json/JSONObject;
    if-eqz v13, :cond_5

    const-string v17, "response"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 586
    :try_start_0
    const-string v17, "response"

    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 587
    .local v7, "jmsg":Lorg/json/JSONObject;
    new-instance v9, Lcom/vkontakte/android/Message;

    .end local v9    # "msg":Lcom/vkontakte/android/Message;
    invoke-direct {v9, v7}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .restart local v9    # "msg":Lcom/vkontakte/android/Message;
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.vkontakte.android.NEW_MESSAGE"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v0, v9, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v9, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "action_mid"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 598
    iget-object v0, v9, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "action_mid"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 599
    .local v3, "actMid":I
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v15

    .line 600
    .local v15, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v18, "action_user_name_acc"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    iget-object v0, v9, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    const-string v19, "action_user_name_acc"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .end local v3    # "actMid":I
    .end local v15    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v10, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v0, v9, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-static {v10}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/UserProfile;

    .line 606
    .local v14, "senderProfile":Lcom/vkontakte/android/UserProfile;
    const-string v17, "sender_profile"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 607
    const-string v17, "peer_id"

    iget v0, v9, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 608
    const-string v17, "message"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 609
    const-string v17, "is_out"

    iget-boolean v0, v9, Lcom/vkontakte/android/Message;->out:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 610
    const-string v17, "sender_photo"

    iget-object v0, v14, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const/4 v11, 0x0

    .line 612
    .local v11, "peerProfile":Lcom/vkontakte/android/UserProfile;
    iget v0, v9, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v17, v0

    const v18, 0x77359400

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 613
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget v0, v9, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    .line 614
    .local v12, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v17, "peer_profile"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "peerProfile":Lcom/vkontakte/android/UserProfile;
    check-cast v11, Lcom/vkontakte/android/UserProfile;

    .restart local v11    # "peerProfile":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 616
    .end local v12    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    iget-object v0, v14, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v9, v11, v0}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 617
    const-string v17, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 619
    .end local v4    # "getMsg":Lcom/vkontakte/android/APIRequest;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "jmsg":Lorg/json/JSONObject;
    .end local v9    # "msg":Lcom/vkontakte/android/Message;
    .end local v10    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "peerProfile":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "res":Lorg/json/JSONObject;
    .end local v14    # "senderProfile":Lcom/vkontakte/android/UserProfile;
    :cond_4
    :goto_0
    return-void

    .line 588
    .restart local v4    # "getMsg":Lcom/vkontakte/android/APIRequest;
    .restart local v13    # "res":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    .line 589
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 593
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v9    # "msg":Lcom/vkontakte/android/Message;
    :cond_5
    const-string v17, "vk_longpoll"

    const-string v18, "Error getting full message"

    invoke-static/range {v17 .. v18}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processMessage(IIIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 27
    .param p1, "mid"    # I
    .param p2, "peer"    # I
    .param p3, "flags"    # I
    .param p4, "time"    # I
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "extra"    # Lorg/json/JSONObject;

    .prologue
    .line 758
    and-int/lit8 v3, p3, 0x2

    if-lez v3, :cond_5

    const/4 v15, 0x1

    .line 759
    .local v15, "isOut":Z
    :goto_0
    if-eqz v15, :cond_0

    .line 761
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 762
    sget-object v3, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 766
    :cond_0
    :goto_1
    :try_start_1
    sget-object v3, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 767
    sget-object v3, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 771
    :goto_2
    const v3, 0x77359400

    move/from16 v0, p2

    if-ge v0, v3, :cond_7

    .line 772
    if-eqz v15, :cond_6

    :try_start_2
    sget v22, Lcom/vkontakte/android/Global;->uid:I

    .line 776
    .local v22, "sender":I
    :goto_3
    if-eqz p7, :cond_9

    const-string v3, "attach1_type"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "fwd"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "geo"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 778
    :cond_1
    new-instance v12, Lcom/vkontakte/android/APIRequest;

    const-string v3, "messages.getById"

    invoke-direct {v12, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 779
    .local v12, "getMsg":Lcom/vkontakte/android/APIRequest;
    const-string v3, "message_ids"

    move/from16 v0, p1

    invoke-virtual {v12, v3, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    const-string v4, "photo_sizes"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    const-string v4, "fields"

    const-string v5, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 780
    invoke-static {v12}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;

    move-result-object v21

    .line 781
    .local v21, "res":Lorg/json/JSONObject;
    if-eqz v21, :cond_8

    const-string v3, "response"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 782
    const-string v3, "response"

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 783
    .local v16, "jmsg":Lorg/json/JSONObject;
    new-instance v17, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 816
    .end local v12    # "getMsg":Lcom/vkontakte/android/APIRequest;
    .end local v16    # "jmsg":Lorg/json/JSONObject;
    .end local v21    # "res":Lorg/json/JSONObject;
    .local v17, "msg":Lcom/vkontakte/android/Message;
    :cond_2
    :goto_4
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 817
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 819
    :cond_3
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-nez v3, :cond_e

    sget-object v3, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 820
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    .end local v17    # "msg":Lcom/vkontakte/android/Message;
    .end local v22    # "sender":I
    :cond_4
    :goto_5
    return-void

    .line 758
    .end local v15    # "isOut":Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_0

    .restart local v15    # "isOut":Z
    :cond_6
    move/from16 v22, p2

    .line 772
    goto/16 :goto_3

    .line 774
    :cond_7
    const-string v3, "from"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .restart local v22    # "sender":I
    goto/16 :goto_3

    .line 785
    .restart local v12    # "getMsg":Lcom/vkontakte/android/APIRequest;
    .restart local v21    # "res":Lorg/json/JSONObject;
    :cond_8
    const-string v3, "vk_longpoll"

    const-string v4, "Error getting full message"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 901
    .end local v12    # "getMsg":Lcom/vkontakte/android/APIRequest;
    .end local v21    # "res":Lorg/json/JSONObject;
    .end local v22    # "sender":I
    :catch_0
    move-exception v26

    .line 902
    .local v26, "x":Ljava/lang/Exception;
    const-string v3, "vk_longpoll"

    const-string v4, "Error processing message"

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 789
    .end local v26    # "x":Ljava/lang/Exception;
    .restart local v22    # "sender":I
    :cond_9
    :try_start_3
    new-instance v17, Lcom/vkontakte/android/Message;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/Message;-><init>()V

    .line 790
    .restart local v17    # "msg":Lcom/vkontakte/android/Message;
    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Message;->peer:I

    .line 791
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Message;->sender:I

    .line 792
    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 793
    move/from16 v0, p4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Message;->time:I

    .line 794
    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Message;->id:I

    .line 795
    move-object/from16 v0, v17

    iput-boolean v15, v0, Lcom/vkontakte/android/Message;->out:Z

    .line 796
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 797
    const v3, 0x77359400

    move/from16 v0, p2

    if-le v0, v3, :cond_a

    .line 798
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 799
    :cond_a
    if-eqz p7, :cond_2

    .line 800
    const-string v3, "source_act"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 801
    const-string v3, "source_act"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 802
    .local v8, "act":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v3, "chat_invite_user"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "chat_kick_user"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 804
    :cond_b
    const-string v3, "source_mid"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 805
    .local v24, "uid":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_mid"

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 807
    .end local v24    # "uid":I
    :cond_c
    const-string v3, "source_text"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 808
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_text"

    const-string v5, "source_text"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_d
    const-string v3, "source_email"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 811
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_email"

    const-string v5, "source_email"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 824
    .end local v8    # "act":Ljava/lang/String;
    :cond_e
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.NEW_MESSAGE"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_f

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_mid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 826
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_mid"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 827
    .local v9, "actMid":I
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v25

    .line 828
    .local v25, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v4, "action_user_name_acc"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v13, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_user_name_acc"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .end local v9    # "actMid":I
    .end local v25    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_f
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v18, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UserProfile;

    .line 835
    .local v23, "senderProfile":Lcom/vkontakte/android/UserProfile;
    const-string v3, "sender_profile"

    move-object/from16 v0, v23

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 836
    const-string v3, "peer_id"

    move/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v3, "message"

    move-object/from16 v0, v17

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 838
    const-string v3, "is_out"

    invoke-virtual {v13, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 839
    const-string v3, "sender_photo"

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 840
    const/16 v19, 0x0

    .line 841
    .local v19, "peerProfile":Lcom/vkontakte/android/UserProfile;
    const v3, 0x77359400

    move/from16 v0, p2

    if-ge v0, v3, :cond_10

    .line 842
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v20

    .line 843
    .local v20, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v3, "peer_profile"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "peerProfile":Lcom/vkontakte/android/UserProfile;
    check-cast v19, Lcom/vkontakte/android/UserProfile;

    .restart local v19    # "peerProfile":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v19

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 846
    .end local v20    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v0, v17

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->containsMessage(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 847
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 850
    :cond_11
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 853
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_12

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 854
    const v3, 0x77359400

    sub-int v3, p2, v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 855
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.CHAT_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 856
    .local v14, "intent1":Landroid/content/Intent;
    const-string v3, "id"

    move-object/from16 v0, v17

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    const v5, 0x77359400

    sub-int/2addr v4, v5

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 858
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 859
    const-string v3, "chat_title_update"

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 860
    const v3, 0x77359400

    sub-int v3, p2, v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_text"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 864
    .end local v14    # "intent1":Landroid/content/Intent;
    :cond_12
    if-nez v15, :cond_4

    .line 865
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    if-nez v3, :cond_13

    .line 866
    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 867
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 870
    :cond_13
    sput-object v23, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 871
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    .line 872
    .local v2, "notifyText":Ljava/lang/CharSequence;
    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 873
    const-string v3, "action_user_name_acc"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/Message;->getServiceMessageText(Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 875
    :cond_14
    if-eqz v2, :cond_15

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_16

    .line 876
    :cond_15
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 877
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Attachment;

    .line 878
    .local v10, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v10, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_17

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 898
    .end local v10    # "att":Lcom/vkontakte/android/Attachment;
    :cond_16
    :goto_6
    move-object/from16 v0, v17

    iget v3, v0, Lcom/vkontakte/android/Message;->peer:I

    const v4, 0x77359400

    if-le v3, v4, :cond_1f

    move-object/from16 v3, p6

    :goto_7
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    iget v7, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static/range {v2 .. v7}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_5

    .line 880
    .restart local v10    # "att":Lcom/vkontakte/android/Attachment;
    :cond_17
    instance-of v3, v10, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v3, :cond_18

    .line 881
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 882
    goto :goto_6

    :cond_18
    instance-of v3, v10, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v3, :cond_19

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 884
    goto :goto_6

    :cond_19
    instance-of v3, v10, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v3, :cond_1b

    .line 885
    move-object v0, v10

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v11, v0

    .line 886
    .local v11, "da":Lcom/vkontakte/android/DocumentAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, v11, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-nez v3, :cond_1a

    const v3, 0x7f0801d3

    :goto_8
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 887
    goto :goto_6

    .line 886
    :cond_1a
    const v3, 0x7f080031

    goto :goto_8

    .line 887
    .end local v11    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_1b
    instance-of v3, v10, Lcom/vkontakte/android/PostAttachment;

    if-eqz v3, :cond_1c

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080150

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 889
    goto :goto_6

    :cond_1c
    instance-of v3, v10, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_1d

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 891
    goto :goto_6

    :cond_1d
    instance-of v3, v10, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v3, :cond_16

    .line 892
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08033c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 894
    goto/16 :goto_6

    .end local v10    # "att":Lcom/vkontakte/android/Attachment;
    :cond_1e
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v3, :cond_16

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 895
    const v3, 0x7f0d001d

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto/16 :goto_6

    .line 898
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 768
    .end local v2    # "notifyText":Ljava/lang/CharSequence;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v17    # "msg":Lcom/vkontakte/android/Message;
    .end local v18    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "peerProfile":Lcom/vkontakte/android/UserProfile;
    .end local v22    # "sender":I
    .end local v23    # "senderProfile":Lcom/vkontakte/android/UserProfile;
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 763
    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method private processOnlineChange(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "online"    # I

    .prologue
    .line 651
    invoke-static {p1, p2}, Lcom/vkontakte/android/data/Friends;->setOnlineStatus(II)V

    .line 653
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    const-string v1, "online"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private processReadUpto(IIZ)V
    .locals 3
    .param p1, "peerID"    # I
    .param p2, "msgID"    # I
    .param p3, "in"    # Z

    .prologue
    const/4 v2, 0x1

    .line 906
    if-nez p3, :cond_0

    .line 908
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 909
    sget-object v1, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/vkontakte/android/data/Messages;->setReadStateUpto(IIZ)V

    .line 913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    const-string v1, "read_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    const-string v1, "peer_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 917
    const-string v1, "in"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 918
    const-string v1, "le"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 919
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 920
    return-void

    .line 910
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private processTyping(II)V
    .locals 2
    .param p1, "peerID"    # I
    .param p2, "userID"    # I

    .prologue
    .line 661
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.TYPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 662
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method private processUpdateCounter(I)V
    .locals 3
    .param p1, "counter"    # I

    .prologue
    const/4 v2, 0x1

    .line 923
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    if-nez v0, :cond_0

    .line 924
    iput-boolean v2, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    .line 925
    const-string v0, "longpoll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "new_system"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 927
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 928
    return-void
.end method

.method private runLongPoll()V
    .locals 24

    .prologue
    .line 931
    const-string v2, "vk_longpoll"

    const-string v3, "LongPoll starting"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->startSendingOnline()V

    .line 935
    :cond_0
    sget-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "sid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 936
    :cond_1
    const-string v2, "vk_longpoll"

    const-string v3, "No user, stopping"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    .line 1099
    :goto_0
    return-void

    .line 940
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 941
    const/4 v14, 0x0

    .local v14, "nAttempts":I
    const/16 v21, 0x0

    .line 944
    .local v21, "updateRetries":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v2, :cond_4

    .line 1096
    const-string v2, "vk_longpoll"

    const-string v3, "LongPoll exiting"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 945
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 946
    :cond_5
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    .line 947
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    .line 948
    const-string v2, "vk_longpoll"

    const-string v3, "no server info, force updating"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 950
    add-int/lit8 v21, v21, 0x1

    .line 951
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    move/from16 v0, v21

    if-lt v0, v2, :cond_3

    .line 952
    :cond_6
    const/16 v21, 0x0

    .line 953
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    goto :goto_0

    .line 959
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "useHTTPS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "https"

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?act=a_check&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkontakte/android/LongPollService;->ts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&wait=25&mode=98"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 961
    .local v22, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v2, :cond_9

    .line 962
    const-string v2, "vk_longpoll"

    const-string v3, "LongPoll STOPPED"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 959
    .end local v22    # "url":Ljava/lang/String;
    :cond_8
    const-string v2, "http"

    goto :goto_2

    .line 966
    .restart local v22    # "url":Ljava/lang/String;
    :cond_9
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    if-nez v2, :cond_a

    .line 967
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    .line 968
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    .line 970
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LongPollService;->getURL(Ljava/lang/String;)[B

    move-result-object v18

    .line 971
    .local v18, "rdata":[B
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v2, :cond_b

    .line 972
    const-string v2, "vk_longpoll"

    const-string v3, "LongPoll STOPPED"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 976
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->currentIsHttps:Z

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "useHTTPS"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v2, v3, :cond_e

    .line 977
    const-string v2, "vk_longpoll"

    const-string v3, "HTTPS setting changed, updating server"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    if-nez v2, :cond_d

    add-int/lit8 v21, v21, 0x1

    .line 981
    :goto_3
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    move/from16 v0, v21

    if-lt v0, v2, :cond_3

    .line 982
    :cond_c
    const-string v2, "vk_longpoll"

    const-string v3, "No network connection, stopping longpoll"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    goto/16 :goto_0

    .line 980
    :cond_d
    const/16 v21, 0x0

    goto :goto_3

    .line 989
    :cond_e
    if-nez v18, :cond_12

    .line 990
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    if-eqz v2, :cond_f

    .line 991
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    .line 992
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    .line 994
    :cond_f
    const/4 v2, 0x6

    if-lt v14, v2, :cond_11

    .line 995
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-nez v2, :cond_10

    .line 996
    const-string v2, "vk_longpoll"

    const-string v3, "No network connection, stopping longpoll"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    goto/16 :goto_0

    .line 1001
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 1002
    const/4 v14, 0x0

    .line 1003
    const-string v2, "vk_longpoll"

    const-string v3, "6 errors, reloading server info"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1006
    :cond_11
    const-string v2, "vk_longpoll"

    const-string v3, "Connection error. Retry in 5 sec"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1010
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 1011
    goto/16 :goto_1

    .line 1013
    :cond_12
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 1015
    :try_start_1
    new-instance v19, Ljava/lang/String;

    const-string v2, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1016
    .local v19, "resp":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1018
    new-instance v2, Lorg/json/JSONTokener;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 1019
    .local v17, "r":Lorg/json/JSONObject;
    const-string v2, "failed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1020
    const-string v2, "vk_longpoll"

    const-string v3, "Got \'failed\', reloading server info"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1092
    .end local v17    # "r":Lorg/json/JSONObject;
    .end local v19    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 1093
    .local v23, "x":Ljava/lang/Exception;
    const-string v2, "vk_longpoll"

    const-string v3, "Exception while parsing"

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1024
    .end local v23    # "x":Ljava/lang/Exception;
    .restart local v17    # "r":Lorg/json/JSONObject;
    .restart local v19    # "resp":Ljava/lang/String;
    :cond_13
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->needResendOnline:Z

    if-eqz v2, :cond_14

    .line 1025
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->sendOnline()V

    .line 1026
    :cond_14
    const-string v2, "ts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/LongPollService;->ts:I

    .line 1027
    const-string v2, "pts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1028
    .local v16, "pts":I
    if-lez v16, :cond_15

    .line 1029
    const-string v2, "longpoll"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pts"

    move/from16 v0, v16

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1030
    :cond_15
    const-string v2, "updates"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1031
    .local v20, "u":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 1032
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v10

    .line 1033
    .local v10, "ev":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    .line 1034
    .local v11, "evtype":I
    sparse-switch v11, :sswitch_data_0

    .line 1088
    const-string v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown event "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1036
    :sswitch_0
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v2, 0x3

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v2, 0x4

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    const/4 v2, 0x6

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x7

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/vkontakte/android/LongPollService;->processMessage(IIIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6

    .line 1039
    :sswitch_1
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/vkontakte/android/LongPollService;->processClearFlags(III)V

    goto :goto_6

    .line 1042
    :sswitch_2
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/vkontakte/android/LongPollService;->processAddFlags(III)V

    goto :goto_6

    .line 1049
    :sswitch_3
    const/4 v15, 0x1

    .line 1050
    .local v15, "onl":I
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    and-int/lit16 v13, v2, 0xff

    .line 1051
    .local v13, "lpo":I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_16

    .line 1052
    const/4 v15, 0x2

    .line 1053
    :cond_16
    const/4 v2, 0x4

    if-eq v13, v2, :cond_17

    const/4 v2, 0x2

    if-eq v13, v2, :cond_17

    const/4 v2, 0x3

    if-eq v13, v2, :cond_17

    const/4 v2, 0x5

    if-ne v13, v2, :cond_18

    .line 1054
    :cond_17
    const/4 v15, 0x3

    .line 1055
    :cond_18
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(II)V

    goto :goto_6

    .line 1060
    .end local v13    # "lpo":I
    .end local v15    # "onl":I
    :sswitch_4
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(II)V

    goto/16 :goto_6

    .line 1063
    :sswitch_5
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/vkontakte/android/LongPollService;->processTyping(II)V

    goto/16 :goto_6

    .line 1066
    :sswitch_6
    const v2, 0x77359400

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/vkontakte/android/LongPollService;->processTyping(II)V

    goto/16 :goto_6

    .line 1076
    :sswitch_7
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/LongPollService;->processChatChanged(I)V

    goto/16 :goto_6

    .line 1079
    :sswitch_8
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/vkontakte/android/LongPollService;->processReadUpto(IIZ)V

    goto/16 :goto_6

    .line 1082
    :sswitch_9
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v10, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/vkontakte/android/LongPollService;->processReadUpto(IIZ)V

    goto/16 :goto_6

    .line 1085
    :sswitch_a
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/LongPollService;->processUpdateCounter(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 1009
    .end local v10    # "ev":Lorg/json/JSONArray;
    .end local v11    # "evtype":I
    .end local v12    # "i":I
    .end local v16    # "pts":I
    .end local v17    # "r":Lorg/json/JSONObject;
    .end local v19    # "resp":Ljava/lang/String;
    .end local v20    # "u":Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 1034
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0x33 -> :sswitch_7
        0x3d -> :sswitch_5
        0x3e -> :sswitch_6
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method private sendOffline()V
    .locals 9

    .prologue
    .line 1284
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-gtz v1, :cond_0

    .line 1299
    :goto_0
    return-void

    .line 1285
    :cond_0
    const-string v1, "vk"

    const-string v2, "Sending offline."

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0}, Lcom/vkontakte/android/data/Analytics;->getEvents(Ljava/util/ArrayList;)V

    .line 1288
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const-string v3, "API.account.setOffline();API.stats.trackEvents({events:\"%s\"});"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1289
    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, "\\\""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1288
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1290
    new-instance v2, Lcom/vkontakte/android/LongPollService$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$8;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1298
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private sendOnline()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1263
    sget-boolean v1, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "invis"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1281
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    const-string v1, "vk"

    const-string v2, "Sending online."

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1266
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0}, Lcom/vkontakte/android/data/Analytics;->getEvents(Ljava/util/ArrayList;)V

    .line 1268
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const-string v3, "API.account.setOnline({push_count: %d});API.stats.trackEvents({events:\"%s\"});"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 1269
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "push_counter"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, "\\\""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1268
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1270
    new-instance v2, Lcom/vkontakte/android/LongPollService$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$7;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1280
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 498
    const-string v0, "vk_longpoll"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "started = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    if-eqz v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 502
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 508
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    .line 510
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 511
    return-void
.end method

.method public static syncStateWithServer()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 258
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "longpoll"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pts"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 265
    .local v3, "pts":I
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 266
    const-string v5, "vk"

    const-string v6, "No network, won\'t update"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_0
    return-void

    .line 269
    :cond_0
    sput-boolean v9, Lcom/vkontakte/android/LongPollService;->updating:Z

    .line 270
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    .line 271
    const-string v5, "vk_longpoll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Before get long poll history, pts="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    if-gtz v3, :cond_1

    .line 273
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 274
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->resetCache()V

    .line 465
    :goto_1
    sput-boolean v8, Lcom/vkontakte/android/LongPollService;->updating:Z

    .line 466
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    goto :goto_0

    .line 276
    :cond_1
    new-array v2, v9, [I

    .line 277
    .local v2, "maxMid":[I
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "execute.getMaxMsgIdNew"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 278
    new-instance v6, Lcom/vkontakte/android/LongPollService$2;

    invoke-direct {v6, v2}, Lcom/vkontakte/android/LongPollService$2;-><init>([I)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 285
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 286
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getMaxMsgId()I

    move-result v1

    .line 287
    .local v1, "localMaxMid":I
    aget v5, v2, v8

    sub-int v0, v5, v1

    .line 288
    .local v0, "diff":I
    const-string v5, "vk_longpoll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Msg diff="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [server="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/16 v5, 0x3e8

    if-lt v0, v5, :cond_2

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    const v6, 0x1a10c7

    if-eq v5, v6, :cond_2

    .line 290
    const-string v5, "vk_longpoll"

    const-string v6, "Too many new messages, resetting cache"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 292
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->resetCache()V

    .line 293
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 296
    :cond_2
    new-array v4, v9, [Z

    .line 298
    .local v4, "sendNextRequest":[Z
    :cond_3
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "longpoll"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pts"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 299
    const-string v5, "vk_longpoll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Get long poll history, old ts="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "messages.getLongPollHistory"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 301
    const-string v6, "pts"

    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 302
    const-string v6, "photo_sizes"

    invoke-virtual {v5, v6, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 303
    const-string v6, "fields"

    const-string v7, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 304
    const-string v6, "msgs_limit"

    const/16 v7, 0xfa

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 305
    const-string v6, "events_limit"

    const/16 v7, 0x1388

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 307
    new-instance v6, Lcom/vkontakte/android/LongPollService$3;

    invoke-direct {v6, v4}, Lcom/vkontakte/android/LongPollService$3;-><init>([Z)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 461
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 462
    aget-boolean v5, v4, v8

    if-nez v5, :cond_3

    .line 463
    const-string v5, "vk_longpoll"

    const-string v6, "Get long poll hisrory done."

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static updateCounters()V
    .locals 3

    .prologue
    .line 514
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 515
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "execute.getCountersAndInfo"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 516
    new-instance v1, Lcom/vkontakte/android/LongPollService$5;

    invoke-direct {v1}, Lcom/vkontakte/android/LongPollService$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public static updateNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1102
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1103
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1105
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notifySound"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "notifyRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1108
    :cond_0
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notifyVibrate"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1113
    :cond_1
    const/16 v1, 0xa

    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1114
    return-void
.end method

.method public static updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 17
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "chatTitle"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "userPhoto"    # Ljava/lang/String;
    .param p4, "forceSound"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 1117
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1118
    .local v13, "nprefs":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1119
    .local v15, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dnd"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    if-le v1, v2, :cond_0

    .line 1120
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dnd for peer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is active, is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dnd"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :goto_0
    return-void

    .line 1123
    :cond_0
    const-string v1, "dnd_end"

    const-wide/16 v2, 0x0

    invoke-interface {v15, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1124
    const-string v1, "vk"

    const-string v2, "global dnd is active"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1127
    :cond_1
    const-string v1, "notifyTypes"

    const/4 v2, 0x0

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1128
    .local v10, "enabled":Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v1, ";"

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "messages"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1129
    const-string v1, "vk"

    const-string v2, "message notifications disabled"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1132
    :cond_2
    const-string v1, "notifications"

    const/4 v2, 0x1

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1133
    const-string v1, "vk"

    const-string v2, "all notifications disabled"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1136
    :cond_3
    sget-object v1, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getPeerID()I

    move-result v1

    move/from16 v0, p5

    if-ne v1, v0, :cond_4

    .line 1137
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateNotification()V

    goto :goto_0

    .line 1140
    :cond_4
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NumNewMessages="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 1143
    .local v11, "mNotificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v2, "messages"

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 1145
    :cond_5
    sget v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v1, :cond_6

    .line 1146
    const/4 v1, 0x0

    sput v1, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 1147
    const/16 v1, 0xa

    invoke-virtual {v11, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1187
    .end local v11    # "mNotificationManager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v16

    .line 1188
    .local v16, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1153
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v11    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_6
    :try_start_1
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "vkontakte"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1154
    const-string v2, "chat"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1155
    const-string v2, "peer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1156
    const-string v3, "title"

    if-eqz p1, :cond_c

    move-object/from16 v1, p1

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 1157
    .local v8, "bldr":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_7

    .line 1158
    const-string v1, "photo"

    move-object/from16 v0, p3

    invoke-virtual {v8, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1159
    :cond_7
    new-instance v12, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1160
    .local v12, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1161
    const/high16 v1, 0x10000000

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1162
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v12, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1164
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    new-instance v9, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    .local v9, "cancelIntent":Landroid/content/Intent;
    const-string v1, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v9, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 1168
    .local v14, "pendingCancel":Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0801d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1169
    .local v7, "ticker":Ljava/lang/String;
    if-eqz p1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0801d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz p1, :cond_f

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0801d2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lcom/vkontakte/android/LongPollService;->createNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1170
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1171
    const-string v1, "vk_longpoll"

    new-instance v2, Ljava/lang/StringBuilder;

    sget v3, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mute"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez p4, :cond_8

    sget v1, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-ge v1, v2, :cond_b

    .line 1173
    :cond_8
    const-string v1, "notifyRingtone"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1174
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    const-string v2, "notifyRingtone"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1176
    :cond_9
    const-string v1, "notifyVibrate"

    const/4 v2, 0x1

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1177
    :cond_a
    const-string v1, "notifyLED"

    const/4 v2, 0x1

    invoke-interface {v15, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1178
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1179
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1182
    :cond_b
    sget v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v1, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 1183
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    iput v2, v1, Landroid/app/Notification;->number:I

    .line 1184
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iput-object v14, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1185
    const/16 v1, 0xa

    invoke-virtual {v11, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1186
    const/16 v1, 0xa

    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v11, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "ticker":Ljava/lang/String;
    .end local v8    # "bldr":Landroid/net/Uri$Builder;
    .end local v9    # "cancelIntent":Landroid/content/Intent;
    .end local v12    # "notificationIntent":Landroid/content/Intent;
    .end local v14    # "pendingCancel":Landroid/app/PendingIntent;
    :cond_c
    move-object/from16 v1, p2

    .line 1156
    goto/16 :goto_1

    .restart local v6    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v8    # "bldr":Landroid/net/Uri$Builder;
    .restart local v9    # "cancelIntent":Landroid/content/Intent;
    .restart local v12    # "notificationIntent":Landroid/content/Intent;
    .restart local v14    # "pendingCancel":Landroid/app/PendingIntent;
    :cond_d
    move-object/from16 v1, p2

    .line 1168
    goto/16 :goto_2

    .restart local v7    # "ticker":Ljava/lang/String;
    :cond_e
    move-object/from16 v2, p2

    .line 1169
    goto/16 :goto_3

    :cond_f
    const-string v4, " "
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method private updateServerInfo()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    :try_start_0
    sget-boolean v3, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v3, :cond_0

    .line 183
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkontakte/android/Global;->inited:Z

    .line 184
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 185
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sid"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    const-string v3, "uid"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/vkontakte/android/Global;->uid:I

    .line 188
    const-string v3, "sid"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 189
    const-string v3, "secret"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 192
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    .line 196
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v4, "execute"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v4, "code"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "return {c:API.getCounters(),s:API.messages.getLongPollServer({use_ssl:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "useHTTPS"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}),fo:API.friends.getOnline({online_mobile:1})};"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 199
    new-instance v2, Lcom/vkontakte/android/LongPollService$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$1;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 198
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 253
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->syncStateWithServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 197
    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateTabBadge()V
    .locals 3

    .prologue
    .line 645
    sget-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v1, "messages"

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 648
    return-void
.end method


# virtual methods
.method public cancelDelayedStop()V
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    .line 1476
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 1474
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->start()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 1304
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1322
    const-string v0, "vk_longpoll"

    const-string v1, "Starting LongPoll service."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    sput-object p0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 1324
    const-string v0, "longpoll"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "new_system"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    .line 1325
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->start()V

    .line 1326
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1330
    const-string v0, "vk_longpoll"

    const-string v1, "Stopping LongPoll service."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->sendOffline()V

    .line 1332
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 1333
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1309
    const-string v0, "LocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received start id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    const-string v0, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1313
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 669
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "LongPoll"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 670
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-nez v0, :cond_0

    .line 671
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 672
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->runLongPoll()V

    .line 673
    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 675
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    .line 676
    iput-boolean v2, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 677
    return-void
.end method

.method public setNumUnread(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 488
    sput p1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 490
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 491
    sget v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v1, :cond_0

    .line 492
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 493
    .local v0, "mgr":Landroid/app/NotificationManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 495
    .end local v0    # "mgr":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public startSendingOnline()V
    .locals 6

    .prologue
    .line 1246
    new-instance v1, Lcom/vkontakte/android/LongPollService$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$6;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 1253
    .local v1, "tt":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1255
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    .line 1259
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0x1d4c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1260
    return-void

    .line 1256
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopDelayed()V
    .locals 4

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v0, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    .line 1453
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/LongPollService$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$9;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 1459
    const-wide/32 v2, 0x2bf20

    .line 1453
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    goto :goto_0
.end method
