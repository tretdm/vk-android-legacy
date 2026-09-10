.class public Lcom/vkontakte/android/LongPollService;
.super Landroid/app/Service;
.source "LongPollService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ACTION_CHAT_TITLE_CHANGED:Ljava/lang/String; = "com.vkontakte.android.CHAT_TITLE_CHANGED"

.field public static final ACTION_MESSAGE_DELETED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_DELETED"

.field public static final ACTION_MESSAGE_RSTATE_CHANGED:Ljava/lang/String; = "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

.field public static final ACTION_NEW_MESSAGE:Ljava/lang/String; = "com.vkontakte.android.NEW_MESSAGE"

.field public static final ACTION_REFRESH_DIALOGS_LIST:Ljava/lang/String; = "com.vkontakte.android.REFRESH_DIALOGS"

.field public static final ACTION_TYPING:Ljava/lang/String; = "com.vkontakte.android.TYPING"

.field public static final ACTION_USER_PRESENCE:Ljava/lang/String; = "com.vkontakte.android.USER_PRESENCE"

.field public static final ACTION_VOIP_HANGUP:Ljava/lang/String; = "com.vkontakte.android.VOIP_HANGUP"

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

.field static numFriendRequests:I

.field static numNewMessages:I

.field static numNotifications:I

.field static prevNumNewMessages:I

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

    .line 105
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->needFinishAllActivities:Z

    .line 106
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 107
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 108
    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 111
    sput v0, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v0, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    sput v0, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    sput v0, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 112
    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 117
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->dialogsMoreAvailable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedKnownUsernames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->cachedKnownUserphotos:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->chatUsers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->chatTitles:Ljava/util/concurrent/ConcurrentHashMap;

    .line 127
    sput-object v1, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    sput-object v1, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/LongPollService;->receivedCalls:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    .line 115
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 116
    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/LongPollService;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/LongPollService;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct/range {p0 .. p7}, Lcom/vkontakte/android/LongPollService;->processMessage(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkAndPreload(I)V
    .locals 3
    .param p0, "peerID"    # I

    .prologue
    .line 589
    sget-object v0, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    new-instance v0, Lcom/vkontakte/android/api/MessagesGetHistory;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-direct {v0, p0, v1, v2}, Lcom/vkontakte/android/api/MessagesGetHistory;-><init>(III)V

    .line 591
    new-instance v1, Lcom/vkontakte/android/LongPollService$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$6;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesGetHistory;->setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 626
    :cond_0
    return-void
.end method

.method private static createNotification(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "contentIntent"    # Landroid/app/PendingIntent;

    .prologue
    const v11, 0x7f0201a2

    const/16 v10, 0x32

    const/high16 v9, 0x42800000    # 64.0f

    .line 1182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1183
    .local v5, "ticker":Ljava/lang/String;
    :goto_0
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    if-ge v7, v8, :cond_1

    .line 1184
    new-instance v3, Landroid/app/Notification;

    invoke-static {v5}, Lcom/vkontakte/android/Global;->replaceEmojiRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v3, v11, v7, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1185
    .local v3, "n":Landroid/app/Notification;
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f090000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a0006

    sget v10, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sget-object v11, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1207
    .end local v3    # "n":Landroid/app/Notification;
    :goto_1
    return-object v3

    .end local v5    # "ticker":Ljava/lang/String;
    :cond_0
    move-object v5, p0

    .line 1182
    goto :goto_0

    .line 1188
    .restart local v5    # "ticker":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 1189
    .local v4, "photo":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v8, "M|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1190
    sget-object v7, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1191
    .local v6, "urls":[Ljava/lang/String;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    new-array v0, v7, [Landroid/graphics/Bitmap;

    .line 1192
    .local v0, "bmps":[Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_2
    array-length v7, v6

    if-lt v2, v7, :cond_2

    .line 1195
    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoader;->drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1199
    .end local v0    # "bmps":[Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v6    # "urls":[Ljava/lang/String;
    :goto_3
    new-instance v7, Landroid/app/Notification$Builder;

    sget-object v8, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1200
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1201
    sget-object v8, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    iget-object v8, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1202
    invoke-static {p0}, Lcom/vkontakte/android/Global;->replaceEmojiRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1203
    sget v8, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1204
    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v8

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v4, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1205
    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1206
    invoke-static {v5}, Lcom/vkontakte/android/Global;->replaceEmojiRev(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1207
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    goto :goto_1

    .line 1193
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .restart local v0    # "bmps":[Landroid/graphics/Bitmap;
    .restart local v2    # "i":I
    .restart local v6    # "urls":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v2, -0x1

    aget-object v8, v6, v2

    invoke-static {v8}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1192
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1197
    .end local v0    # "bmps":[Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v6    # "urls":[Ljava/lang/String;
    :cond_3
    sget-object v7, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    iget-object v7, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v7}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3
.end method

.method private getURL(Ljava/lang/String;)[B
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const v11, 0xea60

    const/4 v10, 0x0

    .line 676
    sget-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    if-nez v9, :cond_0

    .line 677
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 678
    .local v1, "hParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 679
    invoke-static {v1, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 680
    const/16 v9, 0x2000

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 681
    invoke-static {v1, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 682
    invoke-static {v1, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 683
    invoke-static {v1, v10}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 684
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 685
    .local v6, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v11

    const/16 v12, 0x1bb

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 686
    new-instance v9, Lorg/apache/http/conn/scheme/Scheme;

    const-string v10, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v11

    const/16 v12, 0x50

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v9}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 687
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v10, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v10, v1, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    invoke-direct {v9, v10, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    .line 689
    .end local v1    # "hParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 691
    .local v2, "httppost":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    sget-object v9, Lcom/vkontakte/android/LongPollService;->longPollClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v9, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 692
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 693
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 694
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v5, v9, [B

    .line 695
    .local v5, "rd":[B
    const/4 v4, 0x0

    .line 696
    .local v4, "l":I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_1

    .line 697
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 698
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 701
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "rd":[B
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-object v8

    .line 696
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

    .line 699
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
    .locals 14
    .param p0, "full"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1290
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "========== LOGOUT! "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    sget-object v6, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v6, :cond_0

    .line 1292
    sget-object v6, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-direct {v6}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 1293
    sget-object v6, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v6, v9}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 1296
    :cond_0
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "c2dm_regID"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1297
    .local v2, "oldToken":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1298
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "c2dm_regID"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1299
    new-instance v6, Lcom/vkontakte/android/api/C2DMUnregisterDevice;

    invoke-direct {v6, v2}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;-><init>(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v6}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1303
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/C2DM;->stop()V

    .line 1305
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1306
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1307
    const-string v7, "uid"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1308
    const-string v7, "sid"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1309
    const-string v7, "secret"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1310
    const-string v7, "login"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1311
    const-string v7, "sig"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1312
    const-string v7, "username"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1313
    const-string v7, "usercity"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1314
    const-string v7, "userphoto"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1315
    const-string v7, "userphotos"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1316
    const-string v7, "useruniversity"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1317
    const-string v7, "usercounters"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1318
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1320
    sput v9, Lcom/vkontakte/android/DialogsActivity;->numSearchResults:I

    sput v9, Lcom/vkontakte/android/DialogsActivity;->numDialogs:I

    .line 1321
    sget-object v6, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 1322
    sget-object v6, Lcom/vkontakte/android/DialogsActivity;->searchResults:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 1327
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "posts.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1328
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "friends.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1329
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "dialogs.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1330
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "chats.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1331
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "groups.db"

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1332
    sput-boolean v9, Lcom/vkontakte/android/Global;->inited:Z

    .line 1333
    sput-object v10, Lcom/vkontakte/android/Global;->friendHints:[I

    .line 1334
    sput-object v10, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    .line 1335
    sput-object v10, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 1336
    sput v9, Lcom/vkontakte/android/Global;->uid:I

    .line 1337
    sput-object v10, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 1340
    :try_start_0
    sget-object v6, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v6}, Lcom/vkontakte/android/LongPollService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1343
    :goto_0
    if-eqz p0, :cond_2

    .line 1346
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

    .line 1348
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

    .line 1349
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

    .line 1353
    .end local v0    # "am":Ljava/lang/Object;
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v7, Lcom/vkontakte/android/NewsWidget;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1354
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "Update"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1355
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1357
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1358
    .local v4, "prefs1":Landroid/content/SharedPreferences;
    const-wide/16 v6, 0x3e8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1360
    :goto_2
    return-void

    .line 1350
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "prefs1":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1358
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "prefs1":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v6

    goto :goto_2

    .line 1341
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "prefs1":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v6

    goto/16 :goto_0
.end method

.method public static onNotificationOpened()V
    .locals 1

    .prologue
    .line 1273
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1274
    return-void
.end method

.method public static onReauthError()V
    .locals 3

    .prologue
    .line 1363
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vkontakte/android/LongPollService;->logOut(Z)V

    .line 1365
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/AuthActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1366
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1367
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_0
    return-void

    .line 1368
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static playNotification()V
    .locals 7

    .prologue
    .line 1211
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1212
    .local v1, "n":Landroid/app/Notification;
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1213
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "dnd_end"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1214
    sget-boolean v3, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    if-eqz v3, :cond_0

    .line 1215
    sget-object v3, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1218
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 1220
    :cond_1
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1221
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1222
    return-void

    .line 1216
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

    .line 502
    and-int/lit8 v2, p3, 0x1

    if-lez v2, :cond_2

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v2, "read_state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 508
    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v4}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 510
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 511
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

    .line 518
    :cond_1
    invoke-static {p0, p2, p1, v4}, Lcom/vkontakte/android/cache/ChatCache;->setReadState(Landroid/content/Context;IIZ)V

    .line 520
    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-eq p2, v2, :cond_2

    .line 521
    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 523
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 526
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    and-int/lit16 v2, p3, 0x80

    if-lez v2, :cond_3

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.MESSAGE_DELETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 529
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 531
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    return-void

    .line 511
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Message;

    .line 512
    .local v1, "msg":Lcom/vkontakte/android/Message;
    iget v3, v1, Lcom/vkontakte/android/Message;->id:I

    if-ne v3, p1, :cond_0

    .line 513
    iput-boolean v4, v1, Lcom/vkontakte/android/Message;->readState:Z

    goto :goto_0
.end method

.method private processChatAhcnged(I)V
    .locals 0
    .param p1, "chatID"    # I

    .prologue
    .line 706
    return-void
.end method

.method private processClearFlags(III)V
    .locals 7
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v6, 0x1

    .line 467
    and-int/lit8 v4, p3, 0x1

    if-lez v4, :cond_3

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.vkontakte.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "msg_id"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const-string v4, "read_state"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 472
    const-string v4, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v4}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 474
    const/4 v4, 0x0

    invoke-static {p0, p2, v4, v6}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 475
    const/4 v1, 0x0

    .line 477
    .local v1, "isOut":Z
    sget-object v4, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
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

    .line 486
    :cond_1
    invoke-static {p0, p2, p1, v6}, Lcom/vkontakte/android/cache/ChatCache;->setReadState(Landroid/content/Context;IIZ)V

    .line 488
    if-nez v1, :cond_3

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq p2, v4, :cond_3

    .line 489
    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 490
    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-gez v4, :cond_2

    const/4 v4, 0x0

    sput v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 492
    :cond_2
    sget v4, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v4, :cond_3

    .line 493
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 494
    .local v2, "mgr":Landroid/app/NotificationManager;
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 495
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 499
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isOut":Z
    .end local v2    # "mgr":Landroid/app/NotificationManager;
    :cond_3
    return-void

    .line 478
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "isOut":Z
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/Message;

    .line 479
    .local v3, "msg":Lcom/vkontakte/android/Message;
    iget v5, v3, Lcom/vkontakte/android/Message;->id:I

    if-ne v5, p1, :cond_0

    .line 480
    iput-boolean v6, v3, Lcom/vkontakte/android/Message;->readState:Z

    .line 481
    iget-boolean v1, v3, Lcom/vkontakte/android/Message;->out:Z

    goto :goto_0
.end method

.method private processExtendedMessage(Lorg/json/JSONObject;)V
    .locals 26
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 710
    :try_start_0
    const-string v2, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 711
    .local v15, "jmsg":Lorg/json/JSONObject;
    const-string v2, "out"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    const/4 v5, 0x1

    .line 712
    .local v5, "isOut":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 714
    :try_start_1
    sget-object v2, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 715
    sget-object v2, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 718
    :cond_0
    :goto_1
    :try_start_2
    const-string v2, "body"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, "text":Ljava/lang/String;
    const-string v2, "chat_id"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x77359400

    const-string v3, "chat_id"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    add-int v6, v2, v3

    .line 720
    .local v6, "sender":I
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v6, v7, v5}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 721
    new-instance v4, Lcom/vkontakte/android/Message;

    invoke-direct {v4}, Lcom/vkontakte/android/Message;-><init>()V

    .line 722
    .local v4, "msg":Lcom/vkontakte/android/Message;
    invoke-virtual {v4, v7}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 723
    iput-boolean v5, v4, Lcom/vkontakte/android/Message;->out:Z

    .line 724
    const-string v2, "date"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/vkontakte/android/Message;->time:I

    .line 725
    const-string v2, "mid"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/vkontakte/android/Message;->id:I

    .line 726
    const-string v2, "uid"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/vkontakte/android/Message;->sender:I

    .line 727
    const/16 v16, 0x0

    .line 731
    .local v16, "numAttachments":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v9, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    const-string v2, "attachments"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 733
    const-string v2, "attachments"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const-string v2, "geo"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    :goto_3
    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/vkontakte/android/Attachment;

    iput-object v2, v4, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 734
    const-string v2, "attachments"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 735
    .local v10, "atts":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v13, v2, :cond_d

    .line 769
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v13    # "i":I
    :cond_1
    const-string v2, "geo"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 770
    const-string v2, "geo"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v16, v16, 0x1

    .line 773
    :cond_2
    const-string v2, "fwd_messages"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 774
    const-string v2, "fwd_messages"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int v16, v16, v2

    .line 775
    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x4

    aget v24, v2, v3

    const-string v25, "fwd_messages"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONArray;->length()I

    move-result v25

    add-int v24, v24, v25

    aput v24, v2, v3

    .line 777
    :cond_3
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/Attachment;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/vkontakte/android/Attachment;

    iput-object v2, v4, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 779
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 780
    sget-object v2, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_4
    const-string v20, ""

    .line 785
    .local v20, "senderPhoto":Ljava/lang/String;
    const v2, 0x77359400

    if-gt v6, v2, :cond_5

    if-eqz v5, :cond_6

    .line 786
    :cond_5
    const-string v2, "profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 787
    .local v19, "profiles":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v13, v2, :cond_1a

    .line 794
    .end local v13    # "i":I
    .end local v19    # "profiles":Lorg/json/JSONArray;
    :cond_6
    new-instance v14, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.NEW_MESSAGE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .local v14, "intent":Landroid/content/Intent;
    const-string v2, "peer_id"

    invoke-virtual {v14, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    const-string v2, "message"

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 797
    const-string v2, "is_out"

    invoke-virtual {v14, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    const-string v2, "sender_photo"

    move-object/from16 v0, v20

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string v2, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 802
    if-nez v5, :cond_9

    .line 803
    new-instance v22, Ljava/util/Vector;

    invoke-direct/range {v22 .. v22}, Ljava/util/Vector;-><init>()V

    .line 804
    .local v22, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 805
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1, v2}, Lcom/vkontakte/android/cache/ChatCache;->add(Landroid/content/Context;ILjava/util/List;Z)V

    .line 806
    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 807
    sget-boolean v2, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    if-nez v2, :cond_29

    .line 808
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 842
    const-string v2, "chat_id"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 843
    new-instance v21, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 844
    .local v21, "up":Lcom/vkontakte/android/UserProfile;
    const-string v2, "profiles"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 845
    .restart local v19    # "profiles":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v13, v2, :cond_22

    .line 851
    iget v2, v4, Lcom/vkontakte/android/Message;->sender:I

    move-object/from16 v0, v21

    iput v2, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 852
    new-instance v12, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v12}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 853
    .local v12, "e":Lcom/vkontakte/android/DialogEntry;
    iget-boolean v2, v4, Lcom/vkontakte/android/Message;->out:Z

    iput-boolean v2, v12, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 854
    iget v2, v4, Lcom/vkontakte/android/Message;->time:I

    iput v2, v12, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 855
    iget-object v2, v4, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/vkontakte/android/DialogEntry;->setLastMessage(Ljava/lang/String;)V

    .line 856
    iget v2, v4, Lcom/vkontakte/android/Message;->id:I

    iput v2, v12, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 857
    move-object/from16 v0, v21

    iput-object v0, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 858
    iget-boolean v2, v4, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v2, v12, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 859
    const/4 v2, -0x1

    iput v2, v12, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 860
    iput-boolean v5, v12, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 861
    const/4 v13, 0x0

    :goto_7
    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    array-length v2, v2

    if-lt v13, v2, :cond_25

    .line 867
    :goto_8
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 868
    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/vkontakte/android/cache/DialogsCache;->add(Lcom/vkontakte/android/DialogEntry;Landroid/content/Context;)V

    .line 869
    const/16 v18, 0x0

    .line 870
    .local v18, "prevUid":I
    sget-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    iget v0, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v18, v0

    .line 871
    :cond_8
    iget v2, v4, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_27

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_27

    const/4 v2, 0x0

    sput-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    .line 875
    :goto_9
    iget-object v2, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v2, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 876
    sget v2, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    if-eq v2, v6, :cond_9

    .line 877
    const/4 v2, 0x1

    invoke-static {v7, v2}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/String;Z)V

    .line 878
    invoke-static {v6}, Lcom/vkontakte/android/LongPollService;->checkAndPreload(I)V

    .line 932
    .end local v4    # "msg":Lcom/vkontakte/android/Message;
    .end local v5    # "isOut":Z
    .end local v6    # "sender":I
    .end local v7    # "text":Ljava/lang/String;
    .end local v9    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v12    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v13    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "jmsg":Lorg/json/JSONObject;
    .end local v16    # "numAttachments":I
    .end local v18    # "prevUid":I
    .end local v19    # "profiles":Lorg/json/JSONArray;
    .end local v20    # "senderPhoto":Ljava/lang/String;
    .end local v21    # "up":Lcom/vkontakte/android/UserProfile;
    .end local v22    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_9
    :goto_a
    return-void

    .line 711
    .restart local v15    # "jmsg":Lorg/json/JSONObject;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 719
    .restart local v5    # "isOut":Z
    .restart local v7    # "text":Ljava/lang/String;
    :cond_b
    const-string v2, "uid"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_2

    .line 733
    .restart local v4    # "msg":Lcom/vkontakte/android/Message;
    .restart local v6    # "sender":I
    .restart local v9    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v16    # "numAttachments":I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 736
    .restart local v10    # "atts":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    :cond_d
    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v8

    .line 737
    .local v8, "att":Lcom/vkontakte/android/Attachment;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    instance-of v2, v8, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_e

    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x0

    aget v24, v2, v3

    add-int/lit8 v24, v24, 0x1

    aput v24, v2, v3

    .line 739
    :cond_e
    instance-of v2, v8, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_f

    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x2

    aget v24, v2, v3

    add-int/lit8 v24, v24, 0x1

    aput v24, v2, v3

    .line 740
    :cond_f
    instance-of v2, v8, Lcom/vkontakte/android/AudioAttachment;

    if-eqz v2, :cond_10

    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x1

    aget v24, v2, v3

    add-int/lit8 v24, v24, 0x1

    aput v24, v2, v3

    .line 741
    :cond_10
    instance-of v2, v8, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_11

    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x3

    aget v24, v2, v3

    add-int/lit8 v24, v24, 0x1

    aput v24, v2, v3

    .line 742
    :cond_11
    instance-of v2, v8, Lcom/vkontakte/android/PostAttachment;

    if-eqz v2, :cond_12

    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    const/4 v3, 0x6

    aget v24, v2, v3

    add-int/lit8 v24, v24, 0x1

    aput v24, v2, v3

    .line 743
    :cond_12
    add-int/lit8 v16, v16, 0x1

    .line 745
    instance-of v2, v8, Lcom/vkontakte/android/PhotoAttachment;

    if-eqz v2, :cond_13

    .line 746
    move-object v0, v8

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment;

    move-object/from16 v17, v0

    .line 747
    .local v17, "pa":Lcom/vkontakte/android/PhotoAttachment;
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_16

    .line 748
    iget-object v3, v4, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v24, "m"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 756
    .end local v17    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_13
    :goto_b
    instance-of v2, v8, Lcom/vkontakte/android/VideoAttachment;

    if-eqz v2, :cond_14

    .line 757
    move-object v0, v8

    check-cast v0, Lcom/vkontakte/android/VideoAttachment;

    move-object/from16 v23, v0

    .line 758
    .local v23, "va":Lcom/vkontakte/android/VideoAttachment;
    iget-object v2, v4, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/vkontakte/android/VideoAttachment;->image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 761
    .end local v23    # "va":Lcom/vkontakte/android/VideoAttachment;
    :cond_14
    instance-of v2, v8, Lcom/vkontakte/android/DocumentAttachment;

    if-eqz v2, :cond_15

    .line 762
    move-object v0, v8

    check-cast v0, Lcom/vkontakte/android/DocumentAttachment;

    move-object v11, v0

    .line 763
    .local v11, "da":Lcom/vkontakte/android/DocumentAttachment;
    iget-object v2, v4, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    iget-object v3, v11, Lcom/vkontakte/android/DocumentAttachment;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v2, v4, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    iget-object v3, v11, Lcom/vkontakte/android/DocumentAttachment;->thumb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 735
    .end local v11    # "da":Lcom/vkontakte/android/DocumentAttachment;
    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 749
    .restart local v17    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_16
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    float-to-double v2, v2

    const-wide/high16 v24, 0x3ff8000000000000L    # 1.5

    cmpg-double v2, v2, v24

    if-gtz v2, :cond_18

    .line 750
    iget-object v3, v4, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v24, "q"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v24, "q"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_c
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 931
    .end local v4    # "msg":Lcom/vkontakte/android/Message;
    .end local v5    # "isOut":Z
    .end local v6    # "sender":I
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    .end local v9    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v13    # "i":I
    .end local v15    # "jmsg":Lorg/json/JSONObject;
    .end local v16    # "numAttachments":I
    .end local v17    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :catch_0
    move-exception v2

    goto/16 :goto_a

    .line 750
    .restart local v4    # "msg":Lcom/vkontakte/android/Message;
    .restart local v5    # "isOut":Z
    .restart local v6    # "sender":I
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "att":Lcom/vkontakte/android/Attachment;
    .restart local v9    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .restart local v10    # "atts":Lorg/json/JSONArray;
    .restart local v13    # "i":I
    .restart local v15    # "jmsg":Lorg/json/JSONObject;
    .restart local v16    # "numAttachments":I
    .restart local v17    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    :cond_17
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v24, "m"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_c

    .line 752
    :cond_18
    iget-object v3, v4, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v24, "r"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v24, "r"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_d
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_19
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v24, "m"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_d

    .line 788
    .end local v8    # "att":Lcom/vkontakte/android/Attachment;
    .end local v10    # "atts":Lorg/json/JSONArray;
    .end local v17    # "pa":Lcom/vkontakte/android/PhotoAttachment;
    .restart local v19    # "profiles":Lorg/json/JSONArray;
    .restart local v20    # "senderPhoto":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget v3, v4, Lcom/vkontakte/android/Message;->sender:I

    if-ne v2, v3, :cond_1b

    .line 789
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v24

    if-lez v2, :cond_1c

    const-string v2, "photo_medium"

    :goto_e
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 787
    :cond_1b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 789
    :cond_1c
    const-string v2, "photo"

    goto :goto_e

    .line 808
    .end local v13    # "i":I
    .end local v19    # "profiles":Lorg/json/JSONArray;
    .restart local v14    # "intent":Landroid/content/Intent;
    .restart local v22    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/DialogEntry;

    .line 809
    .restart local v12    # "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v3, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v3, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v3, v6, :cond_7

    .line 810
    iget-object v2, v4, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lcom/vkontakte/android/DialogEntry;->setLastMessage(Ljava/lang/String;)V

    .line 811
    iget-boolean v2, v4, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v2, v12, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 812
    iget v2, v4, Lcom/vkontakte/android/Message;->time:I

    iput v2, v12, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 813
    iget v2, v4, Lcom/vkontakte/android/Message;->id:I

    iput v2, v12, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 814
    const/4 v2, -0x1

    iput v2, v12, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    .line 815
    iput-boolean v5, v12, Lcom/vkontakte/android/DialogEntry;->isOut:Z

    .line 817
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_f
    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    array-length v2, v2

    if-lt v13, v2, :cond_1f

    .line 823
    :goto_10
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v2, v12}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 824
    sget-object v2, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 826
    const/16 v18, 0x0

    .line 827
    .restart local v18    # "prevUid":I
    sget-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v2, :cond_1e

    sget-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    iget v0, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v18, v0

    .line 828
    :cond_1e
    move/from16 v0, v18

    if-eq v0, v6, :cond_21

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_21

    const/4 v2, 0x0

    sput-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    .line 832
    :goto_11
    iget-object v2, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v2, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 834
    sget v2, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    if-eq v2, v6, :cond_9

    .line 835
    const/4 v2, 0x1

    invoke-static {v7, v2}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/String;Z)V

    .line 836
    invoke-static {v6}, Lcom/vkontakte/android/LongPollService;->checkAndPreload(I)V

    goto/16 :goto_a

    .line 818
    .end local v18    # "prevUid":I
    :cond_1f
    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    aget v2, v2, v13

    if-lez v2, :cond_20

    .line 819
    iput v13, v12, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto :goto_10

    .line 817
    :cond_20
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 830
    .restart local v18    # "prevUid":I
    :cond_21
    iget-object v2, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto :goto_11

    .line 846
    .end local v12    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v18    # "prevUid":I
    .restart local v19    # "profiles":Lorg/json/JSONArray;
    .restart local v21    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_22
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iget v3, v4, Lcom/vkontakte/android/Message;->sender:I

    if-ne v2, v3, :cond_23

    .line 847
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v24, "first_name"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v24, "last_name"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 848
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v24

    if-lez v2, :cond_24

    const-string v2, "photo_medium"

    :goto_12
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    iput-object v2, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 845
    :cond_23
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 848
    :cond_24
    const-string v2, "photo"

    goto :goto_12

    .line 862
    .restart local v12    # "e":Lcom/vkontakte/android/DialogEntry;
    :cond_25
    iget-object v2, v4, Lcom/vkontakte/android/Message;->attachCount:[I

    aget v2, v2, v13

    if-lez v2, :cond_26

    .line 863
    iput v13, v12, Lcom/vkontakte/android/DialogEntry;->attachmentType:I

    goto/16 :goto_8

    .line 861
    :cond_26
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 873
    .restart local v18    # "prevUid":I
    :cond_27
    iget-object v2, v12, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    sput-object v2, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto/16 :goto_9

    .line 881
    .end local v12    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v13    # "i":I
    .end local v18    # "prevUid":I
    .end local v19    # "profiles":Lorg/json/JSONArray;
    .end local v21    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_28
    new-instance v24, Lcom/vkontakte/android/api/GetMessageInfo;

    iget v2, v4, Lcom/vkontakte/android/Message;->id:I

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v2}, Lcom/vkontakte/android/api/GetMessageInfo;-><init>(II)V

    .line 882
    new-instance v2, Lcom/vkontakte/android/LongPollService$8;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/vkontakte/android/LongPollService$8;-><init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;ZILjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/api/GetMessageInfo;->setCallback(Lcom/vkontakte/android/api/GetMessageInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v2

    .line 924
    invoke-virtual {v2}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto/16 :goto_a

    .line 927
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 928
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->playNotification()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    .line 716
    .end local v4    # "msg":Lcom/vkontakte/android/Message;
    .end local v6    # "sender":I
    .end local v7    # "text":Ljava/lang/String;
    .end local v9    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Attachment;>;"
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "numAttachments":I
    .end local v20    # "senderPhoto":Ljava/lang/String;
    .end local v22    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private processMessage(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p1, "id"    # I
    .param p2, "sender"    # I
    .param p3, "flags"    # I
    .param p4, "time"    # I
    .param p5, "_text"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "params"    # Ljava/lang/String;

    .prologue
    .line 257
    and-int/lit8 v18, p3, 0x2

    if-lez v18, :cond_9

    const/4 v7, 0x1

    .line 258
    .local v7, "isOut":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 260
    :try_start_0
    sget-object v18, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 261
    sget-object v18, Lcom/vkontakte/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_1
    move-object/from16 v15, p5

    .line 265
    .local v15, "text":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v9, "msgParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p7, :cond_1

    .line 269
    const-string v18, "\t"

    move-object/from16 v0, p7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 270
    .local v13, "pr":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_a

    .line 278
    .end local v5    # "i":I
    .end local v13    # "pr":[Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2, v7}, Lcom/vkontakte/android/cache/DialogsCache;->update(Landroid/content/Context;ILjava/lang/String;Z)Z

    .line 279
    new-instance v8, Lcom/vkontakte/android/Message;

    invoke-direct {v8}, Lcom/vkontakte/android/Message;-><init>()V

    .line 280
    .local v8, "msg":Lcom/vkontakte/android/Message;
    invoke-virtual {v8, v15}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 281
    iput-object v9, v8, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    .line 282
    iput-boolean v7, v8, Lcom/vkontakte/android/Message;->out:Z

    .line 283
    move/from16 v0, p4

    iput v0, v8, Lcom/vkontakte/android/Message;->time:I

    .line 284
    move/from16 v0, p1

    iput v0, v8, Lcom/vkontakte/android/Message;->id:I

    .line 285
    iget-object v0, v8, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string v19, "from"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    iget-object v0, v8, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string v19, "from"

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    :goto_3
    move/from16 v0, v18

    iput v0, v8, Lcom/vkontakte/android/Message;->sender:I

    .line 286
    const/4 v10, 0x0

    .line 287
    .local v10, "numAttachments":I
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_4
    const/16 v18, 0xa

    move/from16 v0, v18

    if-le v5, v0, :cond_c

    .line 300
    :cond_2
    const-string v18, "geo"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 301
    iget-object v0, v8, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v18, v0

    const/16 v19, 0x5

    aget v20, v18, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    .line 305
    :cond_3
    if-lez v10, :cond_4

    .line 306
    new-instance v18, Lcom/vkontakte/android/api/GetMessagePhotos;

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/GetMessagePhotos;-><init>(I)V

    .line 307
    new-instance v19, Lcom/vkontakte/android/LongPollService$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/vkontakte/android/LongPollService$3;-><init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/api/GetMessagePhotos;->setCallback(Lcom/vkontakte/android/api/GetMessagePhotos$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 349
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 352
    :cond_4
    const-string v18, "fwd"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 353
    iget-object v0, v8, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    const-string v18, "fwd"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v21, ","

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    aput v18, v19, v20

    .line 356
    :cond_5
    sget-object v18, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 357
    sget-object v18, Lcom/vkontakte/android/LongPollService;->cachedDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Vector;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_6
    new-instance v6, Landroid/content/Intent;

    const-string v18, "com.vkontakte.android.NEW_MESSAGE"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v6, "intent":Landroid/content/Intent;
    const-string v18, "peer_id"

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string v18, "message"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    const-string v18, "is_out"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 364
    const-string v18, "com.vkontakte.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 367
    if-nez v7, :cond_8

    .line 368
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 369
    .local v17, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 370
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/ChatCache;->add(Landroid/content/Context;ILjava/util/List;Z)V

    .line 371
    sget v18, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    add-int/lit8 v18, v18, 0x1

    sput v18, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 372
    sget-boolean v18, Lcom/vkontakte/android/DialogsActivity;->isActive:Z

    if-nez v18, :cond_15

    .line 373
    sget-object v18, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_12

    .line 416
    new-instance v18, Lcom/vkontakte/android/api/GetMessageInfo;

    iget v0, v8, Lcom/vkontakte/android/Message;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/GetMessageInfo;-><init>(II)V

    .line 417
    new-instance v19, Lcom/vkontakte/android/LongPollService$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-direct {v0, v1, v8, v2, v15}, Lcom/vkontakte/android/LongPollService$4;-><init>(Lcom/vkontakte/android/LongPollService;Lcom/vkontakte/android/Message;ILjava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/vkontakte/android/api/GetMessageInfo;->setCallback(Lcom/vkontakte/android/api/GetMessageInfo$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v18

    .line 458
    invoke-virtual/range {v18 .. v18}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    .line 464
    .end local v17    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_8
    :goto_5
    return-void

    .line 257
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "isOut":Z
    .end local v8    # "msg":Lcom/vkontakte/android/Message;
    .end local v9    # "msgParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "numAttachments":I
    .end local v15    # "text":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 271
    .restart local v5    # "i":I
    .restart local v7    # "isOut":Z
    .restart local v9    # "msgParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "pr":[Ljava/lang/String;
    .restart local v15    # "text":Ljava/lang/String;
    :cond_a
    aget-object v18, v13, v5

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "p1":Ljava/lang/String;
    const-string v18, " "

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, "p2":[Ljava/lang/String;
    const/16 v18, 0x0

    aget-object v18, v12, v18

    const/16 v19, 0x1

    aget-object v19, v12, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .end local v5    # "i":I
    .end local v11    # "p1":Ljava/lang/String;
    .end local v12    # "p2":[Ljava/lang/String;
    .end local v13    # "pr":[Ljava/lang/String;
    .restart local v8    # "msg":Lcom/vkontakte/android/Message;
    :cond_b
    move/from16 v18, p2

    .line 285
    goto/16 :goto_3

    .line 288
    .restart local v5    # "i":I
    .restart local v10    # "numAttachments":I
    :cond_c
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "attach"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_type"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 289
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "attach"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_type"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 290
    .local v16, "tp":Ljava/lang/String;
    const-string v18, "photo"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    iget-object v0, v8, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    .line 291
    :cond_d
    const-string v18, "video"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    iget-object v0, v8, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v20, v18, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    .line 292
    :cond_e
    const-string v18, "audio"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    iget-object v0, v8, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v20, v18, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    .line 293
    :cond_f
    const-string v18, "doc"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    iget-object v0, v8, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v20, v18, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    .line 294
    :cond_10
    const-string v18, "wall"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    iget-object v0, v8, Lcom/vkontakte/android/Message;->attachCount:[I

    move-object/from16 v18, v0

    const/16 v19, 0x6

    aget v20, v18, v19

    add-int/lit8 v20, v20, 0x1

    aput v20, v18, v19

    .line 295
    :cond_11
    add-int/lit8 v10, v10, 0x1

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 373
    .end local v16    # "tp":Ljava/lang/String;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v17    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_12
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/DialogEntry;

    .line 374
    .local v4, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p2

    if-ne v0, v1, :cond_7

    .line 375
    iget-object v0, v8, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/DialogEntry;->setLastMessage(Ljava/lang/String;)V

    .line 376
    iget-boolean v0, v8, Lcom/vkontakte/android/Message;->readState:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/vkontakte/android/DialogEntry;->readState:Z

    .line 377
    iget v0, v8, Lcom/vkontakte/android/Message;->time:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/vkontakte/android/DialogEntry;->time:I

    .line 378
    iget v0, v8, Lcom/vkontakte/android/Message;->id:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/vkontakte/android/DialogEntry;->mid:I

    .line 379
    sget-object v18, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 380
    sget-object v18, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 382
    const/4 v14, 0x0

    .line 383
    .local v14, "prevUid":I
    sget-object v18, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    if-eqz v18, :cond_13

    sget-object v18, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v18

    iget v14, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 384
    :cond_13
    move/from16 v0, p2

    if-eq v14, v0, :cond_14

    sget v18, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    const/16 v18, 0x0

    sput-object v18, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    .line 388
    :goto_6
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v18, v0

    sput-object v18, Lcom/vkontakte/android/LongPollService;->realLastProfile:Lcom/vkontakte/android/UserProfile;

    .line 389
    sget v18, Lcom/vkontakte/android/ChatActivity;->activeUserID:I

    move/from16 v0, v18

    move/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 390
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/vkontakte/android/LongPollService;->updateNotification(Ljava/lang/String;Z)V

    .line 391
    invoke-static/range {p2 .. p2}, Lcom/vkontakte/android/LongPollService;->checkAndPreload(I)V

    goto/16 :goto_5

    .line 386
    :cond_14
    iget-object v0, v4, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v18, v0

    sput-object v18, Lcom/vkontakte/android/LongPollService;->lastMessageProfile:Lcom/vkontakte/android/UserProfile;

    goto :goto_6

    .line 460
    .end local v4    # "e":Lcom/vkontakte/android/DialogEntry;
    .end local v14    # "prevUid":I
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 461
    invoke-static {}, Lcom/vkontakte/android/LongPollService;->playNotification()V

    goto/16 :goto_5

    .line 262
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "msg":Lcom/vkontakte/android/Message;
    .end local v9    # "msgParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "numAttachments":I
    .end local v15    # "text":Ljava/lang/String;
    .end local v17    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :catch_0
    move-exception v18

    goto/16 :goto_1
.end method

.method private processOnlineChange(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "online"    # I

    .prologue
    .line 548
    sget-object v3, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 555
    :goto_0
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 556
    sget-object v3, Lcom/vkontakte/android/DialogsActivity;->dialogs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 565
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.USER_PRESENCE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "uid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const-string v3, "online"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 568
    const-string v3, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 569
    return-void

    .line 548
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/UserProfile;

    .line 549
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    iget v4, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, p1, :cond_0

    .line 550
    iput p2, v2, Lcom/vkontakte/android/UserProfile;->online:I

    goto :goto_0

    .line 556
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/DialogEntry;

    .line 557
    .local v0, "e":Lcom/vkontakte/android/DialogEntry;
    iget-object v4, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iget v4, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v4, p1, :cond_1

    .line 558
    iget-object v3, v0, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    iput p2, v3, Lcom/vkontakte/android/UserProfile;->online:I

    .line 559
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
    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.TYPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    const-string v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 576
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private processVoipHangup(IIZ)V
    .locals 3
    .param p1, "fromID"    # I
    .param p2, "callID"    # I
    .param p3, "replied"    # Z

    .prologue
    .line 629
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.VOIP_HANGUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "call_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    if-eqz p3, :cond_0

    const-string v1, "replied"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 632
    :cond_0
    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method private processVoipIncoming(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "info"    # Lorg/json/JSONObject;

    .prologue
    .line 637
    :try_start_0
    const-string v0, "call_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 638
    .local v2, "callID":I
    const-string v0, "from_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 639
    .local v3, "fromID":I
    sget-object v0, Lcom/vkontakte/android/LongPollService;->receivedCalls:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    .end local v2    # "callID":I
    .end local v3    # "fromID":I
    :goto_0
    return-void

    .line 640
    .restart local v2    # "callID":I
    .restart local v3    # "fromID":I
    :cond_0
    sget-object v0, Lcom/vkontakte/android/LongPollService;->receivedCalls:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "first_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "last_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 642
    .local v4, "userName":Ljava/lang/String;
    const-string v0, "photo_medium_rec"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, "userPhoto":Ljava/lang/String;
    new-instance v6, Lcom/vkontakte/android/api/VoipReceived;

    invoke-direct {v6, v2, v3}, Lcom/vkontakte/android/api/VoipReceived;-><init>(II)V

    .line 645
    new-instance v0, Lcom/vkontakte/android/LongPollService$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/LongPollService$7;-><init>(Lcom/vkontakte/android/LongPollService;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/api/VoipReceived;->setCallback(Lcom/vkontakte/android/api/VoipReceived$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    .end local v2    # "callID":I
    .end local v3    # "fromID":I
    .end local v4    # "userName":Ljava/lang/String;
    .end local v5    # "userPhoto":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private runLongPoll()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 935
    const-string v10, "vk_longpoll"

    const-string v13, "LongPoll starting"

    invoke-static {v10, v13}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v10, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-nez v10, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->startSendingOnline()V

    .line 939
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 940
    const/4 v3, 0x0

    .line 941
    .local v3, "nAttempts":I
    :cond_1
    :goto_0
    iget-boolean v10, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-eqz v10, :cond_2

    .line 1033
    :goto_1
    const-string v10, "vk_longpoll"

    const-string v11, "LongPoll exiting"

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    new-instance v10, Ljava/lang/Thread;

    invoke-direct {v10, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v10, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 1035
    :goto_2
    return-void

    .line 942
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "http://"

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/vkontakte/android/LongPollService;->server:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "?act=a_check&key="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, p0, Lcom/vkontakte/android/LongPollService;->key:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "&ts="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v13, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "&wait=25&mode=9"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 944
    .local v8, "url":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v10, :cond_3

    .line 945
    const-string v10, "vk_longpoll"

    const-string v11, "LongPoll STOPPED"

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 948
    :cond_3
    invoke-direct {p0, v8}, Lcom/vkontakte/android/LongPollService;->getURL(Ljava/lang/String;)[B

    move-result-object v5

    .line 949
    .local v5, "rdata":[B
    iget-boolean v10, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    if-eqz v10, :cond_4

    .line 950
    const-string v10, "vk_longpoll"

    const-string v11, "LongPoll STOPPED"

    invoke-static {v10, v11}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 953
    :cond_4
    if-nez v5, :cond_7

    .line 954
    const/4 v10, 0x6

    if-lt v3, v10, :cond_6

    .line 955
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v10

    if-nez v10, :cond_5

    .line 956
    const-string v10, "vk_longpoll"

    const-string v12, "No network connection, stopping longpoll"

    invoke-static {v10, v12}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iput-boolean v11, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    goto :goto_1

    .line 960
    :cond_5
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V

    .line 961
    const/4 v3, 0x0

    .line 962
    const-string v10, "vk_longpoll"

    const-string v13, "6 errors, reloading server info"

    invoke-static {v10, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 965
    :cond_6
    const-string v10, "vk_longpoll"

    const-string v13, "Connection error. Retry in 5 sec"

    invoke-static {v10, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-wide/16 v13, 0x1388

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 969
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 970
    goto/16 :goto_0

    .line 972
    :cond_7
    sput-boolean v11, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 974
    :try_start_1
    new-instance v6, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-direct {v6, v5, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 975
    .local v6, "resp":Ljava/lang/String;
    invoke-static {v6}, Lcom/vkontakte/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 977
    new-instance v10, Lorg/json/JSONTokener;

    invoke-direct {v10, v6}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 978
    .local v4, "r":Lorg/json/JSONObject;
    const-string v10, "failed"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 979
    const-string v10, "vk_longpoll"

    const-string v13, "Got \'failed\', reloading server info"

    invoke-static {v10, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateServerInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1029
    .end local v4    # "r":Lorg/json/JSONObject;
    .end local v6    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1030
    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk_longpoll"

    const-string v13, "Exception while parsing"

    invoke-static {v10, v13, v9}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 983
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v4    # "r":Lorg/json/JSONObject;
    .restart local v6    # "resp":Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string v10, "ts"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/vkontakte/android/LongPollService;->ts:I

    .line 984
    const-string v10, "updates"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 985
    .local v7, "u":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 986
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 987
    .local v0, "ev":Lorg/json/JSONArray;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 988
    .local v1, "evtype":I
    sparse-switch v1, :sswitch_data_0

    .line 1025
    const-string v10, "vk_longpoll"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Unknown event "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    :goto_5
    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 993
    :sswitch_1
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    invoke-direct {p0, v10, v13, v14}, Lcom/vkontakte/android/LongPollService;->processClearFlags(III)V

    goto :goto_5

    .line 996
    :sswitch_2
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v14

    invoke-direct {p0, v10, v13, v14}, Lcom/vkontakte/android/LongPollService;->processAddFlags(III)V

    goto :goto_5

    .line 999
    :sswitch_3
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/vkontakte/android/LongPollService;->processExtendedMessage(Lorg/json/JSONObject;)V

    goto :goto_5

    .line 1002
    :sswitch_4
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    neg-int v10, v10

    const/4 v13, 0x1

    invoke-direct {p0, v10, v13}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(II)V

    goto :goto_5

    .line 1006
    :sswitch_5
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    neg-int v10, v10

    const/4 v13, 0x0

    invoke-direct {p0, v10, v13}, Lcom/vkontakte/android/LongPollService;->processOnlineChange(II)V

    goto :goto_5

    .line 1009
    :sswitch_6
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-direct {p0, v10, v13}, Lcom/vkontakte/android/LongPollService;->processTyping(II)V

    goto :goto_5

    .line 1012
    :sswitch_7
    const v10, 0x77359400

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    add-int/2addr v10, v13

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-direct {p0, v10, v13}, Lcom/vkontakte/android/LongPollService;->processTyping(II)V

    goto :goto_5

    .line 1016
    :sswitch_8
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v13, "from_id"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v14, "call_id"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const/16 v10, 0x6f

    if-ne v1, v10, :cond_9

    move v10, v11

    :goto_6
    invoke-direct {p0, v13, v14, v10}, Lcom/vkontakte/android/LongPollService;->processVoipHangup(IIZ)V

    goto/16 :goto_5

    :cond_9
    move v10, v12

    goto :goto_6

    .line 1019
    :sswitch_9
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/vkontakte/android/LongPollService;->processVoipIncoming(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 968
    .end local v0    # "ev":Lorg/json/JSONArray;
    .end local v1    # "evtype":I
    .end local v2    # "i":I
    .end local v4    # "r":Lorg/json/JSONObject;
    .end local v6    # "resp":Ljava/lang/String;
    .end local v7    # "u":Lorg/json/JSONArray;
    :catch_1
    move-exception v10

    goto/16 :goto_3

    .line 988
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x3d -> :sswitch_6
        0x3e -> :sswitch_7
        0x65 -> :sswitch_3
        0x6e -> :sswitch_9
        0x6f -> :sswitch_8
        0x70 -> :sswitch_8
    .end sparse-switch
.end method

.method private runSlowPoll()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1038
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

    .line 1039
    .local v0, "pushSupported":Z
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 1040
    iget-object v1, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1041
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    .line 1043
    :cond_1
    if-nez v0, :cond_2

    sget v1, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1046
    :cond_2
    const-wide v1, 0x7fffffffffffffffL

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1085
    :goto_1
    return-void

    .line 1051
    :cond_3
    const-string v1, "vk_longpoll"

    const-string v2, "SlowPoll starting"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/LongPollService;->lastReqTime:J

    .line 1053
    :goto_2
    iget-boolean v1, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-nez v1, :cond_4

    .line 1082
    const-string v1, "vk_longpoll"

    const-string v2, "SlowPoll exiting"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 1054
    :cond_4
    :try_start_1
    sget v1, Lcom/vkontakte/android/MainActivity;->updateInterval:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1057
    :goto_3
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1058
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

    .line 1059
    new-instance v2, Lcom/vkontakte/android/LongPollService$9;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$9;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1080
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_2

    .line 1046
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1054
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private start()V
    .locals 3

    .prologue
    .line 198
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

    .line 199
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    if-eqz v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->started:Z

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->needStop:Z

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 208
    :cond_0
    return-void
.end method

.method public static updateNotification(Ljava/lang/String;Z)V
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "forceSound"    # Z

    .prologue
    .line 1104
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "NumNewMessages="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :try_start_0
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1107
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    sget-object v7, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v7, :cond_0

    .line 1108
    sget-object v7, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    new-instance v8, Lcom/vkontakte/android/LongPollService$10;

    invoke-direct {v8}, Lcom/vkontakte/android/LongPollService$10;-><init>()V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1115
    :cond_0
    sget-object v7, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v8, "messages"

    sget v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v7, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 1117
    :cond_1
    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-nez v7, :cond_2

    .line 1118
    const/4 v7, 0x0

    sput v7, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 1119
    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1178
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 1122
    .restart local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v8, Lcom/vkontakte/android/LinkRedirActivity;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1126
    .local v3, "notificationIntent":Landroid/content/Intent;
    const-string v7, "messages"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    const-string v7, "messages"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1129
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1131
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v8, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1132
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string v7, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1152
    .local v4, "pendingCancel":Landroid/app/PendingIntent;
    const-string v7, "<br>"

    const-string v8, "/"

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1155
    invoke-static {p0, v1}, Lcom/vkontakte/android/LongPollService;->createNotification(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v7

    sput-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1156
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 1158
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

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1160
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

    .line 1161
    :cond_3
    sget-boolean v7, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    if-eqz v7, :cond_4

    .line 1162
    sget-object v7, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    if-eqz v7, :cond_7

    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget-object v8, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    iput-object v8, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1165
    :cond_4
    :goto_1
    sget-boolean v7, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 1166
    :cond_5
    sget-boolean v7, Lcom/vkontakte/android/MainActivity;->notifyLED:Z

    if-eqz v7, :cond_6

    .line 1167
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 1168
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 1171
    :cond_6
    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    sput v7, Lcom/vkontakte/android/LongPollService;->prevNumNewMessages:I

    .line 1172
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget v8, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    iput v8, v7, Landroid/app/Notification;->number:I

    .line 1173
    sget-object v7, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iput-object v4, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1174
    const/16 v7, 0xa

    sget-object v8, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v2, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1175
    .end local v0    # "cancelIntent":Landroid/content/Intent;
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v3    # "notificationIntent":Landroid/content/Intent;
    .end local v4    # "pendingCancel":Landroid/app/PendingIntent;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    .line 1176
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1163
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
    .line 134
    :try_start_0
    sget-boolean v1, Lcom/vkontakte/android/Global;->inited:Z

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vkontakte/android/Global;->inited:Z

    .line 136
    invoke-virtual {p0}, Lcom/vkontakte/android/LongPollService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    .line 137
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vkontakte/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 138
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "sid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "uid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/vkontakte/android/Global;->uid:I

    .line 140
    const-string v1, "sid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/Global;->accessToken:Ljava/lang/String;

    .line 141
    const-string v1, "secret"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vkontakte/android/Global;->secret:Ljava/lang/String;

    .line 147
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    new-instance v1, Lcom/vkontakte/android/APIRequest;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v2, "code"

    const-string v3, "return {c:API.getCounters(),s:API.messages.getLongPollServer(),fo:API.friends.getOnline()};"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 150
    new-instance v2, Lcom/vkontakte/android/LongPollService$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/LongPollService$1;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 149
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcom/vkontakte/android/APIRequest;->execSync()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateTabBadge()V
    .locals 3

    .prologue
    .line 534
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v0, :cond_0

    .line 535
    sget-object v0, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    new-instance v1, Lcom/vkontakte/android/LongPollService$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$5;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 543
    :cond_0
    sget-object v0, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    const-string v1, "messages"

    sget v2, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 545
    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 1251
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 1278
    const-string v0, "vk_longpoll"

    const-string v1, "Starting LongPoll service."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    sput-object p0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    .line 1280
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->start()V

    .line 1281
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1285
    const-string v0, "vk_longpoll"

    const-string v1, "Stopping LongPoll service."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->stop()V

    .line 1287
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1266
    const-string v0, "com.vkontakte.android.CANCEL_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1267
    const/4 v0, 0x0

    sput-object v0, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1269
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-nez v0, :cond_0

    .line 582
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    .line 583
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->runLongPoll()V

    .line 584
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    sput-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollActive:Z

    .line 586
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->runSlowPoll()V

    goto :goto_0
.end method

.method public setNormalMode()V
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 1396
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public setNumUnread(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 192
    sput p1, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 194
    invoke-direct {p0}, Lcom/vkontakte/android/LongPollService;->updateTabBadge()V

    .line 195
    return-void
.end method

.method public setSlowMode()V
    .locals 1

    .prologue
    .line 1372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    .line 1373
    return-void
.end method

.method public setSlowModeDelayed()V
    .locals 4

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/LongPollService;->slowMode:Z

    if-eqz v0, :cond_1

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1379
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    .line 1380
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/LongPollService$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$12;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 1386
    const-wide/32 v2, 0x2bf20

    .line 1380
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1387
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startSendingOnline()V
    .locals 6

    .prologue
    .line 1225
    new-instance v1, Lcom/vkontakte/android/LongPollService$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$11;-><init>(Lcom/vkontakte/android/LongPollService;)V

    .line 1239
    .local v1, "tt":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1241
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    .line 1245
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0xdbba0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1246
    return-void

    .line 1242
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateCounters()V
    .locals 3

    .prologue
    .line 211
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 212
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "getCounters"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v1, Lcom/vkontakte/android/LongPollService$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$2;-><init>(Lcom/vkontakte/android/LongPollService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public updateNotification()V
    .locals 3

    .prologue
    .line 1088
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1089
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    sput-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1091
    sget-boolean v1, Lcom/vkontakte/android/MainActivity;->notifySound:Z

    if-eqz v1, :cond_0

    .line 1092
    sget-object v1, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    sget-object v2, Lcom/vkontakte/android/Global;->prefNotifyRingtone:Landroid/net/Uri;

    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1095
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/vkontakte/android/MainActivity;->notifyVibration:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1100
    :cond_1
    const/16 v1, 0xa

    sget-object v2, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1101
    return-void

    .line 1093
    :cond_2
    sget-object v1, Lcom/vkontakte/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    goto :goto_0
.end method
