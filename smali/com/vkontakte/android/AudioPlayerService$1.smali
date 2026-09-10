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

    .line 120
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 124
    const-string v6, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    const-string v6, "action"

    const/4 v9, -0x1

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 126
    .local v0, "act":I
    const-string v6, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "action="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    packed-switch v0, :pswitch_data_0

    .line 171
    .end local v0    # "act":I
    :cond_0
    :goto_0
    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 175
    const-string v6, "state"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_7

    move v3, v8

    .line 176
    .local v3, "newPlugState":Z
    :goto_1
    if-nez v3, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 179
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6, v3}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 181
    .end local v3    # "newPlugState":Z
    :cond_2
    const-string v6, "com.vkontakte.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 182
    const-string v6, "aid"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "aid":I
    const-string v6, "oid"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 183
    .local v4, "oid":I
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PS Cover available: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->aid:I

    if-ne v6, v2, :cond_3

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$8(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioFile;

    move-result-object v6

    iget v6, v6, Lcom/vkontakte/android/AudioFile;->oid:I

    if-ne v6, v4, :cond_3

    .line 185
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$9(Lcom/vkontakte/android/AudioPlayerService;)V

    .line 188
    .end local v2    # "aid":I
    .end local v4    # "oid":I
    :cond_3
    return-void

    .line 129
    .restart local v0    # "act":I
    :pswitch_0
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v9, 0x0

    invoke-static {v6, v9}, Lcom/vkontakte/android/AudioPlayerService;->access$0(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;)V

    .line 130
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v9, "act_uid"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v6, v9}, Lcom/vkontakte/android/AudioPlayerService;->access$1(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 131
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v6, "file"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/AudioFile;

    invoke-static {v9, v6}, Lcom/vkontakte/android/AudioPlayerService;->access$2(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioFile;)V

    goto/16 :goto_0

    .line 134
    :pswitch_1
    const-string v6, "list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 135
    .local v5, "pa":[Landroid/os/Parcelable;
    array-length v6, v5

    new-array v1, v6, [Lcom/vkontakte/android/AudioFile;

    .line 136
    .local v1, "af":[Lcom/vkontakte/android/AudioFile;
    array-length v6, v5

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v9, "act_uid"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v6, v9}, Lcom/vkontakte/android/AudioPlayerService;->access$1(Lcom/vkontakte/android/AudioPlayerService;I)V

    .line 138
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v9, "position"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v6, v1, v9}, Lcom/vkontakte/android/AudioPlayerService;->access$3(Lcom/vkontakte/android/AudioPlayerService;[Lcom/vkontakte/android/AudioFile;I)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "af":[Lcom/vkontakte/android/AudioFile;
    .end local v5    # "pa":[Landroid/os/Parcelable;
    :pswitch_2
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 144
    :pswitch_3
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const-string v6, "no_anim"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    const-string v10, "from_notify"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v6, v10}, Lcom/vkontakte/android/AudioPlayerService;->showPlayer(ZZ)V

    goto/16 :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    .line 147
    :pswitch_4
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    goto/16 :goto_0

    .line 150
    :pswitch_5
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto/16 :goto_0

    .line 153
    :pswitch_6
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6}, Lcom/vkontakte/android/AudioPlayerService;->access$4(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 154
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 158
    :pswitch_7
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v6, v8}, Lcom/vkontakte/android/AudioPlayerService;->access$5(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 160
    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto/16 :goto_0

    .line 164
    :pswitch_8
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->isLoop()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Lcom/vkontakte/android/AudioPlayerService;->setLoop(Z)V

    goto/16 :goto_0

    :cond_5
    move v6, v8

    goto :goto_3

    .line 167
    :pswitch_9
    iget-object v9, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    iget-object v6, p0, Lcom/vkontakte/android/AudioPlayerService$1;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v6}, Lcom/vkontakte/android/AudioPlayerService;->isRandom()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Lcom/vkontakte/android/AudioPlayerService;->setRandom(Z)V

    goto/16 :goto_0

    :cond_6
    move v6, v8

    goto :goto_4

    .end local v0    # "act":I
    :cond_7
    move v3, v7

    .line 175
    goto/16 :goto_1

    .line 127
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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
