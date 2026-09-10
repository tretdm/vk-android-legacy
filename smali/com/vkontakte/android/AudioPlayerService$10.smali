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

    .line 883
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

    .line 886
    if-ne p1, v3, :cond_1

    .line 887
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$36(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 891
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/AudioPlayerService;->fadeIn(F)V

    .line 898
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$37(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 900
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 901
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$36(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 906
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 910
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$37(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 912
    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    .line 913
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 916
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 917
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 918
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 922
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$37(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 924
    :cond_5
    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    .line 925
    const-string v0, "vk"

    const-string v1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 928
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->fadeOut(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 931
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$37(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 933
    :cond_7
    return-void

    .line 892
    :cond_8
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$4(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 894
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$10;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 929
    :catch_0
    move-exception v0

    goto :goto_3

    .line 920
    :catch_1
    move-exception v0

    goto :goto_2

    .line 908
    :catch_2
    move-exception v0

    goto :goto_1
.end method
