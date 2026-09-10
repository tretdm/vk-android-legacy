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

.field public static final ACTION_TYPING:Ljava/lang/String; = "com.vkontakte.android.TYPING"

.field public static final ACTION_USER_PRESENCE:Ljava/lang/String; = "com.vkontakte.android.USER_PRESENCE"

.field public static final ACTION_VOIP_HANGUP:Ljava/lang/String; = "com.vkontakte.android.VOIP_HANGUP"

.field private static final DEBUG:Z = false

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

.field private static final EVENT_USER_TYPING:I = 0x3d

.field private static final EVENT_VOIP_HANGUP:I = 0x70

.field private static final EVENT_VOIP_INCOMING:I = 0x6e

.field private static final EVENT_VOIP_REPLIED:I = 0x6f

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final EXTRA_PEER_ID:Ljava/lang/String; = "peer_id"

.field public static final EXTRA_READ_STATE:Ljava/lang/String; = "read_state"

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

.field public static final PERMISSION:Ljava/lang/String; = "com.vkontakte.android.permission.ACCESS_DATA"

.field public static addMessage:Ljava/util/concurrent/Semaphore;

.field public static addOwnMessage:Ljava/util/concurrent/Semaphore;

.field public static cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public static cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static cachedKnownUserphotos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static chatTitles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static chatUsers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/UserProfile;",
            ">;>;"
        }
    .end annotation
.end field

.field public static dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field public static receivedCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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


# instance fields
.field private currentIsHttps:Z

.field private key:Ljava/lang/String;

.field lastReqTime:J

.field lpThread:Ljava/lang/Thread;

.field needStop:Z

.field onlineTimer:Ljava/util/Timer;

.field sDelayTimer:Ljava/util/Timer;

.field private server:Ljava/lang/String;

.field private slowMode:Z

.field private started:Z

.field private ts:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 119
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    .line 120
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 121
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 122
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 125
    sput v0, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v0, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sput v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 126
    sput v0, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 127
    sput v0, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 128
    sput-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 133
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedKnownUserphotos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->chatUsers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->chatTitles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    sput-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    sput-object v2, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->receivedCalls:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 131
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 132
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LongPollService;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/LongPollService;Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/vkontakte/android/LongPollService;->currentIsHttps:Z

    return-void
.end method

.method public static checkAndPreload(I)V
    .locals 3
    .param p0, "peerID"    # I

    .prologue
    .line 561
    sget-object v0, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetHistory;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/api/MessagesGetHistory;-><init>(III)V

    .line 563
    new-instance v1, Lcom/vkontakte/android/LongPollService$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$5;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetHistory;->setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 598
    :cond_0
    return-void
.end method

.method private static createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 9
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "expandedTitle"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "photoUrl"    # Ljava/lang/String;
    .param p5, "contentIntent"    # Landroid/app/PendingIntent;

    .prologue
    const v8, 0x7f0201ae

    const/16 v7, 0x32

    const/high16 v6, 0x42800000    # 64.0f

    .line 1015
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1016
    .local v3, "ticker":Ljava/lang/String;
    :goto_0
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 1017
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v8, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1018
    .local v1, "n":Landroid/app/Notification;
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, p1, p0, p5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1048
    .end local v1    # "n":Landroid/app/Notification;
    :goto_1
    return-object v1

    .end local v3    # "ticker":Ljava/lang/String;
    :cond_0
    move-object v3, p0

    .line 1015
    goto :goto_0

    .line 1021
    .restart local v3    # "ticker":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 1022
    .local v2, "photo":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_2

    .line 1023
    invoke-static {p4}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1024
    :cond_2
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1026
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1027
    invoke-virtual {v4, p0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1028
    sget v5, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1029
    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v2, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1030
    invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1031
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1032
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_3

    .line 1041
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1042
    invoke-virtual {v4, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 1043
    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 1044
    invoke-virtual {v4, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 1045
    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    .line 1048
    :cond_3
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1
.end method

.method private getURL(Ljava/lang/String;)[B
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const v11, 0xea60

    const/4 v10, 0x0

    .line 601
    sget-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    if-nez v9, :cond_0

    .line 602
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 603
    .local v1, "hParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 604
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 605
    const/16 v9, 0x2000

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 606
    invoke-static {v1, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 607
    invoke-static {v1, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 608
    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 609
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 610
    .local v6, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v11

    const/16 v12, 0x1bb

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 611
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v11

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 612
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v10, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v10, v1, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v9, v10, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    .line 614
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 616
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v9, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 617
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 618
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 619
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v5, v9, [B

    .line 620
    .local v5, "rd":[B
    const/4 v4, 0x0

    .line 621
    .local v4, "l":I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_1

    .line 622
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 623
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 626
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "rd":[B
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v8

    .line 621
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

    .line 624
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "rd":[B
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method public static logOut(Z)V
    .locals 10
    .param p0, "full"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1130
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "========== LOGOUT! "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v5, :cond_0

    .line 1132
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v5, v8}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 1133
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-direct {v5}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 1136
    :cond_0
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "c2dm_regID"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    .local v1, "oldToken":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1138
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "c2dm_regID"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1139
    new-instance v5, Lcom/vkontakte/android/api/C2DMUnregisterDevice;

    invoke-direct {v5, v1}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;-><init>(Ljava/lang/String;)V

    .line 1140
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->setBackground(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 1141
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1144
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    .line 1146
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1154
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-nez p0, :cond_3

    .line 1155
    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-lez v5, :cond_2

    .line 1156
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "reauth_uid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1157
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1158
    const-string v6, "uid"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1159
    const-string v6, "sid"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1160
    const-string v6, "secret"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1161
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1206
    :goto_0
    return-void

    .line 1165
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1166
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "drafts"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1174
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "posts.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1175
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "friends.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1176
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "dialogs.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1177
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "chats.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1178
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "groups.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1179
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "vk.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1180
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->reset()V

    .line 1181
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 1182
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->reset()V

    .line 1183
    invoke-static {}, Lcom/vkontakte/android/NotificationsView;->reset()V

    .line 1184
    sput-boolean v8, Lcom/vkontakte/android/Global;->inited:Z

    .line 1185
    sput-object v9, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 1187
    sput-object v9, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 1188
    sput v8, Lcom/vkontakte/android/Global;->uid:I

    .line 1189
    sput-object v9, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 1190
    sput v8, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 1191
    sput v8, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 1192
    sput v8, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 1194
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "replies"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1196
    if-eqz p0, :cond_4

    .line 1198
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1199
    .local v0, "am":Landroid/accounts/AccountManager;
    const-string v5, "com.vkontakte.account"

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1203
    .end local v0    # "am":Landroid/accounts/AccountManager;
    :cond_4
    :goto_1
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1204
    .local v3, "prefs1":Landroid/content/SharedPreferences;
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 1200
    .end local v3    # "prefs1":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static onNotificationOpened()V
    .locals 1

    .prologue
    .line 1113
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1114
    return-void
.end method

.method public static onReauthError()V
    .locals 3

    .prologue
    .line 1209
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/vkontakte/android/LongPollService;->logOut(Z)V

    .line 1211
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1212
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1213
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1214
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1215
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1216
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static playNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1052
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1053
    .local v1, "n":Landroid/app/Notification;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1054
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "dnd_end"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1055
    const-string v3, "notifySound"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
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

    .line 1058
    :cond_0
    const-string v3, "notifyVibrate"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 1060
    :cond_1
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1061
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1062
    return-void
.end method

.method private processAddFlags(III)V
    .locals 5
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v4, 0x0

    .line 494
    and-int/lit8 v2, p3, 0x1

    if-lez v2, :cond_2

    .line 495
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v2, "read_state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 498
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 502
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 511
    :cond_1
    invoke-static {p1, v4}, Lcom/vkontakte/android/data/Messages;->setReadState(IZ)V

    .line 513
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eq p2, v2, :cond_2

    .line 514
    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 516
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 519
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    and-int/lit16 v2, p3, 0x80

    if-lez v2, :cond_3

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 524
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 503
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 504
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, p1, :cond_0

    .line 505
    iput-boolean v4, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_0
.end method

.method private processChatChanged(I)V
    .locals 2
    .param p1, "chatID"    # I

    .prologue
    .line 630
    invoke-static {p1}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 631
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.CHAT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    return-void
.end method

.method private processClearFlags(III)V
    .locals 7
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v6, 0x1

    .line 458
    and-int/lit8 v4, p3, 0x1

    if-lez v4, :cond_3

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "msg_id"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 462
    const-string v4, "read_state"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 463
    const-string v4, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v4}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 466
    const/4 v1, 0x0

    .line 468
    .local v1, "isOut":Z
    sget-object v4, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 469
    sget-object v4, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 478
    :cond_1
    invoke-static {p1, v6}, Lcom/vkontakte/android/data/Messages;->setReadState(IZ)V

    .line 480
    if-nez v1, :cond_3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq p2, v4, :cond_3

    .line 481
    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 482
    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-gez v4, :cond_2

    const/4 v4, 0x0

    sput v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 484
    :cond_2
    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v4, :cond_3

    .line 485
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 486
    .local v2, "mgr":Landroid/app/NotificationManager;
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 487
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 491
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isOut":Z
    .end local v2    # "mgr":Landroid/app/NotificationManager;
    :cond_3
    return-void

    .line 469
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "isOut":Z
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 470
    .local v3, "msg":Lcom/vkontakte/android/Message;
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v5, p1, :cond_0

    .line 471
    iput-boolean v6, v3, Lcom/vkontakte/android/Message;->readState:Z

    .line 472
    iget-boolean v1, v3, Lcom/vkontakte/android/Message;->out:Z

    goto :goto_0
.end method

.method private processExtendedMessage(Lorg/json/JSONObject;)V
    .locals 35
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 639
    :try_start_0
    const-string v5, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 640
    .local v17, "jmsg":Lorg/json/JSONObject;
    const-string v5, "out"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/16 v16, 0x1

    .line 641
    .local v16, "isOut":Z
    :goto_0
    if-eqz v16, :cond_0

    .line 643
    :try_start_1
    sget-object v5, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 644
    sget-object v5, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 648
    :cond_0
    :goto_1
    :try_start_2
    sget-object v5, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 649
    sget-object v5, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 651
    :goto_2
    :try_start_3
    const-string v5, "chat_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v5, 0x77359400

    const-string v6, "chat_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    add-int v27, v5, v6

    .line 653
    .local v27, "sender":I
    :goto_3
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .local v20, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v24, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v5, "profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 655
    .local v26, "profiles":Lorg/json/JSONArray;
    if-eqz v26, :cond_1

    .line 656
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v14, v5, :cond_8

    .line 662
    .end local v14    # "i":I
    :cond_1
    new-instance v19, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 664
    .local v19, "msg":Lcom/vkontakte/android/Message;
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v5, :cond_2

    const-string v5, "%act:chat_photo_update"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 665
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    const-string v5, "photo_100"

    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 666
    .local v22, "ph":Ljava/lang/String;
    move-object/from16 v0, v19

    iget v5, v0, Lcom/vkontakte/android/Message;->peer:I

    const v6, 0x77359400

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-static {v5, v6, v7, v0}, Lcom/vkontakte/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 667
    new-instance v15, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.CHAT_CHANGED"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .local v15, "intent":Landroid/content/Intent;
    const-string v5, "id"

    move-object/from16 v0, v19

    iget v6, v0, Lcom/vkontakte/android/Message;->peer:I

    const v7, 0x77359400

    sub-int/2addr v6, v7

    invoke-virtual {v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    const-string v5, "photo"

    move-object/from16 v0, v22

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v22    # "ph":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v5, :cond_3

    const-string v5, "%act:chat_photo_remove"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 673
    move-object/from16 v0, v19

    iget v5, v0, Lcom/vkontakte/android/Message;->peer:I

    const v6, 0x77359400

    sub-int/2addr v5, v6

    new-instance v6, Lcom/vkontakte/android/LongPollService$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/LongPollService$6;-><init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;)V

    invoke-static {v5, v6}, Lcom/vkontakte/android/data/Messages;->getChatUsers(ILcom/vkontakte/android/data/Messages$GetChatUsersCallback;)V

    .line 687
    :cond_3
    const-string v28, ""

    .line 688
    .local v28, "senderPhoto":Ljava/lang/String;
    const/16 v29, 0x0

    .line 690
    .local v29, "senderProfile":Lcom/vkontakte/android/UserProfile;
    const v5, 0x77359400

    move/from16 v0, v27

    if-le v0, v5, :cond_4

    .line 691
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_6
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v14, v5, :cond_b

    .line 697
    .end local v14    # "i":I
    :cond_4
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v33, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    if-eqz v26, :cond_5

    .line 699
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v14, v5, :cond_e

    .line 714
    .end local v14    # "i":I
    :cond_5
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v5, :cond_13

    sget-object v5, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 715
    sget-object v5, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v16    # "isOut":Z
    .end local v17    # "jmsg":Lorg/json/JSONObject;
    .end local v19    # "msg":Lcom/vkontakte/android/Message;
    .end local v20    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v24    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v26    # "profiles":Lorg/json/JSONArray;
    .end local v27    # "sender":I
    .end local v28    # "senderPhoto":Ljava/lang/String;
    .end local v29    # "senderProfile":Lcom/vkontakte/android/UserProfile;
    .end local v33    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_8
    return-void

    .line 640
    .restart local v17    # "jmsg":Lorg/json/JSONObject;
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 651
    .restart local v16    # "isOut":Z
    :cond_7
    const-string v5, "uid"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_3

    .line 657
    .restart local v14    # "i":I
    .restart local v20    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v24    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v26    # "profiles":Lorg/json/JSONArray;
    .restart local v27    # "sender":I
    :cond_8
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 658
    .local v21, "p":Lorg/json/JSONObject;
    const-string v5, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "first_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "last_name"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v5, "uid"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_9

    const-string v5, "photo_medium_rec"

    :goto_9
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 659
    :cond_9
    const-string v5, "photo"

    goto :goto_9

    .line 665
    .end local v14    # "i":I
    .end local v21    # "p":Lorg/json/JSONObject;
    .restart local v19    # "msg":Lcom/vkontakte/android/Message;
    :cond_a
    const-string v5, "photo_50"

    goto/16 :goto_5

    .line 692
    .restart local v14    # "i":I
    .restart local v28    # "senderPhoto":Ljava/lang/String;
    .restart local v29    # "senderProfile":Lcom/vkontakte/android/UserProfile;
    :cond_b
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "uid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    iget v6, v0, Lcom/vkontakte/android/Message;->sender:I

    if-ne v5, v6, :cond_c

    .line 693
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_d

    const-string v5, "photo_medium"

    :goto_a
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 691
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 693
    :cond_d
    const-string v5, "photo"

    goto :goto_a

    .line 700
    .restart local v33    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_e
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 701
    .local v18, "jp":Lorg/json/JSONObject;
    new-instance v21, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 702
    .local v21, "p":Lcom/vkontakte/android/UserProfile;
    const-string v5, "uid"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v21

    iput v5, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 703
    const-string v5, "first_name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 704
    const-string v5, "last_name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 705
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 706
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_10

    const-string v5, "photo_medium"

    :goto_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    iput-object v5, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 707
    const-string v5, "is_friend"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/vkontakte/android/UserProfile;->isFriend:Z

    .line 708
    const-string v5, "sex"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, v21

    iput-boolean v5, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 709
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    move-object/from16 v0, v21

    iget v5, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/vkontakte/android/Message;->sender:I

    if-ne v5, v6, :cond_f

    move-object/from16 v29, v21

    .line 699
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 706
    :cond_10
    const-string v5, "photo"

    goto :goto_b

    .line 707
    :cond_11
    const/4 v5, 0x0

    goto :goto_c

    .line 708
    :cond_12
    const/4 v5, 0x0

    goto :goto_d

    .line 719
    .end local v14    # "i":I
    .end local v18    # "jp":Lorg/json/JSONObject;
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_13
    new-instance v15, Landroid/content/Intent;

    const-string v5, "com.vkontakte.android.NEW_MESSAGE"

    invoke-direct {v15, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .restart local v15    # "intent":Landroid/content/Intent;
    const-string v5, "peer_id"

    move/from16 v0, v27

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    const-string v5, "message"

    move-object/from16 v0, v19

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 722
    const-string v5, "is_out"

    move/from16 v0, v16

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 723
    const-string v5, "sender_photo"

    move-object/from16 v0, v28

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    move-object/from16 v0, v19

    iget v5, v0, Lcom/vkontakte/android/Message;->peer:I

    const v6, 0x77359400

    if-le v5, v6, :cond_1a

    .line 726
    new-instance v25, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v25 .. v25}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 727
    .local v25, "profile":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v19

    iget v5, v0, Lcom/vkontakte/android/Message;->peer:I

    move-object/from16 v0, v25

    iput v5, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 728
    const-string v5, "title"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 729
    const-string v5, "photo_50"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 730
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_14

    const-string v5, "photo_100"

    :goto_e
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 752
    :goto_f
    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    const-string v5, "peer_profile"

    move-object/from16 v0, v25

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 764
    :goto_10
    const-string v5, "sender_profile"

    move-object/from16 v0, v29

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 765
    const-string v5, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 767
    if-eqz v16, :cond_1d

    move-object/from16 v0, v19

    iget v5, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v5}, Lcom/vkontakte/android/cache/Cache;->containsMessage(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 768
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8

    .line 812
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "isOut":Z
    .end local v17    # "jmsg":Lorg/json/JSONObject;
    .end local v19    # "msg":Lcom/vkontakte/android/Message;
    .end local v20    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v24    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v25    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v26    # "profiles":Lorg/json/JSONArray;
    .end local v27    # "sender":I
    .end local v28    # "senderPhoto":Ljava/lang/String;
    .end local v29    # "senderProfile":Lcom/vkontakte/android/UserProfile;
    .end local v33    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v34

    .local v34, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    move-object/from16 v0, v34

    invoke-static {v5, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 730
    .end local v34    # "x":Ljava/lang/Exception;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "isOut":Z
    .restart local v17    # "jmsg":Lorg/json/JSONObject;
    .restart local v19    # "msg":Lcom/vkontakte/android/Message;
    .restart local v20    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v24    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v25    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v26    # "profiles":Lorg/json/JSONArray;
    .restart local v27    # "sender":I
    .restart local v28    # "senderPhoto":Ljava/lang/String;
    .restart local v29    # "senderProfile":Lcom/vkontakte/android/UserProfile;
    .restart local v33    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_14
    :try_start_4
    const-string v5, "photo_50"

    goto :goto_e

    .line 732
    :cond_15
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v23, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "M"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    const-string v5, "chat_active"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 735
    .local v10, "active":[Ljava/lang/String;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 736
    .local v32, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v6, v10

    const/4 v5, 0x0

    :goto_11
    if-lt v5, v6, :cond_17

    .line 745
    :cond_16
    invoke-static/range {v32 .. v32}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    .line 746
    .local v13, "dusers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_19

    .line 749
    const-string v5, "|"

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    iput-object v5, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_f

    .line 736
    .end local v13    # "dusers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_17
    aget-object v30, v10, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 738
    .local v30, "suid":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 739
    .local v31, "uid":I
    sget v7, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v31

    if-eq v0, v7, :cond_18

    .line 740
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_16

    .line 736
    .end local v31    # "uid":I
    :cond_18
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 743
    :catch_1
    move-exception v34

    .restart local v34    # "x":Ljava/lang/Exception;
    :try_start_6
    const-string v7, "vk"

    move-object/from16 v0, v34

    invoke-static {v7, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    .line 746
    .end local v30    # "suid":Ljava/lang/String;
    .end local v34    # "x":Ljava/lang/Exception;
    .restart local v13    # "dusers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/UserProfile;

    .line 747
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 755
    .end local v10    # "active":[Ljava/lang/String;
    .end local v13    # "dusers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v23    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v25    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v32    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1a
    new-instance v25, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v25 .. v25}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 756
    .restart local v25    # "profile":Lcom/vkontakte/android/UserProfile;
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 762
    :goto_14
    const-string v5, "peer_profile"

    move-object/from16 v0, v25

    invoke-virtual {v15, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_10

    .line 756
    :cond_1c
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/vkontakte/android/UserProfile;

    .line 757
    .restart local v21    # "p":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v21

    iget v6, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/vkontakte/android/Message;->peer:I

    if-ne v6, v7, :cond_1b

    .line 758
    move-object/from16 v25, v21

    .line 759
    goto :goto_14

    .line 771
    .end local v21    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1d
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 773
    if-nez v16, :cond_22

    .line 774
    sget v5, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 775
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 777
    sput-object v29, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 778
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    .line 779
    .local v4, "notifyText":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v5, :cond_1f

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    const-string v6, "%act"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 780
    const-string v5, "%act:chat_photo_update"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v29

    iget-boolean v5, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v5, :cond_23

    const v5, 0x7f0601fc

    :goto_15
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v6, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 783
    :cond_1e
    const-string v5, "%act:chat_photo_remove"

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object/from16 v0, v29

    iget-boolean v5, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v5, :cond_24

    const v5, 0x7f06020b

    :goto_16
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, v29

    iget-object v9, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v6, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 787
    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_21

    .line 788
    :cond_20
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2b

    .line 789
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/Attachment;

    .line 790
    .local v11, "att":Lcom/vkontakte/android/Attachment;
    instance-of v5, v11, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v5, :cond_25

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 808
    .end local v11    # "att":Lcom/vkontakte/android/Attachment;
    :cond_21
    :goto_17
    move-object/from16 v0, v19

    iget v5, v0, Lcom/vkontakte/android/Message;->peer:I

    const v6, 0x77359400

    if-le v5, v6, :cond_2c

    const-string v5, "title"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_18
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v0, v19

    iget v9, v0, Lcom/vkontakte/android/Message;->peer:I

    invoke-static/range {v4 .. v9}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 811
    .end local v4    # "notifyText":Ljava/lang/String;
    :cond_22
    invoke-static/range {v33 .. v33}, Lcom/vkontakte/android/cache/Cache;->updatePeers(Ljava/util/ArrayList;)V

    goto/16 :goto_8

    .line 781
    .restart local v4    # "notifyText":Ljava/lang/String;
    :cond_23
    const v5, 0x7f0601fb

    goto/16 :goto_15

    .line 784
    :cond_24
    const v5, 0x7f06020a

    goto :goto_16

    .line 792
    .restart local v11    # "att":Lcom/vkontakte/android/Attachment;
    :cond_25
    instance-of v5, v11, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v5, :cond_26

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 794
    goto :goto_17

    :cond_26
    instance-of v5, v11, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v5, :cond_27

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 796
    goto :goto_17

    :cond_27
    instance-of v5, v11, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v5, :cond_29

    .line 797
    move-object v0, v11

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v12, v0

    .line 798
    .local v12, "da":Lcom/vkontakte/android/DocumentAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, v12, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-nez v5, :cond_28

    const v5, 0x7f0601ba

    :goto_19
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 799
    goto :goto_17

    .line 798
    :cond_28
    const v5, 0x7f060017

    goto :goto_19

    .line 799
    .end local v12    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_29
    instance-of v5, v11, Lcom/vkontakte/android/PostAttachment;

    if-eqz v5, :cond_2a

    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060137

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 801
    goto :goto_17

    :cond_2a
    instance-of v5, v11, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v5, :cond_21

    .line 802
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 804
    goto/16 :goto_17

    .end local v11    # "att":Lcom/vkontakte/android/Attachment;
    :cond_2b
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v5, :cond_21

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_21

    .line 805
    const v5, 0x7f0d001d

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v4

    goto/16 :goto_17

    .line 808
    :cond_2c
    const/4 v5, 0x0

    goto/16 :goto_18

    .line 650
    .end local v4    # "notifyText":Ljava/lang/String;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v19    # "msg":Lcom/vkontakte/android/Message;
    .end local v20    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v24    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v25    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v26    # "profiles":Lorg/json/JSONArray;
    .end local v27    # "sender":I
    .end local v28    # "senderPhoto":Ljava/lang/String;
    .end local v29    # "senderProfile":Lcom/vkontakte/android/UserProfile;
    .end local v33    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_2
    move-exception v5

    goto/16 :goto_2

    .line 645
    :catch_3
    move-exception v5

    goto/16 :goto_1
.end method

.method private processOnlineChange(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "online"    # I

    .prologue
    .line 532
    invoke-static {p1, p2}, Lcom/vkontakte/android/data/Friends;->setOnlineStatus(II)V

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v1, "online"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method private processTyping(II)V
    .locals 2
    .param p1, "peerID"    # I
    .param p2, "userID"    # I

    .prologue
    .line 542
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.TYPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method private runLongPoll()V
    .locals 15

    .prologue
    .line 816
    const-string v11, "vk_longpoll"

    const-string v12, "LongPoll starting"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v11, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-nez v11, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->startSendingOnline()V

    .line 820
    :cond_0
    sget-object v11, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v11, :cond_1

    .line 821
    const-string v11, "vk_longpoll"

    const-string v12, "No user, stopping"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    .line 934
    :goto_0
    return-void

    .line 825
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 826
    const/4 v3, 0x0

    .local v3, "nAttempts":I
    const/4 v8, 0x0

    .line 827
    .local v8, "updateRetries":I
    :cond_2
    :goto_1
    iget-boolean v11, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-eqz v11, :cond_3

    .line 932
    const-string v11, "vk_longpoll"

    const-string v12, "LongPoll exiting"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    new-instance v11, Ljava/lang/Thread;

    invoke-direct {v11, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v11, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 828
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v13, "useHTTPS"

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "https"

    :goto_2
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "://"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?act=a_check&key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&ts="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&wait=25&mode=41"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 830
    .local v9, "url":Ljava/lang/String;
    iget-boolean v11, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v11, :cond_5

    .line 831
    const-string v11, "vk_longpoll"

    const-string v12, "LongPoll STOPPED"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 828
    .end local v9    # "url":Ljava/lang/String;
    :cond_4
    const-string v11, "http"

    goto :goto_2

    .line 834
    .restart local v9    # "url":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v9}, Lcom/vkontakte/android/LongPollService;->getURL(Ljava/lang/String;)[B

    move-result-object v5

    .line 835
    .local v5, "rdata":[B
    iget-boolean v11, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v11, :cond_6

    .line 836
    const-string v11, "vk_longpoll"

    const-string v12, "LongPoll STOPPED"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    :cond_6
    iget-boolean v11, p0, Lcom/vkontakte/android/LongPollService;->currentIsHttps:Z

    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "useHTTPS"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eq v11, v12, :cond_9

    .line 840
    const-string v11, "vk_longpoll"

    const-string v12, "HTTPS setting changed, updating server"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 842
    iget-object v11, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    if-nez v11, :cond_8

    add-int/lit8 v8, v8, 0x1

    .line 844
    :goto_3
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x2

    if-lt v8, v11, :cond_2

    .line 845
    :cond_7
    const-string v11, "vk_longpoll"

    const-string v12, "No network connection, stopping longpoll"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    goto/16 :goto_0

    .line 843
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 851
    :cond_9
    if-nez v5, :cond_c

    .line 852
    const/4 v11, 0x6

    if-lt v3, v11, :cond_b

    .line 853
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v11

    if-nez v11, :cond_a

    .line 854
    const-string v11, "vk_longpoll"

    const-string v12, "No network connection, stopping longpoll"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    goto/16 :goto_0

    .line 858
    :cond_a
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 859
    const/4 v3, 0x0

    .line 860
    const-string v11, "vk_longpoll"

    const-string v12, "6 errors, reloading server info"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 863
    :cond_b
    const-string v11, "vk_longpoll"

    const-string v12, "Connection error. Retry in 5 sec"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-wide/16 v11, 0x1388

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 867
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 868
    goto/16 :goto_1

    .line 870
    :cond_c
    const/4 v11, 0x1

    sput-boolean v11, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 872
    :try_start_1
    new-instance v6, Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-direct {v6, v5, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 873
    .local v6, "resp":Ljava/lang/String;
    invoke-static {v6}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 875
    new-instance v11, Lorg/json/JSONTokener;

    invoke-direct {v11, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 876
    .local v4, "r":Lorg/json/JSONObject;
    const-string v11, "failed"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 877
    const-string v11, "vk_longpoll"

    const-string v12, "Got \'failed\', reloading server info"

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 928
    .end local v4    # "r":Lorg/json/JSONObject;
    .end local v6    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 929
    .local v10, "x":Ljava/lang/Exception;
    const-string v11, "vk_longpoll"

    const-string v12, "Exception while parsing"

    invoke-static {v11, v12, v10}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 881
    .end local v10    # "x":Ljava/lang/Exception;
    .restart local v4    # "r":Lorg/json/JSONObject;
    .restart local v6    # "resp":Ljava/lang/String;
    :cond_d
    :try_start_2
    const-string v11, "ts"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    .line 882
    const-string v11, "longpoll"

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "pts"

    const-string v13, "pts"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 883
    const-string v11, "updates"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 884
    .local v7, "u":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v2, v11, :cond_2

    .line 885
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 886
    .local v0, "ev":Lorg/json/JSONArray;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 887
    .local v1, "evtype":I
    sparse-switch v1, :sswitch_data_0

    .line 924
    const-string v11, "vk_longpoll"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unknown event "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :goto_6
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 892
    :sswitch_1
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-direct {p0, v11, v12, v13}, Lcom/vkontakte/android/LongPollService;->processClearFlags(III)V

    goto :goto_6

    .line 895
    :sswitch_2
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-direct {p0, v11, v12, v13}, Lcom/vkontakte/android/LongPollService;->processAddFlags(III)V

    goto :goto_6

    .line 898
    :sswitch_3
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/vkontakte/android/LongPollService;->processExtendedMessage(Lorg/json/JSONObject;)V

    goto :goto_6

    .line 901
    :sswitch_4
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    neg-int v11, v11

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(II)V

    goto :goto_6

    .line 905
    :sswitch_5
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    neg-int v11, v11

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(II)V

    goto :goto_6

    .line 908
    :sswitch_6
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/vkontakte/android/LongPollService;->processTyping(II)V

    goto :goto_6

    .line 911
    :sswitch_7
    const v11, 0x77359400

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/vkontakte/android/LongPollService;->processTyping(II)V

    goto :goto_6

    .line 921
    :sswitch_8
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/vkontakte/android/LongPollService;->processChatChanged(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 866
    .end local v0    # "ev":Lorg/json/JSONArray;
    .end local v1    # "evtype":I
    .end local v2    # "i":I
    .end local v4    # "r":Lorg/json/JSONObject;
    .end local v6    # "resp":Ljava/lang/String;
    .end local v7    # "u":Lorg/json/JSONArray;
    :catch_1
    move-exception v11

    goto/16 :goto_4

    .line 887
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x33 -> :sswitch_8
        0x3d -> :sswitch_6
        0x3e -> :sswitch_7
        0x65 -> :sswitch_3
    .end sparse-switch
.end method

.method private start()V
    .locals 3

    .prologue
    .line 401
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

    .line 402
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    if-eqz v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 410
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    .line 412
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 413
    return-void
.end method

.method public static syncStateWithServer()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 222
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "longpoll"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pts"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 223
    .local v3, "pts":I
    const-string v5, "vk_longpoll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Before get long poll history, pts="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-lez v3, :cond_0

    .line 225
    new-array v2, v9, [I

    .line 226
    .local v2, "maxMid":[I
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "execute.getMaxMsgIdNew"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 227
    new-instance v6, Lcom/vkontakte/android/LongPollService$2;

    invoke-direct {v6, v2}, Lcom/vkontakte/android/LongPollService$2;-><init>([I)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 234
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 235
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getMaxMsgId()I

    move-result v1

    .line 236
    .local v1, "localMaxMid":I
    aget v5, v2, v8

    sub-int v0, v5, v1

    .line 237
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

    .line 238
    const/16 v5, 0x96

    if-lt v0, v5, :cond_1

    .line 239
    const-string v5, "vk_longpoll"

    const-string v6, "Too many new messages, resetting cache"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 241
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->resetCache()V

    .line 242
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    .end local v0    # "diff":I
    .end local v1    # "localMaxMid":I
    .end local v2    # "maxMid":[I
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local v0    # "diff":I
    .restart local v1    # "localMaxMid":I
    .restart local v2    # "maxMid":[I
    :cond_1
    new-array v4, v9, [Z

    .line 247
    .local v4, "sendNextRequest":[Z
    :cond_2
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "longpoll"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pts"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 248
    const-string v5, "vk_longpoll"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Get long poll history, old ts="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "messages.getLongPollHistory"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v6, "pts"

    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 251
    const-string v6, "photo_sizes"

    invoke-virtual {v5, v6, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 253
    new-instance v6, Lcom/vkontakte/android/LongPollService$3;

    invoke-direct {v6, v4}, Lcom/vkontakte/android/LongPollService$3;-><init>([Z)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    .line 388
    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 389
    aget-boolean v5, v4, v8

    if-nez v5, :cond_2

    .line 390
    const-string v5, "vk_longpoll"

    const-string v6, "Get long poll hisrory done."

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateCounters()V
    .locals 3

    .prologue
    .line 416
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "execute.getCountersAndInfo"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 418
    new-instance v1, Lcom/vkontakte/android/LongPollService$4;

    invoke-direct {v1}, Lcom/vkontakte/android/LongPollService$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public static updateNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 937
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 938
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 940
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notifySound"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
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

    .line 943
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

    .line 948
    :cond_1
    const/16 v1, 0xa

    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 949
    return-void
.end method

.method public static updateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 17
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "chatTitle"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "userPhoto"    # Ljava/lang/String;
    .param p4, "forceSound"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 952
    sget-object v2, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/ChatFragment;->getPeerID()I

    move-result v2

    move/from16 v0, p5

    if-ne v2, v0, :cond_0

    .line 953
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateNotification()V

    .line 1011
    :goto_0
    return-void

    .line 956
    :cond_0
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NumNewMessages="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "notify"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 958
    .local v11, "nprefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dnd"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v15, 0x3e8

    div-long/2addr v3, v15

    long-to-int v3, v3

    if-le v2, v3, :cond_1

    .line 959
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dnd for peer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is active, is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dnd"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v11, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 963
    :cond_1
    :try_start_0
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 964
    .local v9, "mNotificationManager":Landroid/app/NotificationManager;
    sget-object v2, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v3, "messages"

    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v2, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v2}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 966
    :cond_2
    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v2, :cond_3

    .line 967
    const/4 v2, 0x0

    sput v2, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 968
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1008
    .end local v9    # "mNotificationManager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v14

    .line 1009
    .local v14, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 974
    .end local v14    # "x":Ljava/lang/Exception;
    .restart local v9    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_3
    :try_start_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 975
    .local v7, "args":Landroid/os/Bundle;
    const-string v2, "id"

    move/from16 v0, p5

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 976
    const-string v3, "title"

    if-eqz p1, :cond_9

    move-object/from16 v2, p1

    :goto_1
    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 977
    if-eqz p3, :cond_4

    .line 978
    const-string v2, "photo"

    move-object/from16 v0, p3

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 979
    :cond_4
    new-instance v10, Landroid/content/Intent;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v10, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 980
    .local v10, "notificationIntent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "ChatFragment"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    const-string v2, "args"

    invoke-virtual {v10, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 982
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v10, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 984
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v8, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 985
    .local v8, "cancelIntent":Landroid/content/Intent;
    const-string v2, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v8, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 987
    .local v12, "pendingCancel":Landroid/app/PendingIntent;
    const-string v2, "<br>"

    const-string v3, "/"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "ntext":Ljava/lang/String;
    if-eqz p1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz p1, :cond_c

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b9

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v5, v15

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/LongPollService;->createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v2

    sput-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 990
    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 991
    const-string v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 993
    .local v13, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mute"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "dnd_end"

    const-wide/16 v3, 0x0

    invoke-interface {v13, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_8

    if-nez p4, :cond_5

    sget v2, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-ge v2, v3, :cond_8

    .line 994
    :cond_5
    const-string v2, "notifySound"

    const/4 v3, 0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 995
    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    const-string v3, "notifyRingtone"

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 997
    :cond_6
    const-string v2, "notifyVibrate"

    const/4 v3, 0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 998
    :cond_7
    const-string v2, "notifyLED"

    const/4 v3, 0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 999
    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 1000
    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1003
    :cond_8
    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v2, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 1004
    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    iput v3, v2, Landroid/app/Notification;->number:I

    .line 1005
    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iput-object v12, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1006
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1007
    const/16 v2, 0xa

    sget-object v3, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v9, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .end local v1    # "ntext":Ljava/lang/String;
    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "cancelIntent":Landroid/content/Intent;
    .end local v10    # "notificationIntent":Landroid/content/Intent;
    .end local v12    # "pendingCancel":Landroid/app/PendingIntent;
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_9
    move-object/from16 v2, p2

    .line 976
    goto/16 :goto_1

    .restart local v6    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v8    # "cancelIntent":Landroid/content/Intent;
    .restart local v10    # "notificationIntent":Landroid/content/Intent;
    .restart local v12    # "pendingCancel":Landroid/app/PendingIntent;
    :cond_a
    move-object/from16 v2, p2

    .line 988
    goto/16 :goto_2

    .restart local v1    # "ntext":Ljava/lang/String;
    :cond_b
    move-object/from16 v2, p2

    .line 989
    goto/16 :goto_3

    :cond_c
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

    .line 153
    :try_start_0
    sget-boolean v3, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v3, :cond_0

    .line 154
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkontakte/android/Global;->inited:Z

    .line 155
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 156
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sid"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const-string v3, "uid"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/vkontakte/android/Global;->uid:I

    .line 159
    const-string v3, "sid"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 160
    const-string v3, "secret"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 163
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    .line 167
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v4, "execute"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 168
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

    const-string v2, "}),fo:API.friends.getOnline()};"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 170
    new-instance v2, Lcom/vkontakte/android/LongPollService$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$1;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 169
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 217
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->syncStateWithServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 168
    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateTabBadge()V
    .locals 3

    .prologue
    .line 527
    sget-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v1, "messages"

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 529
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 1091
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 1118
    const-string v0, "vk_longpoll"

    const-string v1, "Starting LongPoll service."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    sput-object p0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 1120
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->start()V

    .line 1121
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1125
    const-string v0, "vk_longpoll"

    const-string v1, "Stopping LongPoll service."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 1127
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1096
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

    .line 1106
    const-string v0, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1109
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 550
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "LongPoll"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 551
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 553
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->runLongPoll()V

    .line 554
    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 556
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    .line 557
    iput-boolean v2, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 558
    return-void
.end method

.method public setNormalMode()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 1249
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->start()V

    goto :goto_0
.end method

.method public setNumUnread(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 395
    sput p1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 397
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 398
    return-void
.end method

.method public setSlowMode()V
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 1221
    return-void
.end method

.method public setSlowModeDelayed()V
    .locals 4

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-eqz v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    .line 1228
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/LongPollService$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$8;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 1234
    const-wide/32 v2, 0x2bf20

    .line 1228
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startSendingOnline()V
    .locals 6

    .prologue
    .line 1065
    new-instance v1, Lcom/vkontakte/android/LongPollService$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$7;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 1079
    .local v1, "tt":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    .line 1085
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xdbba0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1086
    return-void

    .line 1082
    :catch_0
    move-exception v0

    goto :goto_0
.end method
