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
    .line 1236
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;)V
    .locals 0

    .prologue
    .line 1236
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$13(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 1241
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$13(Lcom/vkontakte/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1245
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;Z)V

    .line 1246
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1247
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$10(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1257
    :goto_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->fadeIn()V

    .line 1259
    :cond_1
    return-void

    .line 1249
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1251
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$15(Lcom/vkontakte/android/AudioPlayerService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$16(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)V

    .line 1255
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$17(Lcom/vkontakte/android/AudioPlayerService;)V

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    goto :goto_1
.end method
