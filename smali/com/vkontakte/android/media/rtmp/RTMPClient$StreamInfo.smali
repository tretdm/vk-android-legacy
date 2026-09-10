.class Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;
.super Ljava/lang/Object;
.source "RTMPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/media/rtmp/RTMPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamInfo"
.end annotation


# instance fields
.field lastMessageLength:I

.field lastMessageType:I

.field lastTimestamp:I

.field messageBuffer:Ljava/io/ByteArrayOutputStream;

.field readLength:I

.field final synthetic this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

.field timestamp:I

.field timestampStart:J


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/media/rtmp/RTMPClient;I)V
    .locals 4
    .param p2, "ts"    # I

    .prologue
    .line 663
    iput-object p1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->this$0:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->timestampStart:J

    .line 665
    return-void
.end method


# virtual methods
.method public getCurrentTimestamp()I
    .locals 4

    .prologue
    .line 668
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->timestampStart:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getTimestampDelta()I
    .locals 3

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getCurrentTimestamp()I

    move-result v1

    iget v2, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastTimestamp:I

    sub-int v0, v1, v2

    .line 673
    .local v0, "d":I
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->getCurrentTimestamp()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/media/rtmp/RTMPClient$StreamInfo;->lastTimestamp:I

    .line 674
    return v0
.end method
