.class public Lcom/vkontakte/android/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaButtonReceiver.java"


# static fields
.field public static receiveEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/MediaButtonReceiver;->receiveEvents:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 14
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 15
    .local v0, "event":Landroid/view/KeyEvent;
    const-string v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MEDIA BUTTON code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-boolean v1, Lcom/vkontakte/android/MediaButtonReceiver;->receiveEvents:Z

    if-nez v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 18
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 46
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/vkontakte/android/MediaButtonReceiver;->abortBroadcast()V

    goto :goto_0

    .line 22
    :sswitch_0
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->nextTrack()V

    goto :goto_1

    .line 26
    :sswitch_1
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto :goto_1

    .line 29
    :sswitch_2
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto :goto_1

    .line 34
    :sswitch_3
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    goto :goto_1

    .line 39
    :sswitch_4
    sget-object v1, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerService;->prevTrack()V

    goto :goto_1

    .line 19
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_0
        0x58 -> :sswitch_4
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method
