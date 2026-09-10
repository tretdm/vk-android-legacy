.class Lcom/vkontakte/android/media/rtmp/StreamPlayer$2;
.super Ljava/lang/Object;
.source "StreamPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/rtmp/StreamPlayer;->startAudioThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/rtmp/StreamPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer$2;->this$0:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer$2;->this$0:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->access$1(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V

    .line 86
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer$2;->this$0:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->access$2(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V

    .line 87
    const-string v0, "audio player exiting"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method
