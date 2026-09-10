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

    .line 110
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    const-string v4, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v4, "action"

    const/4 v7, -0x1

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, "act":I
    const-string v4, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "action="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    packed-switch v0, :pswitch_data_0

    .line 154
    .end local v0    # "act":I
    :cond_0
    :goto_0
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    const-string v4, "state"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_4

    move v2, v6

    .line 159
    .local v2, "newPlugState":Z
    :goto_1
    if-nez v2, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4, v2}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 164
    .end local v2    # "newPlugState":Z
    :cond_2
    return-void

    .line 118
    .restart local v0    # "act":I
    :pswitch_0
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/vkontakte/android/AudioPlayerService;->access$0(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;)V

    .line 119
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v7, "act_uid"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/AudioPlayerService;->access$1(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 120
    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v4, "file"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/AudioFile;

    invoke-static {v7, v4}, Lcom/vkontakte/android/AudioPlayerService;->access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    goto :goto_0

    .line 123
    :pswitch_1
    const-string v4, "list"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 124
    .local v3, "pa":[Landroid/os/Parcelable;
    array-length v4, v3

    new-array v1, v4, [Lcom/vkontakte/android/AudioFile;

    .line 125
    .local v1, "af":[Lcom/vkontakte/android/AudioFile;
    array-length v4, v3

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v7, "act_uid"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v4, v7}, Lcom/vkontakte/android/AudioPlayerService;->access$1(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 127
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v7, "position"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v4, v1, v7}, Lcom/vkontakte/android/AudioPlayerService;->access$3(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;I)V

    goto :goto_0

    .line 130
    .end local v1    # "af":[Lcom/vkontakte/android/AudioFile;
    .end local v3    # "pa":[Landroid/os/Parcelable;
    :pswitch_2
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto :goto_0

    .line 133
    :pswitch_3
    iget-object v7, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v4, "no_anim"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    const-string v8, "from_notify"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v4, v8}, Lcom/vkontakte/android/AudioPlayerService;->showPlayer(ZZ)V

    goto/16 :goto_0

    :cond_3
    move v4, v6

    goto :goto_2

    .line 136
    :pswitch_4
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    goto/16 :goto_0

    .line 139
    :pswitch_5
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto/16 :goto_0

    .line 142
    :pswitch_6
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4}, Lcom/vkontakte/android/AudioPlayerService;->access$4(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 147
    :pswitch_7
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v4, v6}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 149
    iget-object v4, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v4}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .end local v0    # "act":I
    :cond_4
    move v2, v5

    .line 158
    goto/16 :goto_1

    .line 116
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
