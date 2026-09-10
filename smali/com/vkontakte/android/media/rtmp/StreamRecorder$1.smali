.class Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;
.super Ljava/lang/Object;
.source "StreamRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/rtmp/StreamRecorder;->startRecordThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "vk_RTMP"

    const-string v1, "Starting record thread"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$0(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 54
    const-string v0, "vk_RTMP"

    const-string v1, "AudioRecord start ok"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$1(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$0(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$0(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$2(Lcom/vkontakte/android/media/rtmp/StreamRecorder;Landroid/media/AudioRecord;)V

    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$3(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 60
    const-string v0, "audio recorder/encoder stopped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    return-void
.end method
