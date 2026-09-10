.class public Lcom/vkontakte/android/media/rtmp/XDataInputStream;
.super Ljava/io/DataInputStream;
.source "XDataInputStream.java"


# static fields
.field private static final AMF_BOOLEAN:I = 0x1

.field private static final AMF_DATE:I = 0xb

.field private static final AMF_ECMA_ARRAY:I = 0x8

.field private static final AMF_NULL:I = 0x5

.field private static final AMF_NUMBER:I = 0x0

.field private static final AMF_OBJECT:I = 0x3

.field private static final AMF_OBJECT_END:I = 0x9

.field private static final AMF_REFERENCE:I = 0x7

.field private static final AMF_STRICT_ARRAY:I = 0xa

.field private static final AMF_STRING:I = 0x2

.field private static final AMF_UNDEFINED:I = 0x6


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/InputStream;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 27
    return-void
.end method


# virtual methods
.method public readAmfObject()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "{"

    .line 81
    .local v0, "dbg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v4, "vk_RTMP"

    invoke-static {v4, v0}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    .line 90
    return-object v3

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readNextAmf()Ljava/lang/Object;

    move-result-object v2

    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    goto :goto_0
.end method

.method public readFull([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "numRead":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 105
    array-length v1, p1

    return v1

    .line 102
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read([BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public readInt24()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v0

    .line 36
    .local v0, "b1":I
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v1

    .line 37
    .local v1, "b2":I
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v2

    .line 38
    .local v2, "b3":I
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3
.end method

.method public readNextAmf()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->read()I

    move-result v0

    .line 43
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 64
    :goto_0
    :pswitch_0
    return-object v1

    .line 45
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 47
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 49
    :pswitch_3
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 51
    :pswitch_4
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readInt()I

    .line 53
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkontakte/android/media/rtmp/XDataInputStream;->readAmfObject()Ljava/util/HashMap;

    move-result-object v1

    goto :goto_0

    .line 61
    :pswitch_6
    const-string v2, "vk_RTMP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OH SHI~ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
