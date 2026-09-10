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

.field private static final EVENT_NOTIFY_SETTINGS:I = 0x72

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

    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->MOBILE_ONLINE_TYPES:[I

    .line 142
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    .line 143
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 144
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 145
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 146
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->updating:Z

    .line 147
    sput-boolean v1, Lcom/vkontakte/android/LongPollService;->connected:Z

    .line 150
    sput v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v1, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sput v1, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 151
    sput v1, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 152
    sput v1, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 153
    sput-object v3, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 157
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    .line 160
    sput-object v3, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    sput-object v3, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    return-void

    .line 114
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

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 72
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needResendOnline:Z

    .line 73
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    .line 156
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/LongPollService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/LongPollService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    return p1
.end method

.method static synthetic access$102(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/LongPollService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/LongPollService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/vkontakte/android/LongPollService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/LongPollService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/LongPollService;->currentIsHttps:Z

    return p1
.end method

.method static synthetic access$402(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 66
    sput-object p0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/LongPollService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/LongPollService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->sendOnline()V

    return-void
.end method

.method static synthetic access$602(Lcom/vkontakte/android/LongPollService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/LongPollService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkontakte/android/LongPollService;->needResendOnline:Z

    return p1
.end method

.method private static broadcastStateChanged()V
    .locals 4

    .prologue
    .line 480
    sget-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 482
    :try_start_0
    sget-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    .line 486
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    .line 487
    sget-object v0, Lcom/vkontakte/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/LongPollService$4;

    invoke-direct {v1}, Lcom/vkontakte/android/LongPollService$4;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 495
    return-void

    .line 483
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static createNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 17
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "expandedTitle"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "photoUrl"    # Ljava/lang/String;
    .param p5, "contentIntent"    # Landroid/app/PendingIntent;
    .param p6, "tickerText"    # Ljava/lang/String;
    .param p7, "peerID"    # I

    .prologue
    .line 1227
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x32

    if-le v13, v14, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    const/16 v15, 0x32

    move-object/from16 v0, p6

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1228
    .local v10, "ticker":Ljava/lang/String;
    :goto_0
    sget-object v13, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/16 v14, 0xb

    if-ge v13, v14, :cond_1

    .line 1229
    new-instance v6, Landroid/app/Notification;

    const v13, 0x7f020152

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v6, v13, v10, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1230
    .local v6, "n":Landroid/app/Notification;
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-virtual {v6, v13, v0, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1288
    .end local v6    # "n":Landroid/app/Notification;
    :goto_1
    return-object v6

    .end local v10    # "ticker":Ljava/lang/String;
    :cond_0
    move-object/from16 v10, p6

    .line 1227
    goto :goto_0

    .line 1233
    .restart local v10    # "ticker":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 1234
    .local v7, "photo":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_3

    .line 1235
    invoke-static/range {p4 .. p4}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1239
    :goto_2
    new-instance v13, Landroid/support/v4/app/RemoteInput$Builder;

    const-string v14, "voice_reply"

    invoke-direct {v13, v14}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const v15, 0x7f0d0261

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v8

    .line 1243
    .local v8, "remoteInput":Landroid/support/v4/app/RemoteInput;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    invoke-virtual {v14}, Ljava/util/Random;->nextInt()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1244
    .local v9, "replyHash":Ljava/lang/String;
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "msg_reply_hash"

    invoke-interface {v13, v14, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1246
    new-instance v12, Landroid/content/Intent;

    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v14, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v12, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1247
    .local v12, "voiceReplyIntent":Landroid/content/Intent;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "vkontakte://reply/?peer="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&hash="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1248
    const/high16 v13, 0x10000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1250
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v15, 0x8000000

    invoke-static {v13, v14, v12, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1252
    .local v11, "voiceReply":Landroid/app/PendingIntent;
    new-instance v13, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v14, 0x7f020171

    sget-object v15, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0d0261

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15, v11}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v13, v8}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v3

    .line 1257
    .local v3, "action":Landroid/support/v4/app/NotificationCompat$Action;
    new-instance v13, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v13}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    invoke-virtual {v13, v3}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v5

    .line 1259
    .local v5, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    const v13, 0x77359400

    move/from16 v0, p7

    if-le v0, v13, :cond_2

    .line 1260
    new-instance v13, Landroid/app/Notification$Builder;

    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 1263
    :cond_2
    new-instance v13, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f020152

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    sget v14, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    const/high16 v14, 0x42800000    # 64.0f

    invoke-static {v14}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v14

    const/high16 v15, 0x42800000    # 64.0f

    invoke-static {v15}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v7, v14, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1272
    .local v4, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_4

    .line 1281
    new-instance v13, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v13, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v6

    goto/16 :goto_1

    .line 1237
    .end local v3    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v4    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v5    # "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .end local v8    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v9    # "replyHash":Ljava/lang/String;
    .end local v11    # "voiceReply":Landroid/app/PendingIntent;
    .end local v12    # "voiceReplyIntent":Landroid/content/Intent;
    :cond_3
    sget-object v13, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0201ec

    invoke-static {v13, v14}, Lcom/vkontakte/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto/16 :goto_2

    .line 1288
    .restart local v3    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .restart local v4    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v5    # "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .restart local v8    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .restart local v9    # "replyHash":Ljava/lang/String;
    .restart local v11    # "voiceReply":Landroid/app/PendingIntent;
    .restart local v12    # "voiceReplyIntent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    goto/16 :goto_1
.end method

.method public static getState()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 169
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 170
    :cond_1
    sget-boolean v1, Lcom/vkontakte/android/LongPollService;->connected:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 171
    :cond_2
    sget-boolean v1, Lcom/vkontakte/android/LongPollService;->updating:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 173
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

    .line 730
    sget-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    if-nez v9, :cond_0

    .line 731
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 732
    .local v1, "hParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 733
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 734
    const/16 v9, 0x2000

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 735
    invoke-static {v1, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 736
    invoke-static {v1, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 737
    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 738
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 739
    .local v6, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v11

    const/16 v12, 0x1bb

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 740
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v11

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 741
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v10, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v10, v1, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v9, v10, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    .line 743
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 745
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v9, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 746
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 747
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 748
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v5, v9, [B

    .line 749
    .local v5, "rd":[B
    const/4 v4, 0x0

    .line 750
    .local v4, "l":I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 753
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "rd":[B
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v9

    .line 755
    :goto_1
    return-object v8

    .line 751
    .restart local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "l":I
    .restart local v5    # "rd":[B
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 752
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_1
.end method

.method public static logOut(ZZ)V
    .locals 11
    .param p0, "full"    # Z
    .param p1, "force"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1395
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "========== LOGOUT! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v5, :cond_0

    .line 1397
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-direct {v5}, Lcom/vkontakte/android/LongPollService;->sendOffline()V

    .line 1398
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v5, v9}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 1399
    sget-object v5, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-direct {v5}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 1402
    :cond_0
    if-nez p1, :cond_3

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eqz v5, :cond_1

    sget-object v5, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1403
    :cond_1
    const-string v5, "vk"

    const-string v6, "Already logged out"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    :cond_2
    :goto_0
    return-void

    .line 1408
    :cond_3
    :try_start_0
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1410
    :goto_1
    sget-object v5, Lcom/vkontakte/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1412
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "c2dm_regID"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1413
    .local v2, "oldToken":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1414
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "c2dm_regID"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1415
    new-instance v5, Lcom/vkontakte/android/api/C2DMUnregisterDevice;

    invoke-direct {v5, v2}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->setBackground(Z)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1420
    :cond_4
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    .line 1422
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1424
    .local v3, "prefs":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v8, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1430
    if-nez p0, :cond_6

    .line 1431
    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-lez v5, :cond_5

    .line 1432
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "reauth_uid"

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1433
    :cond_5
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "uid"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "sid"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "secret"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1438
    sput-object v10, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 1439
    sput v9, Lcom/vkontakte/android/Global;->uid:I

    .line 1440
    sput-object v10, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    goto/16 :goto_0

    .line 1443
    :cond_6
    sput-object v10, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 1444
    sput v9, Lcom/vkontakte/android/Global;->uid:I

    .line 1445
    sput-object v10, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 1447
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1448
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1450
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1451
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "drafts"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1452
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "news"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1453
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "longpoll"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1454
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "stickers"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1462
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "posts.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1463
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "friends.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1464
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "dialogs.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1465
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "chats.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1466
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "groups.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1467
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "vk.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1468
    invoke-static {}, Lcom/vkontakte/android/data/Friends;->reset()V

    .line 1469
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 1470
    invoke-static {}, Lcom/vkontakte/android/data/Groups;->reset()V

    .line 1472
    sput-boolean v9, Lcom/vkontakte/android/Global;->inited:Z

    .line 1473
    sput-object v10, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 1475
    sput v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 1476
    sput v9, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 1477
    sput v9, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 1478
    sget-object v5, Lcom/vkontakte/android/data/Posts;->feed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1479
    const-string v5, "0"

    sput-object v5, Lcom/vkontakte/android/data/Posts;->feedFrom:Ljava/lang/String;

    .line 1480
    sput v9, Lcom/vkontakte/android/data/Posts;->feedItem:I

    .line 1481
    sput v9, Lcom/vkontakte/android/data/Posts;->feedOffset:I

    .line 1482
    sput v9, Lcom/vkontakte/android/data/Posts;->feedItemOffset:I

    .line 1483
    sget-object v5, Lcom/vkontakte/android/data/Posts;->preloadedFeed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1485
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "replies"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1487
    if-eqz p0, :cond_2

    .line 1489
    :try_start_1
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1490
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

    .line 1491
    .end local v0    # "am":Landroid/accounts/AccountManager;
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1409
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
    .line 1376
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1377
    return-void
.end method

.method public static onReauthError()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1496
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1505
    .local v0, "act":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 1497
    .end local v0    # "act":Landroid/app/Activity;
    :cond_1
    invoke-static {v3, v3}, Lcom/vkontakte/android/LongPollService;->logOut(ZZ)V

    .line 1499
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1500
    .restart local v0    # "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1501
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vkontakte/android/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1502
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1503
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1504
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static playNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1292
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1293
    .local v1, "n":Landroid/app/Notification;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1294
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "dnd_end"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1295
    const-string v3, "notifySound"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1296
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

    .line 1298
    :cond_0
    const-string v3, "notifyVibrate"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 1300
    :cond_1
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1301
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1302
    return-void
.end method

.method private processAddFlags(III)V
    .locals 3
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v2, 0x0

    .line 632
    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    if-nez v1, :cond_0

    .line 633
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 634
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    const-string v1, "read_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 636
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 638
    invoke-static {p1, v2}, Lcom/vkontakte/android/data/Messages;->setReadState(IZ)V

    .line 640
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-eq p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    if-nez v1, :cond_0

    .line 641
    sget v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 643
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 646
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    and-int/lit16 v1, p3, 0x80

    if-lez v1, :cond_1

    .line 647
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 648
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 649
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 650
    invoke-static {p1}, Lcom/vkontakte/android/data/Messages;->deleteMessageLocally(I)V

    .line 652
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private processChatChanged(I)V
    .locals 2
    .param p1, "chatID"    # I

    .prologue
    .line 759
    invoke-static {p1}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 760
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.CHAT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 761
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 762
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 763
    return-void
.end method

.method private processClearFlags(III)V
    .locals 20
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    .line 567
    and-int/lit8 v17, p3, 0x1

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 568
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v5, "intent":Landroid/content/Intent;
    const-string v17, "msg_id"

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    const-string v17, "read_state"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    const-string v17, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 574
    const/4 v6, 0x0

    .line 576
    .local v6, "isOut":Z
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkontakte/android/data/Messages;->setReadState(IZ)V

    .line 578
    if-nez v6, :cond_1

    sget v17, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 579
    sget v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v17, v17, -0x1

    sput v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 580
    sget v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-gez v17, :cond_0

    const/16 v17, 0x0

    sput v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 582
    :cond_0
    sget v17, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v17, :cond_1

    .line 583
    const-string v17, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 584
    .local v8, "mgr":Landroid/app/NotificationManager;
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 585
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 589
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "isOut":Z
    .end local v8    # "mgr":Landroid/app/NotificationManager;
    :cond_1
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 590
    const/4 v9, 0x0

    .line 591
    .local v9, "msg":Lcom/vkontakte/android/Message;
    new-instance v4, Lcom/vkontakte/android/APIRequest;

    const-string v17, "messages.getById"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 592
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

    .line 593
    invoke-static {v4}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;

    move-result-object v13

    .line 594
    .local v13, "res":Lorg/json/JSONObject;
    if-eqz v13, :cond_5

    const-string v17, "response"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 596
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

    .line 597
    .local v7, "jmsg":Lorg/json/JSONObject;
    new-instance v9, Lcom/vkontakte/android/Message;

    .end local v9    # "msg":Lcom/vkontakte/android/Message;
    invoke-direct {v9, v7}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .restart local v9    # "msg":Lcom/vkontakte/android/Message;
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.vkontakte.android.NEW_MESSAGE"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
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

    .line 608
    iget-object v0, v9, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "action_mid"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 609
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

    .line 610
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

    .line 611
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

    .line 613
    .end local v3    # "actMid":I
    .end local v15    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v10, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v0, v9, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-static {v10}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/UserProfile;

    .line 616
    .local v14, "senderProfile":Lcom/vkontakte/android/UserProfile;
    const-string v17, "sender_profile"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 617
    const-string v17, "peer_id"

    iget v0, v9, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v17, "message"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 619
    const-string v17, "is_out"

    iget-boolean v0, v9, Lcom/vkontakte/android/Message;->out:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    const-string v17, "sender_photo"

    iget-object v0, v14, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const/4 v11, 0x0

    .line 622
    .local v11, "peerProfile":Lcom/vkontakte/android/UserProfile;
    iget v0, v9, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v17, v0

    const v18, 0x77359400

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    .line 623
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

    .line 624
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

    .line 626
    .end local v12    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    iget-object v0, v14, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v9, v11, v0}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 627
    const-string v17, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 629
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

    .line 598
    .restart local v4    # "getMsg":Lcom/vkontakte/android/APIRequest;
    .restart local v13    # "res":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    .line 599
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 603
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
    .line 768
    and-int/lit8 v3, p3, 0x2

    if-lez v3, :cond_5

    const/4 v15, 0x1

    .line 769
    .local v15, "isOut":Z
    :goto_0
    if-eqz v15, :cond_0

    .line 771
    :try_start_0
    sget-object v3, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 772
    sget-object v3, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 776
    :cond_0
    :goto_1
    :try_start_1
    sget-object v3, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 777
    sget-object v3, Lcom/vkontakte/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    :goto_2
    const v3, 0x77359400

    move/from16 v0, p2

    if-ge v0, v3, :cond_7

    .line 782
    if-eqz v15, :cond_6

    :try_start_2
    sget v22, Lcom/vkontakte/android/Global;->uid:I

    .line 786
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

    .line 788
    :cond_1
    new-instance v12, Lcom/vkontakte/android/APIRequest;

    const-string v3, "messages.getById"

    invoke-direct {v12, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 789
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

    .line 790
    invoke-static {v12}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;

    move-result-object v21

    .line 791
    .local v21, "res":Lorg/json/JSONObject;
    if-eqz v21, :cond_8

    const-string v3, "response"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 792
    const-string v3, "response"

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v3

    iget-object v3, v3, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 793
    .local v16, "jmsg":Lorg/json/JSONObject;
    new-instance v17, Lcom/vkontakte/android/Message;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 826
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

    .line 827
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 829
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

    .line 830
    sget-object v3, Lcom/vkontakte/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    .end local v17    # "msg":Lcom/vkontakte/android/Message;
    .end local v22    # "sender":I
    :cond_4
    :goto_5
    return-void

    .line 768
    .end local v15    # "isOut":Z
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_0

    .restart local v15    # "isOut":Z
    :cond_6
    move/from16 v22, p2

    .line 782
    goto/16 :goto_3

    .line 784
    :cond_7
    const-string v3, "from"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .restart local v22    # "sender":I
    goto/16 :goto_3

    .line 795
    .restart local v12    # "getMsg":Lcom/vkontakte/android/APIRequest;
    .restart local v21    # "res":Lorg/json/JSONObject;
    :cond_8
    const-string v3, "vk_longpoll"

    const-string v4, "Error getting full message"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 911
    .end local v12    # "getMsg":Lcom/vkontakte/android/APIRequest;
    .end local v21    # "res":Lorg/json/JSONObject;
    .end local v22    # "sender":I
    :catch_0
    move-exception v26

    .line 912
    .local v26, "x":Ljava/lang/Exception;
    const-string v3, "vk_longpoll"

    const-string v4, "Error processing message"

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 799
    .end local v26    # "x":Ljava/lang/Exception;
    .restart local v22    # "sender":I
    :cond_9
    :try_start_3
    new-instance v17, Lcom/vkontakte/android/Message;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/Message;-><init>()V

    .line 800
    .restart local v17    # "msg":Lcom/vkontakte/android/Message;
    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Message;->peer:I

    .line 801
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Message;->sender:I

    .line 802
    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 803
    move/from16 v0, p4

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Message;->time:I

    .line 804
    move/from16 v0, p1

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/Message;->id:I

    .line 805
    move-object/from16 v0, v17

    iput-boolean v15, v0, Lcom/vkontakte/android/Message;->out:Z

    .line 806
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 807
    const v3, 0x77359400

    move/from16 v0, p2

    if-le v0, v3, :cond_a

    .line 808
    move-object/from16 v0, p6

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 809
    :cond_a
    if-eqz p7, :cond_2

    .line 810
    const-string v3, "source_act"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 811
    const-string v3, "source_act"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 812
    .local v8, "act":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v3, "chat_invite_user"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "chat_kick_user"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 814
    :cond_b
    const-string v3, "source_mid"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 815
    .local v24, "uid":I
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_mid"

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 817
    .end local v24    # "uid":I
    :cond_c
    const-string v3, "source_text"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 818
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_text"

    const-string v5, "source_text"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    :cond_d
    const-string v3, "source_email"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 821
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_email"

    const-string v5, "source_email"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 834
    .end local v8    # "act":Ljava/lang/String;
    :cond_e
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.NEW_MESSAGE"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
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

    .line 836
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action_mid"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 837
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

    .line 838
    .local v25, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v4, "action_user_name_acc"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/UserProfile;

    iget-object v3, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v13, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
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

    .line 842
    .end local v9    # "actMid":I
    .end local v25    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_f
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 843
    .local v18, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UserProfile;

    .line 845
    .local v23, "senderProfile":Lcom/vkontakte/android/UserProfile;
    const-string v3, "sender_profile"

    move-object/from16 v0, v23

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 846
    const-string v3, "peer_id"

    move/from16 v0, p2

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    const-string v3, "message"

    move-object/from16 v0, v17

    invoke-virtual {v13, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 848
    const-string v3, "is_out"

    invoke-virtual {v13, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 849
    const-string v3, "sender_photo"

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    const/16 v19, 0x0

    .line 851
    .local v19, "peerProfile":Lcom/vkontakte/android/UserProfile;
    const v3, 0x77359400

    move/from16 v0, p2

    if-ge v0, v3, :cond_10

    .line 852
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

    .line 853
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

    .line 856
    .end local v20    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_10
    if-eqz v15, :cond_11

    move-object/from16 v0, v17

    iget v3, v0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->containsMessage(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 857
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 860
    :cond_11
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/data/Messages;->add(Lcom/vkontakte/android/Message;Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)V

    .line 862
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 863
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_12

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v4, "action"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 864
    const v3, 0x77359400

    sub-int v3, p2, v3

    invoke-static {v3}, Lcom/vkontakte/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 865
    new-instance v14, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.CHAT_CHANGED"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 866
    .local v14, "intent1":Landroid/content/Intent;
    const-string v3, "id"

    move-object/from16 v0, v17

    iget v4, v0, Lcom/vkontakte/android/Message;->peer:I

    const v5, 0x77359400

    sub-int/2addr v4, v5

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 868
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;)V

    .line 869
    const-string v3, "chat_title_update"

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 870
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

    .line 874
    .end local v14    # "intent1":Landroid/content/Intent;
    :cond_12
    if-nez v15, :cond_4

    .line 875
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    if-nez v3, :cond_13

    .line 876
    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 877
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 880
    :cond_13
    sput-object v23, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 881
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    .line 882
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

    .line 883
    const-string v3, "action_user_name_acc"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/Message;->getServiceMessageText(Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 885
    :cond_14
    if-eqz v2, :cond_15

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_16

    .line 886
    :cond_15
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 887
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/Attachment;

    .line 888
    .local v10, "att":Lcom/vkontakte/android/Attachment;
    instance-of v3, v10, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v3, :cond_17

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 908
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

    .line 890
    .restart local v10    # "att":Lcom/vkontakte/android/Attachment;
    :cond_17
    instance-of v3, v10, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v3, :cond_18

    .line 891
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0356

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 892
    :cond_18
    instance-of v3, v10, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v3, :cond_19

    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 894
    :cond_19
    instance-of v3, v10, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v3, :cond_1b

    .line 895
    move-object v0, v10

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v11, v0

    .line 896
    .local v11, "da":Lcom/vkontakte/android/DocumentAttachment;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v3, v11, Lcom/vkontakte/android/DocumentAttachment;->url:Ljava/lang/String;

    if-nez v3, :cond_1a

    const v3, 0x7f0d0121

    :goto_8
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 897
    goto :goto_6

    .line 896
    :cond_1a
    const v3, 0x7f0d00ae

    goto :goto_8

    .line 897
    .end local v11    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_1b
    instance-of v3, v10, Lcom/vkontakte/android/PostAttachment;

    if-eqz v3, :cond_1c

    .line 898
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 899
    :cond_1c
    instance-of v3, v10, Lcom/vkontakte/android/GeoAttachment;

    if-eqz v3, :cond_1d

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01fb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    .line 901
    :cond_1d
    instance-of v3, v10, Lcom/vkontakte/android/StickerAttachment;

    if-eqz v3, :cond_16

    .line 902
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0305

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    .line 904
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

    .line 905
    const v3, 0x7f070034

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

    .line 908
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 778
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

    .line 773
    :catch_2
    move-exception v3

    goto/16 :goto_1
.end method

.method private processNotifySettings(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "settings"    # Lorg/json/JSONObject;

    .prologue
    const v9, 0x77359400

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 943
    :try_start_0
    const-string v7, "peer_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 944
    .local v3, "peer":I
    const-string v7, "sound"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v2, :cond_2

    .line 945
    .local v2, "mute":Z
    :goto_0
    const-string v6, "disabled_until"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 946
    .local v0, "dnd":I
    const-string v6, "notify"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 947
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    const v0, 0x7fffffff

    .line 948
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dnd"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 949
    if-le v3, v9, :cond_1

    .line 950
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.vkontakte.android.CHAT_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "id"

    sub-int v7, v3, v9

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 952
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    .end local v0    # "dnd":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mute":Z
    .end local v3    # "peer":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    :goto_1
    return-void

    .restart local v3    # "peer":I
    :cond_2
    move v2, v6

    .line 944
    goto :goto_0

    .line 954
    .end local v3    # "peer":I
    :catch_0
    move-exception v5

    .line 955
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processOnlineChange(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "online"    # I

    .prologue
    .line 661
    invoke-static {p1, p2}, Lcom/vkontakte/android/data/Friends;->setOnlineStatus(II)V

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.USER_PRESENCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    const-string v1, "online"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method private processReadUpto(IIZ)V
    .locals 3
    .param p1, "peerID"    # I
    .param p2, "msgID"    # I
    .param p3, "in"    # Z

    .prologue
    const/4 v2, 0x1

    .line 916
    if-nez p3, :cond_0

    .line 918
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 919
    sget-object v1, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/vkontakte/android/data/Messages;->setReadStateUpto(IIZ)V

    .line 923
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "msg_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    const-string v1, "read_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 926
    const-string v1, "peer_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 927
    const-string v1, "in"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 928
    const-string v1, "le"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 929
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 930
    return-void

    .line 920
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
    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.TYPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method private processUpdateCounter(I)V
    .locals 3
    .param p1, "counter"    # I

    .prologue
    const/4 v2, 0x1

    .line 933
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    if-nez v0, :cond_0

    .line 934
    iput-boolean v2, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    .line 935
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

    .line 937
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 938
    return-void
.end method

.method private runLongPoll()V
    .locals 24

    .prologue
    .line 960
    const-string v2, "vk_longpoll"

    const-string v3, "LongPoll starting"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 962
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->startSendingOnline()V

    .line 964
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

    .line 965
    :cond_1
    const-string v2, "vk_longpoll"

    const-string v3, "No user, stopping"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    .line 1131
    :goto_0
    return-void

    .line 969
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 970
    const/4 v14, 0x0

    .local v14, "nAttempts":I
    const/16 v21, 0x0

    .line 973
    .local v21, "updateRetries":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-nez v2, :cond_18

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 975
    :cond_4
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    .line 976
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    .line 977
    const-string v2, "vk_longpoll"

    const-string v3, "no server info, force updating"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 979
    add-int/lit8 v21, v21, 0x1

    .line 980
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, v21

    if-lt v0, v2, :cond_3

    .line 981
    :cond_5
    const/16 v21, 0x0

    .line 982
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    goto :goto_0

    .line 988
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "useHTTPS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "https"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v3, "&wait=25&mode=106"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 990
    .local v22, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v2, :cond_8

    .line 991
    const-string v2, "vk_longpoll"

    const-string v3, "LongPoll STOPPED"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 988
    .end local v22    # "url":Ljava/lang/String;
    :cond_7
    const-string v2, "http"

    goto :goto_2

    .line 995
    .restart local v22    # "url":Ljava/lang/String;
    :cond_8
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    if-nez v2, :cond_9

    .line 996
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    .line 997
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    .line 999
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/vkontakte/android/LongPollService;->getURL(Ljava/lang/String;)[B

    move-result-object v18

    .line 1000
    .local v18, "rdata":[B
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v2, :cond_a

    .line 1001
    const-string v2, "vk_longpoll"

    const-string v3, "LongPoll STOPPED"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->currentIsHttps:Z

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "useHTTPS"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v2, v3, :cond_d

    .line 1006
    const-string v2, "vk_longpoll"

    const-string v3, "HTTPS setting changed, updating server"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 1008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    if-nez v2, :cond_c

    add-int/lit8 v21, v21, 0x1

    .line 1010
    :goto_3
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    move/from16 v0, v21

    if-lt v0, v2, :cond_3

    .line 1011
    :cond_b
    const-string v2, "vk_longpoll"

    const-string v3, "No network connection, stopping longpoll"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    goto/16 :goto_0

    .line 1009
    :cond_c
    const/16 v21, 0x0

    goto :goto_3

    .line 1018
    :cond_d
    if-nez v18, :cond_11

    .line 1019
    sget-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    if-eqz v2, :cond_e

    .line 1020
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->connected:Z

    .line 1021
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    .line 1023
    :cond_e
    const/4 v2, 0x6

    if-lt v14, v2, :cond_10

    .line 1024
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1025
    const-string v2, "vk_longpoll"

    const-string v3, "No network connection, stopping longpoll"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    goto/16 :goto_0

    .line 1030
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 1031
    const/4 v14, 0x0

    .line 1032
    const-string v2, "vk_longpoll"

    const-string v3, "6 errors, reloading server info"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1035
    :cond_10
    const-string v2, "vk_longpoll"

    const-string v3, "Connection error. Retry in 5 sec"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1039
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 1040
    goto/16 :goto_1

    .line 1042
    :cond_11
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 1044
    :try_start_1
    new-instance v19, Ljava/lang/String;

    const-string v2, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1045
    .local v19, "resp":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1047
    new-instance v2, Lorg/json/JSONTokener;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 1048
    .local v17, "r":Lorg/json/JSONObject;
    const-string v2, "failed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1049
    const-string v2, "vk_longpoll"

    const-string v3, "Got \'failed\', reloading server info"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1124
    .end local v17    # "r":Lorg/json/JSONObject;
    .end local v19    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 1125
    .local v23, "x":Ljava/lang/Exception;
    const-string v2, "vk_longpoll"

    const-string v3, "Exception while parsing"

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1053
    .end local v23    # "x":Ljava/lang/Exception;
    .restart local v17    # "r":Lorg/json/JSONObject;
    .restart local v19    # "resp":Ljava/lang/String;
    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkontakte/android/LongPollService;->needResendOnline:Z

    if-eqz v2, :cond_13

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->sendOnline()V

    .line 1055
    :cond_13
    const-string v2, "ts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkontakte/android/LongPollService;->ts:I

    .line 1056
    const-string v2, "pts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1057
    .local v16, "pts":I
    if-lez v16, :cond_14

    .line 1058
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

    .line 1059
    :cond_14
    const-string v2, "updates"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1060
    .local v20, "u":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 1061
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v10

    .line 1062
    .local v10, "ev":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    .line 1063
    .local v11, "evtype":I
    sparse-switch v11, :sswitch_data_0

    .line 1120
    const-string v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1065
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

    .line 1068
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

    .line 1071
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

    .line 1078
    :sswitch_3
    const/4 v15, 0x1

    .line 1079
    .local v15, "onl":I
    const/4 v2, 0x2

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    and-int/lit16 v13, v2, 0xff

    .line 1080
    .local v13, "lpo":I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_15

    .line 1081
    const/4 v15, 0x2

    .line 1082
    :cond_15
    const/4 v2, 0x4

    if-eq v13, v2, :cond_16

    const/4 v2, 0x2

    if-eq v13, v2, :cond_16

    const/4 v2, 0x3

    if-eq v13, v2, :cond_16

    const/4 v2, 0x5

    if-ne v13, v2, :cond_17

    .line 1083
    :cond_16
    const/4 v15, 0x3

    .line 1084
    :cond_17
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(II)V

    goto :goto_6

    .line 1089
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

    .line 1092
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

    .line 1095
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

    .line 1105
    :sswitch_7
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/LongPollService;->processChatChanged(I)V

    goto/16 :goto_6

    .line 1108
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

    .line 1111
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

    .line 1114
    :sswitch_a
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/LongPollService;->processUpdateCounter(I)V

    goto/16 :goto_6

    .line 1117
    :sswitch_b
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkontakte/android/LongPollService;->processNotifySettings(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 1128
    .end local v10    # "ev":Lorg/json/JSONArray;
    .end local v11    # "evtype":I
    .end local v12    # "i":I
    .end local v16    # "pts":I
    .end local v17    # "r":Lorg/json/JSONObject;
    .end local v18    # "rdata":[B
    .end local v19    # "resp":Ljava/lang/String;
    .end local v20    # "u":Lorg/json/JSONArray;
    .end local v22    # "url":Ljava/lang/String;
    :cond_18
    const-string v2, "vk_longpoll"

    const-string v3, "LongPoll exiting"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1038
    .restart local v18    # "rdata":[B
    .restart local v22    # "url":Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 1063
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
        0x72 -> :sswitch_b
    .end sparse-switch
.end method

.method private sendOffline()V
    .locals 9

    .prologue
    .line 1343
    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-gtz v1, :cond_0

    .line 1358
    :goto_0
    return-void

    .line 1344
    :cond_0
    const-string v1, "vk"

    const-string v2, "Sending offline."

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0}, Lcom/vkontakte/android/data/Analytics;->getEvents(Ljava/util/ArrayList;)V

    .line 1347
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const-string v3, "API.account.setOffline();API.stats.trackEvents({events:\"[%s]\"});"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ","

    invoke-static {v6, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, "\\\""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/LongPollService$8;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$8;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private sendOnline()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 1322
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

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    const-string v1, "vk"

    const-string v2, "Sending online."

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1325
    .local v0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0}, Lcom/vkontakte/android/data/Analytics;->getEvents(Ljava/util/ArrayList;)V

    .line 1327
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    const-string v3, "API.account.setOnline({push_count: %d});API.stats.trackEvents({events:\"[%s]\"});"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

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

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/LongPollService$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$7;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 508
    const-string v0, "vk_longpoll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    if-eqz v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 510
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 512
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 518
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    .line 520
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 521
    return-void
.end method

.method public static syncStateWithServer()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 254
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "longpoll"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pts"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 261
    .local v3, "pts":I
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    const-string v5, "vk"

    const-string v6, "No network, won\'t update"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 265
    :cond_0
    sput-boolean v9, Lcom/vkontakte/android/LongPollService;->updating:Z

    .line 266
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    .line 267
    const-string v5, "vk_longpoll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before get long poll history, pts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-gtz v3, :cond_1

    .line 269
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 270
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->resetCache()V

    .line 475
    :goto_1
    sput-boolean v8, Lcom/vkontakte/android/LongPollService;->updating:Z

    .line 476
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->broadcastStateChanged()V

    goto :goto_0

    .line 272
    :cond_1
    new-array v2, v9, [I

    .line 273
    .local v2, "maxMid":[I
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "execute.getMaxMsgIdNew"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vkontakte/android/LongPollService$2;

    invoke-direct {v6, v2}, Lcom/vkontakte/android/LongPollService$2;-><init>([I)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 282
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getMaxMsgId()I

    move-result v1

    .line 283
    .local v1, "localMaxMid":I
    aget v5, v2, v8

    sub-int v0, v5, v1

    .line 284
    .local v0, "diff":I
    const-string v5, "vk_longpoll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msg diff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    .line 285
    const/16 v5, 0x3e8

    if-lt v0, v5, :cond_2

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    const v6, 0x1a10c7

    if-eq v5, v6, :cond_2

    .line 286
    const-string v5, "vk_longpoll"

    const-string v6, "Too many new messages, resetting cache"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->reset()V

    .line 288
    invoke-static {}, Lcom/vkontakte/android/data/Messages;->resetCache()V

    .line 289
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 292
    :cond_2
    new-array v4, v9, [Z

    aput-boolean v8, v4, v8

    .line 294
    .local v4, "sendNextRequest":[Z
    :cond_3
    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v6, "longpoll"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "pts"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 295
    const-string v5, "vk_longpoll"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get long poll history, old ts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v5, Lcom/vkontakte/android/APIRequest;

    const-string v6, "messages.getLongPollHistory"

    invoke-direct {v5, v6}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v6, "pts"

    invoke-virtual {v5, v6, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    const-string v6, "photo_sizes"

    invoke-virtual {v5, v6, v9}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    const-string v6, "fields"

    const-string v7, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    const-string v6, "msgs_limit"

    const/16 v7, 0xfa

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    const-string v6, "events_limit"

    const/16 v7, 0x1388

    invoke-virtual {v5, v6, v7}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/LongPollService$3;

    invoke-direct {v6, v4}, Lcom/vkontakte/android/LongPollService$3;-><init>([Z)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 472
    aget-boolean v5, v4, v8

    if-nez v5, :cond_3

    .line 473
    const-string v5, "vk_longpoll"

    const-string v6, "Get long poll hisrory done."

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static updateCounters()V
    .locals 3

    .prologue
    .line 524
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 525
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "execute.getCountersAndInfo"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkontakte/android/LongPollService$5;

    invoke-direct {v1}, Lcom/vkontakte/android/LongPollService$5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public static updateNotification()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1134
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1135
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1137
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "notifySound"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1138
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

    .line 1140
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

    .line 1145
    :cond_1
    const/16 v1, 0xa

    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1146
    return-void
.end method

.method public static updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 18
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "chatTitle"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "userPhoto"    # Ljava/lang/String;
    .param p4, "forceSound"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 1149
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "notify"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1150
    .local v14, "nprefs":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1151
    .local v16, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dnd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    if-le v1, v2, :cond_0

    .line 1152
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dnd for peer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is active, is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dnd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v14, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    :goto_0
    return-void

    .line 1155
    :cond_0
    const-string v1, "dnd_end"

    const-wide/16 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1156
    const-string v1, "vk"

    const-string v2, "global dnd is active"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1159
    :cond_1
    const-string v1, "notifyTypes"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1160
    .local v11, "enabled":Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v1, ";"

    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "messages"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1161
    const-string v1, "vk"

    const-string v2, "message notifications disabled"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1164
    :cond_2
    const-string v1, "notifications"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1165
    const-string v1, "vk"

    const-string v2, "all notifications disabled"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1168
    :cond_3
    sget-object v1, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/vkontakte/android/fragments/ChatFragment;->activeInstance:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/ChatFragment;->getPeerID()I

    move-result v1

    move/from16 v0, p5

    if-ne v1, v0, :cond_4

    .line 1169
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->updateNotification()V

    goto :goto_0

    .line 1172
    :cond_4
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumNewMessages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 1175
    .local v12, "mNotificationManager":Landroid/app/NotificationManager;
    sget-object v1, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v2, "messages"

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v1}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 1177
    :cond_5
    sget v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v1, :cond_6

    .line 1178
    const/4 v1, 0x0

    sput v1, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 1179
    const/16 v1, 0xa

    invoke-virtual {v12, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1220
    .end local v12    # "mNotificationManager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v17

    .line 1221
    .local v17, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1185
    .end local v17    # "x":Ljava/lang/Exception;
    .restart local v12    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_6
    :try_start_1
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "vkontakte"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "chat"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "peer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "title"

    if-eqz p1, :cond_c

    move-object/from16 v1, p1

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 1189
    .local v9, "bldr":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_7

    .line 1190
    const-string v1, "photo"

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1191
    :cond_7
    new-instance v13, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v13, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1192
    .local v13, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1193
    const/high16 v1, 0x10000000

    invoke-virtual {v13, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1194
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v13, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1196
    .local v6, "contentIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1197
    .local v10, "cancelIntent":Landroid/content/Intent;
    const-string v1, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v10, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1200
    .local v15, "pendingCancel":Landroid/app/PendingIntent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1201
    .local v7, "ticker":Ljava/lang/String;
    if-eqz p1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ba

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

    const v3, 0x7f0d01bb

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

    move/from16 v8, p5

    invoke-static/range {v1 .. v8}, Lcom/vkontakte/android/LongPollService;->createNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1202
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1203
    const-string v1, "vk_longpoll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez p4, :cond_8

    sget v1, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-ge v1, v2, :cond_b

    .line 1205
    :cond_8
    const-string v1, "notifyRingtone"

    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 1206
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    const-string v2, "notifyRingtone"

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1208
    :cond_9
    const-string v1, "notifyVibrate"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1209
    :cond_a
    const-string v1, "notifyLED"

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1210
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1211
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1214
    :cond_b
    sget v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v1, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 1215
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    iput v2, v1, Landroid/app/Notification;->number:I

    .line 1216
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iput-object v15, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1218
    const/16 v1, 0xa

    invoke-virtual {v12, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1219
    const/16 v1, 0xa

    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v12, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .end local v6    # "contentIntent":Landroid/app/PendingIntent;
    .end local v7    # "ticker":Ljava/lang/String;
    .end local v9    # "bldr":Landroid/net/Uri$Builder;
    .end local v10    # "cancelIntent":Landroid/content/Intent;
    .end local v13    # "notificationIntent":Landroid/content/Intent;
    .end local v15    # "pendingCancel":Landroid/app/PendingIntent;
    :cond_c
    move-object/from16 v1, p2

    .line 1185
    goto/16 :goto_1

    .restart local v6    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v9    # "bldr":Landroid/net/Uri$Builder;
    .restart local v10    # "cancelIntent":Landroid/content/Intent;
    .restart local v13    # "notificationIntent":Landroid/content/Intent;
    .restart local v15    # "pendingCancel":Landroid/app/PendingIntent;
    :cond_d
    move-object/from16 v1, p2

    .line 1200
    goto/16 :goto_2

    .restart local v7    # "ticker":Ljava/lang/String;
    :cond_e
    move-object/from16 v2, p2

    .line 1201
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

    .line 178
    :try_start_0
    sget-boolean v3, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v3, :cond_0

    .line 179
    const/4 v3, 0x1

    sput-boolean v3, Lcom/vkontakte/android/Global;->inited:Z

    .line 180
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 181
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 182
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "sid"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const-string v3, "uid"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/vkontakte/android/Global;->uid:I

    .line 184
    const-string v3, "sid"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 185
    const-string v3, "secret"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 188
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    .line 192
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    const-string v4, "execute"

    invoke-direct {v3, v4}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "return {c:API.getCounters(),s:API.messages.getLongPollServer({use_ssl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

    new-instance v2, Lcom/vkontakte/android/LongPollService$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$1;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 249
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->syncStateWithServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 192
    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private updateTabBadge()V
    .locals 3

    .prologue
    .line 655
    sget-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v1, "messages"

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 658
    return-void
.end method


# virtual methods
.method public cancelDelayedStop()V
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1525
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 1533
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
    .line 1363
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1381
    const-string v0, "vk_longpoll"

    const-string v1, "Starting LongPoll service."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    sput-object p0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 1383
    const-string v0, "longpoll"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "new_system"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->newSystem:Z

    .line 1384
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->start()V

    .line 1385
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1389
    const-string v0, "vk_longpoll"

    const-string v1, "Stopping LongPoll service."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->sendOffline()V

    .line 1391
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 1392
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1368
    const-string v0, "LocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 1369
    const-string v0, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1372
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 679
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "LongPoll"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 680
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 682
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->runLongPoll()V

    .line 683
    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    sput-boolean v2, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 685
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    .line 686
    iput-boolean v2, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 687
    return-void
.end method

.method public setNumUnread(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 498
    sput p1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 500
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 501
    sget v1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v1, :cond_0

    .line 502
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 503
    .local v0, "mgr":Landroid/app/NotificationManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 505
    .end local v0    # "mgr":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public startSendingOnline()V
    .locals 6

    .prologue
    .line 1305
    new-instance v1, Lcom/vkontakte/android/LongPollService$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$6;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 1312
    .local v1, "tt":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1314
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    .line 1318
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0x1d4c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1319
    return-void

    .line 1315
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopDelayed()V
    .locals 4

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v0, :cond_1

    .line 1521
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    .line 1512
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/LongPollService$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$9;-><init>(Lcom/vkontakte/android/LongPollService;)V

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1520
    :catch_0
    move-exception v0

    goto :goto_0
.end method
