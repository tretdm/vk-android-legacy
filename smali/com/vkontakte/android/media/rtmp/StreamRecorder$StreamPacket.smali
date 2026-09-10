.class public Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;
.super Ljava/lang/Object;
.source "StreamRecorder.java"

# interfaces
.implements Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue$PriorityElement;
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/media/rtmp/StreamRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamPacket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkontakte/android/media/rtmp/ReallyWorkingPriorityQueue$PriorityElement;",
        "Ljava/util/concurrent/Delayed;"
    }
.end annotation


# instance fields
.field data:[B

.field first:Z

.field fullSize:I

.field timestamp:J

.field type:I


# direct methods
.method public constructor <init>([BIJZI)V
    .locals 0
    .param p1, "d"    # [B
    .param p2, "t"    # I
    .param p3, "ts"    # J
    .param p5, "f"    # Z
    .param p6, "s"    # I

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->data:[B

    .line 265
    iput p2, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->type:I

    .line 266
    iput-wide p3, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->timestamp:J

    .line 267
    iput-boolean p5, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->first:Z

    .line 268
    iput p6, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->fullSize:I

    .line 269
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 1
    .param p1, "arg0"    # Ljava/util/concurrent/Delayed;

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 6
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 291
    iget-wide v2, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->timestamp:J

    invoke-static {}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->time()I

    move-result v4

    int-to-long v4, v4

    sub-long v0, v2, v4

    .line 292
    .local v0, "delay":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p1, v2, :cond_0

    .line 295
    .end local v0    # "delay":J
    :goto_0
    return-wide v0

    .line 293
    .restart local v0    # "delay":J
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-ne p1, v2, :cond_1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0

    .line 294
    :cond_1
    const-string v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown unit "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPriority()I
    .locals 3

    .prologue
    .line 282
    const v0, 0x7fffffff

    iget-wide v1, p0, Lcom/vkontakte/android/media/rtmp/StreamRecorder$StreamPacket;->timestamp:J

    long-to-int v1, v1

    sub-int/2addr v0, v1

    return v0
.end method
