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
        Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;,
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

.field public static listToPlay:[Lcom/vkontakte/android/AudioFile;

.field private static notificationContentIntent:Landroid/app/PendingIntent;

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

.field private cacheCurrent:Z

.field private cancelReleaseWifiLock:Z

.field private currentFile:Lcom/vkontakte/android/AudioFile;

.field private currentIsCached:Z

.field private currentPlaylist:[Lcom/vkontakte/android/AudioFile;

.field private errorRetries:I

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
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 65
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 66
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 67
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 71
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 72
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 73
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 75
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 79
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    .line 80
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->cacheCurrent:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    .line 82
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 83
    const/4 v0, 0x5

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    .line 85
    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 86
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->broadcastEnabled:Z

    .line 88
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    .line 89
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 90
    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    .line 96
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/AudioPlayerService$1;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->broadcastEnabled:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/AudioPlayerService;)[Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->doStartPlayer()V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/AudioPlayerService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/AudioPlayerService;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    return v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/AudioPlayerService;I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;I)V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/AudioPlayerService;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/AudioPlayerService;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedByCall:Z

    return-void
.end method

.method private broadcastPlayStateChanged(Z)V
    .locals 4
    .param p1, "state"    # Z

    .prologue
    .line 451
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v2, :cond_0

    .line 482
    :goto_0
    return-void

    .line 452
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.UPDATE_AUDIO_ATTACH_VIEWS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "oid"

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 454
    const-string v2, "aid"

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    const-string v2, "playing"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 456
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "intent2":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    if-eqz p1, :cond_2

    .line 463
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 464
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 467
    :goto_1
    const-string v2, "vk"

    const-string v3, "acquired wifi lock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :catch_0
    move-exception v2

    goto :goto_0

    .line 466
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vkontakte/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    goto :goto_1

    .line 469
    :cond_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/AudioPlayerService$6;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/AudioPlayerService$6;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 478
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private doStartPlayer()V
    .locals 6

    .prologue
    .line 309
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 315
    :cond_0
    monitor-enter p0

    .line 317
    :try_start_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 323
    :cond_1
    const-string v1, "vk"

    const-string v2, "player starting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 325
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 327
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 328
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    .line 337
    const-string v1, "vk"

    const-string v2, "Player=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    :goto_1
    return-void

    .line 340
    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 341
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 342
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 343
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 344
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 345
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 346
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/AudioCache;->isCached(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentIsCached:Z

    .line 348
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/AudioCache;->updatePlayTime(II)V

    .line 349
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".vkontakte/cache/audio/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v5, v5, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 361
    :goto_2
    const-string v1, "vk"

    const-string v2, "player preparing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 363
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioPlayerService$5;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    :goto_3
    :try_start_4
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 350
    :cond_3
    :try_start_5
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->getExternalFreeSpace()J

    move-result-wide v1

    const-wide/32 v3, 0x3200000

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 351
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 352
    :cond_4
    :try_start_7
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://127.0.0.1:48329/?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v3, v3, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "x":Ljava/lang/Exception;
    :try_start_8
    const-string v1, "vk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 354
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_5
    :try_start_9
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v1

    if-nez v1, :cond_6

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 355
    :cond_6
    :try_start_b
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v2, v2, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    .line 358
    :cond_7
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v1

    if-nez v1, :cond_8

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 359
    :cond_8
    :try_start_d
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v2, v2, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 312
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private getExternalFreeSpace()J
    .locals 5

    .prologue
    .line 917
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 918
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
    .locals 5
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    const/4 v4, 0x1

    .line 232
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-nez p1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v2, v2, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(II)V

    .line 236
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 238
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 239
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->registerRemoteControl()V

    .line 242
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$2;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$2;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 261
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 262
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 264
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 265
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    new-instance v2, Lcom/vkontakte/android/AudioPlayerService$3;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$3;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_2
    iput-boolean v4, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 278
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v1, :cond_3

    .line 279
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 280
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_4

    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v2, 0x7f06001e

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v2, 0x7f06001f

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 286
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    const/16 v2, 0x12c

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 288
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/AudioPlayerService$4;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/AudioPlayerService$4;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 301
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 305
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget-object v2, p1, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    iget-object v3, p1, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    sget-object v4, Lcom/vkontakte/android/AudioPlayerService;->notificationContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V
    .locals 8
    .param p1, "files"    # [Lcom/vkontakte/android/AudioFile;
    .param p2, "startPos"    # I

    .prologue
    const/4 v7, 0x0

    .line 395
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 396
    iget-boolean v5, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    if-eqz v5, :cond_0

    .line 397
    array-length v5, p1

    new-array v5, v5, [Lcom/vkontakte/android/AudioFile;

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 398
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v6, p1

    invoke-static {p1, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    array-length v5, p1

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 400
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 401
    .local v3, "rand":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_1

    .line 414
    .end local v0    # "i":I
    .end local v3    # "rand":Ljava/util/Random;
    :cond_0
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 415
    aget-object v5, p1, p2

    invoke-direct {p0, v5}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    .line 416
    return-void

    .line 402
    .restart local v0    # "i":I
    .restart local v3    # "rand":Ljava/util/Random;
    :cond_1
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 403
    .local v1, "pos1":I
    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 404
    .local v2, "pos2":I
    if-eq v1, v2, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v2, p2, :cond_2

    .line 405
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v4, v5, v1

    .line 406
    .local v4, "tmp":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v6, v6, v2

    aput-object v6, v5, v1

    .line 407
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aput-object v4, v5, v2

    .line 401
    .end local v4    # "tmp":Lcom/vkontakte/android/AudioFile;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private updateWidgets()V
    .locals 12

    .prologue
    .line 810
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 813
    .local v0, "awm":Landroid/appwidget/AppWidgetManager;
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f030049

    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    .line 815
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    .local v6, "playpause":Landroid/content/Intent;
    const-string v9, "PlayPause"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const-string v9, "action"

    const/4 v10, 0x3

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v6, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 819
    .local v3, "pendingPlaypause":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06018f

    invoke-virtual {v9, v10, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 821
    new-instance v1, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v1, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    .local v1, "nextTrack":Landroid/content/Intent;
    const-string v9, "Next"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v9, "action"

    const/4 v10, 0x5

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v1, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 825
    .local v2, "pendingNextTrack":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060190

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 827
    new-instance v7, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v7, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 828
    .local v7, "prevTrack":Landroid/content/Intent;
    const-string v9, "Prev"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v9, "action"

    const/4 v10, 0x6

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 830
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v7, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 831
    .local v4, "pendingPrevTrack":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06018e

    invoke-virtual {v9, v10, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 833
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 834
    .local v8, "showPlayer":Landroid/content/Intent;
    const-string v9, "Show"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v9, "action"

    const/4 v10, 0x4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    const-string v9, "from_notify"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 837
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v8, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 838
    .local v5, "pendingShowPlayer":Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060191

    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 841
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v9, :cond_2

    .line 842
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060192

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 843
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060193

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 845
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060194

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 847
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060191

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 848
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06018f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 849
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060190

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 850
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06018e

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 851
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    if-eqz v9, :cond_0

    .line 852
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x3

    :goto_0
    invoke-virtual {v10, v9}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 854
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->editMetadata(Z)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v9

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v9

    .line 855
    const/16 v10, 0xd

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v9

    .line 856
    const/4 v10, 0x7

    iget-object v11, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v11, v11, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v9

    .line 857
    invoke-virtual {v9}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 868
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v11, 0x7f06018f

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_3

    const v9, 0x7f0201ac

    :goto_2
    invoke-virtual {v10, v11, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 870
    new-instance v9, Landroid/content/ComponentName;

    const-class v10, Lcom/vkontakte/android/PlayerWidget;

    invoke-direct {v9, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v10, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v9, v10}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 871
    return-void

    .line 852
    :cond_1
    const/4 v9, 0x2

    goto :goto_0

    .line 860
    :cond_2
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060194

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 862
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060191

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 863
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06018f

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 864
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f060190

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 865
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService;->widgetViews:Landroid/widget/RemoteViews;

    const v10, 0x7f06018e

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 868
    :cond_3
    const v9, 0x7f0201ad

    goto :goto_2
.end method


# virtual methods
.method public addAttachView(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkontakte/android/AudioAttachView;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    .line 656
    return-void
.end method

.method public cacheCurrentFile()V
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/cache/AudioCache;->saveCurrent(Z)V

    .line 914
    return-void
.end method

.method public fadeIn()V
    .locals 2

    .prologue
    .line 960
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$12;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 968
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 969
    return-void
.end method

.method public fillInfo(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f060023

    const/4 v7, 0x2

    const/4 v9, 0x1

    const v6, 0x7f060197

    const/4 v4, 0x0

    .line 767
    if-nez p1, :cond_0

    .line 791
    :goto_0
    return-void

    .line 768
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 769
    const v3, 0x7f06019a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-boolean v3, Lcom/vkontakte/android/MainActivity;->showBack:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v3, :cond_3

    .line 771
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09007e

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

    .line 775
    :cond_1
    :goto_2
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v3, :cond_5

    .line 776
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    const v3, 0x7f060024

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    const v3, 0x7f060027

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v4, v4, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    div-int/lit16 v2, v3, 0x3e8

    .line 781
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

    .line 782
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

    .line 783
    .local v0, "ds":Ljava/lang/String;
    const v3, 0x7f060026

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 784
    const v3, 0x7f060026

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    mul-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 785
    const v3, 0x7f060025

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v0    # "ds":Ljava/lang/String;
    .end local v1    # "p":F
    .end local v2    # "pos":I
    :goto_3
    const v3, 0x7f06002b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f020147

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 769
    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_1

    .line 773
    :cond_3
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 787
    :cond_4
    const v4, 0x7f02014a

    goto :goto_4

    .line 789
    :cond_5
    const-string v3, "vk"

    const-string v4, "WTF?!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 786
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method public getAid()I
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 650
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCurrentFile()Lcom/vkontakte/android/AudioFile;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    return-object v0
.end method

.method public getOid()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 645
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPlaylistPosition()I
    .locals 1

    .prologue
    .line 762
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method public isBroadcast()Z
    .locals 1

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->broadcastEnabled:Z

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 489
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 493
    :goto_0
    return v1

    .line 491
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "x":Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    goto :goto_0
.end method

.method public isRandom()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    return v0
.end method

.method public nextTrack()V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 555
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_3

    .line 558
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 559
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 560
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

    .line 562
    :cond_3
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "status.get"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 563
    const-string v1, "uid"

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 564
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$8;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 549
    iput p2, p0, Lcom/vkontakte/android/AudioPlayerService;->nBuffered:I

    .line 550
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    mul-int/lit8 v1, p2, 0xa

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->setBuffered(I)V

    .line 551
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 603
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 604
    invoke-direct {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 605
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_3

    .line 606
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    if-lez v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    .line 609
    :cond_0
    iget v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    if-gtz v1, :cond_1

    const/4 v1, 0x5

    iput v1, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    .line 621
    :cond_1
    :goto_1
    return-void

    .line 603
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .local v0, "av":Lcom/vkontakte/android/AudioAttachView;
    invoke-virtual {v0, v3}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V

    goto :goto_0

    .line 612
    .end local v0    # "av":Lcom/vkontakte/android/AudioAttachView;
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 613
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_1

    .line 614
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

    .line 150
    sput-object p0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    .line 151
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    .line 152
    new-instance v6, Landroid/app/Notification;

    const v7, 0x7f02018c

    const-wide/16 v8, 0x0

    invoke-direct {v6, v7, v10, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    .line 153
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v0, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "action"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v6, "from_notify"

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    const/high16 v6, 0x8000000

    invoke-static {p0, v11, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 158
    .local v3, "pintent":Landroid/app/PendingIntent;
    sput-object v3, Lcom/vkontakte/android/AudioPlayerService;->notificationContentIntent:Landroid/app/PendingIntent;

    .line 159
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {v6, p0, v10, v10, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 161
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    .local v4, "playpause":Landroid/content/Intent;
    const-string v6, "PlayPauseN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v6, "action"

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v6, "from_notify"

    invoke-virtual {v4, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-static {p0, v11, v4, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 166
    .local v2, "pendingPlaypause":Landroid/app/PendingIntent;
    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v6, :cond_0

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 167
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f030008

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    .line 168
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v7, 0x7f060020

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 169
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    iput-object v7, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 172
    :cond_0
    new-instance v5, Lcom/vkontakte/android/cache/AudioCache$Proxy;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkontakte/android/cache/AudioCache$Proxy;-><init>(Landroid/content/Context;)V

    .line 173
    .local v5, "proxy":Lcom/vkontakte/android/cache/AudioCache$Proxy;
    invoke-virtual {v5}, Lcom/vkontakte/android/cache/AudioCache$Proxy;->start()V

    .line 175
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v6, :cond_1

    .line 176
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 177
    .local v1, "mgr":Landroid/net/wifi/WifiManager;
    const-string v6, "vk_audio_streaming_player"

    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 179
    .end local v1    # "mgr":Landroid/net/wifi/WifiManager;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_2

    .line 180
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 181
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    new-instance v7, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;

    invoke-direct {v7, p0, v10}, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;)V

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 183
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 794
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v0, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v1, v1, Lcom/vkontakte/android/AudioFile;->aid:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/AudioCache;->endPlayback(II)V

    .line 795
    :cond_0
    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 796
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 797
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 798
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 801
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 802
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 664
    if-ne p2, v0, :cond_2

    const/16 v2, -0x3ec

    if-ne p3, v2, :cond_2

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-boolean v2, v2, Lcom/vkontakte/android/AudioFile;->retried:Z

    if-nez v2, :cond_2

    .line 666
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

    .line 667
    sget-object v1, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/AudioListActivity;->reloadCurrentList(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput-object v3, v1, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 669
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput-boolean v0, v1, Lcom/vkontakte/android/AudioFile;->retried:Z

    .line 670
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 673
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput-object v3, v1, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 674
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput-boolean v0, v1, Lcom/vkontakte/android/AudioFile;->retried:Z

    .line 675
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    .line 679
    :cond_2
    const/16 v2, -0x26

    if-eq p2, v2, :cond_0

    .line 682
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MediaPlayer error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001b

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 684
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->errorRetries:I

    move v0, v1

    .line 685
    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vkontakte/android/AudioPlayerService;->onStartCommand(Landroid/content/Intent;II)I

    .line 187
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

    .line 191
    const-string v6, "action"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, "act":I
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "action="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/vkontakte/android/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    const/4 v4, 0x2

    return v4

    .line 195
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :pswitch_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 196
    const-string v5, "act_uid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 197
    const-string v4, "file"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/AudioFile;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/AudioPlayerService;->playNewFile(Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    .line 200
    :pswitch_1
    const-string v5, "list"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 201
    .local v3, "pa":[Landroid/os/Parcelable;
    const-string v5, "act_uid"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkontakte/android/AudioPlayerService;->statusUserID:I

    .line 202
    array-length v5, v3

    if-nez v5, :cond_0

    .line 203
    sget-object v5, Lcom/vkontakte/android/AudioPlayerService;->listToPlay:[Lcom/vkontakte/android/AudioFile;

    const-string v6, "position"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v5, v4}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_0

    .line 205
    :cond_0
    array-length v5, v3

    new-array v1, v5, [Lcom/vkontakte/android/AudioFile;

    .line 206
    .local v1, "af":[Lcom/vkontakte/android/AudioFile;
    array-length v5, v3

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    const-string v5, "position"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/vkontakte/android/AudioPlayerService;->playNewPlaylist([Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_0

    .line 211
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

    .line 214
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

    .line 217
    :pswitch_4
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    goto :goto_0

    .line 220
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto :goto_0

    .line 193
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
    .line 595
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 599
    :goto_0
    return-void

    .line 596
    :cond_0
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 597
    iget v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 598
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
    .line 498
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    .line 499
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 500
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 502
    new-instance v0, Lcom/vkontakte/android/AudioPlayerService$7;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/AudioPlayerService$7;-><init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerView;)V

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 509
    return-void
.end method

.method public registerRemoteControl()V
    .locals 8

    .prologue
    .line 689
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 691
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "registerMediaButtonEventReceiver"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 692
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/ComponentName;

    const-class v7, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v6, p0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 695
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 696
    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 698
    .local v2, "mediaPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "requestAudioFocus"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-string v7, "android.media.AudioManager$OnAudioFocusChangeListener"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 699
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v3, Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-direct {v3, v2}, Lcom/vkontakte/android/media/RemoteControlClientCompat;-><init>(Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    .line 702
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "registerRemoteControlClient"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-string v7, "android.media.RemoteControlClient"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 703
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    invoke-virtual {v6}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->getActualRemoteControlClientObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setPlaybackState(I)V

    .line 706
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/16 v4, 0x95

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->setTransportControlFlags(I)V

    .line 710
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->remoteControlClient:Lcom/vkontakte/android/media/RemoteControlClientCompat;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/media/RemoteControlClientCompat;->editMetadata(Z)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v5, v5, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v3

    .line 711
    const/16 v4, 0xd

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v5, v5, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v3

    .line 712
    const/4 v4, 0x7

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget-object v5, v5, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->putString(ILjava/lang/String;)Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;

    move-result-object v3

    .line 713
    invoke-virtual {v3}, Lcom/vkontakte/android/media/RemoteControlClientCompat$MetadataEditorCompat;->apply()V

    .line 714
    const-string v3, "vk"

    const-string v4, "registered..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public removeAttachView(Lcom/vkontakte/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkontakte/android/AudioAttachView;

    .prologue
    .line 659
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 660
    return-void
.end method

.method public removeCurrentFile()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 733
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iget v3, v3, Lcom/vkontakte/android/AudioFile;->oid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v4, :cond_1

    .line 758
    :cond_0
    :goto_0
    return v2

    .line 734
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v3, :cond_0

    .line 736
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v1, v3, [Lcom/vkontakte/android/AudioFile;

    .line 738
    .local v1, "list":[Lcom/vkontakte/android/AudioFile;
    array-length v3, v1

    if-nez v3, :cond_3

    .line 740
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 741
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 742
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    .line 743
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 744
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 745
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    .line 747
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 749
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 741
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/AudioAttachView;

    .local v0, "av":Lcom/vkontakte/android/AudioAttachView;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/AudioAttachView;->setPlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 748
    .end local v0    # "av":Lcom/vkontakte/android/AudioAttachView;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 752
    :cond_3
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget v4, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 753
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

    .line 754
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 756
    iget v3, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    iput v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    .line 757
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
    .line 520
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 522
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

    .line 523
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBroadcast(Z)V
    .locals 6
    .param p1, "b"    # Z

    .prologue
    const/4 v5, 0x0

    .line 927
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    if-nez v0, :cond_0

    .line 953
    :goto_0
    return-void

    .line 928
    :cond_0
    if-eqz p1, :cond_1

    .line 929
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "execute"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 930
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

    .line 931
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$10;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$10;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 941
    :cond_1
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "audio.setBroadcast"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 942
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v5}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 943
    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$11;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 951
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public setCurrentFile(Lcom/vkontakte/android/AudioFile;)V
    .locals 1
    .param p1, "f"    # Lcom/vkontakte/android/AudioFile;

    .prologue
    .line 922
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    .line 923
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 924
    return-void
.end method

.method public setCurrentFileIDs(II)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput p1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 806
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    iput p2, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 807
    return-void
.end method

.method public setLoop(Z)V
    .locals 1
    .param p1, "loop"    # Z

    .prologue
    .line 878
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->loop:Z

    .line 879
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRandom(Z)V
    .locals 9
    .param p1, "random"    # Z

    .prologue
    const/4 v8, 0x0

    .line 891
    iput-boolean p1, p0, Lcom/vkontakte/android/AudioPlayerService;->random:Z

    .line 892
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v5, :cond_0

    .line 893
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    new-array v5, v5, [Lcom/vkontakte/android/AudioFile;

    iput-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    .line 894
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 895
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_0

    .line 896
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 897
    .local v3, "rand":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    if-lt v0, v5, :cond_1

    .line 910
    .end local v0    # "i":I
    .end local v3    # "rand":Ljava/util/Random;
    :cond_0
    return-void

    .line 898
    .restart local v0    # "i":I
    .restart local v3    # "rand":Ljava/util/Random;
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 899
    .local v1, "pos1":I
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 900
    .local v2, "pos2":I
    if-eq v1, v2, :cond_2

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-eq v1, v5, :cond_2

    iget v5, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    if-eq v2, v5, :cond_2

    .line 901
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v4, v5, v1

    .line 902
    .local v4, "tmp":Lcom/vkontakte/android/AudioFile;
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aget-object v6, v6, v2

    aput-object v6, v5, v1

    .line 903
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService;->randomPlaylist:[Lcom/vkontakte/android/AudioFile;

    aput-object v4, v5, v2

    .line 897
    .end local v4    # "tmp":Lcom/vkontakte/android/AudioFile;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 905
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public showPlayer(ZZ)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "fromNotification"    # Z

    .prologue
    .line 624
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 641
    :goto_0
    return-void

    .line 630
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkontakte/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/AudioPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 631
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 632
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    if-eqz v1, :cond_3

    .line 633
    const-string v1, "list"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentPlaylist:[Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 634
    const-string v1, "position"

    iget v2, p0, Lcom/vkontakte/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    :goto_1
    if-nez p1, :cond_1

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 639
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "from_remote"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    :cond_2
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 636
    :cond_3
    const-string v1, "file"

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->currentFile:Lcom/vkontakte/android/AudioFile;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public togglePlayPause()V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause(Z)V

    .line 420
    return-void
.end method

.method public togglePlayPause(Z)V
    .locals 3
    .param p1, "cancelNotify"    # Z

    .prologue
    .line 423
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 425
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 427
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 434
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 445
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->setPlaying(Z)V

    .line 446
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/AudioPlayerService;->updateWidgets()V

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v1, 0x7f060020

    const v2, 0x7f0201ad

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 430
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x12c

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 437
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/AudioPlayerService;->pausedBySystem:Z

    .line 438
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 439
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 440
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->notificationViews:Landroid/widget/RemoteViews;

    const v1, 0x7f060020

    const v2, 0x7f0201ac

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x12c

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public unregisterPlayerView(Lcom/vkontakte/android/AudioPlayerView;)V
    .locals 2
    .param p1, "a"    # Lcom/vkontakte/android/AudioPlayerView;

    .prologue
    const/4 v1, 0x0

    .line 512
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 514
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 515
    iput-object v1, p0, Lcom/vkontakte/android/AudioPlayerService;->view:Lcom/vkontakte/android/AudioPlayerView;

    .line 517
    :cond_0
    return-void
.end method

.method public unregisterRemoteControl()V
    .locals 6

    .prologue
    .line 719
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 721
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

    .line 722
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/vkontakte/android/MediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
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

    .line 726
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
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

    .line 728
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

    .line 730
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v1

    goto :goto_0
.end method
