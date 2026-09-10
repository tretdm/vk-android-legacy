.class Lcom/vkontakte/android/AudioPlayerService$9;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


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
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    .line 1029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .locals 5
    .param p1, "newPositionMs"    # J

    .prologue
    .line 1033
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1035
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    long-to-int v3, p1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1036
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v0, v2

    .line 1037
    .local v0, "ppos":J
    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$41(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/RemoteControlClient;

    move-result-object v3

    iget-object v2, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v2}, Lcom/vkontakte/android/AudioPlayerService;->access$14(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    .end local v0    # "ppos":J
    :cond_0
    :goto_1
    return-void

    .line 1037
    .restart local v0    # "ppos":J
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 1038
    .end local v0    # "ppos":J
    :catch_0
    move-exception v2

    goto :goto_1
.end method
