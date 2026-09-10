.class public Lcom/vkontakte/android/media/NativeVideoPlayer;
.super Ljava/lang/Object;
.source "NativeVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;
    }
.end annotation


# instance fields
.field private audioDelay:F

.field private audioTrack:Landroid/media/AudioTrack;

.field private bufReadPos:I

.field private bufWritePos:I

.field private buffer:[B

.field private bufferLock:Ljava/lang/Object;

.field private buffering:Z

.field private bufferingOffset:I

.field private bufsize:I

.field public callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

.field private conn:Ljava/net/URLConnection;

.field private context:Landroid/content/Context;

.field private file:Ljava/lang/String;

.field private fps:I

.field private fpsTimerTask:Ljava/util/TimerTask;

.field private frameLock:Ljava/lang/Object;

.field private h:I

.field private holder:Landroid/view/SurfaceHolder;

.field private lastDelayUpdate:J

.field private len:I

.field private minAudioBufferSize:I

.field private mono:Z

.field private needStopBuffering:Z

.field private tfps:I

.field private useGL:Z

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "ffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 35
    const-string v0, "vkplayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->useGL:Z

    .line 47
    iput v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->minAudioBufferSize:I

    .line 53
    iput-boolean v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->needStopBuffering:Z

    .line 54
    iput v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferingOffset:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioDelay:F

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->lastDelayUpdate:J

    .line 57
    iput-boolean v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffering:Z

    .line 60
    new-instance v0, Lcom/vkontakte/android/media/NativeVideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/media/NativeVideoPlayer$1;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    iput-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->fpsTimerTask:Ljava/util/TimerTask;

    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->context:Landroid/content/Context;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->frameLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferLock:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->tfps:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->fps:I

    return-void
.end method

.method static synthetic access$10(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffering:Z

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->conn:Ljava/net/URLConnection;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->len:I

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->len:I

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->setContentLength(I)V

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->getRamSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->initInputBuffer(I)V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/media/NativeVideoPlayer;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->needStopBuffering:Z

    return v0
.end method

.method static synthetic access$19(Lcom/vkontakte/android/media/NativeVideoPlayer;[BI)V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->writeInput([BI)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->tfps:I

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufsize:I

    return v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufsize:I

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferingOffset:I

    return v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/media/NativeVideoPlayer;Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->needStopBuffering:Z

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/media/AudioTrack;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufReadPos:I

    return v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/media/NativeVideoPlayer;F)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioDelay:F

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/media/NativeVideoPlayer;)[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffer:[B

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/media/NativeVideoPlayer;)F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioDelay:F

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->w:I

    return v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/media/NativeVideoPlayer;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufReadPos:I

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/media/NativeVideoPlayer;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->lastDelayUpdate:J

    return-wide v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->fps:I

    return v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/media/NativeVideoPlayer;J)V
    .locals 0

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->lastDelayUpdate:J

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/media/NativeVideoPlayer;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->h:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->fpsTimerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/media/NativeVideoPlayer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->frameLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/media/NativeVideoPlayer;)Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/media/NativeVideoPlayer;Ljava/nio/IntBuffer;I)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/media/NativeVideoPlayer;->renderToBuffer(Ljava/nio/IntBuffer;I)V

    return-void
.end method

.method private native doPlay(Ljava/lang/String;IZ)V
.end method

.method private frameReady()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->frameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->frameLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 145
    monitor-exit v1

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getBufferedSize()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufsize:I

    return v0
.end method

.method private getRamSize()I
    .locals 8

    .prologue
    .line 333
    const/16 v3, 0x3e8

    .line 335
    .local v3, "tm":I
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v6, "/proc/meminfo"

    const-string v7, "r"

    invoke-direct {v2, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .local v2, "reader":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "load":Ljava/lang/String;
    const-string v6, "VK_FFPlayer"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v6, " kB"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "totrm":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "trm":[Ljava/lang/String;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 342
    .end local v1    # "load":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/RandomAccessFile;
    .end local v4    # "totrm":[Ljava/lang/String;
    .end local v5    # "trm":[Ljava/lang/String;
    :goto_0
    return v3

    .line 341
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initFormat(IIII)V
    .locals 8
    .param p1, "rate"    # I
    .param p2, "ch"    # I
    .param p3, "_w"    # I
    .param p4, "_h"    # I

    .prologue
    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 212
    const-string v0, "VK_FFPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "initaudio "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iput p3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->w:I

    .line 214
    iput p4, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->h:I

    .line 215
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->startRenderThread()V

    .line 216
    if-ne p2, v4, :cond_2

    move v0, v2

    :goto_0
    invoke-static {p1, v0, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v7, v0

    iput v7, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->minAudioBufferSize:I

    .line 217
    .local v7, "bs":I
    if-lez v7, :cond_3

    move v5, v7

    .line 219
    .local v5, "bufsize":I
    :goto_1
    const-string v0, "VK_FFPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "bufsize="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    mul-int/lit8 v0, v5, 0x32

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffer:[B

    .line 221
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    if-ne p2, v4, :cond_0

    move v3, v2

    .line 222
    :cond_0
    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 221
    iput-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 224
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/NativeVideoPlayer$4;

    invoke-direct {v1, p0, v5, p2, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer$4;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;III)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 263
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    invoke-interface {v0, p3, p4}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerReady(II)V

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->startUpdatingPosition()V

    .line 268
    return-void

    .end local v5    # "bufsize":I
    .end local v7    # "bs":I
    :cond_2
    move v0, v3

    .line 216
    goto :goto_0

    .line 217
    .restart local v7    # "bs":I
    :cond_3
    const/16 v5, 0x800

    goto :goto_1
.end method

.method private native initInputBuffer(I)V
.end method

.method private native nativePause()V
.end method

.method private native nativeResume()V
.end method

.method private openInput()V
    .locals 6

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->file:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->conn:Ljava/net/URLConnection;

    .line 160
    iget v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferingOffset:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->conn:Ljava/net/URLConnection;

    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferingOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->conn:Ljava/net/URLConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 162
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->conn:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 164
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/vkontakte/android/media/NativeVideoPlayer$3;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/media/NativeVideoPlayer$3;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 204
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "VK_FFPlayer"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerError(I)V

    goto :goto_0
.end method

.method private native renderFrame()V
.end method

.method private native renderToBuffer(Ljava/nio/IntBuffer;I)V
.end method

.method private seekHTTP(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 353
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SEEK HTTP -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->len:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffering:Z

    if-eqz v0, :cond_2

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->needStopBuffering:Z

    .line 357
    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 357
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 361
    :cond_2
    iput p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferingOffset:I

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufsize:I

    .line 363
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->openInput()V

    .line 364
    iget-object v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 365
    :try_start_2
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufferLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :goto_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 357
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 365
    :catch_0
    move-exception v0

    goto :goto_2

    .line 358
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private native setContentLength(I)V
.end method

.method private startRenderThread()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/NativeVideoPlayer$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/NativeVideoPlayer$2;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 142
    return-void
.end method

.method private startUpdatingPosition()V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/NativeVideoPlayer$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/NativeVideoPlayer$5;-><init>(Lcom/vkontakte/android/media/NativeVideoPlayer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 302
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 303
    return-void
.end method

.method private native surfaceResized(II)V
.end method

.method private native writeInput([BI)V
.end method


# virtual methods
.method public native getPosition()D
.end method

.method public native isPlaying()Z
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 324
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->nativePause()V

    .line 325
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 329
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->nativeResume()V

    .line 330
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    invoke-direct {p0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->openInput()V

    .line 348
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->file:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x9

    if-le v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v2, v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->doPlay(Ljava/lang/String;IZ)V

    .line 349
    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;->nativePlayerCompleted()V

    .line 350
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 348
    goto :goto_0
.end method

.method public native seek(I)V
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->file:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public native setDelay(I)V
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->holder:Landroid/view/SurfaceHolder;

    .line 77
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 78
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method public native stop()V
.end method

.method protected writeAudio([BI)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x0

    .line 272
    iget v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffer:[B

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 273
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffer:[B

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    invoke-static {p1, v4, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    .line 282
    :goto_0
    iget v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufReadPos:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufReadPos:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->minAudioBufferSize:I

    if-gt v2, v3, :cond_1

    .line 283
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufReadPos:I

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffer:[B

    array-length v3, v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufReadPos:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->minAudioBufferSize:I

    if-le v2, v3, :cond_2

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioTrack:Landroid/media/AudioTrack;

    monitor-enter v3

    .line 285
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 284
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_2
    return-void

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    sub-int v0, v2, v3

    .line 277
    .local v0, "r1":I
    sub-int v1, p2, v0

    .line 278
    .local v1, "r2":I
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffer:[B

    iget v3, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    invoke-static {p1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget-object v2, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->buffer:[B

    invoke-static {p1, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    iput v1, p0, Lcom/vkontakte/android/media/NativeVideoPlayer;->bufWritePos:I

    goto :goto_0

    .line 284
    .end local v0    # "r1":I
    .end local v1    # "r2":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
