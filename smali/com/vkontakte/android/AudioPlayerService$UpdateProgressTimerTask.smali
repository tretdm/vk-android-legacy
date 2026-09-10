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
    .line 734
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/AudioPlayerService;
    .param p2, "x1"    # Lcom/vkontakte/android/AudioPlayerService$1;

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 737
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1900(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$2900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 738
    :cond_0
    const/4 v0, 0x0

    .line 739
    .local v0, "_p":F
    const-wide/16 v4, 0x0

    .line 740
    .local v4, "pos":J
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iget-boolean v6, v6, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v6, :cond_1

    .line 742
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    int-to-long v4, v6

    .line 743
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v7}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 747
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1900(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 748
    move v2, v0

    .line 749
    .local v2, "p":F
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1900(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1900(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;

    move-result-object v6

    mul-float v7, v2, v9

    float-to-int v7, v7

    invoke-interface {v6, v7, v4, v5}, Lcom/vkontakte/android/AudioPlayerService$PlayerCallback;->setPosition(IJ)V

    .line 751
    .end local v2    # "p":F
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 752
    invoke-static {}, Lcom/vkontakte/android/AudioPlayerService;->access$2900()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;

    .local v3, "pc":Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->oid:I

    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v7}, Lcom/vkontakte/android/AudioPlayerService;->access$1000(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/AudioFile;->aid:I

    mul-float v8, v0, v9

    float-to-int v8, v8

    invoke-interface {v3, v6, v7, v8}, Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;->onPlayProgressChanged(III)V

    goto :goto_1

    .line 754
    .end local v0    # "_p":F
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pc":Lcom/vkontakte/android/AudioPlayerService$ProgressCallback;
    .end local v4    # "pos":J
    :cond_3
    return-void

    .line 745
    .restart local v0    # "_p":F
    .restart local v4    # "pos":J
    :catch_0
    move-exception v6

    goto :goto_0
.end method
