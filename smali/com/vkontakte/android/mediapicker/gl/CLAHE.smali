.class public Lcom/vkontakte/android/mediapicker/gl/CLAHE;
.super Ljava/lang/Object;
.source "CLAHE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;,
        Lcom/vkontakte/android/mediapicker/gl/CLAHE$PixelSetter;
    }
.end annotation


# static fields
.field private static bins:I

.field private static block_radius:I

.field private static slope:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0x3f

    sput v0, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->block_radius:I

    .line 14
    const/16 v0, 0xff

    sput v0, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->bins:I

    .line 15
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->slope:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doProcess(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 33
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "blockRadius"    # I
    .param p2, "bins"    # I
    .param p3, "slope"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 122
    .local v17, "ms":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 123
    .local v23, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 125
    .local v6, "height":I
    move/from16 v0, v23

    move-object/from16 v1, p0

    invoke-static {v0, v6, v1}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->getBytePixels(IILandroid/graphics/Bitmap;)[I

    move-result-object v2

    .line 126
    .local v2, "bytes":[I
    invoke-static {v2, v6}, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;->wrap([II)Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;

    move-result-object v4

    .line 128
    .local v4, "getter":Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;
    const-string v28, "Done initialization in %dms, starting to do my job"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v17

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 131
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, " done of "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 133
    .local v19, "msg":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "y":I
    :goto_0
    move/from16 v0, v26

    if-lt v0, v6, :cond_0

    .line 182
    const-string v28, "Done in %dms"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v17

    move-wide/from16 v0, v31

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/16 v28, 0x0

    return-object v28

    .line 135
    :cond_0
    const-string v28, "photo_picker_cmn"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/16 v28, 0x0

    sub-int v29, v26, p1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 138
    .local v16, "minY":I
    add-int v28, v26, p1

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 139
    .local v12, "maxY":I
    sub-int v5, v12, v16

    .line 141
    .local v5, "h":I
    const/16 v28, 0x0

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 142
    .local v14, "minX0":I
    add-int/lit8 v28, v23, -0x1

    move/from16 v0, v28

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 144
    .local v10, "maxX0":I
    add-int/lit8 v28, p2, 0x1

    move/from16 v0, v28

    new-array v7, v0, [I

    .line 145
    .local v7, "hist":[I
    add-int/lit8 v28, p2, 0x1

    move/from16 v0, v28

    new-array v3, v0, [I

    .line 147
    .local v3, "clipped":[I
    move/from16 v27, v16

    .local v27, "yi":I
    :goto_1
    move/from16 v0, v27

    if-lt v0, v12, :cond_1

    .line 151
    const/16 v24, 0x0

    .local v24, "x":I
    :goto_2
    move/from16 v0, v24

    move/from16 v1, v23

    if-lt v0, v1, :cond_3

    .line 133
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 148
    .end local v24    # "x":I
    :cond_1
    move/from16 v25, v14

    .local v25, "xi":I
    :goto_3
    move/from16 v0, v25

    if-lt v0, v10, :cond_2

    .line 147
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 149
    :cond_2
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;->get(II)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x437f0000    # 255.0f

    div-float v28, v28, v29

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->roundPositive(F)I

    move-result v28

    aget v29, v7, v28

    add-int/lit8 v29, v29, 0x1

    aput v29, v7, v28

    .line 148
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 153
    .end local v25    # "xi":I
    .restart local v24    # "x":I
    :cond_3
    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;->get(II)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x437f0000    # 255.0f

    div-float v28, v28, v29

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->roundPositive(F)I

    move-result v21

    .line 155
    .local v21, "v":I
    const/16 v28, 0x0

    sub-int v29, v24, p1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 156
    .local v13, "minX":I
    add-int v28, v24, p1

    move/from16 v0, v23

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 157
    .local v9, "maxX":I
    move/from16 v0, v23

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v28

    sub-int v22, v28, v13

    .line 158
    .local v22, "w":I
    mul-int v20, v5, v22

    .line 160
    .local v20, "n":I
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, p3

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    const/high16 v29, 0x3f000000    # 0.5f

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v8, v0

    .line 162
    .local v8, "limit":I
    if-lez v13, :cond_4

    .line 164
    add-int/lit8 v15, v13, -0x1

    .line 165
    .local v15, "minX1":I
    move/from16 v27, v16

    :goto_4
    move/from16 v0, v27

    if-lt v0, v12, :cond_6

    .line 169
    .end local v15    # "minX1":I
    :cond_4
    move/from16 v0, v23

    if-gt v9, v0, :cond_5

    .line 171
    add-int/lit8 v11, v9, -0x1

    .line 172
    .local v11, "maxX1":I
    move/from16 v27, v16

    :goto_5
    move/from16 v0, v27

    if-lt v0, v12, :cond_7

    .line 151
    .end local v11    # "maxX1":I
    :cond_5
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 166
    .restart local v15    # "minX1":I
    :cond_6
    move/from16 v0, v27

    invoke-virtual {v4, v15, v0}, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;->get(II)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x437f0000    # 255.0f

    div-float v28, v28, v29

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->roundPositive(F)I

    move-result v28

    aget v29, v7, v28

    add-int/lit8 v29, v29, -0x1

    aput v29, v7, v28

    .line 165
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 173
    .end local v15    # "minX1":I
    .restart local v11    # "maxX1":I
    :cond_7
    move/from16 v0, v27

    invoke-virtual {v4, v11, v0}, Lcom/vkontakte/android/mediapicker/gl/CLAHE$ByteGetter;->get(II)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x437f0000    # 255.0f

    div-float v28, v28, v29

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    invoke-static/range {v28 .. v28}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->roundPositive(F)I

    move-result v28

    aget v29, v7, v28

    add-int/lit8 v29, v29, 0x1

    aput v29, v7, v28

    .line 172
    add-int/lit8 v27, v27, 0x1

    goto :goto_5
.end method

.method private static getBytePixels(IILandroid/graphics/Bitmap;)[I
    .locals 17
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    const-wide v11, 0x3fd5555555555555L    # 0.3333333333333333

    .line 95
    .local v11, "rw":D
    const-wide v5, 0x3fd5555555555555L    # 0.3333333333333333

    .line 96
    .local v5, "gw":D
    const-wide v1, 0x3fd5555555555555L    # 0.3333333333333333

    .line 98
    .local v1, "bw":D
    invoke-static/range {p0 .. p2}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->getPixels(IILandroid/graphics/Bitmap;)[I

    move-result-object v8

    .line 99
    .local v8, "pixels24":[I
    mul-int v13, p0, p1

    new-array v9, v13, [I

    .line 101
    .local v9, "pixels8":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    mul-int v13, p0, p1

    if-lt v7, v13, :cond_0

    .line 110
    return-object v9

    .line 103
    :cond_0
    aget v13, v8, v7

    const v14, 0xffffff

    and-int v3, v13, v14

    .line 104
    .local v3, "c":I
    const/high16 v13, 0xff0000

    and-int/2addr v13, v3

    shr-int/lit8 v10, v13, 0x10

    .line 105
    .local v10, "r":I
    const v13, 0xff00

    and-int/2addr v13, v3

    shr-int/lit8 v4, v13, 0x8

    .line 106
    .local v4, "g":I
    and-int/lit16 v0, v3, 0xff

    .line 107
    .local v0, "b":I
    int-to-double v13, v10

    mul-double/2addr v13, v11

    int-to-double v15, v4

    mul-double/2addr v15, v5

    add-double/2addr v13, v15

    int-to-double v15, v0

    mul-double/2addr v15, v1

    add-double/2addr v13, v15

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v13, v15

    double-to-int v13, v13

    int-to-byte v13, v13

    and-int/lit16 v13, v13, 0xff

    aput v13, v9, v7

    .line 101
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private static getPixels(IILandroid/graphics/Bitmap;)[I
    .locals 8
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .local v1, "pixels":[I
    move-object v0, p2

    move v3, p0

    move v4, v2

    move v5, v2

    move v6, p0

    move v7, p1

    .line 82
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 84
    return-object v1
.end method

.method public static process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    sget v0, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->block_radius:I

    sget v1, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->bins:I

    sget v2, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->slope:F

    invoke-static {p0, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->process(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static process(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "blockRadius"    # I
    .param p2, "bins"    # I
    .param p3, "slope"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 53
    if-nez p0, :cond_0

    .line 55
    const-string v5, "CLAHE error: image is null"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->IPWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 73
    :goto_0
    return-object v2

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, "ms":J
    invoke-static {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->doProcess(Landroid/graphics/Bitmap;IIF)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 66
    .local v2, "result":Landroid/graphics/Bitmap;
    const-string v5, "CLAHE done in %dms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->IPInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "ms":J
    .end local v2    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 72
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string v5, "Cannot CLAHE"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v3, v6}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v2, v4

    .line 73
    goto :goto_0
.end method

.method private static roundPositive(F)I
    .locals 1
    .param p0, "x"    # F

    .prologue
    .line 21
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method
