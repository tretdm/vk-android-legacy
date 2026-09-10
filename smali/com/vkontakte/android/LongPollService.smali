.class public Lcom/vkontakte/android/LongPollService;
.super Landroid/app/Service;
.source "LongPollService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ACTION_MESSAGE_DELETED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_DELETED"

.field public static final ACTION_MESSAGE_RSTATE_CHANGED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

.field public static final ACTION_NEW_MESSAGE:Ljava/lang/String; = "com.vkontakte.android.NEW_MESSAGE"

.field public static final ACTION_REFRESH_DIALOGS_LIST:Ljava/lang/String; = "com.vkontakte.android.REFRESH_DIALOGS"

.field public static final ACTION_TYPING:Ljava/lang/String; = "com.vkontakte.android.TYPING"

.field public static final ACTION_USER_PRESENCE:Ljava/lang/String; = "com.vkontakte.android.USER_PRESENCE"

.field private static final EVENT_CHAT_CHANGED:I = 0x33

.field private static final EVENT_CHAT_TYPING:I = 0x3e

.field private static final EVENT_FRIEND_OFFLINE:I = 0x9

.field private static final EVENT_FRIEND_ONLINE:I = 0x8

.field private static final EVENT_MSG_ADD:I = 0x4

.field private static final EVENT_MSG_DELETE:I = 0x0

.field private static final EVENT_MSG_FLAG_ADD:I = 0x2

.field private static final EVENT_MSG_FLAG_CLEAR:I = 0x3

.field private static final EVENT_MSG_FLAG_REPLACE:I = 0x1

.field private static final EVENT_USER_TYPING:I = 0x3d

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

.field public static longPollRunning:Z

.field public static needFinishAllActivities:Z

.field public static needReloadDialogs:Z

.field static notification1:Landroid/app/Notification;

.field static numFriendRequests:I

.field static numNewMessages:I

.field static numNotifications:I

.field static prevNumNewMessages:I

.field public static realLastProfile:Lcom/vkontakte/android/UserProfile;


# instance fields
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    .line 82
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 83
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 86
    sput v0, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v0, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sput v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    sput v0, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 87
    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 92
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedKnownUserphotos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    sput-object v1, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    sput-object v1, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 90
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 91
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LongPollService;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/LongPollService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/LongPollService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/LongPollService;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/LongPollService;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct/range {p0 .. p7}, Lcom/vkontakte/android/LongPollService;->processMessage(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkAndPreload(I)V
    .locals 3
    .param p0, "peerID"    # I

    .prologue
    .line 549
    sget-object v0, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetHistory;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/api/MessagesGetHistory;-><init>(III)V

    .line 551
    new-instance v1, Lcom/vkontakte/android/LongPollService$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$6;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetHistory;->setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 586
    :cond_0
    return-void
.end method

.method private static createNotification(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "contentIntent"    # Landroid/app/PendingIntent;

    .prologue
    const v8, 0x7f020189

    const/16 v7, 0x32

    const/4 v6, 0x0

    .line 812
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 813
    new-instance v2, Landroid/app/Notification;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v8, p0, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 814
    .local v2, "n":Landroid/app/Notification;
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    sget-object v5, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f090000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0a0006

    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 839
    .end local v2    # "n":Landroid/app/Notification;
    :goto_0
    return-object v2

    .line 818
    .restart local p0    # "text":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v4, "android.app.Notification$Builder"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 819
    .local v1, "c":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 820
    .local v0, "builder":Ljava/lang/Object;
    const-string v4, "setSmallIcon"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const v7, 0x7f020189

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string v4, "setContentTitle"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v4, "setContentText"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string v4, "setNumber"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string v4, "setLargeIcon"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/graphics/Bitmap;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v7}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/high16 v8, 0x42800000    # 64.0f

    invoke-static {v8}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    const/high16 v9, 0x42800000    # 64.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v4, "setContentIntent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/PendingIntent;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v4, "setTicker"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const-string v4, "getNotification"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto/16 :goto_0

    .line 829
    .end local v0    # "builder":Ljava/lang/Object;
    .end local v1    # "c":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static onNotificationOpened()V
    .locals 1

    .prologue
    .line 899
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 900
    return-void
.end method

.method public static playNotification()V
    .locals 7

    .prologue
    .line 843
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 844
    .local v1, "n":Landroid/app/Notification;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 845
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "dnd_end"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 846
    sget-boolean v3, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    if-eqz v3, :cond_0

    .line 847
    sget-object v3, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 850
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 852
    :cond_1
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 853
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 854
    return-void

    .line 848
    .end local v0    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_2
    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method

.method private processAddFlags(III)V
    .locals 5
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v4, 0x0

    .line 462
    and-int/lit8 v2, p3, 0x1

    if-lez v2, :cond_2

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 465
    const-string v2, "read_state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 468
    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v4}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 470
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
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

    .line 478
    :cond_1
    invoke-static {p0, p2, p1, v4}, Lcom/vkontakte/android/cache/ChatCache;->setReadState(Landroid/content/Context;IIZ)V

    .line 480
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eq p2, v2, :cond_2

    .line 481
    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 483
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 486
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    and-int/lit16 v2, p3, 0x80

    if-lez v2, :cond_3

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 489
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 491
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 471
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 472
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, p1, :cond_0

    .line 473
    iput-boolean v4, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_0
.end method

.method private processClearFlags(III)V
    .locals 6
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v5, 0x1

    .line 429
    and-int/lit8 v3, p3, 0x1

    if-lez v3, :cond_3

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "msg_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v3, "read_state"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 436
    const/4 v3, 0x0

    invoke-static {p0, p2, v3, v5}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 438
    sget-object v3, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    sget-object v3, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 446
    :cond_1
    invoke-static {p0, p2, p1, v5}, Lcom/vkontakte/android/cache/ChatCache;->setReadState(Landroid/content/Context;IIZ)V

    .line 448
    sget v3, Lcom/vkontakte/android/Global;->uid:I

    if-eq p2, v3, :cond_3

    .line 449
    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 450
    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-gez v3, :cond_2

    const/4 v3, 0x0

    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 452
    :cond_2
    sget v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v3, :cond_3

    .line 453
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 454
    .local v1, "mgr":Landroid/app/NotificationManager;
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 455
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 459
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mgr":Landroid/app/NotificationManager;
    :cond_3
    return-void

    .line 439
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Message;

    .line 440
    .local v2, "msg":Lcom/vkontakte/android/Message;
    iget v4, v2, Lcom/vkontakte/android/Message;->id:I

    if-ne v4, p1, :cond_0

    .line 441
    iput-boolean v5, v2, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_0
.end method

.method private processMessage(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "id"    # I
    .param p2, "sender"    # I
    .param p3, "flags"    # I
    .param p4, "time"    # I
    .param p5, "_text"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "params"    # Ljava/lang/String;

    .prologue
    .line 222
    and-int/lit8 v16, p3, 0x2

    if-lez v16, :cond_a

    const/4 v6, 0x1

    .line 223
    .local v6, "isOut":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 225
    :try_start_0
    sget-object v16, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 226
    sget-object v16, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_1
    move-object/from16 v13, p5

    .line 230
    .local v13, "text":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 231
    .local v8, "msgParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p7, :cond_1

    .line 234
    const-string v16, "\t"

    move-object/from16 v0, p7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, "pr":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v4, v0, :cond_b

    .line 243
    .end local v4    # "i":I
    .end local v11    # "pr":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v6}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 244
    new-instance v7, Lcom/vkontakte/android/Message;

    invoke-direct {v7}, Lcom/vkontakte/android/Message;-><init>()V

    .line 245
    .local v7, "msg":Lcom/vkontakte/android/Message;
    invoke-virtual {v7, v13}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 246
    iput-object v8, v7, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    .line 247
    iput-boolean v6, v7, Lcom/vkontakte/android/Message;->out:Z

    .line 248
    move/from16 v0, p4

    iput v0, v7, Lcom/vkontakte/android/Message;->time:I

    .line 249
    move/from16 v0, p1

    iput v0, v7, Lcom/vkontakte/android/Message;->id:I

    .line 250
    iget-object v0, v7, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "from"

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    iget-object v0, v7, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "from"

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    :goto_3
    move/from16 v0, v16

    iput v0, v7, Lcom/vkontakte/android/Message;->sender:I

    .line 251
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_4
    const/16 v16, 0xa

    move/from16 v0, v16

    if-le v4, v0, :cond_d

    .line 263
    :cond_2
    const-string v16, "geo"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 264
    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x5

    aget v18, v16, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, v16, v17

    .line 267
    :cond_3
    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    if-gtz v16, :cond_4

    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    if-gtz v16, :cond_4

    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v16, v16, v17

    if-lez v16, :cond_5

    .line 268
    :cond_4
    new-instance v16, Lcom/vkontakte/android/api/GetMessagePhotos;

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GetMessagePhotos;-><init>(I)V

    .line 269
    new-instance v17, Lcom/vkontakte/android/LongPollService$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/vkontakte/android/LongPollService$3;-><init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkontakte/android/api/GetMessagePhotos;->setCallback(Lcom/vkontakte/android/api/GetMessagePhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v16

    .line 311
    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 314
    :cond_5
    const-string v16, "fwd"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 315
    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v17, v0

    const/16 v18, 0x4

    const-string v16, "fwd"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v19, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    aput v16, v17, v18

    .line 318
    :cond_6
    sget-object v16, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 319
    sget-object v16, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_7
    new-instance v5, Landroid/content/Intent;

    const-string v16, "com.vkontakte.android.NEW_MESSAGE"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .local v5, "intent":Landroid/content/Intent;
    const-string v16, "peer_id"

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    const-string v16, "message"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    const-string v16, "is_out"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    const-string v16, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 329
    if-nez v6, :cond_9

    .line 330
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 331
    .local v15, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    invoke-virtual {v15, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 332
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v1, v15, v2}, Lcom/vkontakte/android/cache/ChatCache;->add(Landroid/content/Context;ILjava/util/List;Z)V

    .line 333
    sget v16, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v16, v16, 0x1

    sput v16, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 334
    sget-boolean v16, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    if-nez v16, :cond_16

    .line 335
    sget-object v16, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_13

    .line 378
    new-instance v16, Lcom/vkontakte/android/api/GetMessageInfo;

    iget v0, v7, Lcom/vkontakte/android/Message;->id:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/GetMessageInfo;-><init>(II)V

    .line 379
    new-instance v17, Lcom/vkontakte/android/LongPollService$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v7, v2, v13}, Lcom/vkontakte/android/LongPollService$4;-><init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;ILjava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Lcom/vkontakte/android/api/GetMessageInfo;->setCallback(Lcom/vkontakte/android/api/GetMessageInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v16

    .line 420
    invoke-virtual/range {v16 .. v16}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 426
    .end local v15    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_9
    :goto_5
    return-void

    .line 222
    .end local v4    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "isOut":Z
    .end local v7    # "msg":Lcom/vkontakte/android/Message;
    .end local v8    # "msgParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "text":Ljava/lang/String;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 236
    .restart local v4    # "i":I
    .restart local v6    # "isOut":Z
    .restart local v8    # "msgParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "pr":[Ljava/lang/String;
    .restart local v13    # "text":Ljava/lang/String;
    :cond_b
    aget-object v16, v11, v4

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 237
    .local v9, "p1":Ljava/lang/String;
    const-string v16, " "

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 238
    .local v10, "p2":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v10, v16

    const/16 v17, 0x1

    aget-object v17, v10, v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .end local v4    # "i":I
    .end local v9    # "p1":Ljava/lang/String;
    .end local v10    # "p2":[Ljava/lang/String;
    .end local v11    # "pr":[Ljava/lang/String;
    .restart local v7    # "msg":Lcom/vkontakte/android/Message;
    :cond_c
    move/from16 v16, p2

    .line 250
    goto/16 :goto_3

    .line 252
    .restart local v4    # "i":I
    :cond_d
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "attach"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_type"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 253
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "attach"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_type"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 254
    .local v14, "tp":Ljava/lang/String;
    const-string v16, "photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v18, v16, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, v16, v17

    .line 255
    :cond_e
    const-string v16, "video"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v18, v16, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, v16, v17

    .line 256
    :cond_f
    const-string v16, "audio"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v18, v16, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, v16, v17

    .line 257
    :cond_10
    const-string v16, "doc"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v18, v16, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, v16, v17

    .line 258
    :cond_11
    const-string v16, "wall"

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12

    iget-object v0, v7, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v16, v0

    const/16 v17, 0x6

    aget v18, v16, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, v16, v17

    .line 251
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 335
    .end local v14    # "tp":Ljava/lang/String;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v15    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_13
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/DialogEntry;

    .line 336
    .local v3, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v3, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_8

    .line 337
    iget-object v0, v7, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/vkontakte/android/DialogEntry;->lastMessage:Ljava/lang/String;

    .line 338
    iget-boolean v0, v7, Lcom/vkontakte/android/Message;->readState:Z

    move/from16 v16, v0

    move/from16 v0, v16

    iput-boolean v0, v3, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 339
    iget v0, v7, Lcom/vkontakte/android/Message;->time:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v3, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 340
    iget v0, v7, Lcom/vkontakte/android/Message;->id:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v3, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 341
    sget-object v16, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 342
    sget-object v16, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 344
    const/4 v12, 0x0

    .line 345
    .local v12, "prevUid":I
    sget-object v16, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v16, :cond_14

    sget-object v16, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v16

    iget v12, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 346
    :cond_14
    move/from16 v0, p2

    if-eq v12, v0, :cond_15

    sget v16, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_15

    const/16 v16, 0x0

    sput-object v16, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    .line 350
    :goto_6
    iget-object v0, v3, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v16, v0

    sput-object v16, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 351
    sget v16, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_9

    .line 352
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v0}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/String;Z)V

    .line 353
    invoke-static/range {p2 .. p2}, Lcom/vkontakte/android/LongPollService;->checkAndPreload(I)V

    goto/16 :goto_5

    .line 348
    :cond_15
    iget-object v0, v3, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v16, v0

    sput-object v16, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto :goto_6

    .line 422
    .end local v3    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v12    # "prevUid":I
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 423
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->playNotification()V

    goto/16 :goto_5

    .line 227
    .end local v4    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "msg":Lcom/vkontakte/android/Message;
    .end local v8    # "msgParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "text":Ljava/lang/String;
    .end local v15    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :catch_0
    move-exception v16

    goto/16 :goto_1
.end method

.method private processOnlineChange(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "online"    # Z

    .prologue
    .line 508
    sget-object v3, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 515
    :goto_0
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 516
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 525
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.USER_PRESENCE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "uid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 527
    const-string v3, "online"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 528
    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 529
    return-void

    .line 508
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 509
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, p1, :cond_0

    .line 510
    iput-boolean p2, v2, Lcom/vkontakte/android/UserProfile;->online:Z

    goto :goto_0

    .line 516
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 517
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, p1, :cond_1

    .line 518
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iput-boolean p2, v3, Lcom/vkontakte/android/UserProfile;->online:Z

    .line 519
    sget-boolean v3, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->instance:Lcom/vkontakte/android/DialogsActivity;

    invoke-virtual {v3}, Lcom/vkontakte/android/DialogsActivity;->updateList()V

    goto :goto_1
.end method

.method private processTyping(II)V
    .locals 2
    .param p1, "peerID"    # I
    .param p2, "userID"    # I

    .prologue
    .line 533
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.TYPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private runLongPoll()V
    .locals 19

    .prologue
    .line 589
    const-string v1, "vk_longpoll"

    const-string v2, "LongPoll starting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->startSendingOnline()V

    .line 593
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 594
    const/4 v12, 0x0

    .line 595
    .local v12, "nAttempts":I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-eqz v1, :cond_2

    .line 664
    const-string v1, "vk_longpoll"

    const-string v2, "LongPoll exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    new-instance v1, Ljava/lang/Thread;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 666
    :goto_1
    return-void

    .line 596
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?act=a_check&key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/LongPollService;->ts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&wait=25&mode=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 598
    .local v17, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v1, :cond_3

    .line 599
    const-string v1, "vk_longpoll"

    const-string v2, "LongPoll STOPPED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 602
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v14

    .line 603
    .local v14, "rdata":[B
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v1, :cond_4

    .line 604
    const-string v1, "vk_longpoll"

    const-string v2, "LongPoll STOPPED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 607
    :cond_4
    if-nez v14, :cond_6

    .line 608
    const/4 v1, 0x6

    if-lt v12, v1, :cond_5

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 610
    const/4 v12, 0x0

    .line 611
    const-string v1, "vk_longpoll"

    const-string v2, "6 errors, reloading server info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 614
    :cond_5
    const-string v1, "vk_longpoll"

    const-string v2, "Connection error. Retry in 5 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 618
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 619
    goto/16 :goto_0

    .line 622
    :cond_6
    :try_start_1
    new-instance v15, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v15, v14, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 623
    .local v15, "resp":Ljava/lang/String;
    invoke-static {v15}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 625
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v15}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 626
    .local v13, "r":Lorg/json/JSONObject;
    const-string v1, "failed"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 627
    const-string v1, "vk_longpoll"

    const-string v2, "Got \'failed\', reloading server info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 660
    .end local v13    # "r":Lorg/json/JSONObject;
    .end local v15    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 661
    .local v18, "x":Ljava/lang/Exception;
    const-string v1, "vk_longpoll"

    const-string v2, "Exception while parsing"

    move-object/from16 v0, v18

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 631
    .end local v18    # "x":Ljava/lang/Exception;
    .restart local v13    # "r":Lorg/json/JSONObject;
    .restart local v15    # "resp":Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v1, "ts"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vkontakte/android/LongPollService;->ts:I

    .line 632
    const-string v1, "updates"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 633
    .local v16, "u":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 634
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v9

    .line 635
    .local v9, "ev":Lorg/json/JSONArray;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    .line 636
    .local v10, "evtype":I
    sparse-switch v10, :sswitch_data_0

    .line 633
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 638
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v1, 0x6

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x7

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/vkontakte/android/LongPollService;->processMessage(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 641
    :sswitch_1
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/LongPollService;->processClearFlags(III)V

    goto :goto_4

    .line 644
    :sswitch_2
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/LongPollService;->processAddFlags(III)V

    goto :goto_4

    .line 647
    :sswitch_3
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(IZ)V

    goto :goto_4

    .line 650
    :sswitch_4
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    neg-int v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(IZ)V

    goto :goto_4

    .line 653
    :sswitch_5
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/LongPollService;->processTyping(II)V

    goto :goto_4

    .line 656
    :sswitch_6
    const v1, 0x77359400

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/LongPollService;->processTyping(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 617
    .end local v9    # "ev":Lorg/json/JSONArray;
    .end local v10    # "evtype":I
    .end local v11    # "i":I
    .end local v13    # "r":Lorg/json/JSONObject;
    .end local v15    # "resp":Ljava/lang/String;
    .end local v16    # "u":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 636
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0x3d -> :sswitch_5
        0x3e -> :sswitch_6
    .end sparse-switch
.end method

.method private runSlowPoll()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 669
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "enableC2DM"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 670
    .local v0, "pushSupported":Z
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 672
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    .line 674
    :cond_1
    if-eqz v0, :cond_2

    .line 677
    const-wide v1, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 716
    :goto_1
    return-void

    .line 682
    :cond_2
    const-string v1, "vk_longpoll"

    const-string v2, "SlowPoll starting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/LongPollService;->lastReqTime:J

    .line 684
    :goto_2
    iget-boolean v1, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-nez v1, :cond_3

    .line 713
    const-string v1, "vk_longpoll"

    const-string v2, "SlowPoll exiting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 685
    :cond_3
    :try_start_1
    sget v1, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 688
    :goto_3
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 689
    const-string v2, "code"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "return {c:API.getCounters(),m:API.messages.get({filters:1,count:100,time_offset:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/vkontakte/android/LongPollService;->lastReqTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "})};"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 690
    new-instance v2, Lcom/vkontakte/android/LongPollService$7;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$7;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 711
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_2

    .line 677
    :catch_0
    move-exception v1

    goto :goto_0

    .line 685
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private start()V
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 174
    :cond_0
    return-void
.end method

.method public static updateNotification(Ljava/lang/String;Z)V
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "forceSound"    # Z

    .prologue
    .line 735
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "NumNewMessages="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :try_start_0
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 738
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    sget-object v7, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v7, :cond_0

    .line 739
    sget-object v7, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    new-instance v8, Lcom/vkontakte/android/LongPollService$8;

    invoke-direct {v8}, Lcom/vkontakte/android/LongPollService$8;-><init>()V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    :cond_0
    sget-object v7, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v8, "messages"

    sget v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    sget-object v7, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 748
    :cond_1
    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v7, :cond_2

    .line 749
    const/4 v7, 0x0

    sput v7, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 750
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 809
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 753
    .restart local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v8, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    .local v3, "notificationIntent":Landroid/content/Intent;
    const-string v7, "messages"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const-string v7, "messages"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 760
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 762
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v8, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v7, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 783
    .local v4, "pendingCancel":Landroid/app/PendingIntent;
    const-string v7, "<br>"

    const-string v8, "/"

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 786
    invoke-static {p0, v1}, Lcom/vkontakte/android/LongPollService;->createNotification(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    sput-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 787
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 789
    const-string v7, "vk_longpoll"

    new-instance v8, Ljava/lang/StringBuilder;

    sget v9, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 791
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "dnd_end"

    const-wide/16 v8, 0x0

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    if-nez p1, :cond_3

    sget v7, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sget v8, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-ge v7, v8, :cond_6

    .line 792
    :cond_3
    sget-boolean v7, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    if-eqz v7, :cond_4

    .line 793
    sget-object v7, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget-object v8, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    iput-object v8, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 796
    :cond_4
    :goto_1
    sget-boolean v7, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 797
    :cond_5
    sget-boolean v7, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    if-eqz v7, :cond_6

    .line 798
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 799
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 802
    :cond_6
    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v7, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 803
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget v8, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    iput v8, v7, Landroid/app/Notification;->number:I

    .line 804
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iput-object v4, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 805
    const/16 v7, 0xa

    sget-object v8, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 806
    .end local v0    # "cancelIntent":Landroid/content/Intent;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notificationIntent":Landroid/content/Intent;
    .end local v4    # "pendingCancel":Landroid/app/PendingIntent;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    .line 807
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 794
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v0    # "cancelIntent":Landroid/content/Intent;
    .restart local v1    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    .restart local v3    # "notificationIntent":Landroid/content/Intent;
    .restart local v4    # "pendingCancel":Landroid/app/PendingIntent;
    .restart local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    :try_start_1
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/app/Notification;->defaults:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateServerInfo()V
    .locals 4

    .prologue
    .line 104
    :try_start_0
    sget-boolean v1, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v1, :cond_0

    .line 105
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vkontakte/android/Global;->inited:Z

    .line 106
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 107
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "sid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "uid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vkontakte/android/Global;->uid:I

    .line 110
    const-string v1, "sid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 111
    const-string v1, "secret"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 114
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 115
    const-string v2, "code"

    const-string v3, "return {c:API.getCounters(),s:API.messages.getLongPollServer(),fo:API.friends.getOnline()};"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 117
    new-instance v2, Lcom/vkontakte/android/LongPollService$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$1;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 116
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateTabBadge()V
    .locals 3

    .prologue
    .line 494
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v0, :cond_0

    .line 495
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    new-instance v1, Lcom/vkontakte/android/LongPollService$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$5;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 503
    :cond_0
    sget-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v1, "messages"

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 505
    :cond_1
    return-void
.end method


# virtual methods
.method public logOut(Z)V
    .locals 14
    .param p1, "full"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 916
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "========== LOGOUT! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 918
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 920
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "c2dm_regID"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    .local v2, "oldToken":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 922
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "c2dm_regID"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 923
    new-instance v6, Lcom/vkontakte/android/api/C2DMUnregisterDevice;

    invoke-direct {v6, v2}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;-><init>(Ljava/lang/String;)V

    .line 924
    invoke-virtual {v6}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->exec()Lcom/vkontakte/android/APIRequest;

    .line 927
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    .line 929
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 930
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 931
    const-string v7, "uid"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 932
    const-string v7, "sid"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 933
    const-string v7, "secret"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 934
    const-string v7, "login"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 935
    const-string v7, "sig"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 936
    const-string v7, "username"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 937
    const-string v7, "usercity"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 938
    const-string v7, "userphoto"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 939
    const-string v7, "userphotos"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 940
    const-string v7, "useruniversity"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 941
    const-string v7, "usercounters"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 942
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 947
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "posts.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 948
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "friends.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 949
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "dialogs.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 950
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "chats.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 951
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "groups.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 952
    sput-boolean v9, Lcom/vkontakte/android/Global;->inited:Z

    .line 953
    sput-object v10, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 954
    sput-object v10, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 955
    sput-object v10, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 956
    sput v9, Lcom/vkontakte/android/Global;->uid:I

    .line 959
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 962
    :goto_0
    if-eqz p1, :cond_1

    .line 965
    :try_start_1
    const-string v6, "android.accounts.AccountManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 967
    .local v0, "am":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "removeAccount"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-string v10, "android.accounts.Account"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "android.accounts.AccountManagerCallback"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-class v10, Landroid/os/Handler;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 968
    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v10, "getAccountsByType"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "com.vkontakte.account"

    aput-object v12, v10, v11

    invoke-virtual {v6, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v6, v6, v10

    aput-object v6, v8, v9

    const/4 v6, 0x1

    const/4 v9, 0x0

    aput-object v9, v8, v6

    const/4 v6, 0x2

    const/4 v9, 0x0

    aput-object v9, v8, v6

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 972
    .end local v0    # "am":Ljava/lang/Object;
    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v7, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 973
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "Update"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 976
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 978
    .local v4, "prefs1":Landroid/content/SharedPreferences;
    return-void

    .line 969
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "prefs1":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 960
    .end local v5    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 877
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 904
    const-string v0, "vk_longpoll"

    const-string v1, "Starting LongPoll service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    sput-object p0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 906
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->start()V

    .line 907
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 911
    const-string v0, "vk_longpoll"

    const-string v1, "Stopping LongPoll service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 913
    return-void
.end method

.method public onReauthError()V
    .locals 2

    .prologue
    .line 981
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/LongPollService;->logOut(Z)V

    .line 983
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 984
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 985
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/LongPollService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 987
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 986
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 892
    const-string v0, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 895
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 543
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->runLongPoll()V

    .line 544
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 546
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->runSlowPoll()V

    goto :goto_0
.end method

.method public setNormalMode()V
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1010
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 1014
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public setNumUnread(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 159
    sput p1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 161
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 162
    return-void
.end method

.method public setSlowMode()V
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 991
    return-void
.end method

.method public setSlowModeDelayed()V
    .locals 4

    .prologue
    .line 994
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-eqz v0, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    .line 998
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/LongPollService$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$10;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 1004
    const-wide/32 v2, 0x2bf20

    .line 998
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1005
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startSendingOnline()V
    .locals 6

    .prologue
    .line 857
    new-instance v1, Lcom/vkontakte/android/LongPollService$9;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$9;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 865
    .local v1, "tt":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 867
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    .line 871
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xdbba0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 872
    return-void

    .line 868
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateCounters()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "getCounters"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/vkontakte/android/LongPollService$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$2;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 219
    return-void
.end method

.method public updateNotification()V
    .locals 3

    .prologue
    .line 719
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 720
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 722
    sget-boolean v1, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    if-eqz v1, :cond_0

    .line 723
    sget-object v1, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget-object v2, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 726
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 731
    :cond_1
    const/16 v1, 0xa

    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 732
    return-void

    .line 724
    :cond_2
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method
