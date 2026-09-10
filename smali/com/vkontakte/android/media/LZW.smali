.class public Lcom/vkontakte/android/media/LZW;
.super Ljava/lang/Object;
.source "LZW.java"


# static fields
.field protected static final MAX_STACK_SIZE:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeGifBitmapData(Ljava/io/InputStream;II)[B
    .locals 30
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "npix"    # I
    .param p2, "initialSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .local v22, "pixels":Ljava/io/ByteArrayOutputStream;
    const/16 v18, -0x1

    .line 20
    .local v18, "nullCode":I
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v0, v0, [S

    move-object/from16 v23, v0

    .line 21
    .local v23, "prefix":[S
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 22
    .local v24, "suffix":[B
    const/16 v27, 0x1001

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 23
    .local v21, "pixelStack":[B
    const/16 v27, 0xff

    move/from16 v0, v27

    new-array v6, v0, [B

    .line 25
    .local v6, "block":[B
    move/from16 v12, p2

    .line 26
    .local v12, "data_size":I
    const/16 v27, 0x1

    shl-int v7, v27, v12

    .line 27
    .local v7, "clear":I
    add-int/lit8 v14, v7, 0x1

    .line 28
    .local v14, "end_of_information":I
    add-int/lit8 v3, v7, 0x2

    .line 29
    .local v3, "available":I
    move/from16 v19, v18

    .line 30
    .local v19, "old_code":I
    add-int/lit8 v10, v12, 0x1

    .line 31
    .local v10, "code_size":I
    const/16 v27, 0x1

    shl-int v27, v27, v10

    add-int/lit8 v9, v27, -0x1

    .line 32
    .local v9, "code_mask":I
    const/4 v8, 0x0

    .local v8, "code":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 33
    const/16 v27, 0x0

    aput-short v27, v23, v8

    .line 34
    int-to-byte v0, v8

    move/from16 v27, v0

    aput-byte v27, v24, v8

    .line 32
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 37
    :cond_0
    const/4 v4, 0x0

    .local v4, "bi":I
    move/from16 v20, v4

    .local v20, "pi":I
    move/from16 v25, v4

    .local v25, "top":I
    move v15, v4

    .local v15, "first":I
    move v11, v4

    .local v11, "count":I
    move v5, v4

    .local v5, "bits":I
    move v13, v4

    .line 38
    .local v13, "datum":I
    const/16 v16, 0x0

    .local v16, "i":I
    move/from16 v26, v25

    .end local v25    # "top":I
    .local v26, "top":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_10

    .line 39
    if-nez v26, :cond_f

    .line 40
    if-ge v5, v10, :cond_3

    .line 42
    if-nez v11, :cond_2

    .line 44
    const/16 v27, 0x0

    const/16 v28, 0xff

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 45
    if-gtz v11, :cond_1

    .line 46
    const-string v27, "vk"

    const-string v28, "end of data"

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v26

    .line 112
    .end local v26    # "top":I
    .restart local v25    # "top":I
    :goto_2
    move/from16 v16, v20

    :goto_3
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_e

    .line 113
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 112
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 49
    .end local v25    # "top":I
    .restart local v26    # "top":I
    :cond_1
    const/4 v4, 0x0

    .line 51
    :cond_2
    aget-byte v27, v6, v4

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    shl-int v27, v27, v5

    add-int v13, v13, v27

    .line 52
    add-int/lit8 v5, v5, 0x8

    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    add-int/lit8 v11, v11, -0x1

    .line 55
    goto :goto_1

    .line 58
    :cond_3
    and-int v8, v13, v9

    .line 59
    shr-int/2addr v13, v10

    .line 60
    sub-int/2addr v5, v10

    .line 62
    if-gt v8, v3, :cond_4

    if-ne v8, v14, :cond_7

    .line 63
    :cond_4
    const-string v28, "vk"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "lzw exit "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    if-le v8, v3, :cond_5

    const/16 v27, 0x1

    :goto_4
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, ", "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    if-ne v8, v14, :cond_6

    const/16 v27, 0x1

    :goto_5
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v26

    .line 64
    .end local v26    # "top":I
    .restart local v25    # "top":I
    goto :goto_2

    .line 63
    .end local v25    # "top":I
    .restart local v26    # "top":I
    :cond_5
    const/16 v27, 0x0

    goto :goto_4

    :cond_6
    const/16 v27, 0x0

    goto :goto_5

    .line 66
    :cond_7
    if-ne v8, v7, :cond_8

    .line 68
    const-string v27, "vk"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "clear "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    add-int/lit8 v10, v12, 0x1

    .line 70
    const/16 v27, 0x1

    shl-int v27, v27, v10

    add-int/lit8 v9, v27, -0x1

    .line 71
    add-int/lit8 v3, v7, 0x2

    .line 72
    move/from16 v19, v18

    .line 73
    const-string v27, "vk"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "after clear "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    :cond_8
    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 77
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "top":I
    .restart local v25    # "top":I
    aget-byte v27, v24, v8

    aput-byte v27, v21, v26

    .line 78
    move/from16 v19, v8

    .line 79
    move v15, v8

    move/from16 v26, v25

    .line 80
    .end local v25    # "top":I
    .restart local v26    # "top":I
    goto/16 :goto_1

    .line 82
    :cond_9
    move/from16 v17, v8

    .line 83
    .local v17, "in_code":I
    if-ne v8, v3, :cond_a

    .line 84
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "top":I
    .restart local v25    # "top":I
    int-to-byte v0, v15

    move/from16 v27, v0

    aput-byte v27, v21, v26

    .line 85
    move/from16 v8, v19

    move/from16 v26, v25

    .line 87
    .end local v25    # "top":I
    .restart local v26    # "top":I
    :cond_a
    :goto_6
    if-le v8, v7, :cond_b

    .line 88
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "top":I
    .restart local v25    # "top":I
    aget-byte v27, v24, v8

    aput-byte v27, v21, v26

    .line 89
    aget-short v8, v23, v8

    move/from16 v26, v25

    .end local v25    # "top":I
    .restart local v26    # "top":I
    goto :goto_6

    .line 91
    :cond_b
    aget-byte v27, v24, v8

    move/from16 v0, v27

    and-int/lit16 v15, v0, 0xff

    .line 93
    const/16 v27, 0x1000

    move/from16 v0, v27

    if-lt v3, v0, :cond_c

    .line 94
    const-string v27, "vk"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "available >= MAX_STACK_SIZE "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v26

    .line 95
    .end local v26    # "top":I
    .restart local v25    # "top":I
    goto/16 :goto_2

    .line 97
    .end local v25    # "top":I
    .restart local v26    # "top":I
    :cond_c
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "top":I
    .restart local v25    # "top":I
    int-to-byte v0, v15

    move/from16 v27, v0

    aput-byte v27, v21, v26

    .line 98
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v27, v0

    aput-short v27, v23, v3

    .line 99
    int-to-byte v0, v15

    move/from16 v27, v0

    aput-byte v27, v24, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 101
    and-int v27, v3, v9

    if-nez v27, :cond_d

    const/16 v27, 0x1000

    move/from16 v0, v27

    if-ge v3, v0, :cond_d

    .line 102
    add-int/lit8 v10, v10, 0x1

    .line 103
    add-int/2addr v9, v3

    .line 105
    :cond_d
    move/from16 v19, v17

    .line 108
    .end local v17    # "in_code":I
    :goto_7
    add-int/lit8 v25, v25, -0x1

    .line 109
    aget-byte v27, v21, v25

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    add-int/lit8 v16, v16, 0x1

    move/from16 v26, v25

    .end local v25    # "top":I
    .restart local v26    # "top":I
    goto/16 :goto_1

    .line 115
    .end local v26    # "top":I
    .restart local v25    # "top":I
    :cond_e
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v27

    return-object v27

    .end local v25    # "top":I
    .restart local v26    # "top":I
    :cond_f
    move/from16 v25, v26

    .end local v26    # "top":I
    .restart local v25    # "top":I
    goto :goto_7

    .end local v25    # "top":I
    .restart local v26    # "top":I
    :cond_10
    move/from16 v25, v26

    .end local v26    # "top":I
    .restart local v25    # "top":I
    goto/16 :goto_2
.end method
