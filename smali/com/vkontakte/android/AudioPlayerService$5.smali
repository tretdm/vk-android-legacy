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

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    return-object v0
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$19(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 446
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$20()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 447
    :cond_0
    sget-object v0, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v0, :cond_1

    .line 448
    sget-object v0, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$5$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$5$1;-><init>(Lcom/vkontakte/android/AudioPlayerService$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 462
    const-string v0, "vk"

    const-string v1, "player started"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$20()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$22(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$23(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 466
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$17(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    goto :goto_0
.end method
