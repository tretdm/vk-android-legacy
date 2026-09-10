.class Lcom/vkontakte/android/AudioPlayerService$9;
.super Ljava/lang/Object;
.source "AudioPlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerService;->onCompletion(Landroid/media/MediaPlayer;)V
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

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AudioPlayerView;->setPlaying(Z)V

    .line 616
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    const-string v1, "0:00"

    invoke-virtual {v0, v2, v1}, Lcom/vkontakte/android/AudioPlayerView;->setProgress(ILjava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$9;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/AudioPlayerView;->setBuffered(I)V

    .line 618
    return-void
.end method
