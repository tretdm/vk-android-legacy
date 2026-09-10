.class Lcom/vkontakte/android/AudioPlayerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerService;
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
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 96
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    const-string v5, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const-string v5, "action"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "act":I
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "action="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    packed-switch v0, :pswitch_data_0

    .line 140
    .end local v0    # "act":I
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v0    # "act":I
    :pswitch_0
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkontakte/android/AudioPlayerService;->access$0(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;)V

    .line 105
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v5, "act_uid"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v4, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$1(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 106
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v3, "file"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/AudioFile;

    invoke-static {v4, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v4, "list"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 110
    .local v2, "pa":[Landroid/os/Parcelable;
    array-length v4, v2

    new-array v1, v4, [Lcom/vkontakte/android/AudioFile;

    .line 111
    .local v1, "af":[Lcom/vkontakte/android/AudioFile;
    array-length v4, v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v5, "act_uid"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/AudioPlayerService;->access$1(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 113
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v5, "position"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v4, v1, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$3(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_0

    .line 116
    .end local v1    # "af":[Lcom/vkontakte/android/AudioFile;
    .end local v2    # "pa":[Landroid/os/Parcelable;
    :pswitch_2
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v5, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v6, "no_anim"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_1
    const-string v4, "from_notify"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v3, v4}, Lcom/vkontakte/android/AudioPlayerService;->showPlayer(ZZ)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 122
    :pswitch_4
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    goto :goto_0

    .line 125
    :pswitch_5
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto :goto_0

    .line 128
    :pswitch_6
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v3}, Lcom/vkontakte/android/AudioPlayerService;->access$4(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 133
    :pswitch_7
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v3, v4}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 135
    iget-object v3, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
