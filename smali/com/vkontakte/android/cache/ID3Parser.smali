.class public Lcom/vkontakte/android/cache/ID3Parser;
.super Ljava/lang/Object;
.source "ID3Parser.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private albumArt:[B

.field textData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 22
    .param p1, "data"    # [B

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/cache/ID3Parser;->textData:Ljava/util/HashMap;

    .line 18
    :try_start_0
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 20
    .local v12, "s":Ljava/io/DataInputStream;
    const-wide/16 v19, 0x3

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 21
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v17

    .line 22
    .local v17, "ver":I
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 23
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ID3 tag of unsupported version "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v12    # "s":Ljava/io/DataInputStream;
    .end local v17    # "ver":I
    :cond_0
    :goto_0
    return-void

    .line 27
    .restart local v12    # "s":Ljava/io/DataInputStream;
    .restart local v17    # "ver":I
    :cond_1
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    .line 28
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 29
    .local v8, "gflags":I
    and-int/lit16 v0, v8, 0x80

    move/from16 v19, v0

    if-lez v19, :cond_4

    const/16 v16, 0x1

    .line 30
    .local v16, "unsync":Z
    :goto_1
    and-int/lit8 v19, v8, 0x40

    if-lez v19, :cond_5

    const/4 v5, 0x1

    .line 31
    .local v5, "extHead":Z
    :goto_2
    const-wide/16 v19, 0x4

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 33
    if-eqz v16, :cond_2

    .line 34
    invoke-virtual {v12}, Ljava/io/DataInputStream;->available()I

    move-result v19

    move/from16 v0, v19

    new-array v3, v0, [B

    .line 35
    .local v3, "b":[B
    invoke-virtual {v12, v3}, Ljava/io/DataInputStream;->read([B)I

    .line 36
    new-instance v12, Ljava/io/DataInputStream;

    .end local v12    # "s":Ljava/io/DataInputStream;
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/cache/ID3Parser;->unsynchronize([B)[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .end local v3    # "b":[B
    .restart local v12    # "s":Ljava/io/DataInputStream;
    :cond_2
    if-eqz v5, :cond_3

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const-wide/16 v19, 0xa

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 39
    :cond_3
    :goto_3
    invoke-virtual {v12}, Ljava/io/DataInputStream;->available()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 40
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    const/16 v19, 0x4

    :goto_4
    move/from16 v0, v19

    new-array v2, v0, [B

    .line 41
    .local v2, "_fid":[B
    invoke-virtual {v12, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 42
    const/16 v19, 0x0

    aget-byte v19, v2, v19

    if-eqz v19, :cond_0

    .line 46
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    .line 47
    .local v7, "frameId":Ljava/lang/String;
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 48
    .local v10, "len":I
    :goto_5
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    invoke-virtual {v12}, Ljava/io/DataInputStream;->readShort()S

    move-result v6

    .line 50
    .local v6, "flags":I
    :goto_6
    const-string v19, "T"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    const-string v19, "TXXX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "TXX"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 51
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 52
    .local v4, "enc":I
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 53
    .local v13, "sdat":[B
    invoke-virtual {v12, v13}, Ljava/io/DataInputStream;->read([B)I

    .line 54
    array-length v14, v13

    .line 61
    .local v14, "slen":I
    new-instance v15, Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_9

    const-string v19, "UCS-2"

    :goto_7
    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v15, v13, v0, v14, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 62
    .local v15, "str":Ljava/lang/String;
    const-string v19, "\u0000"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/ID3Parser;->textData:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 95
    .end local v2    # "_fid":[B
    .end local v4    # "enc":I
    .end local v5    # "extHead":Z
    .end local v6    # "flags":I
    .end local v7    # "frameId":Ljava/lang/String;
    .end local v8    # "gflags":I
    .end local v10    # "len":I
    .end local v12    # "s":Ljava/io/DataInputStream;
    .end local v13    # "sdat":[B
    .end local v14    # "slen":I
    .end local v15    # "str":Ljava/lang/String;
    .end local v16    # "unsync":Z
    .end local v17    # "ver":I
    :catch_0
    move-exception v18

    .local v18, "x":Ljava/lang/Throwable;
    const-string v19, "vk"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 29
    .end local v18    # "x":Ljava/lang/Throwable;
    .restart local v8    # "gflags":I
    .restart local v12    # "s":Ljava/io/DataInputStream;
    .restart local v17    # "ver":I
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 30
    .restart local v16    # "unsync":Z
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 40
    .restart local v5    # "extHead":Z
    :cond_6
    const/16 v19, 0x3

    goto/16 :goto_4

    .line 47
    .restart local v2    # "_fid":[B
    .restart local v7    # "frameId":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v19

    shl-int/lit8 v19, v19, 0x10

    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v20

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v20

    or-int v10, v19, v20

    goto/16 :goto_5

    .line 48
    .restart local v10    # "len":I
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 61
    .restart local v4    # "enc":I
    .restart local v6    # "flags":I
    .restart local v13    # "sdat":[B
    .restart local v14    # "slen":I
    :cond_9
    const-string v19, "cp1251"

    goto :goto_7

    .line 65
    .end local v4    # "enc":I
    .end local v13    # "sdat":[B
    .end local v14    # "slen":I
    :cond_a
    const-string v19, "APIC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_b

    const-string v19, "PIC"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 66
    :cond_b
    const/4 v9, 0x0

    .line 67
    .local v9, "l":I
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 68
    .restart local v4    # "enc":I
    add-int/lit8 v9, v9, 0x1

    .line 69
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 70
    add-int/lit8 v9, v9, 0x3

    .line 71
    const-wide/16 v19, 0x3

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/DataInputStream;->skip(J)J

    .line 78
    :goto_8
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v11

    .line 79
    .local v11, "picType":I
    add-int/lit8 v9, v9, 0x1

    .line 80
    :goto_9
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v19

    if-eqz v19, :cond_e

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 73
    .end local v11    # "picType":I
    :cond_c
    :goto_a
    invoke-virtual {v12}, Ljava/io/DataInputStream;->read()I

    move-result v19

    if-eqz v19, :cond_d

    .line 74
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 76
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 83
    .restart local v11    # "picType":I
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 84
    sub-int v19, v10, v9

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/cache/ID3Parser;->albumArt:[B

    .line 85
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Allocated "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/ID3Parser;->albumArt:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bytes, available = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/io/DataInputStream;->available()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/cache/ID3Parser;->albumArt:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 87
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Available after cover = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/io/DataInputStream;->available()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 92
    .end local v4    # "enc":I
    .end local v9    # "l":I
    .end local v11    # "picType":I
    :cond_f
    int-to-long v0, v10

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v12, v0, v1}, Ljava/io/DataInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private unsynchronize([B)[B
    .locals 5
    .param p1, "src"    # [B

    .prologue
    .line 99
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 100
    .local v1, "in":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 102
    .local v3, "prev":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-lez v4, :cond_1

    .line 103
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 104
    .local v0, "b":I
    if-nez v0, :cond_0

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    .line 109
    :goto_1
    move v3, v0

    .line 110
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 111
    .end local v0    # "b":I
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/cache/ID3Parser;->textData:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vkontakte/android/cache/ID3Parser;->textData:Ljava/util/HashMap;

    const-string v2, "TALB"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TALB"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "TAL"

    goto :goto_0
.end method

.method public getAlbumArt()[B
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/cache/ID3Parser;->albumArt:[B

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/vkontakte/android/cache/ID3Parser;->textData:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vkontakte/android/cache/ID3Parser;->textData:Ljava/util/HashMap;

    const-string v2, "TPE1"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TPE1"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "TP1"

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/cache/ID3Parser;->textData:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vkontakte/android/cache/ID3Parser;->textData:Ljava/util/HashMap;

    const-string v2, "TIT2"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TIT2"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "TT2"

    goto :goto_0
.end method
