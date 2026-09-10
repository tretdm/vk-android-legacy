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
        Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;,
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

.field public static final ACTION_SERVICE_STOPPING:Ljava/lang/String; = "com.vkontakte.android.SERVICE_STOPPING"

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

.field private static cacheProxy:Lcom/vkontakte/android/cache/AudioCache$Proxy;

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

.field private currentPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private error:Z

.field private errorRetries:I

.field private haveAudioFocus:Z

.field private headsetPlugState:Z

.field public initing:Z

.field private loop:Z

.field private nBuffered:I

.field private needSeekTo:I

.field private nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field private pausedByCall:Z

.field private pausedBySystem:Z

.field private player:Landroid/media/MediaPlayer;

.field private playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

.field private playerStopTimer:Ljava/util/Timer;

.field private playlistPosition:I

.field private random:Z

.field private randomPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private referer:Ljava/lang/String;

.field private remoteControlClient:Landroid/media/RemoteControlClient;

.field private serviceStopTimer:Ljava/util/Timer;

.field private startAfterCall:Z

.field private statusUserID:I

.field private telManager:Landroid/telephony/TelephonyManager;

.field private timer:Ljava/util/Timer;

.field private useCustomNotification:Z

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    .line 126
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 87
    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 88
    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 89
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 93
    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    .line 96
    const/4 v2, -0x1

    iput v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 97
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 100
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    .line 101
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->cacheCurrent:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    .line 103
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 104
    const/4 v2, 0x5

    iput v2, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    .line 106
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 108
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    .line 109
    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 110
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    .line 111
    new-instance v2, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;)V

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    .line 114
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    .line 117
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    .line 122
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    .line 123
    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->startAfterCall:Z

    .line 124
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->useCustomNotification:Z

    .line 125
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->error:Z

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->referer:Ljava/lang/String;

    .line 129
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioPlayerService$1;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 54
    return-void

    :cond_0
    move v0, v1

    .line 124
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getCoverForWidgets()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1357
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateNotification()V

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    return-object v0
.end method

.method static synthetic access$16()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->startAfterCall:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/AudioPlayerService;Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$21(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/AudioPlayerService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->referer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Z)V
    .locals 0

    .prologue
    .line 120
    sput-boolean p0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->doStartPlayer()V

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method static synthetic access$28()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    return v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/AudioPlayerService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->referer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->startUpdatingProgress()V

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    return v0
.end method

.method static synthetic access$35(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/AudioPlayerService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$38(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method static synthetic access$39(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;I)V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    return-void
.end method

.method static synthetic access$40(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    return-void
.end method

.method static synthetic access$41(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/RemoteControlClient;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method static synthetic access$42(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->useCustomNotification:Z

    return v0
.end method

.method static synthetic access$43(Lcom/vkontakte/android/AudioPlayerService;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$44(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1220
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->headsetPlugState:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->startAfterCall:Z

    return-void
.end method

.method public static addAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .prologue
    .line 208
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public static addProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .prologue
    .line 217
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioPlayerService;->startUpdatingProgress()V

    .line 219
    :cond_0
    return-void
.end method

.method private broadcastPlayStateChanged(Z)V
    .locals 10
    .param p1, "state"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 641
    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v7, :cond_0

    .line 687
    :goto_0
    return-void

    .line 642
    :cond_0
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Broadcast play state "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 650
    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v7, :cond_2

    .line 651
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v7, v8, :cond_4

    .line 652
    const-wide/16 v2, 0x0

    .line 654
    .local v2, "ppos":J
    :try_start_0
    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_1

    .line 655
    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    int-to-long v2, v7

    .line 657
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p1, :cond_3

    :goto_2
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v4, v2, v3, v8}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 661
    .end local v2    # "ppos":J
    :cond_2
    :goto_3
    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 667
    if-eqz p1, :cond_9

    .line 668
    :try_start_1
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_8

    .line 669
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 672
    :goto_5
    const-string v4, "vk"

    const-string v5, "acquired wifi lock"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v4

    goto :goto_0

    .restart local v2    # "ppos":J
    :cond_3
    move v4, v5

    .line 657
    goto :goto_2

    .line 659
    .end local v2    # "ppos":J
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p1, :cond_5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_6

    .line 661
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .line 662
    .local v0, "c":Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v8, v4, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v9, v4, Lcom/vkontakte/android/AudioFile;->aid:I

    if-eqz p1, :cond_7

    move v4, v6

    :goto_7
    invoke-interface {v0, v8, v9, v4}, Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    goto :goto_4

    :cond_7
    move v4, v5

    goto :goto_7

    .line 671
    .end local v0    # "c":Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;
    :cond_8
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    goto :goto_5

    .line 674
    :cond_9
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/AudioPlayerService$5;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 683
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 656
    .restart local v2    # "ppos":J
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method private doStartPlayer()V
    .locals 10

    .prologue
    .line 420
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    .line 422
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 424
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 426
    :cond_0
    monitor-enter p0

    .line 428
    :try_start_1
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 432
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 434
    :cond_1
    const-string v5, "vk"

    const-string v6, "player starting"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 436
    const/4 v5, 0x0

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 438
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->error:Z

    .line 440
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 441
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v5, v5, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v7, v7, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6, v7}, Lcom/vkontakte/android/cache/AudioCache;->checkFileSize(Ljava/lang/String;II)V

    .line 444
    :cond_2
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 445
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v5, :cond_3

    .line 454
    const-string v5, "vk"

    const-string v6, "Player=null"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    :goto_1
    return-void

    .line 457
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 458
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 459
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 460
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 461
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 462
    const-string v5, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 463
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v2

    .line 464
    .local v2, "isCached":Z
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ".vkontakte/cache/audio/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v8, v8, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v8, v8, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 465
    const/4 v2, 0x0

    .line 466
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/cache/AudioCache;->refillIDs(Landroid/content/Context;)V

    .line 468
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "enableAudioCache"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 469
    .local v1, "enableCache":Z
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->saveCoversFromFile(II)V

    .line 470
    :cond_5
    if-eqz v2, :cond_7

    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-nez v5, :cond_7

    .line 471
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 472
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v5, v6}, Lcom/vkontakte/android/cache/AudioCache;->updatePlayTime(II)V

    .line 473
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

    .line 494
    .end local v1    # "enableCache":Z
    .end local v2    # "isCached":Z
    :goto_2
    const-string v5, "vk"

    const-string v6, "player preparing"

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 496
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/vkontakte/android/AudioPlayerService$4;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerService$4;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 426
    :cond_6
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

    .line 474
    .restart local v1    # "enableCache":Z
    .restart local v2    # "isCached":Z
    :cond_7
    if-eqz v1, :cond_8

    :try_start_5
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getExternalFreeSpace()J

    move-result-wide v5

    const-wide/32 v7, 0x3200000

    cmp-long v5, v5, v7

    if-gtz v5, :cond_9

    :cond_8
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v5, :cond_d

    if-eqz v2, :cond_d

    .line 476
    :cond_9
    if-eqz v2, :cond_a

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 477
    :cond_a
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
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    .line 479
    .local v3, "u":Ljava/lang/String;
    :try_start_6
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_c

    .line 480
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

    .line 481
    .local v0, "b64":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "http://127.0.0.1:48329/"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v5, :cond_b

    const-string v5, ".mp3"

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 485
    .end local v0    # "b64":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .line 481
    .restart local v0    # "b64":Ljava/lang/String;
    :cond_b
    const-string v5, ""

    goto :goto_4

    .line 483
    .end local v0    # "b64":Ljava/lang/String;
    :cond_c
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://127.0.0.1:48329/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 487
    .end local v3    # "u":Ljava/lang/String;
    :cond_d
    :try_start_7
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v5

    if-nez v5, :cond_e

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 488
    :cond_e
    :try_start_9
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 533
    .end local v1    # "enableCache":Z
    .end local v2    # "isCached":Z
    :catch_1
    move-exception v4

    .line 534
    .local v4, "x":Ljava/lang/Exception;
    :try_start_a
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    instance-of v5, v4, Ljava/io/IOException;

    if-eqz v5, :cond_6

    .line 536
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/vkontakte/android/AudioPlayerService;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 492
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_f
    :try_start_b
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v6, v6, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    .line 423
    :catch_2
    move-exception v5

    goto/16 :goto_0
.end method

.method private getCoverForWidgets()V
    .locals 4

    .prologue
    .line 1441
    const-string v0, "vk"

    const-string v1, "Before get cover image"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    const/4 v2, 0x0

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$14;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerService$14;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkontakte/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 1470
    return-void
.end method

.method private getExternalFreeSpace()J
    .locals 5

    .prologue
    .line 1265
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1266
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
    .locals 8
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 349
    iput v6, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    .line 350
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-nez p1, :cond_0

    .line 413
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v2, :cond_1

    .line 353
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v4, v4, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oldAid:I

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(IIII)V

    .line 354
    invoke-direct {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 356
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 357
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->registerRemoteControl()V

    .line 358
    invoke-direct {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 361
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$2;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 369
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 370
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 372
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 373
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v2, :cond_2

    .line 374
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v6, v3, v4}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setPosition(IJ)V

    .line 375
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    invoke-interface {v2, v6}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setBuffered(I)V

    .line 376
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    invoke-interface {v2, p1}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->displayInfo(Lcom/vkontakte/android/AudioFile;)V

    .line 378
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    iget v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    .line 381
    :cond_2
    iput-boolean v7, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 382
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    iget-object v4, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->notificationContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p0, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 385
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateNotification()V

    .line 386
    sget-object v2, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 388
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerService$3;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 408
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 412
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto/16 :goto_0

    .line 386
    :cond_3
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

    goto :goto_1
.end method

.method private playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V
    .locals 2
    .param p1, "files"    # [Lcom/vkontakte/android/AudioFile;
    .param p2, "startPos"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 545
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 547
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 548
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 550
    :cond_0
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 551
    aget-object v0, p1, p2

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    .line 552
    return-void
.end method

.method public static removeAttachViewCallback(Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$AttachViewCallback;

    .prologue
    .line 212
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method

.method public static removeProgressCallback(Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .prologue
    .line 223
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioPlayerService;->stopUpdatingProgress()V

    .line 225
    :cond_0
    return-void
.end method

.method private startUpdatingProgress()V
    .locals 6

    .prologue
    .line 228
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 229
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 232
    :cond_1
    return-void
.end method

.method private stopUpdatingProgress()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 239
    :cond_0
    return-void
.end method

.method private updateNotification()V
    .locals 3

    .prologue
    .line 1358
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$13;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioPlayerService$13;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 1433
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1434
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1438
    :goto_0
    return-void

    .line 1436
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private updateRemoteControl(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "cover"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1053
    return-void
.end method

.method private updateWidgets()V
    .locals 4

    .prologue
    .line 1221
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1222
    .local v0, "awm":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkontakte/android/PlayerWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1223
    .local v1, "ids":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1224
    invoke-static {p0, v0}, Lcom/vkontakte/android/PlayerWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1225
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkontakte/android/PlayerBigWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1226
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1227
    invoke-static {p0, v0}, Lcom/vkontakte/android/PlayerBigWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1228
    :cond_1
    return-void
.end method


# virtual methods
.method public addAttachView(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkontakte/android/AudioAttachView;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 877
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    .line 878
    return-void
.end method

.method public cacheCurrentFile()V
    .locals 1

    .prologue
    .line 1261
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    .line 1262
    return-void
.end method

.method public enqueue(Lcom/vkontakte/android/AudioFile;)Z
    .locals 4
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1159
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    .line 1163
    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1155
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    .line 1156
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    iget v2, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget v3, p1, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    iget v3, p1, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v2, v3, :cond_0

    .line 1157
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fadeIn()V
    .locals 2

    .prologue
    .line 1321
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$10;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1329
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1330
    return-void
.end method

.method public fadeIn(F)V
    .locals 2
    .param p1, "from"    # F

    .prologue
    .line 1333
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$11;-><init>(Lcom/vkontakte/android/AudioPlayerService;F)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1341
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1342
    return-void
.end method

.method public fadeOut(F)V
    .locals 2
    .param p1, "to"    # F

    .prologue
    .line 1345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$12;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$12;-><init>(Lcom/vkontakte/android/AudioPlayerService;F)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1354
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1355
    return-void
.end method

.method public getAid()I
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 872
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

    .line 1305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1306
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/vkontakte/android/AudioPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "audio_broadcast"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1307
    .local v2, "s":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1308
    .local v3, "ss":[Ljava/lang/String;
    array-length v5, v3

    :goto_0
    if-lt v4, v5, :cond_0

    .line 1313
    return-object v1

    .line 1308
    :cond_0
    aget-object v0, v3, v4

    .line 1310
    .local v0, "id":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1311
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public getCurrentFile()Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method public getOid()I
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 867
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPlaylist(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1119
    .local p1, "output":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/AudioFile;>;"
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1124
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getPlaylistItem(I)Lcom/vkontakte/android/AudioFile;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1113
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-object v0

    .line 1114
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1115
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    goto :goto_0
.end method

.method public getPlaylistLength()I
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPlaylistPosition()I
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    .prologue
    .line 1317
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

.method public isEnoughSpaceToCache()Z
    .locals 4

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getExternalFreeSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

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
    .line 1231
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 694
    iget-boolean v3, p0, Lcom/vkontakte/android/AudioPlayerService;->error:Z

    if-eqz v3, :cond_1

    .line 701
    :cond_0
    :goto_0
    return v1

    .line 695
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v3, :cond_2

    .line 696
    iget-boolean v3, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 699
    :cond_2
    :try_start_0
    iget-boolean v3, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "x":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    goto :goto_0
.end method

.method public isRandom()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    return v0
.end method

.method public isViewShown()Z
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToTrack(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 809
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 810
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 811
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    goto :goto_1
.end method

.method public nextTrack()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 766
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 768
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    goto :goto_0

    .line 771
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_4

    .line 774
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 775
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 776
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    goto :goto_1

    .line 778
    :cond_4
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "status.get"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 779
    const-string v1, "user_id"

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 780
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$6;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 795
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 759
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 760
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    mul-int/lit8 v2, p2, 0xa

    invoke-interface {v1, v2}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setBuffered(I)V

    .line 761
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_1

    .line 762
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 763
    :cond_1
    return-void

    .line 762
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
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x0

    .line 816
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 817
    invoke-direct {p0, v4}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 818
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 819
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    if-lez v1, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    .line 822
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    if-gtz v1, :cond_1

    const/4 v1, 0x5

    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    .line 833
    :cond_1
    :goto_1
    return-void

    .line 816
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .local v0, "av":Lcom/vkontakte/android/AudioAttachView;
    invoke-virtual {v0, v4}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    goto :goto_0

    .line 826
    .end local v0    # "av":Lcom/vkontakte/android/AudioAttachView;
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 827
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    invoke-interface {v1, v4}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V

    .line 829
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v4, v2, v3}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setPosition(IJ)V

    .line 830
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    invoke-interface {v1, v4}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setBuffered(I)V

    goto :goto_1
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 248
    sput-object p0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    .line 249
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    .line 250
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f0201d7

    const-wide/16 v5, 0x0

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    .line 251
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x22

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v3, "from_notify"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 256
    .local v2, "pintent":Landroid/app/PendingIntent;
    sput-object v2, Lcom/vkontakte/android/AudioPlayerService;->notificationContentIntent:Landroid/app/PendingIntent;

    .line 257
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {v3, p0, v7, v7, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 259
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->cacheProxy:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    if-eqz v3, :cond_0

    .line 260
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->cacheProxy:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->stop()V

    .line 262
    :cond_0
    new-instance v3, Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/cache/AudioCache$Proxy;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/vkontakte/android/AudioPlayerService;->cacheProxy:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    .line 263
    sget-object v3, Lcom/vkontakte/android/AudioPlayerService;->cacheProxy:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-virtual {v3}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->start()V

    .line 265
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v3, :cond_1

    .line 266
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 267
    .local v1, "mgr":Landroid/net/wifi/WifiManager;
    const-string v3, "vk_audio_streaming_player"

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 269
    .end local v1    # "mgr":Landroid/net/wifi/WifiManager;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    .line 270
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 271
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 276
    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/lib/libCedarX.so"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    iput-boolean v3, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    .line 277
    iget-boolean v3, p0, Lcom/vkontakte/android/AudioPlayerService;->buggyPlayer:Z

    if-eqz v3, :cond_3

    const-string v3, "vk"

    const-string v4, "Found CedarX, enabling workaround!"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_3
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1175
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1176
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1180
    iput-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 1182
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oldAid:I

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(IIII)V

    .line 1183
    :cond_2
    iput-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 1184
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1185
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 1186
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->callStateReceiver:Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1189
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 1190
    sput-object v4, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    .line 1191
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->cacheProxy:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    if-eqz v0, :cond_4

    .line 1192
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->cacheProxy:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-virtual {v0}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->stop()V

    .line 1193
    sput-object v4, Lcom/vkontakte/android/AudioPlayerService;->cacheProxy:Lcom/vkontakte/android/cache/AudioCache$Proxy;

    .line 1195
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vkontakte.android.SERVICE_STOPPING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1197
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1198
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const v7, 0x7f080040

    const/16 v6, -0x26

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 886
    const-string v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MediaPlayer error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->error:Z

    .line 888
    iput-boolean v2, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 889
    if-eq p2, v6, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v4, v4, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v3, v4}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 890
    invoke-static {}, Lcom/vkontakte/android/cache/AudioCache;->deleteCurrent()V

    .line 891
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v4, v4, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oldAid:I

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(IIII)V

    .line 892
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    .line 918
    :cond_0
    :goto_0
    return v1

    .line 895
    :cond_1
    if-ne p2, v1, :cond_3

    const/16 v3, -0x3ec

    if-ne p3, v3, :cond_3

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-boolean v3, v3, Lcom/vkontakte/android/AudioFile;->retried:Z

    if-nez v3, :cond_3

    .line 896
    const-string v3, "vk"

    const-string v4, "404 not found"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 899
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    if-eqz v3, :cond_2

    .line 900
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 901
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 906
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 907
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 909
    :goto_2
    invoke-direct {p0, v2}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 910
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .local v0, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 913
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_3
    if-eq p2, v6, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 917
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    move v1, v2

    .line 918
    goto :goto_0

    .line 905
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vkontakte/android/AudioPlayerService;->onStartCommand(Landroid/content/Intent;II)I

    .line 283
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

    .line 287
    const-string v7, "action"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 288
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

    .line 289
    packed-switch v0, :pswitch_data_0

    .line 339
    :goto_0
    :pswitch_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v5, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/vkontakte/android/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    const/4 v5, 0x2

    return v5

    .line 291
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :pswitch_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 292
    const-string v5, "act_uid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 293
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 294
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    const-string v5, "file"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v5, "file"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    .line 296
    const-string v5, "referer"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->referer:Ljava/lang/String;

    goto :goto_0

    .line 299
    :pswitch_2
    const-string v5, "list_al"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    const-string v5, "list_al"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 301
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 302
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->listToPlay:Ljava/util/ArrayList;

    new-array v7, v6, [Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/vkontakte/android/AudioFile;

    const-string v7, "position"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    .line 317
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :cond_0
    :goto_1
    const-string v5, "referer"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->referer:Ljava/lang/String;

    goto :goto_0

    .line 304
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :cond_1
    new-array v5, v6, [Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/vkontakte/android/AudioFile;

    const-string v7, "position"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_1

    .line 307
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :cond_2
    const-string v5, "list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 308
    .local v4, "pa":[Landroid/os/Parcelable;
    const-string v5, "act_uid"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 309
    array-length v5, v4

    if-eqz v5, :cond_0

    .line 312
    array-length v5, v4

    new-array v1, v5, [Lcom/vkontakte/android/AudioFile;

    .line 313
    .local v1, "af":[Lcom/vkontakte/android/AudioFile;
    array-length v5, v4

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    const-string v5, "position"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v1, v5}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_1

    .line 320
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

    .line 323
    :pswitch_4
    const-string v7, "no_anim"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_2
    const-string v5, "from_notify"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0, v6, v5}, Lcom/vkontakte/android/AudioPlayerService;->showPlayer(ZZ)V

    goto/16 :goto_0

    :cond_4
    move v6, v5

    goto :goto_2

    .line 326
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    goto/16 :goto_0

    .line 329
    :pswitch_6
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto/16 :goto_0

    .line 332
    :pswitch_7
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isLoop()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_3
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->setLoop(Z)V

    goto/16 :goto_0

    :cond_5
    move v6, v5

    goto :goto_3

    .line 335
    :pswitch_8
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isRandom()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_4
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->setRandom(Z)V

    goto/16 :goto_0

    :cond_6
    move v6, v5

    goto :goto_4

    .line 289
    nop

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
    .line 800
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 802
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 803
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 804
    :cond_2
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioFile;

    goto :goto_1
.end method

.method public registerPlayerView(Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;)V
    .locals 6
    .param p1, "a"    # Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    .line 707
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 708
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 709
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 710
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 715
    :cond_1
    :goto_0
    return-void

    .line 711
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-interface {p1, v0}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->displayInfo(Lcom/vkontakte/android/AudioFile;)V

    .line 712
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    mul-int/lit8 v0, v0, 0xa

    invoke-interface {p1, v0}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setBuffered(I)V

    .line 713
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V

    .line 714
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    goto :goto_0
.end method

.method public registerRemoteControl()V
    .locals 11

    .prologue
    .line 922
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 924
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 926
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    .local v2, "mediaButtonIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 928
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 929
    .local v3, "mediaPendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$7;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 985
    .local v1, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    if-nez v5, :cond_0

    .line 986
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request audio focus. "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const/4 v5, 0x3

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 996
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_1

    .line 997
    new-instance v5, Landroid/media/RemoteControlClient;

    invoke-direct {v5, v3}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    .line 998
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 999
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 1000
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v6, 0x195

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1007
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    .line 1008
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v7, v7, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    .line 1009
    const/16 v6, 0xd

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v7, v7, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    .line 1010
    const/4 v6, 0x7

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v7, v7, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    .line 1011
    const/16 v6, 0x64

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    .line 1012
    const/16 v6, 0x9

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v7, v7, Lcom/vkontakte/android/AudioFile;->duration:I

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    .line 1013
    invoke-virtual {v5}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 1014
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_1

    .line 1015
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    new-instance v6, Lcom/vkontakte/android/AudioPlayerService$8;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerService$8;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    .line 1029
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    new-instance v6, Lcom/vkontakte/android/AudioPlayerService$9;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/AudioPlayerService$9;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 1044
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getCoverForWidgets()V

    .line 1045
    const-string v5, "vk"

    const-string v6, "registered..."

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v1    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v3    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v4

    .line 1047
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeAttachView(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkontakte/android/AudioAttachView;

    .prologue
    .line 881
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 882
    return-void
.end method

.method public removeCurrentFile()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1077
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v4, v4, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    if-eq v4, v5, :cond_0

    move v2, v3

    .line 1101
    :goto_0
    return v2

    .line 1078
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 1080
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [Lcom/vkontakte/android/AudioFile;

    .line 1082
    .local v1, "list":[Lcom/vkontakte/android/AudioFile;
    array-length v4, v1

    if-nez v4, :cond_3

    .line 1085
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 1086
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1087
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 1088
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 1089
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 1090
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 1092
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1086
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .local v0, "av":Lcom/vkontakte/android/AudioAttachView;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1097
    .end local v0    # "av":Lcom/vkontakte/android/AudioAttachView;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1099
    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    iput v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 1100
    :cond_4
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v2}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    move v2, v3

    .line 1101
    goto :goto_0
.end method

.method public removePlaylistItem(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-nez v0, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1148
    :goto_0
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-le v0, p1, :cond_0

    .line 1149
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    .line 1152
    :cond_1
    return-void

    .line 1146
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetCurrentFileIDs()V
    .locals 3

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oldAid:I

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 1214
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 1215
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    const/4 v2, 0x0

    iput v2, v1, Lcom/vkontakte/android/AudioFile;->oldOid:I

    iput v2, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    .line 1216
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

    .line 1218
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 3
    .param p1, "p"    # I

    .prologue
    .line 728
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 732
    :goto_0
    return-void

    .line 730
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

    .line 731
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

    .line 1275
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v4, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v3

    .line 1277
    .local v3, "prev":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "enable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    .local v0, "disable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1283
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1288
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

    .line 1289
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

    .line 1290
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1291
    new-instance v4, Lcom/vkontakte/android/api/AudioSetBroadcast;

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {v4, v5, v1}, Lcom/vkontakte/android/api/AudioSetBroadcast;-><init>(Lcom/vkontakte/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/vkontakte/android/api/AudioSetBroadcast;->exec()Lcom/vkontakte/android/APIRequest;

    .line 1293
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1294
    new-instance v4, Lcom/vkontakte/android/api/AudioSetBroadcast;

    invoke-direct {v4, v7, v0}, Lcom/vkontakte/android/api/AudioSetBroadcast;-><init>(Lcom/vkontakte/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/vkontakte/android/api/AudioSetBroadcast;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 1278
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1279
    .local v2, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1283
    .end local v2    # "id":I
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1284
    .restart local v2    # "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1285
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public setCurrentFile(Lcom/vkontakte/android/AudioFile;)V
    .locals 1
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 1271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 1272
    return-void
.end method

.method public setCurrentFileIDs(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1201
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

    .line 1202
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->oldAid:I

    .line 1204
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->oldOid:I

    .line 1205
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

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput p1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 1208
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput p2, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 1209
    return-void
.end method

.method public setLoop(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 1235
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    .line 1236
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1238
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 1242
    return-void

    .line 1239
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRandom(Z)V
    .locals 3
    .param p1, "random"    # Z

    .prologue
    .line 1249
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    .line 1250
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1252
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1253
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1254
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1255
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1257
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 1258
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "vol"    # F

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1059
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "right"    # F

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1169
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showPlayer(ZZ)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "fromNotification"    # Z

    .prologue
    .line 836
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_0

    .line 859
    :goto_0
    return-void

    .line 853
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 854
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 855
    const-string v1, "class"

    const-string v2, "AudioPlayerFragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 856
    const-string v1, "args"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 857
    const-string v1, "overlaybar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 858
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public swapPlaylistItems(II)V
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 1127
    iget-boolean v2, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    .line 1128
    .local v0, "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/AudioFile;

    .line 1129
    .local v1, "tmp":Lcom/vkontakte/android/AudioFile;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1130
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1131
    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-ne p1, v2, :cond_2

    .line 1132
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 1133
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    iget v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    .line 1140
    :cond_0
    :goto_1
    return-void

    .line 1127
    .end local v0    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    .end local v1    # "tmp":Lcom/vkontakte/android/AudioFile;
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    goto :goto_0

    .line 1135
    .restart local v0    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioFile;>;"
    .restart local v1    # "tmp":Lcom/vkontakte/android/AudioFile;
    :cond_2
    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-ne p2, v2, :cond_0

    .line 1136
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 1137
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v2, :cond_0

    .line 1138
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    iget v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    goto :goto_1
.end method

.method public togglePlayPause()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause(Z)V

    .line 556
    return-void
.end method

.method public togglePlayPause(Z)V
    .locals 5
    .param p1, "cancelNotify"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v0, v0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v0, v3}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    .line 564
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-eqz v0, :cond_6

    .line 565
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    .line 566
    sget-boolean v0, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 567
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    sget-boolean v3, Lcom/vkontakte/android/AudioPlayerService;->pauseAfterInit:Z

    if-eqz v3, :cond_5

    :goto_3
    invoke-interface {v0, v1}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V

    .line 568
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 565
    goto :goto_1

    :cond_4
    move v0, v2

    .line 566
    goto :goto_2

    :cond_5
    move v1, v2

    .line 567
    goto :goto_3

    .line 571
    :cond_6
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_8

    .line 572
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 577
    :cond_7
    :goto_4
    iput-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 578
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->doStartPlayer()V

    .line 579
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateNotification()V

    goto :goto_0

    .line 583
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 584
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 585
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->needSeekTo:I

    .line 586
    if-eqz p1, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->stopForeground(Z)V

    .line 593
    :goto_5
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_9

    .line 595
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 598
    :cond_9
    :goto_6
    :try_start_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    .line 599
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 600
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_a

    .line 602
    :try_start_4
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 605
    :cond_a
    :goto_7
    :try_start_5
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 606
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;)V

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 635
    :cond_b
    :goto_8
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V

    .line 636
    :cond_c
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto/16 :goto_0

    .line 637
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 591
    :cond_d
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateNotification()V

    goto :goto_5

    .line 611
    :cond_e
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v0, :cond_f

    .line 613
    :try_start_6
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 616
    :cond_f
    :goto_9
    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v0, :cond_10

    .line 619
    :try_start_8
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 622
    :cond_10
    :goto_a
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    .line 624
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 629
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateNotification()V

    .line 631
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 632
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    if-nez v0, :cond_b

    .line 633
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->registerRemoteControl()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_8

    .line 620
    :catch_1
    move-exception v0

    goto :goto_a

    .line 614
    :catch_2
    move-exception v0

    goto :goto_9

    .line 603
    :catch_3
    move-exception v0

    goto :goto_7

    .line 596
    :catch_4
    move-exception v0

    goto/16 :goto_6

    .line 575
    :catch_5
    move-exception v0

    goto/16 :goto_4
.end method

.method public unregisterPlayerView(Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;)V
    .locals 2
    .param p1, "a"    # Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 721
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 723
    :cond_0
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->playerCallback:Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    .line 725
    :cond_1
    return-void
.end method

.method public unregisterRemoteControl()V
    .locals 4

    .prologue
    .line 1064
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1066
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1067
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1068
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkontakte/android/AudioPlayerService;->haveAudioFocus:Z

    .line 1069
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 1070
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1071
    :catch_0
    move-exception v1

    .line 1072
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateBroadcast()V
    .locals 3

    .prologue
    .line 1299
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1300
    .local v0, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1302
    :goto_0
    return-void

    .line 1301
    :cond_0
    new-instance v1, Lcom/vkontakte/android/api/AudioSetBroadcast;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {v1, v2, v0}, Lcom/vkontakte/android/api/AudioSetBroadcast;-><init>(Lcom/vkontakte/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/vkontakte/android/api/AudioSetBroadcast;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method
