.class Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 531
    const-string v0, "0:00"

    .line 532
    .local v0, "ds":Ljava/lang/String;
    const/4 v1, 0x0

    .line 533
    .local v1, "p":F
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v3

    iget-boolean v3, v3, Lcom/vkontakte/android/AudioPlayerService;->initing:Z

    if-nez v3, :cond_0

    .line 535
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    div-int/lit16 v2, v3, 0x3e8

    .line 536
    .local v2, "pos":I
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v4

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 537
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 541
    .end local v2    # "pos":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;->this$1:Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v0}, Lcom/vkontakte/android/AudioPlayerView;->setProgress(ILjava/lang/String;)V

    .line 542
    :cond_1
    return-void

    .line 539
    :catch_0
    move-exception v3

    goto :goto_0
.end method
