.class public Lcom/vkontakte/android/CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallStateListener.java"


# instance fields
.field wasPlaying:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/CallStateListener;->wasPlaying:Z

    .line 9
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CALL STATE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 17
    if-nez p1, :cond_1

    .line 18
    sput-boolean v4, Lcom/vkontakte/android/MediaButtonReceiver;->receiveEvents:Z

    .line 19
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->registerRemoteControl()V

    .line 20
    iget-boolean v0, p0, Lcom/vkontakte/android/CallStateListener;->wasPlaying:Z

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 22
    iput-boolean v3, p0, Lcom/vkontakte/android/CallStateListener;->wasPlaying:Z

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->unregisterRemoteControl()V

    .line 26
    sput-boolean v3, Lcom/vkontakte/android/MediaButtonReceiver;->receiveEvents:Z

    .line 27
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/vkontakte/android/AudioPlayerService;->sharedInstance:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 29
    iput-boolean v4, p0, Lcom/vkontakte/android/CallStateListener;->wasPlaying:Z

    goto :goto_0
.end method
