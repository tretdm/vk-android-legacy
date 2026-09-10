.class Lcom/vkontakte/android/AudioPlayerService$4;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->doStartPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1600(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1600(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 501
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1602(Lcom/vkontakte/android/AudioPlayerService;I)I

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1800(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 504
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$1400()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1900(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$2002(Lcom/vkontakte/android/AudioPlayerService;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1900(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->displayInfo(Lcom/vkontakte/android/AudioFile;)V

    .line 509
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1900(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 513
    :cond_2
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 514
    const-string v0, "vk"

    const-string v1, "player started"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$2100(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    .line 517
    :try_start_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$2100(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 520
    :cond_3
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$2102(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 521
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$2200(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    if-eqz v0, :cond_4

    .line 523
    :try_start_5
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$2200(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 526
    :cond_4
    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$2202(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 528
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$1400()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$2300(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 529
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$4;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$2400(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 530
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1402(Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 532
    :goto_3
    return-void

    .line 531
    :catch_0
    move-exception v0

    goto :goto_3

    .line 524
    :catch_1
    move-exception v0

    goto :goto_2

    .line 518
    :catch_2
    move-exception v0

    goto :goto_1

    .line 510
    :catch_3
    move-exception v0

    goto :goto_0
.end method
