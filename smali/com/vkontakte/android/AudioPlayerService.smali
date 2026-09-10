.class public Lcom/vkontakte/android/AudioPlayerService;
.super Landroid/app/Service;
.source "AudioPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;,
        Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;,
        Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;,
        Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_FILE:I = 0x1

.field public static final ACTION_NEW_PLAYLIST:I = 0x2

.field public static final ACTION_NEXT_TRACK:I = 0x5

.field public static final ACTION_PAUSE_IF_PLAYING:I = 0x7

.field public static final ACTION_PLAY_IF_PAUSED:I = 0x8

.field public static final ACTION_PLAY_PAUSE:I = 0x3

.field public static final ACTION_PREV_TRACK:I = 0x6

.field public static final ACTION_SHOW_PLAYER:I = 0x4

.field public static final B_ACTION_PLAYER_CONTROL:Ljava/lang/String; = "com.vkontakte.android.PLAYER_CONTROL"

.field public static final B_ACTION_UPDATE_AUDIO_LISTS:Ljava/lang/String; = "com.vkontakte.android.UPDATE_AUDIO_LISTS"

.field private static final ID_NOTIFICATION:I = 0x12c

.field private static final MIN_SPACE_TO_CACHE:J = 0x3200000L

.field private static final PROXY_PORT:I = 0xbcc9

.field public static final STATE_INITING:I = 0x3

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_STOPPED:I

.field private static attachCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static listToPlay:[Lcom/vkontakte/android/AudioFile;

.field private static notificationContentIntent:Landroid/app/PendingIntent;

.field private static pauseAfterInit:Z

.field private static progressCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static sharedInstance:Lcom/vkontakte/android/AudioPlayerService;


# instance fields
.field private attachViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/AudioAttachView;",
            ">;"
        }
    .end annotation
.end field

.field private broadcastEnabled:Z

.field private buggyPlayer:Z

.field private cacheCurrent:Z

.field private callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

.field private cancelReleaseWifiLock:Z

.field private currentFile:Lcom/vkontakte/android/AudioFile;

.field private currentIsCached:Z

.field private currentPlaylist:[Lcom/vkontakte/android/AudioFile;

.field private errorRetries:I

.field private haveAudioFocus:Z

.field private headsetPlugState:Z

.field initing:Z

.field private loop:Z

.field private nBuffered:I

.field private nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field private notificationViews:Landroid/widget/RemoteViews;

.field private pausedByCall:Z

.field private pausedBySystem:Z

.field private player:Landroid/media/MediaPlayer;

.field private playlistPosition:I

.field private random:Z

.field private randomPlaylist:[Lcom/vkontakte/android/AudioFile;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

.field private statusUserID:I

.field private telManager:Landroid/telephony/TelephonyManager;

.field private timer:Ljava/util/Timer;

.field private view:Lcom/vkontakte/android/AudioPlayerView;

.field private widgetViews:Landroid/widget/RemoteViews;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 74
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 75
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 79
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 80
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 81
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 83
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 87
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    .line 88
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->cacheCurrent:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    .line 90
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    .line 93
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 94
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->broadcastEnabled:Z

    .line 96
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    .line 97
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 98
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    .line 99
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    .line 102
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    .line 105
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    .line 110
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioPlayerService$1;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    return-void
.end method

.method static synthetic access$10()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->broadcastEnabled:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method static synthetic access$17(Z)V
    .locals 0

    .prologue
    .line 108
    sput-boolean p0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->doStartPlayer()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$20()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    return v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->startUpdatingProgress()V

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    return v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/AudioPlayerService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    return v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;I)V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    return-object v0
.end method

.method public static addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .prologue
    .line 168
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public static addProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .prologue
    .line 177
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioPlayerService;->startUpdatingProgress()V

    .line 179
    :cond_0
    return-void
.end method

.method private broadcastPlayStateChanged(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x1

    .line 539
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v2, :cond_0

    .line 571
    :goto_0
    return-void

    .line 545
    :cond_0
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 546
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 547
    .local v1, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    if-eqz p1, :cond_4

    .line 552
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_3

    .line 553
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 556
    :goto_2
    const-string v2, "vk"

    const-string v3, "acquired wifi lock"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v2

    goto :goto_0

    .line 545
    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .local v0, "c":Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    if-eqz p1, :cond_2

    move v2, v3

    :goto_3
    invoke-interface {v0, v5, v6, v2}, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    goto :goto_3

    .line 555
    .end local v0    # "c":Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
    .restart local v1    # "intent2":Landroid/content/Intent;
    :cond_3
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    goto :goto_2

    .line 558
    :cond_4
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerService$6;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 567
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private doStartPlayer()V
    .locals 10

    .prologue
    .line 377
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    .line 379
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 381
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 383
    :cond_0
    monitor-enter p0

    .line 385
    :try_start_1
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 389
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 391
    :cond_1
    const-string v5, "vk"

    const-string v6, "player starting"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 393
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 395
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 396
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v5, :cond_2

    .line 405
    const-string v5, "vk"

    const-string v6, "Player=null"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    :goto_1
    return-void

    .line 408
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 409
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 410
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 411
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 412
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 413
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 414
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v2

    .line 415
    .local v2, "isCached":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "enableAudioCache"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 416
    .local v1, "enableCache":Z
    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-nez v5, :cond_3

    .line 417
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 418
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->updatePlayTime(II)V

    .line 419
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ".vkontakte/cache/audio/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v9, v9, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v9, v9, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 440
    .end local v1    # "enableCache":Z
    .end local v2    # "isCached":Z
    :goto_2
    const-string v5, "vk"

    const-string v6, "player preparing"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 442
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerService$5;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    :goto_3
    :try_start_4
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 420
    .restart local v1    # "enableCache":Z
    .restart local v2    # "isCached":Z
    :cond_3
    if-eqz v1, :cond_4

    :try_start_5
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getExternalFreeSpace()J

    move-result-wide v5

    const-wide/32 v7, 0x3200000

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5

    :cond_4
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v5, :cond_a

    if-eqz v2, :cond_a

    .line 421
    :cond_5
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    if-nez v5, :cond_6

    if-nez v2, :cond_6

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 422
    :cond_6
    if-eqz v2, :cond_7

    :try_start_7
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 423
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "___"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "___"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v3

    .line 425
    .local v3, "u":Ljava/lang/String;
    :try_start_8
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_9

    .line 426
    const-string v5, "android.util.Base64"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "encodeToString"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, [B

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-virtual {v3, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0xb

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    .local v0, "b64":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "http://127.0.0.1:48329/"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v5, :cond_8

    const-string v5, ".mp3"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 431
    .end local v0    # "b64":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 427
    .restart local v0    # "b64":Ljava/lang/String;
    :cond_8
    const-string v5, ""

    goto :goto_4

    .line 429
    .end local v0    # "b64":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://127.0.0.1:48329/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 433
    .end local v3    # "u":Ljava/lang/String;
    :cond_a
    :try_start_9
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v5

    if-nez v5, :cond_b

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 434
    :cond_b
    :try_start_b
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 469
    .end local v1    # "enableCache":Z
    .end local v2    # "isCached":Z
    :catch_1
    move-exception v4

    .line 470
    .local v4, "x":Ljava/lang/Exception;
    :try_start_c
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 437
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_c
    :try_start_d
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v5

    if-nez v5, :cond_d

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 438
    :cond_d
    :try_start_f
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 380
    :catch_2
    move-exception v5

    goto/16 :goto_0
.end method

.method private getExternalFreeSpace()J
    .locals 5

    .prologue
    .line 1091
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private playNewFile(Lcom/vkontakte/android/AudioFile;)V
    .locals 6
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v5, 0x1

    .line 297
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-nez p1, :cond_0

    .line 374
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v2, :cond_1

    .line 300
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(II)V

    .line 301
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 303
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 304
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->registerRemoteControl()V

    .line 307
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$2;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 326
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 327
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 329
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 330
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v2, :cond_2

    .line 331
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$3;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$3;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 342
    :cond_2
    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 343
    sget-object v2, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v2, :cond_3

    .line 344
    sget-object v2, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 345
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_4

    .line 346
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v3, 0x7f060020

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 347
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v3, 0x7f060021

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 352
    :goto_1
    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 353
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 355
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerService$4;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 369
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 373
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto/16 :goto_0

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->notificationContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 353
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .local v0, "c":Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v4, v4, Lcom/vkontakte/android/AudioFile;->aid:I

    const/4 v5, 0x3

    invoke-interface {v0, v3, v4, v5}, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    goto :goto_2
.end method

.method private playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V
    .locals 8
    .param p1, "files"    # [Lcom/vkontakte/android/AudioFile;
    .param p2, "startPos"    # I

    .prologue
    const/4 v7, 0x0

    .line 476
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 477
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v5, :cond_0

    .line 478
    array-length v5, p1

    new-array v5, v5, [Lcom/vkontakte/android/AudioFile;

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 479
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    array-length v5, p1

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 481
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 482
    .local v3, "rand":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_1

    .line 495
    .end local v0    # "i":I
    .end local v3    # "rand":Ljava/util/Random;
    :cond_0
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 496
    aget-object v5, p1, p2

    invoke-direct {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    .line 497
    return-void

    .line 483
    .restart local v0    # "i":I
    .restart local v3    # "rand":Ljava/util/Random;
    :cond_1
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 484
    .local v1, "pos1":I
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 485
    .local v2, "pos2":I
    if-eq v1, v2, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v2, p2, :cond_2

    .line 486
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v4, v5, v1

    .line 487
    .local v4, "tmp":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v6, v6, v2

    aput-object v6, v5, v1

    .line 488
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aput-object v4, v5, v2

    .line 482
    .end local v4    # "tmp":Lcom/vkontakte/android/AudioFile;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .prologue
    .line 172
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method

.method public static removeProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .prologue
    .line 183
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioPlayerService;->stopUpdatingProgress()V

    .line 185
    :cond_0
    return-void
.end method

.method private startUpdatingProgress()V
    .locals 6

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 189
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 190
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 192
    :cond_1
    return-void
.end method

.method private stopUpdatingProgress()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 199
    :cond_0
    return-void
.end method

.method private updateWidgets()V
    .locals 12

    .prologue
    .line 984
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 987
    .local v0, "awm":Landroid/appwidget/AppWidgetManager;
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030050

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    .line 989
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 990
    .local v6, "playpause":Landroid/content/Intent;
    const-string v9, "PlayPause"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 991
    const-string v9, "action"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 992
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v6, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 993
    .local v3, "pendingPlaypause":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017a

    invoke-virtual {v9, v10, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 995
    new-instance v1, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v1, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 996
    .local v1, "nextTrack":Landroid/content/Intent;
    const-string v9, "Next"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 997
    const-string v9, "action"

    const/4 v10, 0x5

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 998
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v1, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 999
    .local v2, "pendingNextTrack":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017b

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1001
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1002
    .local v7, "prevTrack":Landroid/content/Intent;
    const-string v9, "Prev"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v9, "action"

    const/4 v10, 0x6

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1004
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v7, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1005
    .local v4, "pendingPrevTrack":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060179

    invoke-virtual {v9, v10, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1007
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1008
    .local v8, "showPlayer":Landroid/content/Intent;
    const-string v9, "Show"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v9, "action"

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1010
    const-string v9, "from_notify"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1011
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v8, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1012
    .local v5, "pendingShowPlayer":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017c

    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1015
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v9, :cond_2

    .line 1016
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017d

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1017
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017e

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1019
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017f

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1021
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1022
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017a

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1023
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1024
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060179

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1025
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    if-eqz v9, :cond_0

    .line 1026
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x3

    :goto_0
    invoke-virtual {v10, v9}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 1028
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->editMetadata(Z)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v9

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v9

    .line 1029
    const/16 v10, 0xd

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v9

    .line 1030
    const/4 v10, 0x7

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v9

    .line 1031
    invoke-virtual {v9}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 1042
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v11, 0x7f06017a

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f0201c9

    :goto_2
    invoke-virtual {v10, v11, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1044
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/vkontakte/android/PlayerWidget;

    invoke-direct {v9, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v10}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 1045
    return-void

    .line 1026
    :cond_1
    const/4 v9, 0x2

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1036
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017c

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1037
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017a

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1038
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06017b

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1039
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060179

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 1042
    :cond_3
    const v9, 0x7f0201ca

    goto :goto_2
.end method


# virtual methods
.method public addAttachView(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkontakte/android/AudioAttachView;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 760
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    .line 761
    return-void
.end method

.method public cacheCurrentFile()V
    .locals 1

    .prologue
    .line 1087
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    .line 1088
    return-void
.end method

.method public fadeIn()V
    .locals 2

    .prologue
    .line 1134
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$14;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1143
    return-void
.end method

.method public fadeIn(F)V
    .locals 2
    .param p1, "from"    # F

    .prologue
    .line 1146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$15;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$15;-><init>(Lcom/vkontakte/android/AudioPlayerService;F)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1155
    return-void
.end method

.method public fadeOut(F)V
    .locals 2
    .param p1, "to"    # F

    .prologue
    .line 1158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$16;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$16;-><init>(Lcom/vkontakte/android/AudioPlayerService;F)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1167
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1168
    return-void
.end method

.method public fillInfo(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f060025

    const/4 v7, 0x2

    const/4 v9, 0x1

    const v6, 0x7f060182

    const/4 v4, 0x0

    .line 941
    if-nez p1, :cond_0

    .line 965
    :goto_0
    return-void

    .line 942
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 943
    const v3, 0x7f060185

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-boolean v3, Lcom/vkontakte/android/MainActivity;->showBack:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 944
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v3, :cond_3

    .line 945
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09007f

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    :cond_1
    :goto_2
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v3, :cond_5

    .line 950
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    const v3, 0x7f060026

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    const v3, 0x7f060029

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    div-int/lit16 v2, v3, 0x3e8

    .line 955
    .local v2, "pos":I
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 956
    .local v1, "p":F
    const-string v3, "%d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    div-int/lit8 v6, v2, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    rem-int/lit8 v6, v2, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, "ds":Ljava/lang/String;
    const v3, 0x7f060028

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 958
    const v3, 0x7f060028

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    mul-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 959
    const v3, 0x7f060027

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    .end local v0    # "ds":Ljava/lang/String;
    .end local v1    # "p":F
    .end local v2    # "pos":I
    :goto_3
    const v3, 0x7f06002d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f02015f

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 943
    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_1

    .line 947
    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 961
    :cond_4
    const v4, 0x7f020162

    goto :goto_4

    .line 963
    :cond_5
    const-string v3, "vk"

    const-string v4, "WTF?!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 960
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public getAid()I
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 755
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentFile()Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method public getOid()I
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 750
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPlaylistPosition()I
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->broadcastEnabled:Z

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .prologue
    .line 1048
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 578
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v3, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 578
    goto :goto_0

    .line 580
    :cond_2
    :try_start_0
    iget-boolean v3, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "x":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    goto :goto_0
.end method

.method public isRandom()Z
    .locals 1

    .prologue
    .line 1061
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    return v0
.end method

.method public isViewShown()Z
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextTrack()V
    .locals 3

    .prologue
    .line 654
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 692
    :goto_0
    return-void

    .line 655
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_3

    .line 658
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 659
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 660
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    aget-object v0, v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    aget-object v0, v0, v1

    goto :goto_1

    .line 662
    :cond_3
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "status.get"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 663
    const-string v1, "uid"

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 664
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$8;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 647
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 648
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    mul-int/lit8 v2, p2, 0xa

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->setBuffered(I)V

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_1

    .line 650
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 651
    :cond_1
    return-void

    .line 650
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .local v0, "pc":Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    mul-int/lit8 v4, p2, 0xa

    invoke-interface {v0, v2, v3, v4}, Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;->onBufferProgressChanged(III)V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 703
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 704
    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 705
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_3

    .line 706
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    if-lez v1, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    .line 709
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    if-gtz v1, :cond_1

    const/4 v1, 0x5

    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    .line 722
    :cond_1
    :goto_1
    return-void

    .line 703
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .local v0, "av":Lcom/vkontakte/android/AudioAttachView;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    goto :goto_0

    .line 713
    .end local v0    # "av":Lcom/vkontakte/android/AudioAttachView;
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 714
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    new-instance v2, Lcom/vkontakte/android/AudioPlayerService$9;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioPlayerService$9;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 208
    sput-object p0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    .line 209
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    .line 210
    new-instance v6, Landroid/app/Notification;

    const v7, 0x7f0201a5

    const-wide/16 v8, 0x0

    invoke-direct {v6, v7, v11, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    .line 211
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "action"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const-string v6, "from_notify"

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    const/high16 v6, 0x8000000

    invoke-static {p0, v10, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 216
    .local v3, "pintent":Landroid/app/PendingIntent;
    sput-object v3, Lcom/vkontakte/android/AudioPlayerService;->notificationContentIntent:Landroid/app/PendingIntent;

    .line 217
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {v6, p0, v11, v11, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 219
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v4, "playpause":Landroid/content/Intent;
    const-string v6, "PlayPauseN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v6, "action"

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v6, "from_notify"

    invoke-virtual {v4, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-static {p0, v10, v4, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 224
    .local v2, "pendingPlaypause":Landroid/app/PendingIntent;
    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v6, :cond_0

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 225
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030009

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    .line 226
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v7, 0x7f060022

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 227
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 230
    :cond_0
    new-instance v5, Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkontakte/android/cache/AudioCache$Proxy;-><init>(Landroid/content/Context;)V

    .line 231
    .local v5, "proxy":Lcom/vkontakte/android/cache/AudioCache$Proxy;
    invoke-virtual {v5}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->start()V

    .line 233
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v6, :cond_1

    .line 234
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 235
    .local v1, "mgr":Landroid/net/wifi/WifiManager;
    const-string v6, "vk_audio_streaming_player"

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 237
    .end local v1    # "mgr":Landroid/net/wifi/WifiManager;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_2

    .line 238
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 239
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 244
    :cond_2
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/system/lib/libCedarX.so"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    iput-boolean v6, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    .line 245
    iget-boolean v6, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v6, :cond_3

    const-string v6, "vk"

    const-string v7, "Found CedarX, enabling workaround!"

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_3
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 968
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(II)V

    .line 969
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 970
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 971
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 972
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 975
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 976
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 769
    if-ne p2, v0, :cond_2

    const/16 v2, -0x3ec

    if-ne p3, v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-boolean v2, v2, Lcom/vkontakte/android/AudioFile;->retried:Z

    if-nez v2, :cond_2

    .line 771
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioListActivity;->getOwnerID()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_1

    .line 772
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->reloadCurrentList(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput-object v3, v1, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 774
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput-boolean v0, v1, Lcom/vkontakte/android/AudioFile;->retried:Z

    .line 775
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput-object v3, v1, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 779
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput-boolean v0, v1, Lcom/vkontakte/android/AudioFile;->retried:Z

    .line 780
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    .line 784
    :cond_2
    const/16 v2, -0x26

    if-eq p2, v2, :cond_0

    .line 787
    const-string v0, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaPlayer error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 789
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    move v0, v1

    .line 790
    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vkontakte/android/AudioPlayerService;->onStartCommand(Landroid/content/Intent;II)I

    .line 251
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    const-string v6, "action"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 256
    .local v0, "act":I
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "action="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/vkontakte/android/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    const/4 v4, 0x2

    return v4

    .line 259
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :pswitch_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 260
    const-string v5, "act_uid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 261
    const-string v4, "file"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    .line 264
    :pswitch_1
    const-string v5, "list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 265
    .local v3, "pa":[Landroid/os/Parcelable;
    const-string v5, "act_uid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 266
    array-length v5, v3

    if-nez v5, :cond_0

    .line 267
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->listToPlay:[Lcom/vkontakte/android/AudioFile;

    const-string v6, "position"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v5, v4}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_0

    .line 269
    :cond_0
    array-length v5, v3

    new-array v1, v5, [Lcom/vkontakte/android/AudioFile;

    .line 270
    .local v1, "af":[Lcom/vkontakte/android/AudioFile;
    array-length v5, v3

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    const-string v5, "position"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_0

    .line 275
    .end local v1    # "af":[Lcom/vkontakte/android/AudioFile;
    .end local v3    # "pa":[Landroid/os/Parcelable;
    :pswitch_2
    const-string v6, "from_notify"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause(Z)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 278
    :pswitch_3
    const-string v6, "no_anim"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    const-string v5, "from_notify"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/AudioPlayerService;->showPlayer(ZZ)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_2

    .line 281
    :pswitch_4
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    goto :goto_0

    .line 284
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto/16 :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public prevTrack()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 696
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 697
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 698
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    aget-object v0, v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    aget-object v0, v0, v1

    goto :goto_1
.end method

.method public registerPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 6
    .param p1, "a"    # Lcom/vkontakte/android/AudioPlayerView;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    .line 588
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 589
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 590
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 591
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$7;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$7;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 598
    return-void
.end method

.method public registerRemoteControl()V
    .locals 9

    .prologue
    .line 794
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 796
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "registerMediaButtonEventReceiver"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/ComponentName;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 797
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 800
    .local v2, "mediaButtonIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 802
    .local v3, "mediaPendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$10;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 855
    .local v1, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget-boolean v4, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    if-nez v4, :cond_0

    .line 856
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Request audio focus. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "requestAudioFocus"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-string v8, "android.media.AudioManager$OnAudioFocusChangeListener"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 858
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/AudioPlayerService$11;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/AudioPlayerService$11;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 862
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 865
    :cond_0
    new-instance v4, Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-direct {v4, v3}, Lcom/vkontakte/android/media/RemoteControlClientCompat;-><init>(Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "registerRemoteControlClient"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-string v8, "android.media.RemoteControlClient"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 867
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {v7}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 870
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/16 v5, 0x95

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setTransportControlFlags(I)V

    .line 874
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->editMetadata(Z)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    .line 875
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    .line 876
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    .line 877
    invoke-virtual {v4}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 878
    const-string v4, "vk"

    const-string v5, "registered..."

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    .end local v1    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v3    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public removeAttachView(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkontakte/android/AudioAttachView;

    .prologue
    .line 764
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 765
    return-void
.end method

.method public removeCurrentFile()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 906
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v4, v4, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v2

    .line 907
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v4, :cond_0

    .line 909
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [Lcom/vkontakte/android/AudioFile;

    .line 911
    .local v1, "list":[Lcom/vkontakte/android/AudioFile;
    array-length v4, v1

    if-nez v4, :cond_3

    .line 914
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 915
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 916
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 917
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 918
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 919
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 921
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    :goto_2
    move v2, v3

    .line 923
    goto :goto_0

    .line 915
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .local v0, "av":Lcom/vkontakte/android/AudioAttachView;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 922
    .end local v0    # "av":Lcom/vkontakte/android/AudioAttachView;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 926
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 927
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 930
    iget v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    iput v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 931
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 3
    .param p1, "p"    # I

    .prologue
    .line 611
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    int-to-float v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBroadcast(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1101
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 1127
    :goto_0
    return-void

    .line 1102
    :cond_0
    if-eqz p1, :cond_1

    .line 1103
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "execute"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1104
    const-string v1, "code"

    const-string v2, "API.audio.setBroadcast({enabled: 1}); API.status.set({audio:\"%d_%d\"});"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v4, v4, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1105
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$12;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1113
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1115
    :cond_1
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.setBroadcast"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 1116
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1117
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$13;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1125
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public setCurrentFile(Lcom/vkontakte/android/AudioFile;)V
    .locals 1
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 1097
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 1098
    return-void
.end method

.method public setCurrentFileIDs(II)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 979
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput p1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 980
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput p2, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 981
    return-void
.end method

.method public setLoop(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 1052
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    .line 1053
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1055
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1056
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRandom(Z)V
    .locals 9
    .param p1, "random"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1065
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    .line 1066
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v5, :cond_0

    .line 1067
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    new-array v5, v5, [Lcom/vkontakte/android/AudioFile;

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 1068
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1069
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 1070
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1071
    .local v3, "rand":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_1

    .line 1084
    .end local v0    # "i":I
    .end local v3    # "rand":Ljava/util/Random;
    :cond_0
    return-void

    .line 1072
    .restart local v0    # "i":I
    .restart local v3    # "rand":Ljava/util/Random;
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1073
    .local v1, "pos1":I
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1074
    .local v2, "pos2":I
    if-eq v1, v2, :cond_2

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-eq v1, v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-eq v2, v5, :cond_2

    .line 1075
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v4, v5, v1

    .line 1076
    .local v4, "tmp":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v6, v6, v2

    aput-object v6, v5, v1

    .line 1077
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aput-object v4, v5, v2

    .line 1071
    .end local v4    # "tmp":Lcom/vkontakte/android/AudioFile;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1079
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "vol"    # F

    .prologue
    .line 883
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showPlayer(ZZ)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "fromNotification"    # Z

    .prologue
    .line 725
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 742
    :goto_0
    return-void

    .line 731
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 732
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 733
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_3

    .line 734
    const-string v1, "list"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 735
    const-string v1, "position"

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    :goto_1
    if-nez p1, :cond_1

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 740
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "from_remote"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 741
    :cond_2
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 737
    :cond_3
    const-string v1, "file"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public togglePlayPause()V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause(Z)V

    .line 501
    return-void
.end method

.method public togglePlayPause(Z)V
    .locals 3
    .param p1, "cancelNotify"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 504
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v0, :cond_3

    .line 505
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    .line 506
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 536
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 505
    goto :goto_0

    :cond_2
    move v1, v2

    .line 506
    goto :goto_1

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 512
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 513
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 521
    :goto_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 533
    :goto_4
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->setPlaying(Z)V

    .line 534
    :cond_4
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto :goto_2

    .line 535
    :catch_0
    move-exception v0

    goto :goto_2

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v1, 0x7f060022

    const v2, 0x7f0201ca

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 517
    const/16 v0, 0x12c

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_3

    .line 524
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    .line 525
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 526
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 527
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v1, 0x7f060022

    const v2, 0x7f0201c9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 529
    :cond_7
    const/16 v0, 0x12c

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 531
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method public unregisterPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 2
    .param p1, "a"    # Lcom/vkontakte/android/AudioPlayerView;

    .prologue
    const/4 v1, 0x0

    .line 601
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 604
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 606
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    .line 608
    :cond_1
    return-void
.end method

.method public unregisterRemoteControl()V
    .locals 6

    .prologue
    .line 891
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 893
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerMediaButtonEventReceiver"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ComponentName;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 894
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    .line 898
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "abandonAudioFocus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-string v5, "android.media.AudioManager$OnAudioFocusChangeListener"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 899
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unregisterRemoteControlClient"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-string v5, "android.media.RemoteControlClient"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 901
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {v4}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v1

    goto :goto_0
.end method
