.class Lcom/vkontakte/android/AudioPlayerService$10;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->registerRemoteControl()V
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .param p1, "focusChange"    # I

    .prologue
    const v4, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 805
    if-ne p1, v3, :cond_1

    .line 806
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$29(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 810
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/AudioPlayerService;->fadeIn(F)V

    .line 817
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$30(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 819
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 820
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$29(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 825
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 829
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$30(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 831
    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    .line 832
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 835
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 836
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 837
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 841
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$30(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 843
    :cond_5
    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    .line 844
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 847
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->fadeOut(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 850
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$30(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 852
    :cond_7
    return-void

    .line 811
    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$4(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 813
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 848
    :catch_0
    move-exception v0

    goto :goto_3

    .line 839
    :catch_1
    move-exception v0

    goto :goto_2

    .line 827
    :catch_2
    move-exception v0

    goto :goto_1
.end method
