.class public Lcom/vkontakte/android/media/rtmp/XDataOutputStream;
.super Ljava/io/DataOutputStream;
.source "XDataOutputStream.java"


# static fields
.field private static final AMF3_ARRAY:I = 0x9

.field private static final AMF3_BYTE_ARRAY:I = 0xc

.field private static final AMF3_DATE:I = 0x8

.field private static final AMF3_DOUBLE:I = 0x5

.field private static final AMF3_FALSE:I = 0x2

.field private static final AMF3_INT:I = 0x4

.field private static final AMF3_NULL:I = 0x1

.field private static final AMF3_OBJECT:I = 0xa

.field private static final AMF3_STRING:I = 0x6

.field private static final AMF3_TRUE:I = 0x3

.field private static final AMF3_UNDEFINED:I = 0x0

.field private static final AMF3_XML:I = 0xb

.field private static final AMF3_XML_DOC:I = 0x7

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

.field public static chunkSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x80

    sput v0, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->chunkSize:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "arg0"    # Ljava/io/OutputStream;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    return-void
.end method


# virtual methods
.method public writeAMF(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 72
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return-void

    .line 66
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfNumber(D)V

    goto :goto_0

    .line 67
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Double;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfNumber(D)V

    goto :goto_0

    .line 68
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfString(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfBoolean(Z)V

    goto :goto_0

    .line 70
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfObject(Ljava/util/HashMap;)V

    goto :goto_0

    .line 71
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    goto :goto_0
.end method

.method public writeAmfBoolean(Z)V
    .locals 1
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 56
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeAmfNumber(D)V
    .locals 1
    .param p1, "n"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeDouble(D)V

    .line 52
    return-void
.end method

.method public writeAmfObject(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "obj":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 76
    invoke-virtual {p0, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 80
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 81
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 93
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeShort(I)V

    .line 94
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    .local v2, "o":Ljava/lang/Object;
    const-string v4, "%s = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    if-nez v2, :cond_2

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    goto :goto_1

    .line 86
    :cond_2
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfNumber(D)V

    goto :goto_1

    .line 87
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v4, v2, Ljava/lang/Double;

    if-eqz v4, :cond_4

    check-cast v2, Ljava/lang/Double;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfNumber(D)V

    goto :goto_1

    .line 88
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_5

    check-cast v2, Ljava/lang/String;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfString(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfBoolean(Z)V

    goto :goto_1

    .line 90
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v4, v2, Ljava/util/HashMap;

    if-eqz v4, :cond_7

    check-cast v2, Ljava/util/HashMap;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeAmfObject(Ljava/util/HashMap;)V

    goto :goto_1

    .line 91
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_7
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    goto :goto_1
.end method

.method public writeAmfString(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public writeChunked([BI)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "csID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "i":I
    :cond_0
    sget v1, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->chunkSize:I

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write([BII)V

    .line 102
    sget v1, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->chunkSize:I

    add-int/2addr v0, v1

    .line 103
    array-length v1, p1

    if-ge v0, v1, :cond_1

    and-int/lit8 v1, p2, 0x3f

    or-int/lit16 v1, v1, 0xc0

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 104
    :cond_1
    array-length v1, p1

    .line 100
    if-lt v0, v1, :cond_0

    .line 105
    return-void
.end method

.method public writeInt24(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 45
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 46
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->write(I)V

    .line 47
    return-void
.end method

.method public writeIntFlipped(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    shr-int/lit8 v0, p1, 0x18

    shr-int/lit8 v1, p1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/media/rtmp/XDataOutputStream;->writeInt(I)V

    .line 109
    return-void
.end method
