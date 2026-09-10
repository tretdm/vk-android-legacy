.class public Lcom/vkontakte/android/media/rtmp/StreamPlayer;
.super Ljava/lang/Object;
.source "StreamPlayer.java"


# static fields
.field public static final CODEC_AVC:I = 0x1

.field public static final CODEC_FLV:I


# instance fields
.field private ad:Ljava/lang/Thread;

.field private ap:Ljava/lang/Thread;

.field private audioIn:Ljava/io/PipedInputStream;

.field private audioOut:Ljava/io/PipedOutputStream;

.field private audioPackets:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private audioTrack:Landroid/media/AudioTrack;

.field private buffer:Lcom/vkontakte/android/media/rtmp/AudioBuffer;

.field private playBufSize:I

.field private running:Z

.field private vd:Ljava/lang/Thread;

.field private videoInited:Z

.field private videoPackets:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    const-string v0, "rtmpcodecs"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 8
    .param p1, "useSpeaker"    # Z

    .prologue
    const/16 v2, 0x3e80

    const/16 v4, 0xf

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioPackets:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 27
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoPackets:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 28
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioOut:Ljava/io/PipedOutputStream;

    .line 33
    iput-boolean v1, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoInited:Z

    .line 34
    iput-boolean v6, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->running:Z

    .line 41
    invoke-static {v2, v3, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->playBufSize:I

    .line 42
    const-string v0, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "play buf size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->playBufSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/media/AudioTrack;

    iget v4, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->playBufSize:I

    mul-int/lit8 v5, v4, 0x2

    move v4, v3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 44
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 45
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 46
    .local v7, "aMgr":Landroid/media/AudioManager;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 47
    :cond_0
    invoke-virtual {v7}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    if-eqz p1, :cond_1

    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 53
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioIn:Ljava/io/PipedInputStream;

    .line 54
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioIn:Ljava/io/PipedInputStream;

    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioOut:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->startAudioThreads()V

    .line 58
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->startVideoThreads()V

    .line 59
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioDecoderLoop()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioPlayerLoop()V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->releaseSpeexDecoder()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoDecoderLoop()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->releaseVideoDecoder()V

    return-void
.end method

.method private audioDecoderLoop()V
    .locals 7

    .prologue
    .line 100
    const/16 v5, 0x2800

    new-array v2, v5, [S

    .line 101
    .local v2, "out":[S
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioOut:Ljava/io/PipedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    .local v1, "os":Ljava/io/DataOutputStream;
    :goto_0
    iget-boolean v5, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->running:Z

    if-nez v5, :cond_0

    .line 114
    return-void

    .line 104
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioPackets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 105
    .local v3, "pkt":[B
    array-length v5, v3

    invoke-direct {p0, v3, v5, v2}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->decodeSpeexAudio([BI[S)I

    move-result v0

    .line 108
    .local v0, "n":I
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioTrack:Landroid/media/AudioTrack;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v0}, Landroid/media/AudioTrack;->write([SII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "n":I
    .end local v3    # "pkt":[B
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private audioPlayerLoop()V
    .locals 6

    .prologue
    .line 117
    iget v3, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->playBufSize:I

    new-array v0, v3, [B

    .line 118
    .local v0, "buf":[B
    const/4 v1, 0x1

    .line 119
    .local v1, "first":Z
    :goto_0
    iget-boolean v3, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->running:Z

    if-nez v3, :cond_0

    .line 134
    return-void

    .line 121
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioIn:Ljava/io/PipedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/PipedInputStream;->read([B)I

    move-result v2

    .line 122
    .local v2, "n":I
    if-nez v2, :cond_1

    .line 123
    const-string v3, "vk_RTMP"

    const-string v4, "not read buffer"

    invoke-static {v3, v4}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioTrack:Landroid/media/AudioTrack;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v2    # "n":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private native decodeSpeexAudio([BI[S)I
.end method

.method private native decodeVideo([B)V
.end method

.method private native initVideoDecoder(III)V
.end method

.method private native releaseSpeexDecoder()V
.end method

.method private native releaseVideoDecoder()V
.end method

.method private startAudioThreads()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/rtmp/StreamPlayer$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer$1;-><init>(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V

    .line 82
    const-string v2, "RTMP_AD"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 79
    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->ad:Ljava/lang/Thread;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/rtmp/StreamPlayer$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer$2;-><init>(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V

    .line 88
    const-string v2, "RTMP_AP"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 84
    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->ap:Ljava/lang/Thread;

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 89
    return-void
.end method

.method private startVideoThreads()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/rtmp/StreamPlayer$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer$3;-><init>(Lcom/vkontakte/android/media/rtmp/StreamPlayer;)V

    .line 96
    const-string v2, "RTMP_VD"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->vd:Ljava/lang/Thread;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method private videoDecoderLoop()V
    .locals 28

    .prologue
    .line 137
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v7, "cfgBuffer":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->running:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 237
    return-void

    .line 140
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoPackets:Ljava/util/concurrent/ArrayBlockingQueue;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 142
    .local v17, "pkt":[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoInited:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 143
    const/16 v24, 0x0

    aget-byte v24, v17, v24

    and-int/lit8 v24, v24, 0xf

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    const/16 v24, 0x0

    :goto_1
    const/16 v25, 0x140

    const/16 v26, 0xf0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->initVideoDecoder(III)V

    .line 144
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoInited:Z

    .line 146
    :cond_2
    const/16 v24, 0x0

    aget-byte v24, v17, v24

    and-int/lit8 v24, v24, 0xf

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 147
    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 148
    .local v12, "is":Ljava/io/ByteArrayInputStream;
    new-instance v21, Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 149
    .local v21, "s":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    const-wide/16 v24, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->skip(J)J

    .line 150
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v5

    .line 151
    .local v5, "avcPacketType":I
    const-string v24, "AVCPacketType = %d"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt24()I

    move-result v9

    .line 153
    .local v9, "compTime":I
    if-nez v5, :cond_8

    .line 155
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v24

    if-nez v24, :cond_3

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    :cond_3
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v8

    .line 157
    .local v8, "cfgVersion":I
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v6

    .line 158
    .local v6, "avcProfile":I
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v20

    .line 159
    .local v20, "profileCompat":I
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v4

    .line 160
    .local v4, "avcLevel":I
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v24

    and-int/lit8 v14, v24, 0x3

    .line 161
    .local v14, "nalLength":I
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v24

    and-int/lit8 v16, v24, 0x1f

    .line 162
    .local v16, "numSps":I
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .local v22, "spsData":[B
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 163
    .local v18, "ppsData":[B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move/from16 v0, v16

    if-lt v11, v0, :cond_6

    .line 177
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v15

    .line 178
    .local v15, "numPps":I
    const/4 v11, 0x0

    :goto_3
    if-lt v11, v15, :cond_7

    .line 192
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v10, "dcr":Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 195
    invoke-virtual {v10, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 196
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 197
    invoke-virtual {v10, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 198
    const/16 v24, 0xff

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 199
    const/16 v24, 0xe1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 200
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 201
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x1

    aput-byte v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 203
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 204
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 205
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 207
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x1

    aput-byte v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 208
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 209
    const-string v24, "Decoding DCR [%02X %02X %02X]"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 232
    .end local v4    # "avcLevel":I
    .end local v5    # "avcPacketType":I
    .end local v6    # "avcProfile":I
    .end local v8    # "cfgVersion":I
    .end local v9    # "compTime":I
    .end local v10    # "dcr":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "i":I
    .end local v12    # "is":Ljava/io/ByteArrayInputStream;
    .end local v14    # "nalLength":I
    .end local v15    # "numPps":I
    .end local v16    # "numSps":I
    .end local v18    # "ppsData":[B
    .end local v20    # "profileCompat":I
    .end local v21    # "s":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    .end local v22    # "spsData":[B
    :cond_4
    :goto_4
    const/16 v24, 0x0

    aget-byte v24, v17, v24

    and-int/lit8 v24, v24, 0xf

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->decodeVideo([B)V

    goto/16 :goto_0

    .line 235
    .end local v17    # "pkt":[B
    :catch_0
    move-exception v24

    goto/16 :goto_0

    .line 143
    .restart local v17    # "pkt":[B
    :cond_5
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 164
    .restart local v4    # "avcLevel":I
    .restart local v5    # "avcPacketType":I
    .restart local v6    # "avcProfile":I
    .restart local v8    # "cfgVersion":I
    .restart local v9    # "compTime":I
    .restart local v11    # "i":I
    .restart local v12    # "is":Ljava/io/ByteArrayInputStream;
    .restart local v14    # "nalLength":I
    .restart local v16    # "numSps":I
    .restart local v18    # "ppsData":[B
    .restart local v20    # "profileCompat":I
    .restart local v21    # "s":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    .restart local v22    # "spsData":[B
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readShort()S

    move-result v23

    .line 165
    .local v23, "spsLen":I
    const-string v24, "Reading SPS [%d bytes]"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 167
    invoke-virtual/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read([B)I

    .line 163
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 179
    .end local v23    # "spsLen":I
    .restart local v15    # "numPps":I
    :cond_7
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readShort()S

    move-result v19

    .line 180
    .local v19, "ppsLen":I
    const-string v24, "Reading PPS [%d bytes]"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 182
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read([B)I

    .line 178
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 213
    .end local v4    # "avcLevel":I
    .end local v6    # "avcProfile":I
    .end local v8    # "cfgVersion":I
    .end local v11    # "i":I
    .end local v14    # "nalLength":I
    .end local v15    # "numPps":I
    .end local v16    # "numSps":I
    .end local v18    # "ppsData":[B
    .end local v19    # "ppsLen":I
    .end local v20    # "profileCompat":I
    .end local v22    # "spsData":[B
    :cond_8
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_4

    .line 214
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v24

    if-lez v24, :cond_9

    .line 215
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->available()I

    move-result v24

    move/from16 v0, v24

    new-array v13, v0, [B

    .line 216
    .local v13, "nal":[B
    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->available()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read([BII)I

    .line 218
    const-string v24, "NAL type is %d, %02X"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x3

    aget-byte v27, v13, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x4

    aget-byte v27, v13, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    const/16 v25, 0x3

    const/16 v26, 0x1

    aput-byte v26, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 220
    const/16 v24, 0x4

    array-length v0, v13

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x4

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v13, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 221
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->decodeVideo([B)V

    .line 222
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_4

    .line 224
    .end local v13    # "nal":[B
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->available()I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    new-array v13, v0, [B

    .line 225
    .restart local v13    # "nal":[B
    const/16 v24, 0x1

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->available()I

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v13, v1, v2}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read([BII)I

    .line 226
    const-string v24, "NAL type is %d, %02X"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x4

    aget-byte v27, v13, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x5

    aget-byte v27, v13, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->decodeVideo([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4
.end method


# virtual methods
.method public onAudioData([B)V
    .locals 3
    .param p1, "d"    # [B

    .prologue
    .line 62
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->audioPackets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    .local v0, "r":Z
    if-nez v0, :cond_0

    const-string v1, "vk_RTMP"

    const-string v2, "Dropped audio packet :("

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onVideoData([B)V
    .locals 3
    .param p1, "d"    # [B

    .prologue
    .line 69
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoPackets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    .local v0, "r":Z
    if-nez v0, :cond_0

    .line 72
    const-string v1, "vk_RTMP"

    const-string v2, "Dropped video packet :("

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoPackets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 74
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->videoPackets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->running:Z

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->vd:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 242
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->ad:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 243
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->ap:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 244
    return-void
.end method
