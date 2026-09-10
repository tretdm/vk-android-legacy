.class public Lcom/vkontakte/android/media/rtmp/StreamRecorder;
.super Ljava/lang/Object;
.source "StreamRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    }
.end annotation


# instance fields
.field private ah:Ljava/lang/Thread;

.field private ar:Ljava/lang/Thread;

.field private cameraFrames:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private encodedAudio:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;",
            ">;"
        }
    .end annotation
.end field

.field private encodedPackets:Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue",
            "<",
            "Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;",
            ">;"
        }
    .end annotation
.end field

.field private encodedVideo:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;",
            ">;"
        }
    .end annotation
.end field

.field private lastAudioTimestamp:I

.field private lastCamFrameTime:J

.field private lastPktTakeTime:J

.field private record:Landroid/media/AudioRecord;

.field private recordBufferSize:I

.field private running:Z

.field private singleFrameTime:I

.field private streamStartTime:J

.field private ve:Ljava/lang/Thread;

.field private vh:Ljava/lang/Thread;

.field private videoEncoderInited:Z

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 18
    const-string v0, "rtmpcodecs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/16 v2, 0x3e80

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;

    invoke-direct {v0}, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedPackets:Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;

    .line 25
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v4, 0x7

    invoke-direct {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->cameraFrames:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 26
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedVideo:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 27
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v4, 0x28

    invoke-direct {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedAudio:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 30
    iput-wide v7, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->lastPktTakeTime:J

    .line 31
    iput-boolean v6, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoEncoderInited:Z

    .line 33
    const/16 v0, 0x43

    iput v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->singleFrameTime:I

    .line 35
    iput-wide v7, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->streamStartTime:J

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->running:Z

    .line 42
    invoke-static {v2, v3, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/16 v4, 0x280

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->recordBufferSize:I

    .line 43
    iget v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->recordBufferSize:I

    rem-int/lit16 v0, v0, 0x280

    if-lez v0, :cond_0

    iget v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->recordBufferSize:I

    iget v4, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->recordBufferSize:I

    rem-int/lit16 v4, v4, 0x280

    rsub-int v4, v4, 0x280

    add-int/2addr v0, v4

    iput v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->recordBufferSize:I

    .line 44
    :cond_0
    const-string v0, "Record buffer size=%d"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->recordBufferSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->recordBufferSize:I

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->record:Landroid/media/AudioRecord;

    .line 46
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->startRecordThread()V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)Landroid/media/AudioRecord;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->record:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->audioRecordLoop()V

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/media/rtmp/StreamRecorder;J)V
    .locals 0

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->lastCamFrameTime:J

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoWidth:I

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/media/rtmp/StreamRecorder;Landroid/media/AudioRecord;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->record:Landroid/media/AudioRecord;

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->releaseSpeexEncoder()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoEncodeLoop()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->releaseVideoEncoder()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoHelperLoop()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->audioHelperLoop()V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->lastCamFrameTime:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->cameraFrames:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method private audioHelperLoop()V
    .locals 9

    .prologue
    .line 208
    const-wide/16 v0, 0x14

    .line 209
    .local v0, "delay":J
    :goto_0
    iget-boolean v5, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->running:Z

    if-nez v5, :cond_0

    .line 227
    return-void

    .line 211
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 212
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedAudio:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 213
    const-wide/16 v0, 0x14

    goto :goto_0

    .line 217
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 219
    .local v3, "t":J
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedAudio:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;

    .line 221
    .local v2, "p":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    invoke-static {}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->time()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v2, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->timestamp:J

    .line 222
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedPackets:Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;

    invoke-virtual {v5, v2}, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 223
    const-wide/16 v5, 0x14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    sub-long/2addr v7, v3

    sub-long v0, v5, v7

    goto :goto_0

    .line 225
    .end local v2    # "p":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    .end local v3    # "t":J
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private audioRecordLoop()V
    .locals 15

    .prologue
    const/16 v2, 0x280

    .line 113
    iget v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->recordBufferSize:I

    new-array v12, v0, [B

    .line 114
    .local v12, "raw":[B
    const/16 v0, 0x400

    new-array v7, v0, [B

    .local v7, "buf":[B
    new-array v8, v2, [B

    .line 124
    .local v8, "buf2":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 125
    .local v3, "ts":J
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->running:Z

    if-nez v0, :cond_0

    .line 145
    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->record:Landroid/media/AudioRecord;

    const/4 v2, 0x0

    array-length v5, v12

    invoke-virtual {v0, v12, v2, v5}, Landroid/media/AudioRecord;->read([BII)I

    move-result v10

    .line 128
    .local v10, "nRead":I
    const/4 v11, 0x0

    .line 129
    .local v11, "offset":I
    :goto_1
    array-length v0, v12

    if-lt v11, v0, :cond_1

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x280

    invoke-static {v12, v11, v8, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    invoke-direct {p0, v8, v7}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodeSpeexAudio([B[B)I

    move-result v9

    .line 132
    .local v9, "len":I
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    invoke-static {}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->time()I

    move-result v0

    int-to-long v3, v0

    .line 133
    :cond_2
    add-int/lit8 v0, v9, 0x1

    new-array v1, v0, [B

    .line 134
    .local v1, "pkt":[B
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {v7, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    const/4 v0, 0x0

    const/16 v2, -0x4e

    aput-byte v2, v1, v0

    .line 136
    iget-object v14, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedAudio:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;

    const/16 v2, 0x8

    const/4 v5, 0x1

    array-length v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;-><init>([BIJZI)V

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    add-int/lit16 v11, v11, 0x280

    goto :goto_1

    .line 141
    .end local v1    # "pkt":[B
    .end local v9    # "len":I
    .end local v10    # "nRead":I
    .end local v11    # "offset":I
    :catch_0
    move-exception v13

    .line 142
    .local v13, "x":Ljava/lang/Exception;
    const-string v0, "vk_RTMP"

    invoke-static {v0, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private native encodeSpeexAudio([B[B)I
.end method

.method private native encodeVideo([B)[B
.end method

.method private native initVideoEncoder(II)V
.end method

.method private native releaseSpeexEncoder()V
.end method

.method private native releaseVideoEncoder()V
.end method

.method public static native setEchoParam(I)V
.end method

.method private startRecordThread()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder$1;-><init>(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 61
    const-string v2, "RTMP_AR"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 50
    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->ar:Ljava/lang/Thread;

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/rtmp/StreamRecorder$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder$2;-><init>(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 68
    const-string v2, "RTMP_VE"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 62
    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->ve:Ljava/lang/Thread;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/rtmp/StreamRecorder$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder$3;-><init>(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 73
    const-string v2, "RTMP_VH"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 69
    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->vh:Ljava/lang/Thread;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/rtmp/StreamRecorder$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder$4;-><init>(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    .line 78
    const-string v2, "RTMP_AH"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 74
    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->ah:Ljava/lang/Thread;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method private videoEncodeLoop()V
    .locals 14

    .prologue
    .line 148
    const-wide/16 v3, 0x0

    .local v3, "ts":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .local v10, "st":J
    const-wide/16 v7, 0x0

    .line 149
    .local v7, "f":J
    :goto_0
    iget-boolean v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->running:Z

    if-nez v0, :cond_0

    .line 182
    return-void

    .line 151
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoEncoderInited:Z

    if-nez v0, :cond_1

    .line 152
    iget v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoWidth:I

    iget v2, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoHeight:I

    invoke-direct {p0, v0, v2}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->initVideoEncoder(II)V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoEncoderInited:Z

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->cameraFrames:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    .line 156
    .local v9, "srcFrame":[B
    invoke-direct {p0, v9}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodeVideo([B)[B

    move-result-object v1

    .line 162
    .local v1, "frame":[B
    invoke-static {}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->time()I

    move-result v0

    int-to-long v3, v0

    .line 164
    iget-object v13, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedVideo:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;

    const/16 v2, 0x9

    const/4 v5, 0x1

    array-length v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;-><init>([BIJZI)V

    invoke-virtual {v13, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 180
    .end local v1    # "frame":[B
    .end local v9    # "srcFrame":[B
    :catch_0
    move-exception v12

    .local v12, "x":Ljava/lang/Exception;
    const-string v0, "vk"

    invoke-static {v0, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private videoHelperLoop()V
    .locals 3

    .prologue
    .line 185
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->running:Z

    if-nez v1, :cond_1

    .line 204
    return-void

    .line 187
    :cond_1
    const-wide/16 v1, 0x42

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 188
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedVideo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedVideo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;

    .line 191
    .local v0, "p":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    invoke-static {}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->time()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->timestamp:J

    .line 192
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedPackets:Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedVideo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    check-cast v0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;

    .line 195
    .restart local v0    # "p":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->first:Z

    if-nez v1, :cond_0

    .line 196
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedPackets:Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;

    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedVideo:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;

    invoke-virtual {v2, v1}, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    .end local v0    # "p":Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getNextPacket()Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    .locals 1

    .prologue
    .line 233
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->encodedPackets:Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 8
    .param p1, "cam"    # Landroid/hardware/Camera;

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xa

    .line 82
    if-nez p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 84
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iput v4, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoWidth:I

    .line 85
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    iput v4, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoHeight:I

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x3

    if-lt v0, v4, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 88
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v3

    .line 90
    .local v3, "sfps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 94
    :goto_2
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 95
    new-instance v4, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder$5;-><init>(Lcom/vkontakte/android/media/rtmp/StreamRecorder;)V

    invoke-virtual {p1, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 86
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    .end local v3    # "sfps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    iget v4, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoWidth:I

    iget v5, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->videoHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    invoke-virtual {p1, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    .restart local v1    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "sfps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_2

    .line 92
    :cond_3
    const-string v4, "vk"

    const-string v5, "using camera default FPS!"

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->running:Z

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->ar:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->ve:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->ah:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->vh:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 244
    return-void
.end method
