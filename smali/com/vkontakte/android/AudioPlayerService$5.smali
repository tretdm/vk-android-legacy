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

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/AudioPlayerService$5;)Lcom/vkontakte/android/AudioPlayerService;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    return-object v0
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 368
    sget-object v0, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lcom/vkontakte/android/AudioListActivity;->lastInstance:Lcom/vkontakte/android/AudioListActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioListActivity;->updateList()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$5$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$5$1;-><init>(Lcom/vkontakte/android/AudioPlayerService$5;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    .line 383
    const-string v0, "vk"

    const-string v1, "player started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$5;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$17(Lcom/vkontakte/android/AudioPlayerService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    goto :goto_0
.end method
