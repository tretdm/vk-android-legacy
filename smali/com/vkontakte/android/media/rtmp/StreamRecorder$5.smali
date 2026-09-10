.class Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;
.super Ljava/lang/Object;
.source "StreamRecorder.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/rtmp/StreamRecorder;->setCamera(Landroid/hardware/Camera;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 98
    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v2}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$8(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$9(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string v0, "vk"

    const-string v1, "frame queue overflow"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$9(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 102
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$9(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$10(Lcom/vkontakte/android/media/rtmp/StreamRecorder;J)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$11(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)I

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;->this$0:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->access$12(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 108
    return-void
.end method
