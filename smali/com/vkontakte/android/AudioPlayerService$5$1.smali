.class Lcom/vkontakte/android/AudioPlayerService$5$1;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService$5;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerService$5;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$5$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$5;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$5;->access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$27(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 481
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$5;->access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v1

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$5;->access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$5$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService$5;->access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AudioPlayerView;->displayInfo(Lcom/vkontakte/android/AudioFile;)V

    .line 484
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService$5;->access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$5$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$5;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService$5;->access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v2

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AudioPlayerView;->setPlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 488
    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 485
    :catch_0
    move-exception v0

    goto :goto_0
.end method
