.class Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;
.super Landroid/telephony/PhoneStateListener;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/AudioPlayerService;
    .param p2, "x1"    # Lcom/vkontakte/android/AudioPlayerService$1;

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$800(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$802(Lcom/vkontakte/android/AudioPlayerService;Z)Z

    .line 1477
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$800(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$802(Lcom/vkontakte/android/AudioPlayerService;Z)Z

    .line 1484
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$900(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1496
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1497
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->togglePlayPause()V

    .line 1498
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->fadeIn()V

    .line 1502
    :cond_1
    return-void
.end method
