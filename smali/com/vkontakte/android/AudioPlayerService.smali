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
        Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;,
        Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;,
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

.field public static final ACTION_TOGGLE_REPEAT:I = 0x9

.field public static final ACTION_TOGGLE_SHUFFLE:I = 0xa

.field public static final ACTION_UPDATE_AUDIO_LISTS:Ljava/lang/String; = "com.vkontakte.android.UPDATE_AUDIO_LISTS"

.field public static final ACTION_UPDATE_PLAYING:Ljava/lang/String; = "com.vkontakte.android.PLAYER_PLAYING"

.field public static final B_ACTION_PLAYER_CONTROL:Ljava/lang/String; = "com.vkontakte.android.PLAYER_CONTROL"

.field private static final ID_NOTIFICATION:I = 0x12c

.field private static final MIN_SPACE_TO_CACHE:J = 0x3200000L

.field private static final PLAYER_RELEASE_DELAY:J = 0xea60L

.field private static final PROXY_PORT:I = 0xbcc9

.field private static final SERVICE_STOP_DELAY:J = 0x1b7740L

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

.field public static listToPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

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

.field public initing:Z

.field private loop:Z

.field private nBuffered:I

.field private needSeekTo:I

.field private nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field private notificationViews:Landroid/widget/RemoteViews;

.field private pausedByCall:Z

.field private pausedBySystem:Z

.field private player:Landroid/media/MediaPlayer;

.field private playerStopTimer:Ljava/util/Timer;

.field private playlistPosition:I

.field private random:Z

.field private randomPlaylist:[Lcom/vkontakte/android/AudioFile;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

.field private serviceStopTimer:Ljava/util/Timer;

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
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 81
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 82
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 83
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 87
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 88
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 89
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 91
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    .line 96
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->cacheCurrent:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    .line 98
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 99
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    .line 101
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 103
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    .line 104
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 105
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    .line 106
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    invoke-direct {v0, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    .line 109
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    .line 112
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    .line 117
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    .line 120
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioPlayerService$1;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    return-object v0
.end method

.method static synthetic access$12()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->doStartPlayer()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/AudioPlayerService;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method static synthetic access$22(Z)V
    .locals 0

    .prologue
    .line 115
    sput-boolean p0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    return v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method static synthetic access$26()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    return v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;I)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->startUpdatingProgress()V

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    return v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/AudioPlayerService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$34(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    return v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    return v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    return-void
.end method

.method static synthetic access$38(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    return-void
.end method

.method static synthetic access$39(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/media/RemoteControlClientCompat;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getCoverForWidgets()V

    return-void
.end method

.method public static addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .prologue
    .line 192
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public static addProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .prologue
    .line 201
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioPlayerService;->startUpdatingProgress()V

    .line 203
    :cond_0
    return-void
.end method

.method private broadcastPlayStateChanged(Z)V
    .locals 8
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 619
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v2, :cond_0

    .line 654
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    if-eqz v2, :cond_1

    .line 626
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    if-eqz p1, :cond_2

    const/4 v2, 0x3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 628
    :cond_1
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 629
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v1, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    if-eqz p1, :cond_6

    .line 635
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_5

    .line 636
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 639
    :goto_3
    const-string v2, "vk"

    const-string v3, "acquired wifi lock"

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 652
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v1    # "intent2":Landroid/content/Intent;
    :cond_2
    move v2, v3

    .line 626
    goto :goto_1

    .line 628
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .local v0, "c":Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v7, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    if-eqz p1, :cond_4

    move v2, v4

    :goto_4
    invoke-interface {v0, v6, v7, v2}, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_4

    .line 638
    .end local v0    # "c":Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
    .restart local v1    # "intent2":Landroid/content/Intent;
    :cond_5
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    goto :goto_3

    .line 641
    :cond_6
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerService$6;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 650
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private doStartPlayer()V
    .locals 10

    .prologue
    .line 403
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    .line 405
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 407
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 409
    :cond_0
    monitor-enter p0

    .line 411
    :try_start_1
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 415
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 417
    :cond_1
    const-string v5, "vk"

    const-string v6, "player starting"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 419
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 421
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 422
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v5, :cond_2

    .line 431
    const-string v5, "vk"

    const-string v6, "Player=null"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 514
    :goto_1
    return-void

    .line 434
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 435
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 436
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 437
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 438
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 439
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 440
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v2

    .line 441
    .local v2, "isCached":Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "enableAudioCache"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 442
    .local v1, "enableCache":Z
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->saveCoversFromFile(II)V

    .line 443
    :cond_3
    if-eqz v2, :cond_4

    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-nez v5, :cond_4

    .line 444
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 445
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->updatePlayTime(II)V

    .line 446
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

    .line 467
    .end local v1    # "enableCache":Z
    .end local v2    # "isCached":Z
    :goto_2
    const-string v5, "vk"

    const-string v6, "player preparing"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 469
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerService$5;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 409
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

    .line 447
    .restart local v1    # "enableCache":Z
    .restart local v2    # "isCached":Z
    :cond_4
    if-eqz v1, :cond_5

    :try_start_5
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getExternalFreeSpace()J

    move-result-wide v5

    const-wide/32 v7, 0x3200000

    cmp-long v5, v5, v7

    if-gtz v5, :cond_6

    :cond_5
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v5, :cond_b

    if-eqz v2, :cond_b

    .line 448
    :cond_6
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    if-nez v5, :cond_7

    if-nez v2, :cond_7

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 449
    :cond_7
    if-eqz v2, :cond_8

    :try_start_7
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 450
    :cond_8
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

    .line 452
    .local v3, "u":Ljava/lang/String;
    :try_start_8
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_a

    .line 453
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

    .line 454
    .local v0, "b64":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "http://127.0.0.1:48329/"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v5, :cond_9

    const-string v5, ".mp3"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 458
    .end local v0    # "b64":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 454
    .restart local v0    # "b64":Ljava/lang/String;
    :cond_9
    const-string v5, ""

    goto :goto_4

    .line 456
    .end local v0    # "b64":Ljava/lang/String;
    :cond_a
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

    .line 460
    .end local v3    # "u":Ljava/lang/String;
    :cond_b
    :try_start_9
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v5

    if-nez v5, :cond_c

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 461
    :cond_c
    :try_start_b
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 510
    .end local v1    # "enableCache":Z
    .end local v2    # "isCached":Z
    :catch_1
    move-exception v4

    .line 511
    .local v4, "x":Ljava/lang/Exception;
    :try_start_c
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 464
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v5

    if-nez v5, :cond_e

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 465
    :cond_e
    :try_start_f
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 406
    :catch_2
    move-exception v5

    goto/16 :goto_0
.end method

.method private getCoverForWidgets()V
    .locals 4

    .prologue
    .line 1203
    const-string v0, "vk"

    const-string v1, "Before get cover image"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$15;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerService$15;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 1234
    return-void
.end method

.method private getExternalFreeSpace()J
    .locals 5

    .prologue
    .line 1110
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1111
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
    .locals 7
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 337
    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    .line 338
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-nez p1, :cond_0

    .line 400
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v2, v3}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(II)V

    .line 342
    invoke-direct {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 344
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 345
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->registerRemoteControl()V

    .line 346
    invoke-direct {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 349
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$2;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1, v6}, Ljava/lang/Thread;->setPriority(I)V

    .line 355
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 357
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 358
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$3;

    invoke-direct {v3, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$3;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 370
    :cond_2
    iput-boolean v6, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 371
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_3

    .line 372
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v3, 0x7f080068

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 373
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v3, 0x7f080069

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 378
    :goto_1
    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 379
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 381
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$4;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerService$4;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 395
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 399
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto :goto_0

    .line 375
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->notificationContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 379
    :cond_4
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

    .line 517
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 518
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v5, :cond_0

    .line 519
    array-length v5, p1

    new-array v5, v5, [Lcom/vkontakte/android/AudioFile;

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 520
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    array-length v5, p1

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 522
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 523
    .local v3, "rand":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_1

    .line 536
    .end local v0    # "i":I
    .end local v3    # "rand":Ljava/util/Random;
    :cond_0
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 537
    aget-object v5, p1, p2

    invoke-direct {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    .line 538
    return-void

    .line 524
    .restart local v0    # "i":I
    .restart local v3    # "rand":Ljava/util/Random;
    :cond_1
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 525
    .local v1, "pos1":I
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 526
    .local v2, "pos2":I
    if-eq v1, v2, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v2, p2, :cond_2

    .line 527
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v4, v5, v1

    .line 528
    .local v4, "tmp":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v6, v6, v2

    aput-object v6, v5, v1

    .line 529
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aput-object v4, v5, v2

    .line 523
    .end local v4    # "tmp":Lcom/vkontakte/android/AudioFile;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .prologue
    .line 196
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method public static removeProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .prologue
    .line 207
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioPlayerService;->stopUpdatingProgress()V

    .line 209
    :cond_0
    return-void
.end method

.method private startUpdatingProgress()V
    .locals 6

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 213
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 216
    :cond_1
    return-void
.end method

.method private stopUpdatingProgress()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 223
    :cond_0
    return-void
.end method

.method private updateWidgets()V
    .locals 4

    .prologue
    .line 1055
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1056
    .local v0, "awm":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkontakte/android/PlayerWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1057
    .local v1, "ids":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1058
    invoke-static {p0, v0}, Lcom/vkontakte/android/PlayerWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1059
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkontakte/android/PlayerBigWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1060
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1061
    invoke-static {p0, v0}, Lcom/vkontakte/android/PlayerBigWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1062
    :cond_1
    return-void
.end method


# virtual methods
.method public addAttachView(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkontakte/android/AudioAttachView;

    .prologue
    .line 841
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    .line 843
    return-void
.end method

.method public cacheCurrentFile()V
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    .line 1107
    return-void
.end method

.method public fadeIn()V
    .locals 2

    .prologue
    .line 1166
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$12;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1175
    return-void
.end method

.method public fadeIn(F)V
    .locals 2
    .param p1, "from"    # F

    .prologue
    .line 1178
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$13;-><init>(Lcom/vkontakte/android/AudioPlayerService;F)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1187
    return-void
.end method

.method public fadeOut(F)V
    .locals 2
    .param p1, "to"    # F

    .prologue
    .line 1190
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$14;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$14;-><init>(Lcom/vkontakte/android/AudioPlayerService;F)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1199
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1200
    return-void
.end method

.method public getAid()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 837
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getBroadcastTargets()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/vkontakte/android/AudioPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "audio_broadcast"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1152
    .local v2, "s":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1153
    .local v3, "ss":[Ljava/lang/String;
    array-length v5, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 1158
    return-object v1

    .line 1153
    :cond_0
    aget-object v0, v3, v4

    .line 1155
    .local v0, "id":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getCurrentFile()Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method public getOid()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 832
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPlaylistPosition()I
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoop()Z
    .locals 1

    .prologue
    .line 1065
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 661
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v3, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 661
    goto :goto_0

    .line 663
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

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "x":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    goto :goto_0
.end method

.method public isRandom()Z
    .locals 1

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    return v0
.end method

.method public isViewShown()Z
    .locals 2

    .prologue
    .line 827
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
    .line 737
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 738
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_3

    .line 741
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 742
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 743
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

    .line 745
    :cond_3
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "status.get"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 746
    const-string v1, "user_id"

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 747
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$8;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 730
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 731
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    mul-int/lit8 v2, p2, 0xa

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->setBuffered(I)V

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_1

    .line 733
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 734
    :cond_1
    return-void

    .line 733
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

    .line 779
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 780
    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 781
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_3

    .line 782
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    if-lez v1, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    .line 785
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    if-gtz v1, :cond_1

    const/4 v1, 0x5

    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    .line 798
    :cond_1
    :goto_1
    return-void

    .line 779
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .local v0, "av":Lcom/vkontakte/android/AudioAttachView;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    goto :goto_0

    .line 789
    .end local v0    # "av":Lcom/vkontakte/android/AudioAttachView;
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 790
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_1

    .line 791
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

    .line 232
    sput-object p0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    .line 233
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    .line 234
    new-instance v6, Landroid/app/Notification;

    const v7, 0x7f0201b1

    const-wide/16 v8, 0x0

    invoke-direct {v6, v7, v11, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    .line 235
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "action"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    const-string v6, "from_notify"

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    const/high16 v6, 0x8000000

    invoke-static {p0, v10, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 240
    .local v3, "pintent":Landroid/app/PendingIntent;
    sput-object v3, Lcom/vkontakte/android/AudioPlayerService;->notificationContentIntent:Landroid/app/PendingIntent;

    .line 241
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {v6, p0, v11, v11, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 243
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v4, "playpause":Landroid/content/Intent;
    const-string v6, "PlayPauseN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v6, "action"

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    const-string v6, "from_notify"

    invoke-virtual {v4, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    invoke-static {p0, v10, v4, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 254
    .local v2, "pendingPlaypause":Landroid/app/PendingIntent;
    new-instance v5, Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkontakte/android/cache/AudioCache$Proxy;-><init>(Landroid/content/Context;)V

    .line 255
    .local v5, "proxy":Lcom/vkontakte/android/cache/AudioCache$Proxy;
    invoke-virtual {v5}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->start()V

    .line 257
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v6, :cond_0

    .line 258
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 259
    .local v1, "mgr":Landroid/net/wifi/WifiManager;
    const-string v6, "vk_audio_streaming_player"

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 261
    .end local v1    # "mgr":Landroid/net/wifi/WifiManager;
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_1

    .line 262
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 263
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 268
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/system/lib/libCedarX.so"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    iput-boolean v6, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    .line 269
    iget-boolean v6, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v6, :cond_2

    const-string v6, "vk"

    const-string v7, "Found CedarX, enabling workaround!"

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_2
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1023
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(II)V

    .line 1024
    :cond_0
    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 1025
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1026
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 1027
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1030
    :cond_1
    sput-object v3, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    .line 1031
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1032
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 851
    if-ne p2, v0, :cond_1

    const/16 v2, -0x3ec

    if-ne p3, v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-boolean v2, v2, Lcom/vkontakte/android/AudioFile;->retried:Z

    if-nez v2, :cond_1

    .line 852
    const-string v1, "vk"

    const-string v2, "404 not found"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    :cond_0
    :goto_0
    return v0

    .line 866
    :cond_1
    const/16 v2, -0x26

    if-eq p2, v2, :cond_0

    .line 869
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

    .line 870
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 871
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    move v0, v1

    .line 872
    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vkontakte/android/AudioPlayerService;->onStartCommand(Landroid/content/Intent;II)I

    .line 275
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 279
    const-string v7, "action"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 280
    .local v0, "act":I
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "action="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    packed-switch v0, :pswitch_data_0

    .line 327
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v5, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/vkontakte/android/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    const/4 v5, 0x2

    return v5

    .line 283
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :pswitch_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 284
    const-string v5, "act_uid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 285
    const-string v5, "file"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    .line 288
    :pswitch_2
    const-string v5, "list_al"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 289
    const-string v5, "list_al"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 290
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 291
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->listToPlay:Ljava/util/ArrayList;

    new-array v7, v6, [Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/vkontakte/android/AudioFile;

    const-string v7, "position"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_0

    .line 293
    :cond_1
    new-array v5, v6, [Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/vkontakte/android/AudioFile;

    const-string v7, "position"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_0

    .line 296
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :cond_2
    const-string v5, "list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 297
    .local v4, "pa":[Landroid/os/Parcelable;
    const-string v5, "act_uid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 298
    array-length v5, v4

    if-eqz v5, :cond_0

    .line 301
    array-length v5, v4

    new-array v1, v5, [Lcom/vkontakte/android/AudioFile;

    .line 302
    .local v1, "af":[Lcom/vkontakte/android/AudioFile;
    array-length v5, v4

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    const-string v5, "position"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto/16 :goto_0

    .line 308
    .end local v1    # "af":[Lcom/vkontakte/android/AudioFile;
    .end local v4    # "pa":[Landroid/os/Parcelable;
    :pswitch_3
    const-string v7, "from_notify"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause(Z)V

    goto/16 :goto_0

    .line 311
    :pswitch_4
    const-string v7, "no_anim"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    const-string v5, "from_notify"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v6, v5}, Lcom/vkontakte/android/AudioPlayerService;->showPlayer(ZZ)V

    goto/16 :goto_0

    :cond_4
    move v6, v5

    goto :goto_1

    .line 314
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    goto/16 :goto_0

    .line 317
    :pswitch_6
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto/16 :goto_0

    .line 320
    :pswitch_7
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isLoop()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->setLoop(Z)V

    goto/16 :goto_0

    :cond_5
    move v6, v5

    goto :goto_2

    .line 323
    :pswitch_8
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isRandom()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->setRandom(Z)V

    goto/16 :goto_0

    :cond_6
    move v6, v5

    goto :goto_3

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public prevTrack()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 772
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 773
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 774
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
    .line 670
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    .line 671
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 672
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 673
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 674
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$7;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$7;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 681
    return-void
.end method

.method public registerRemoteControl()V
    .locals 9

    .prologue
    .line 876
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 878
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 880
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .local v2, "mediaButtonIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 882
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 883
    .local v3, "mediaPendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$10;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 936
    .local v1, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget-boolean v4, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    if-nez v4, :cond_0

    .line 937
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

    .line 938
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

    .line 939
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

    .line 940
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/AudioPlayerService$11;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/AudioPlayerService$11;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 943
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 948
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_1

    .line 949
    new-instance v4, Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-direct {v4, v3}, Lcom/vkontakte/android/media/RemoteControlClientCompat;-><init>(Landroid/app/PendingIntent;)V

    iput-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    .line 950
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {v4}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 951
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 952
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/16 v5, 0x95

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setTransportControlFlags(I)V

    .line 956
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->editMetadata(Z)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    .line 957
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    .line 958
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    .line 959
    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putBitmap(ILandroid/graphics/Bitmap;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v4

    .line 960
    invoke-virtual {v4}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 962
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getCoverForWidgets()V

    .line 963
    const-string v4, "vk"

    const-string v5, "registered..."

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .end local v1    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v3    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 964
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public removeAttachView(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkontakte/android/AudioAttachView;

    .prologue
    .line 846
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 847
    return-void
.end method

.method public removeCurrentFile()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 989
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v4, v4, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return v2

    .line 990
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v4, :cond_0

    .line 992
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [Lcom/vkontakte/android/AudioFile;

    .line 994
    .local v1, "list":[Lcom/vkontakte/android/AudioFile;
    array-length v4, v1

    if-nez v4, :cond_3

    .line 997
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 998
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 999
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 1000
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 1001
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 1002
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 1004
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    :goto_2
    move v2, v3

    .line 1006
    goto :goto_0

    .line 998
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

    .line 1005
    .end local v0    # "av":Lcom/vkontakte/android/AudioAttachView;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1009
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
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

    .line 1011
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 1013
    iget v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    iput v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 1014
    :cond_4
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0
.end method

.method public resetCurrentFileIDs()V
    .locals 3

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oldAid:I

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 1048
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 1049
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    const/4 v2, 0x0

    iput v2, v1, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iput v2, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    .line 1050
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Reset file id to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 3
    .param p1, "p"    # I

    .prologue
    .line 694
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 698
    :goto_0
    return-void

    .line 696
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

    .line 697
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBroadcast(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1120
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v4, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v3

    .line 1122
    .local v3, "prev":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "enable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .local v0, "disable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1128
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1133
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Set broadcast: enable="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/4 v4, 0x0

    invoke-virtual {p0, v7, v4}, Lcom/vkontakte/android/AudioPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "audio_broadcast"

    const-string v6, ","

    invoke-static {v6, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1135
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1136
    new-instance v4, Lcom/vkontakte/android/api/AudioSetBroadcast;

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {v4, v5, v1}, Lcom/vkontakte/android/api/AudioSetBroadcast;-><init>(Lcom/vkontakte/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/vkontakte/android/api/AudioSetBroadcast;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1138
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1139
    new-instance v4, Lcom/vkontakte/android/api/AudioSetBroadcast;

    invoke-direct {v4, v7, v0}, Lcom/vkontakte/android/api/AudioSetBroadcast;-><init>(Lcom/vkontakte/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/vkontakte/android/api/AudioSetBroadcast;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1123
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1124
    .local v2, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1128
    .end local v2    # "id":I
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1129
    .restart local v2    # "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public setCurrentFile(Lcom/vkontakte/android/AudioFile;)V
    .locals 1
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 1116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 1117
    return-void
.end method

.method public setCurrentFileIDs(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1035
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set current file ids "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-nez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    .line 1038
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->oldOid:I

    .line 1039
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saved old ids "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oldOid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oldAid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput p1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 1042
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput p2, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 1043
    return-void
.end method

.method public setLoop(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 1069
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    .line 1070
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 1076
    return-void

    .line 1073
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRandom(Z)V
    .locals 9
    .param p1, "random"    # Z

    .prologue
    const/4 v8, 0x0

    .line 1083
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    .line 1084
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v5, :cond_0

    .line 1085
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    new-array v5, v5, [Lcom/vkontakte/android/AudioFile;

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 1086
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1087
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 1088
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 1089
    .local v3, "rand":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_1

    .line 1102
    .end local v0    # "i":I
    .end local v3    # "rand":Ljava/util/Random;
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 1103
    return-void

    .line 1090
    .restart local v0    # "i":I
    .restart local v3    # "rand":Ljava/util/Random;
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1091
    .local v1, "pos1":I
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 1092
    .local v2, "pos2":I
    if-eq v1, v2, :cond_2

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-eq v1, v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-eq v2, v5, :cond_2

    .line 1093
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v4, v5, v1

    .line 1094
    .local v4, "tmp":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v6, v6, v2

    aput-object v6, v5, v1

    .line 1095
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aput-object v4, v5, v2

    .line 1089
    .end local v4    # "tmp":Lcom/vkontakte/android/AudioFile;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1097
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "vol"    # F

    .prologue
    .line 968
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showPlayer(ZZ)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "fromNotification"    # Z

    .prologue
    .line 801
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 824
    :goto_0
    return-void

    .line 818
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 819
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 820
    const-string v1, "class"

    const-string v2, "AudioPlayerFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    const-string v1, "args"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 822
    const-string v1, "overlaybar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public togglePlayPause()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause(Z)V

    .line 542
    return-void
.end method

.method public togglePlayPause(Z)V
    .locals 4
    .param p1, "cancelNotify"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 545
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v0, :cond_4

    .line 546
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    .line 547
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 548
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    sget-boolean v3, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->setPlaying(Z)V

    .line 549
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 616
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 546
    goto :goto_0

    :cond_2
    move v0, v2

    .line 547
    goto :goto_1

    :cond_3
    move v1, v2

    .line 548
    goto :goto_2

    .line 552
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    .line 553
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    if-eqz v0, :cond_5

    .line 555
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 558
    :cond_5
    :goto_4
    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 559
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->doStartPlayer()V

    goto :goto_3

    .line 563
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 564
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 565
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    .line 566
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 572
    :goto_5
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_7

    .line 574
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 577
    :cond_7
    :goto_6
    :try_start_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    .line 578
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 579
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_8

    .line 581
    :try_start_4
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 584
    :cond_8
    :goto_7
    :try_start_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 585
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;)V

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 587
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 613
    :cond_9
    :goto_8
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->setPlaying(Z)V

    .line 614
    :cond_a
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto/16 :goto_3

    .line 615
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 570
    :cond_b
    const/16 v0, 0x12c

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_5

    .line 590
    :cond_c
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v0, :cond_d

    .line 592
    :try_start_6
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 595
    :cond_d
    :goto_9
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    .line 596
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v0, :cond_e

    .line 598
    :try_start_8
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 601
    :cond_e
    :goto_a
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    .line 603
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 607
    const/16 v0, 0x12c

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 610
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    if-nez v0, :cond_9

    .line 611
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->registerRemoteControl()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_8

    .line 599
    :catch_1
    move-exception v0

    goto :goto_a

    .line 593
    :catch_2
    move-exception v0

    goto :goto_9

    .line 582
    :catch_3
    move-exception v0

    goto :goto_7

    .line 575
    :catch_4
    move-exception v0

    goto/16 :goto_6

    .line 556
    :catch_5
    move-exception v0

    goto/16 :goto_4
.end method

.method public unregisterPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 2
    .param p1, "a"    # Lcom/vkontakte/android/AudioPlayerView;

    .prologue
    const/4 v1, 0x0

    .line 684
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 687
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 689
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    .line 691
    :cond_1
    return-void
.end method

.method public unregisterRemoteControl()V
    .locals 6

    .prologue
    .line 976
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 978
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

    .line 979
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 982
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    .line 983
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 984
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 985
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateBroadcast()V
    .locals 3

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1145
    .local v0, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1146
    :cond_0
    new-instance v1, Lcom/vkontakte/android/api/AudioSetBroadcast;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/AudioSetBroadcast;-><init>(Lcom/vkontakte/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/vkontakte/android/api/AudioSetBroadcast;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
