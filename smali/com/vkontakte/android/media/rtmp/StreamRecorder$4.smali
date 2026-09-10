.class Lcom/vkontakte/android/media/rtmp/StreamRecorder$4;
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
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$4;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$4;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$7(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 77
    const-string v0, "audio helper stopped"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method
