.class Lcom/vkontakte/android/media/rtmp/RTMPClient$2;
.super Ljava/lang/Object;
.source "RTMPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/rtmp/RTMPClient;->publish(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

.field private final synthetic val$streamID:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    iput p2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->val$streamID:I

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 551
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "RTMP_Publisher"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 552
    const-string v1, "publish start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    const/4 v11, 0x0

    .line 555
    .local v11, "lastType":I
    const-wide/16 v15, 0x0

    .line 556
    .local v15, "ts":J
    const/16 v17, 0x0

    .local v17, "videoStarted":Z
    const/4 v10, 0x0

    .line 557
    .local v10, "audioStarted":Z
    const-wide/16 v8, 0x0

    .local v8, "ats":J
    const-wide/16 v18, 0x0

    .line 558
    .local v18, "vts":J
    const/4 v13, 0x0

    .line 559
    .local v13, "sp":[B
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$1(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    :goto_1
    return-void

    .line 560
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$3(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [B

    move-object v13, v0

    .line 561
    :goto_2
    if-nez v13, :cond_4

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$5(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->getNextPacket()Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;

    move-result-object v12

    .line 575
    .local v12, "pkt":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->time()I

    move-result v1

    int-to-long v15, v1

    .line 576
    :cond_1
    iget-boolean v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->first:Z

    if-nez v1, :cond_6

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    iget v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_5

    const/4 v1, 0x4

    :goto_3
    invoke-static {v2, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$6(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V

    .line 598
    :cond_2
    :goto_4
    iget-boolean v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->first:Z

    if-eqz v1, :cond_3

    .line 602
    iget-wide v15, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->timestamp:J

    .line 604
    :cond_3
    iget v11, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    .line 605
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$4(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-result-object v2

    iget-object v3, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->data:[B

    iget v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_e

    const/4 v1, 0x4

    :goto_5
    invoke-virtual {v2, v3, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeChunked([BI)V

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$4(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    .end local v12    # "pkt":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    :catch_0
    move-exception v20

    .line 609
    .local v20, "x":Ljava/lang/Exception;
    const-string v1, "vk_RTMP"

    move-object/from16 v0, v20

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 562
    .end local v20    # "x":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$4(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write([B)V

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$4(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$3(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [B

    move-object v13, v0

    .line 565
    const-string v1, "Sent a service packet"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 580
    .restart local v12    # "pkt":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    :cond_5
    const/4 v1, 0x5

    goto :goto_3

    .line 581
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$7(Lcom/vkontakte/android/media/rtmp/RTMPClient;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-static {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$8(Lcom/vkontakte/android/media/rtmp/RTMPClient;)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->val$streamID:I

    if-ne v1, v2, :cond_8

    if-eqz v11, :cond_8

    iget v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    if-eqz v10, :cond_8

    :cond_7
    iget v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_b

    if-nez v17, :cond_b

    .line 582
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    iget v2, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a

    const/4 v2, 0x4

    :goto_6
    iget v3, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    iget v4, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->fullSize:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->val$streamID:I

    invoke-static {}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->time()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v1 .. v7}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$9(Lcom/vkontakte/android/media/rtmp/RTMPClient;IIIIJ)V

    .line 583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->val$streamID:I

    invoke-static {v1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$10(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V

    .line 584
    const-string v1, "vk"

    const-string v2, "Sent type 0 header!!!"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    const/4 v10, 0x1

    .line 586
    :cond_9
    iget v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/16 v17, 0x1

    .line 587
    goto/16 :goto_4

    .line 582
    :cond_a
    const/4 v2, 0x5

    goto :goto_6

    .line 592
    :cond_b
    iget v1, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    const/16 v14, 0x14

    .line 593
    .local v14, "t":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    iget v2, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d

    const/4 v2, 0x4

    :goto_8
    iget v3, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    iget v4, v12, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->fullSize:I

    int-to-long v5, v14

    invoke-static/range {v1 .. v6}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->access$11(Lcom/vkontakte/android/media/rtmp/RTMPClient;IIIJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 592
    .end local v14    # "t":I
    :cond_c
    const/4 v14, 0x0

    goto :goto_7

    .line 593
    .restart local v14    # "t":I
    :cond_d
    const/4 v2, 0x5

    goto :goto_8

    .line 605
    .end local v14    # "t":I
    :cond_e
    const/4 v1, 0x5

    goto/16 :goto_5
.end method
