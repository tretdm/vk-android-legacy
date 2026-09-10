.class Lcom/vkontakte/android/AudioPlayerService$5;
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    return-object v0
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$23(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$23(Lcom/vkontakte/android/AudioPlayerService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 474
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$24(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$25(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 477
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$26()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$5$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$5$1;-><init>(Lcom/vkontakte/android/AudioPlayerService$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 491
    const-string v0, "vk"

    const-string v1, "player started"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$28(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    .line 494
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$28(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 497
    :cond_3
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$19(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)V

    .line 498
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    if-eqz v0, :cond_4

    .line 500
    :try_start_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 503
    :cond_4
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$16(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)V

    .line 505
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$26()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$29(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$30(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 507
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$22(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 509
    :goto_2
    return-void

    .line 508
    :catch_0
    move-exception v0

    goto :goto_2

    .line 501
    :catch_1
    move-exception v0

    goto :goto_1

    .line 495
    :catch_2
    move-exception v0

    goto :goto_0
.end method
