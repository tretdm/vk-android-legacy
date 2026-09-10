.class Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;
.super Ljava/util/TimerTask;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleasePlayerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1505
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/AudioPlayerService;
    .param p2, "x1"    # Lcom/vkontakte/android/AudioPlayerService$1;

    .prologue
    .line 1505
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1509
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1510
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1511
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1702(Lcom/vkontakte/android/AudioPlayerService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 1512
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$ReleasePlayerRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$2102(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1513
    const-string v0, "vk"

    const-string v1, "Player released."

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1514
    :catch_0
    move-exception v0

    goto :goto_0
.end method
