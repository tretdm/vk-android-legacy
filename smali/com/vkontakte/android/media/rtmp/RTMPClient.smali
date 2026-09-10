.class public Lcom/vkontakte/android/media/rtmp/RTMPClient;
.super Ljava/lang/Object;
.source "RTMPClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;,
        Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    }
.end annotation


# static fields
.field private static timestampOffset:J

.field public static useSpeaker:Z


# instance fields
.field private appName:Ljava/lang/String;

.field private camera:Landroid/hardware/Camera;

.field private chunkStreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private connectSuccessReceived:Z

.field private connectURL:Ljava/lang/String;

.field private disconnected:Z

.field private in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

.field private invokeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private invokeResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public ipcount:J

.field public ivpsize:J

.field private lastCsID:I

.field private lastOutLen:I

.field private lastStreamID:I

.field private lastTransactionID:I

.field public opcount:J

.field private out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

.field public ovpsize:J

.field private playStreamID:I

.field private publishStreamID:I

.field private rpcListener:Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

.field private serverChunkSize:I

.field private servicePackets:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private socket:Ljava/net/Socket;

.field private ss:Ljava/util/concurrent/Semaphore;

.field private streamPlayer:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

.field private streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

.field private videoStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->timestampOffset:J

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->useSpeaker:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x80

    iput v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->serverChunkSize:I

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    .line 37
    iput-boolean v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->connectSuccessReceived:Z

    .line 38
    iput v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeLocks:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeResults:Ljava/util/HashMap;

    .line 41
    iput v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastStreamID:I

    .line 42
    iput v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastCsID:I

    .line 46
    iput v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastOutLen:I

    .line 50
    iput-wide v3, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ovpsize:J

    iput-wide v3, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ivpsize:J

    iput-wide v3, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->opcount:J

    iput-wide v3, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ipcount:J

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->rpcListener:Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    .line 53
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->servicePackets:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 54
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ss:Ljava/util/concurrent/Semaphore;

    .line 55
    iput-boolean v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->disconnected:Z

    .line 57
    iput-boolean v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->videoStarted:Z

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->loop()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->disconnected:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastStreamID:I

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/media/rtmp/RTMPClient;IIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-direct/range {p0 .. p5}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendType1Header(IIIJ)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->rpcListener:Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->servicePackets:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/media/rtmp/RTMPClient;)Lcom/vkontakte/android/media/rtmp/StreamRecorder;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendType3Header(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/media/rtmp/RTMPClient;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastOutLen:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/media/rtmp/RTMPClient;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastStreamID:I

    return v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/media/rtmp/RTMPClient;IIIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-direct/range {p0 .. p6}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendType0Header(IIIIJ)V

    return-void
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 133
    const-string v0, "vk_RTMP"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private loop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->receiveNextChunk()V

    goto :goto_0
.end method

.method private onCommand(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "transactionID"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 497
    aget-object v2, p3, v5

    instance-of v2, v2, Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 498
    aget-object v1, p3, v5

    check-cast v1, Ljava/util/HashMap;

    .line 499
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "status"

    const-string v4, "level"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    const-string v2, "NetConnection.Connect.Success"

    const-string v4, "code"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 501
    iput-boolean v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->connectSuccessReceived:Z

    .line 502
    const-string v2, "Connect success!"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onCommand "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    array-length v4, p3

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_2

    .line 508
    const-string v2, "_result"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeResults:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_1
    return-void

    .line 507
    :cond_2
    aget-object v0, p3, v2

    .local v0, "o":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private performHandshake()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 140
    const-string v21, "sent C0"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 145
    .local v13, "startTime":J
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 146
    .local v5, "rand":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sput-wide v21, Lcom/vkontakte/android/media/rtmp/RTMPClient;->timestampOffset:J

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 149
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v21, 0x17e

    move/from16 v0, v21

    if-lt v4, v0, :cond_0

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 151
    const-string v21, "sent C1"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v10

    .line 155
    .local v10, "sVer":I
    const-string v21, "server ver=%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt()I

    move-result v9

    .line 159
    .local v9, "sTimestamp":I
    const-string v21, "server ts=%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt()I

    .line 161
    const/16 v21, 0x5f8

    move/from16 v0, v21

    new-array v8, v0, [B

    .line 162
    .local v8, "sRandom":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readFull([B)I

    .line 163
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    .line 165
    .local v15, "t":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v13

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write([B)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    sub-long v21, v21, v15

    array-length v0, v8

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x8

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-double v6, v0

    .line 170
    .local v6, "s":D
    const-wide v21, 0x422bf08eb0000000L    # 6.0E10

    div-double v19, v21, v6

    .line 171
    .local v19, "upSpeed":D
    const-string v21, "UP %f byte/s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    .line 175
    .local v17, "tr":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt()I

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt()I

    .line 178
    const/4 v4, 0x0

    :goto_1
    const/16 v21, 0x17e

    move/from16 v0, v21

    if-lt v4, v0, :cond_1

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    sub-long v21, v21, v17

    const-wide/16 v23, 0x600

    div-long v21, v21, v23

    move-wide/from16 v0, v21

    long-to-double v11, v0

    .line 180
    .local v11, "sr":D
    const-wide v21, 0x422bf08eb0000000L    # 6.0E10

    div-double v2, v21, v11

    .line 181
    .local v2, "downSpeed":D
    const-string v21, "DOWN %f byte/s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string v21, "handshake done! %d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->available()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    return-void

    .line 149
    .end local v2    # "downSpeed":D
    .end local v6    # "s":D
    .end local v8    # "sRandom":[B
    .end local v9    # "sTimestamp":I
    .end local v10    # "sVer":I
    .end local v11    # "sr":D
    .end local v15    # "t":J
    .end local v17    # "tr":J
    .end local v19    # "upSpeed":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v21, v0

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 178
    .restart local v6    # "s":D
    .restart local v8    # "sRandom":[B
    .restart local v9    # "sTimestamp":I
    .restart local v10    # "sVer":I
    .restart local v15    # "t":J
    .restart local v17    # "tr":J
    .restart local v19    # "upSpeed":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt()I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private receiveNextChunk()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v9

    .line 187
    .local v9, "csId":I
    shr-int/lit8 v25, v9, 0x6

    .line 188
    .local v25, "type":I
    and-int/lit8 v9, v9, 0x3f

    .line 189
    if-nez v9, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v27

    add-int/lit8 v9, v27, 0x40

    .line 195
    :cond_0
    :goto_0
    if-nez v25, :cond_2

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt24()I

    move-result v22

    .line 197
    .local v22, "timestamp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt24()I

    move-result v11

    .line 198
    .local v11, "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v14

    .line 199
    .local v14, "msgType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt()I

    move-result v21

    .line 202
    .local v21, "streamId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    new-instance v29, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;-><init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    .line 204
    .local v20, "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    move-object/from16 v0, v20

    iput v11, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageLength:I

    .line 205
    move-object/from16 v0, v20

    iput v14, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    .line 206
    new-instance v27, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    .line 207
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->readLength:I

    .line 208
    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->timestamp:I

    .line 209
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastStreamID:I

    .line 211
    .end local v11    # "length":I
    .end local v14    # "msgType":I
    .end local v20    # "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    .end local v21    # "streamId":I
    .end local v22    # "timestamp":I
    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt24()I

    move-result v22

    .line 213
    .restart local v22    # "timestamp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt24()I

    move-result v11

    .line 214
    .restart local v11    # "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v14

    .line 217
    .restart local v14    # "msgType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    new-instance v29, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;-><init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V

    invoke-virtual/range {v27 .. v29}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    .line 219
    .restart local v20    # "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    move-object/from16 v0, v20

    iput v11, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageLength:I

    .line 220
    move-object/from16 v0, v20

    iput v14, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    .line 221
    new-instance v27, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    .line 222
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->timestamp:I

    move/from16 v27, v0

    add-int v27, v27, v22

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->timestamp:I

    .line 223
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->readLength:I

    .line 225
    .end local v11    # "length":I
    .end local v14    # "msgType":I
    .end local v20    # "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    .end local v22    # "timestamp":I
    :cond_4
    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt24()I

    move-result v24

    .line 228
    .local v24, "tsDelta":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    .line 229
    .restart local v20    # "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->timestamp:I

    move/from16 v27, v0

    add-int v27, v27, v24

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->timestamp:I

    .line 234
    .end local v20    # "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    .end local v24    # "tsDelta":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    .line 235
    .restart local v20    # "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    if-nez v20, :cond_7

    .line 236
    new-instance v27, Ljava/io/IOException;

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "Unknown chunk stream ID "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 191
    .end local v20    # "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    :cond_6
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v9, v0, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v27

    add-int/lit8 v27, v27, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v28

    shl-int/lit8 v28, v28, 0x8

    add-int v9, v27, v28

    goto/16 :goto_0

    .line 238
    .restart local v20    # "si":Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->serverChunkSize:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageLength:I

    move/from16 v28, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->readLength:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v27

    move/from16 v0, v27

    new-array v7, v0, [B

    .line 239
    .local v7, "buf":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readFull([B)I

    move-result v15

    .line 240
    .local v15, "numRead":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->readLength:I

    move/from16 v27, v0

    add-int v27, v27, v15

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->readLength:I

    .line 241
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 243
    move-object/from16 v0, p0

    iput v9, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastCsID:I

    .line 245
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->readLength:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageLength:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_f

    .line 247
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 248
    .local v13, "msg":[B
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->readLength:I

    .line 249
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->messageBuffer:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 250
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v9, v0, :cond_8

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 251
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v27, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 252
    .local v10, "is":Ljava/io/DataInputStream;
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v19

    .line 253
    .local v19, "ptype":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v17

    .line 254
    .local v17, "param1":I
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readShort()S

    move-result v18

    .line 255
    .local v18, "param2":I
    const-string v27, "PING (type=%d, param1=%d, param2=%d)"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const/16 v27, 0x6

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 257
    const/16 v27, 0x7

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getCurrentTimestamp()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v17

    move/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendPing(III)V

    .line 260
    .end local v10    # "is":Ljava/io/DataInputStream;
    .end local v17    # "param1":I
    .end local v18    # "param2":I
    .end local v19    # "ptype":I
    :cond_8
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v9, v0, :cond_9

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 261
    new-instance v27, Ljava/io/DataInputStream;

    new-instance v28, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v27 .. v28}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient;->serverChunkSize:I

    .line 262
    const-string v27, "Server chunk size set to %d"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->serverChunkSize:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_9
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v9, v0, :cond_a

    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    move/from16 v27, v0

    const/16 v28, 0x5

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 265
    new-instance v27, Ljava/io/DataInputStream;

    new-instance v28, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v27 .. v28}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 266
    .local v8, "bw":I
    const-string v27, "Server BW %d"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const/16 v27, 0x2

    const/16 v28, 0x5

    const/16 v29, 0x4

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendType0Header(IIII)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 271
    .end local v8    # "bw":I
    :cond_a
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    move/from16 v27, v0

    const/16 v28, 0x14

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 272
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 273
    .local v5, "ais":Ljava/io/ByteArrayInputStream;
    new-instance v10, Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    invoke-direct {v10, v5}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 274
    .local v10, "is":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    invoke-virtual {v10}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readNextAmf()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 275
    .local v12, "method":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readNextAmf()Ljava/lang/Object;

    move-result-object v16

    .line 276
    .local v16, "obj":Ljava/lang/Object;
    const-string v27, "%s - %s"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v12, v28, v29

    const/16 v29, 0x1

    aput-object v16, v28, v29

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    check-cast v16, Ljava/lang/Double;

    .end local v16    # "obj":Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v23, v0

    .line 278
    .local v23, "transaction":I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 279
    .local v6, "args":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {v10}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->available()I

    move-result v27

    if-gtz v27, :cond_10

    .line 282
    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v12, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->onCommand(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 284
    .end local v5    # "ais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "args":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v10    # "is":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    .end local v12    # "method":Ljava/lang/String;
    .end local v23    # "transaction":I
    :cond_b
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    move/from16 v27, v0

    const/16 v28, 0xf

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    .line 286
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 287
    .restart local v5    # "ais":Ljava/io/ByteArrayInputStream;
    new-instance v10, Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    invoke-direct {v10, v5}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 288
    .restart local v10    # "is":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    invoke-virtual {v10}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    .line 289
    invoke-virtual {v10}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readNextAmf()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 290
    .restart local v12    # "method":Ljava/lang/String;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 291
    .restart local v6    # "args":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    :goto_2
    invoke-virtual {v10}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->available()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_11

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->rpcListener:Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->rpcListener:Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    move-object/from16 v27, v0

    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v12, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;->onCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v5    # "ais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "args":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v10    # "is":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    .end local v12    # "method":Ljava/lang/String;
    :cond_c
    :goto_3
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    move/from16 v27, v0

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamPlayer:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->onAudioData([B)V

    .line 303
    :cond_d
    move-object/from16 v0, v20

    iget v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastMessageType:I

    move/from16 v27, v0

    const/16 v28, 0x9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->videoStarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->rpcListener:Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->rpcListener:Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;->onInVideoStarted()V

    .line 306
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/media/rtmp/RTMPClient;->videoStarted:Z

    .line 308
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ivpsize:J

    move-wide/from16 v27, v0

    array-length v0, v13

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ivpsize:J

    .line 309
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ipcount:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x1

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ipcount:J

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamPlayer:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->onVideoData([B)V

    .line 313
    .end local v13    # "msg":[B
    :cond_f
    return-void

    .line 280
    .restart local v5    # "ais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "args":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .restart local v10    # "is":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    .restart local v12    # "method":Ljava/lang/String;
    .restart local v13    # "msg":[B
    .restart local v23    # "transaction":I
    :cond_10
    invoke-virtual {v10}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readNextAmf()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 292
    .end local v23    # "transaction":I
    :cond_11
    :try_start_1
    invoke-virtual {v10}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readNextAmf()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 296
    .end local v5    # "ais":Ljava/io/ByteArrayInputStream;
    .end local v6    # "args":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v10    # "is":Lcom/vkontakte/android/media/rtmp/XDataInputStream;
    .end local v12    # "method":Ljava/lang/String;
    :catch_0
    move-exception v26

    .local v26, "x":Ljava/lang/Exception;
    const-string v27, "vk"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method private sendPing(III)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "param1"    # I
    .param p3, "param2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 477
    const-string v2, "send ping, %d, %d, %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 479
    .local v0, "aos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 480
    .local v1, "o":Ljava/io/DataOutputStream;
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 481
    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 482
    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 483
    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-direct {p0, v7, v2, v3, v6}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendType0Header(IIII)V

    .line 484
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write([B)V

    .line 485
    iget-object v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 486
    return-void
.end method

.method private sendType0Header(IIII)V
    .locals 3
    .param p1, "streamID"    # I
    .param p2, "msgType"    # I
    .param p3, "dataLength"    # I
    .param p4, "msgStreamID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 413
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;-><init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getCurrentTimestamp()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 415
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 416
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 417
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeIntFlipped(I)V

    .line 418
    return-void
.end method

.method private sendType0Header(IIIIJ)V
    .locals 2
    .param p1, "streamID"    # I
    .param p2, "msgType"    # I
    .param p3, "dataLength"    # I
    .param p4, "msgStreamID"    # I
    .param p5, "ts"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 440
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    long-to-int v1, p5

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 441
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 442
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 443
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeIntFlipped(I)V

    .line 444
    return-void
.end method

.method private sendType0Header(Lcom/vkontakte/android/media/rtmp/XDataOutputStream;IIIIJ)V
    .locals 1
    .param p1, "out"    # Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    .param p2, "streamID"    # I
    .param p3, "msgType"    # I
    .param p4, "dataLength"    # I
    .param p5, "msgStreamID"    # I
    .param p6, "ts"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p1, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 457
    long-to-int v0, p6

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 458
    invoke-virtual {p1, p4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 459
    invoke-virtual {p1, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 460
    invoke-virtual {p1, p5}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeIntFlipped(I)V

    .line 461
    return-void
.end method

.method private sendType1Header(III)V
    .locals 3
    .param p1, "streamID"    # I
    .param p2, "msgType"    # I
    .param p3, "dataLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    or-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 422
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getTimestampDelta()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 423
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 424
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 425
    return-void
.end method

.method private sendType1Header(IIIJ)V
    .locals 2
    .param p1, "streamID"    # I
    .param p2, "msgType"    # I
    .param p3, "dataLength"    # I
    .param p4, "ts"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    or-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 449
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    long-to-int v1, p4

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 450
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 451
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 452
    return-void
.end method

.method private sendType1Header(Lcom/vkontakte/android/media/rtmp/XDataOutputStream;IIIJ)V
    .locals 1
    .param p1, "out"    # Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    .param p2, "streamID"    # I
    .param p3, "msgType"    # I
    .param p4, "dataLength"    # I
    .param p5, "ts"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    or-int/lit8 v0, p2, 0x40

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 466
    long-to-int v0, p5

    invoke-virtual {p1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 467
    invoke-virtual {p1, p4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 468
    invoke-virtual {p1, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 469
    return-void
.end method

.method private sendType2Header(II)V
    .locals 3
    .param p1, "streamID"    # I
    .param p2, "prevTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    or-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 429
    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getCurrentTimestamp()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 430
    return-void
.end method

.method private sendType2Header(IIJ)V
    .locals 2
    .param p1, "streamID"    # I
    .param p2, "prevTime"    # I
    .param p3, "ts"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    or-int/lit8 v1, p1, 0x40

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 473
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 474
    return-void
.end method

.method private sendType3Header(I)V
    .locals 2
    .param p1, "streamID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    or-int/lit16 v1, p1, 0xc0

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 435
    return-void
.end method

.method private setServerBufferSize(II)V
    .locals 4
    .param p1, "streamID"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    const/4 v0, 0x2

    const/4 v1, 0x4

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendType0Header(IIII)V

    .line 490
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeShort(I)V

    .line 491
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 492
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 493
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 494
    return-void
.end method

.method static time()I
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/vkontakte/android/media/rtmp/RTMPClient;->timestampOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private time(J)I
    .locals 2
    .param p1, "ts"    # J

    .prologue
    .line 120
    sget-wide v0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->timestampOffset:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public varargs connect(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "_params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    iput-boolean v8, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->disconnected:Z

    .line 72
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "_url":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "rtmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "URL must have rtmp:// scheme"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    .line 76
    .local v3, "port":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0x78f

    .line 77
    :cond_1
    new-instance v4, Ljava/net/Socket;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->socket:Ljava/net/Socket;

    .line 78
    new-instance v4, Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->in:Lcom/vkontakte/android/media/rtmp/XDataInputStream;

    .line 79
    new-instance v4, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v4, v5}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    .line 80
    invoke-direct {p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->performHandshake()V

    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "app"

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v4, "flashVer"

    const-string v5, "ANDROID_VK"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v4, "swfUrl"

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v4, "tcUrl"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v4, "fpad"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v4, "audioCodecs"

    const/16 v5, 0x804

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v4, "videoCodecs"

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v4, "pageUrl"

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v4, "objectEncoding"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v4, "capabilities"

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v4, "videoFunction"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/vkontakte/android/media/rtmp/RTMPClient$1;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$1;-><init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 106
    const-string v4, "connect"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v8

    aget-object v6, p2, v8

    aput-object v6, v5, v9

    const/4 v6, 0x2

    aget-object v7, p2, v9

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v8, v10, v5}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invoke(Ljava/lang/String;II[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public disableCamera()V
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->camera:Landroid/hardware/Camera;

    .line 625
    return-void
.end method

.method public disconnect()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 628
    iput-boolean v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->disconnected:Z

    .line 629
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->releaseStreams()V

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 634
    const-string v0, "deleteStream"

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->playStreamID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeNoWait(Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 635
    const-string v0, "deleteStream"

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->publishStreamID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeNoWait(Ljava/lang/String;II[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 639
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 641
    :goto_1
    const-string v0, "RTMP disconnected."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    return-void

    .line 640
    :catch_0
    move-exception v0

    goto :goto_1

    .line 637
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public varargs invoke(Ljava/lang/String;II[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "streamID"    # I
    .param p3, "csID"    # I
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 325
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ss:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 327
    .local v0, "_buf":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 328
    .local v1, "buf":Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfString(Ljava/lang/String;)V

    .line 329
    iget v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    int-to-double v8, v6

    invoke-virtual {v1, v8, v9}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfNumber(D)V

    .line 330
    array-length v8, p4

    move v6, v7

    :goto_1
    if-lt v6, v8, :cond_1

    .line 331
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 332
    .local v2, "data":[B
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v6, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 333
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;-><init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-virtual {v6}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getCurrentTimestamp()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 335
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    array-length v8, v2

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 336
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    const/16 v8, 0x14

    invoke-virtual {v6, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 337
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v6, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeIntFlipped(I)V

    .line 338
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v6, v2, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeChunked([BI)V

    .line 339
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v6}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 340
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ss:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    .line 341
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 342
    .local v3, "lock":Ljava/lang/Object;
    iget v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    .line 344
    .local v5, "transactionID":I
    iget v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    .line 345
    const-string v6, "invoked %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v7

    invoke-static {v6, v8}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeResults:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 350
    iget-object v6, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeResults:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    return-object v6

    .line 330
    .end local v2    # "data":[B
    .end local v3    # "lock":Ljava/lang/Object;
    .end local v5    # "transactionID":I
    :cond_1
    aget-object v4, p4, v6

    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {v1, v4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAMF(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 349
    .end local v4    # "obj":Ljava/lang/Object;
    .restart local v2    # "data":[B
    .restart local v3    # "lock":Ljava/lang/Object;
    .restart local v5    # "transactionID":I
    :cond_2
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_2

    .line 325
    .end local v0    # "_buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    .end local v2    # "data":[B
    .end local v3    # "lock":Ljava/lang/Object;
    .end local v5    # "transactionID":I
    :catch_1
    move-exception v6

    goto/16 :goto_0
.end method

.method public varargs invokeNoWait(Ljava/lang/String;II[Ljava/lang/Object;)V
    .locals 9
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "streamID"    # I
    .param p3, "csID"    # I
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 362
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ss:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 364
    .local v0, "_buf":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 365
    .local v1, "buf":Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfString(Ljava/lang/String;)V

    .line 366
    iget v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    int-to-double v7, v5

    invoke-virtual {v1, v7, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfNumber(D)V

    .line 367
    array-length v7, p4

    move v5, v6

    :goto_1
    if-lt v5, v7, :cond_1

    .line 368
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 369
    .local v2, "data":[B
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v5, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 370
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;-><init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_0
    iget-object v7, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-virtual {v5}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getCurrentTimestamp()I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 372
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    array-length v7, v2

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 373
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    const/16 v7, 0x14

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 374
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v5, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeIntFlipped(I)V

    .line 375
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v5, v2, p3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeChunked([BI)V

    .line 376
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v5}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 377
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 378
    .local v3, "lock":Ljava/lang/Object;
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeLocks:Ljava/util/HashMap;

    iget v7, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    .line 380
    const-string v5, "invoked %s on stream %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v5, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->ss:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 382
    return-void

    .line 367
    .end local v2    # "data":[B
    .end local v3    # "lock":Ljava/lang/Object;
    :cond_1
    aget-object v4, p4, v5

    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {v1, v4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAMF(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 362
    .end local v0    # "_buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method public play(Ljava/lang/String;I)V
    .locals 6
    .param p1, "stream"    # Ljava/lang/String;
    .param p2, "streamID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 520
    new-instance v0, Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    sget-boolean v1, Lcom/vkontakte/android/media/rtmp/RTMPClient;->useSpeaker:Z

    invoke-direct {v0, v1}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;-><init>(Z)V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamPlayer:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    .line 521
    const/4 v0, 0x3

    invoke-direct {p0, v0, v2, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendPing(III)V

    .line 522
    const-string v0, "INVOKING PLAY ON STREAM %d !!"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    const-string v0, "play"

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invoke(Ljava/lang/String;II[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 524
    iput p2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->playStreamID:I

    .line 525
    return-void
.end method

.method public publish(Ljava/lang/String;I)V
    .locals 7
    .param p1, "stream"    # Ljava/lang/String;
    .param p2, "streamID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x400

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 536
    const/4 v0, 0x4

    invoke-direct {p0, v6, v5, v0, v4}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->sendType0Header(IIII)V

    .line 537
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 538
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->out:Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->flush()V

    .line 539
    sput v1, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->chunkSize:I

    .line 540
    iput p2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->publishStreamID:I

    .line 544
    const-string v0, "publish"

    const/16 v1, 0x8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string v3, "live"

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeNoWait(Ljava/lang/String;II[Ljava/lang/Object;)V

    .line 548
    new-instance v0, Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-direct {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    .line 549
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    iget-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;

    invoke-direct {v1, p0, p2}, Lcom/vkontakte/android/media/rtmp/RTMPClient$2;-><init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 611
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 612
    return-void
.end method

.method public releaseStreams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamPlayer:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamPlayer:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/StreamPlayer;->stop()V

    .line 648
    iput-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamPlayer:Lcom/vkontakte/android/media/rtmp/StreamPlayer;

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    if-eqz v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->stop()V

    .line 653
    iput-object v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeLocks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->lastTransactionID:I

    .line 657
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->invokeResults:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 658
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    return-void

    .line 658
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public varargs send(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "streamID"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x3

    .line 385
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 386
    .local v0, "_buf":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 387
    .local v1, "buf":Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    invoke-virtual {v1, v5}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 388
    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfString(Ljava/lang/String;)V

    .line 389
    array-length v6, p3

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 390
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 391
    .local v2, "data":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .end local v0    # "_buf":Ljava/io/ByteArrayOutputStream;
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 392
    .restart local v0    # "_buf":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;

    .end local v1    # "buf":Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    invoke-direct {v1, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 393
    .restart local v1    # "buf":Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
    invoke-virtual {v1, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 394
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;-><init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->chunkStreams:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;

    invoke-virtual {v4}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getCurrentTimestamp()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 396
    array-length v4, v2

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt24(I)V

    .line 397
    const/16 v4, 0xf

    invoke-virtual {v1, v4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 398
    invoke-virtual {v1, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeIntFlipped(I)V

    .line 399
    invoke-virtual {v1, v2, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeChunked([BI)V

    .line 402
    iget-object v4, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->servicePackets:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 403
    const-string v4, "invoked %s on stream %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    return-void

    .line 389
    .end local v2    # "data":[B
    :cond_1
    aget-object v3, p3, v4

    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAMF(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "cam"    # Landroid/hardware/Camera;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->camera:Landroid/hardware/Camera;

    .line 620
    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->streamRecorder:Lcom/vkontakte/android/media/rtmp/StreamRecorder;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/rtmp/StreamRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 621
    :cond_0
    return-void
.end method

.method public setRPCListener(Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient;->rpcListener:Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;

    .line 408
    return-void
.end method
