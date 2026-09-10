.class Lcom/vkontakte/android/media/rtmp/StreamRecorder$2;
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
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$2;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$2;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$4(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$2;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$5(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 67
    const-string v0, "video encoder stopped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method
