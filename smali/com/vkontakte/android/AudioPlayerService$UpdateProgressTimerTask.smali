.class Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;
.super Ljava/util/TimerTask;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProgressTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 617
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V
    .locals 0

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 620
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$10()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 621
    :cond_0
    const/4 v0, 0x0

    .line 622
    .local v0, "_p":F
    const/4 v4, 0x0

    .line 623
    .local v4, "pos":I
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v5, v5, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v5, :cond_1

    .line 625
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    div-int/lit16 v4, v5, 0x3e8

    .line 626
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 630
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 631
    move v2, v0

    .line 632
    .local v2, "p":F
    move v1, v4

    .line 633
    .local v1, "_pos":I
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;-><init>(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;IF)V

    invoke-virtual {v5, v6}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 639
    .end local v1    # "_pos":I
    .end local v2    # "p":F
    :cond_2
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v5}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 640
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$10()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 642
    .end local v0    # "_p":F
    .end local v4    # "pos":I
    :cond_3
    return-void

    .line 640
    .restart local v0    # "_p":F
    .restart local v4    # "pos":I
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .local v3, "pc":Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v7}, Lcom/vkontakte/android/AudioPlayerService;->access$11(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/AudioFile;->aid:I

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-interface {v3, v6, v7, v8}, Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;->onPlayProgressChanged(III)V

    goto :goto_1

    .line 628
    .end local v3    # "pc":Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
