.class Lcom/vkontakte/android/AudioPlayerService$8;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


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
    .line 1015
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlaybackPosition()J
    .locals 3

    .prologue
    .line 1019
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerService$8;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerService;->access$1700(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1023
    .local v0, "p":I
    int-to-long v1, v0

    .line 1026
    .end local v0    # "p":I
    :goto_0
    return-wide v1

    .line 1024
    :catch_0
    move-exception v1

    .line 1026
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method
