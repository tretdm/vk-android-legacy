.class Lcom/vkontakte/android/AudioPlayerService$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 6
    .param p1, "focusChange"    # I

    .prologue
    const v5, 0x3e4ccccd    # 0.2f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 932
    if-ne p1, v3, :cond_1

    .line 933
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AUDIOFOCUS_GAIN, paused by system="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paused by call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$18(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$39(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 938
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0, v5}, Lcom/vkontakte/android/AudioPlayerService;->fadeIn(F)V

    .line 946
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 947
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$40(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 949
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 950
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$39(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 955
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 959
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v4}, Lcom/vkontakte/android/AudioPlayerService;->access$40(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 961
    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    .line 962
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 965
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 967
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 971
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v4}, Lcom/vkontakte/android/AudioPlayerService;->access$40(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 973
    :cond_5
    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    .line 974
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 977
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->fadeOut(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 980
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v4}, Lcom/vkontakte/android/AudioPlayerService;->access$40(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 982
    :cond_7
    return-void

    .line 939
    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v4}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 941
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$7;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 978
    :catch_0
    move-exception v0

    goto :goto_3

    .line 969
    :catch_1
    move-exception v0

    goto :goto_2

    .line 957
    :catch_2
    move-exception v0

    goto :goto_1
.end method
