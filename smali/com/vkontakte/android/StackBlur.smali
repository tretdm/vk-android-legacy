.class public Lcom/vkontakte/android/StackBlur;
.super Ljava/lang/Object;
.source "StackBlur.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/StackBlur$BlurStack;
    }
.end annotation


# static fields
.field private static final mul_table:[I

.field private static final shg_table:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 7
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkontakte/android/StackBlur;->mul_table:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vkontakte/android/StackBlur;->shg_table:[I

    .line 42
    return-void

    .line 7
    nop

    :array_0
    .array-data 4
        0x200
        0x200
        0x1c8
        0x200
        0x148
        0x1c8
        0x14f
        0x200
        0x195
        0x148
        0x10f
        0x1c8
        0x184
        0x14f
        0x124
        0x200
        0x1c6
        0x195
        0x16c
        0x148
        0x12a
        0x10f
        0x1f0
        0x1c8
        0x1a4
        0x184
        0x168
        0x14f
        0x138
        0x124
        0x111
        0x200
        0x1e2
        0x1c6
        0x1ac
        0x195
        0x17f
        0x16c
        0x159
        0x148
        0x138
        0x12a
        0x11c
        0x10f
        0x103
        0x1f0
        0x1db
        0x1c8
        0x1b5
        0x1a4
        0x194
        0x184
        0x176
        0x168
        0x15b
        0x14f
        0x143
        0x138
        0x12e
        0x124
        0x11a
        0x111
        0x109
        0x200
        0x1f1
        0x1e2
        0x1d4
        0x1c6
        0x1b9
        0x1ac
        0x1a1
        0x195
        0x18a
        0x17f
        0x175
        0x16c
        0x162
        0x159
        0x151
        0x148
        0x140
        0x138
        0x131
        0x12a
        0x123
        0x11c
        0x116
        0x10f
        0x109
        0x103
        0x1fb
        0x1f0
        0x1e5
        0x1db
        0x1d1
        0x1c8
        0x1be
        0x1b5
        0x1ac
        0x1a4
        0x19c
        0x194
        0x18c
        0x184
        0x17d
        0x176
        0x16f
        0x168
        0x162
        0x15b
        0x155
        0x14f
        0x149
        0x143
        0x13e
        0x138
        0x133
        0x12e
        0x129
        0x124
        0x11f
        0x11a
        0x116
        0x111
        0x10d
        0x109
        0x105
        0x200
        0x1f9
        0x1f1
        0x1e9
        0x1e2
        0x1db
        0x1d4
        0x1cd
        0x1c6
        0x1bf
        0x1b9
        0x1b3
        0x1ac
        0x1a6
        0x1a1
        0x19b
        0x195
        0x18f
        0x18a
        0x185
        0x17f
        0x17a
        0x175
        0x170
        0x16c
        0x167
        0x162
        0x15e
        0x159
        0x155
        0x151
        0x14c
        0x148
        0x144
        0x140
        0x13c
        0x138
        0x135
        0x131
        0x12d
        0x12a
        0x126
        0x123
        0x11f
        0x11c
        0x119
        0x116
        0x112
        0x10f
        0x10c
        0x109
        0x106
        0x103
        0x101
        0x1fb
        0x1f5
        0x1f0
        0x1eb
        0x1e5
        0x1e0
        0x1db
        0x1d6
        0x1d1
        0x1cc
        0x1c8
        0x1c3
        0x1be
        0x1ba
        0x1b5
        0x1b1
        0x1ac
        0x1a8
        0x1a4
        0x1a0
        0x19c
        0x198
        0x194
        0x190
        0x18c
        0x188
        0x184
        0x181
        0x17d
        0x179
        0x176
        0x172
        0x16f
        0x16b
        0x168
        0x165
        0x162
        0x15e
        0x15b
        0x158
        0x155
        0x152
        0x14f
        0x14c
        0x149
        0x146
        0x143
        0x140
        0x13e
        0x13b
        0x138
        0x136
        0x133
        0x130
        0x12e
        0x12b
        0x129
        0x126
        0x124
        0x121
        0x11f
        0x11d
        0x11a
        0x118
        0x116
        0x113
        0x111
        0x10f
        0x10d
        0x10b
        0x109
        0x107
        0x105
        0x103
    .end array-data

    .line 26
    :array_1
    .array-data 4
        0x9
        0xb
        0xc
        0xd
        0xd
        0xe
        0xe
        0xf
        0xf
        0xf
        0xf
        0x10
        0x10
        0x10
        0x10
        0x11
        0x11
        0x11
        0x11
        0x11
        0x11
        0x11
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x12
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x13
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x14
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x15
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x16
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x17
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
        0x18
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blurBitmap(Landroid/graphics/Bitmap;I)V
    .locals 46
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I

    .prologue
    .line 45
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    .line 275
    :goto_0
    return-void

    .line 46
    :cond_0
    or-int/lit8 p1, p1, 0x0

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v37

    .line 50
    .local v37, "time":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v2, v4

    new-array v3, v2, [I

    .line 51
    .local v3, "pixels":[I
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 59
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 61
    .local v9, "height":I
    add-int v2, p1, p1

    add-int/lit8 v13, v2, 0x1

    .line 62
    .local v13, "div":I
    shl-int/lit8 v39, v5, 0x2

    .line 63
    .local v39, "w4":I
    add-int/lit8 v40, v5, -0x1

    .line 64
    .local v40, "widthMinus1":I
    add-int/lit8 v17, v9, -0x1

    .line 65
    .local v17, "heightMinus1":I
    add-int/lit8 v27, p1, 0x1

    .line 66
    .local v27, "radiusPlus1":I
    add-int/lit8 v2, v27, 0x1

    mul-int v2, v2, v27

    div-int/lit8 v36, v2, 0x2

    .line 68
    .local v36, "sumFactor":I
    new-instance v35, Lcom/vkontakte/android/StackBlur$BlurStack;

    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-direct {v0, v2}, Lcom/vkontakte/android/StackBlur$BlurStack;-><init>(Lcom/vkontakte/android/StackBlur$BlurStack;)V

    .line 69
    .local v35, "stackStart":Lcom/vkontakte/android/StackBlur$BlurStack;
    move-object/from16 v30, v35

    .line 70
    .local v30, "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    const/16 v32, 0x0

    .line 71
    .local v32, "stackEnd":Lcom/vkontakte/android/StackBlur$BlurStack;
    const/16 v18, 0x1

    .local v18, "i":I
    move-object/from16 v31, v30

    .end local v30    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    .local v31, "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    :goto_1
    move/from16 v0, v18

    if-lt v0, v13, :cond_1

    .line 76
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    .line 77
    const/16 v33, 0x0

    .line 78
    .local v33, "stackIn":Lcom/vkontakte/android/StackBlur$BlurStack;
    const/16 v34, 0x0

    .line 80
    .local v34, "stackOut":Lcom/vkontakte/android/StackBlur$BlurStack;
    const/16 v43, 0x0

    .local v43, "yi":I
    move/from16 v45, v43

    .line 82
    .local v45, "yw":I
    sget-object v2, Lcom/vkontakte/android/StackBlur;->mul_table:[I

    aget v19, v2, p1

    .line 83
    .local v19, "mul_sum":I
    sget-object v2, Lcom/vkontakte/android/StackBlur;->shg_table:[I

    aget v29, v2, p1

    .line 85
    .local v29, "shg_sum":I
    const/16 v42, 0x0

    .local v42, "y":I
    move-object/from16 v30, v31

    .end local v31    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    .restart local v30    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    :goto_2
    move/from16 v0, v42

    if-lt v0, v9, :cond_3

    .line 177
    const/16 v41, 0x0

    .local v41, "x":I
    :goto_3
    move/from16 v0, v41

    if-lt v0, v5, :cond_9

    .line 273
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 274
    const-string v2, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "StackBlur time "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v37

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 73
    .end local v19    # "mul_sum":I
    .end local v29    # "shg_sum":I
    .end local v30    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    .end local v33    # "stackIn":Lcom/vkontakte/android/StackBlur$BlurStack;
    .end local v34    # "stackOut":Lcom/vkontakte/android/StackBlur$BlurStack;
    .end local v41    # "x":I
    .end local v42    # "y":I
    .end local v43    # "yi":I
    .end local v45    # "yw":I
    .restart local v31    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    :cond_1
    new-instance v30, Lcom/vkontakte/android/StackBlur$BlurStack;

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Lcom/vkontakte/android/StackBlur$BlurStack;-><init>(Lcom/vkontakte/android/StackBlur$BlurStack;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    .line 74
    .end local v31    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    .restart local v30    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    move-object/from16 v32, v30

    .line 71
    :cond_2
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v31, v30

    .end local v30    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    .restart local v31    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    goto :goto_1

    .line 87
    .end local v31    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    .restart local v19    # "mul_sum":I
    .restart local v29    # "shg_sum":I
    .restart local v30    # "stack":Lcom/vkontakte/android/StackBlur$BlurStack;
    .restart local v33    # "stackIn":Lcom/vkontakte/android/StackBlur$BlurStack;
    .restart local v34    # "stackOut":Lcom/vkontakte/android/StackBlur$BlurStack;
    .restart local v42    # "y":I
    .restart local v43    # "yi":I
    .restart local v45    # "yw":I
    :cond_3
    const/4 v12, 0x0

    .local v12, "b_sum":I
    move/from16 v16, v12

    .local v16, "g_sum":I
    move/from16 v26, v12

    .local v26, "r_sum":I
    move v10, v12

    .local v10, "b_in_sum":I
    move v14, v12

    .local v14, "g_in_sum":I
    move/from16 v24, v12

    .line 92
    .local v24, "r_in_sum":I
    aget v2, v3, v43

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    .local v23, "pr":I
    mul-int v25, v27, v23

    .line 93
    .local v25, "r_out_sum":I
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .local v22, "pg":I
    mul-int v15, v27, v22

    .line 94
    .local v15, "g_out_sum":I
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .local v21, "pb":I
    mul-int v11, v27, v21

    .line 96
    .local v11, "b_out_sum":I
    mul-int v2, v36, v23

    add-int v26, v26, v2

    .line 97
    mul-int v2, v36, v22

    add-int v16, v16, v2

    .line 98
    mul-int v2, v36, v21

    add-int/2addr v12, v2

    .line 100
    move-object/from16 v30, v35

    .line 102
    const/16 v18, 0x0

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_4

    .line 110
    const/16 v18, 0x1

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    .line 128
    move-object/from16 v33, v35

    .line 129
    move-object/from16 v34, v32

    .line 130
    const/16 v41, 0x0

    .restart local v41    # "x":I
    :goto_6
    move/from16 v0, v41

    if-lt v0, v5, :cond_7

    .line 173
    add-int v45, v45, v5

    .line 85
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_2

    .line 104
    .end local v41    # "x":I
    :cond_4
    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    .line 105
    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    .line 106
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    .line 107
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 102
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 112
    :cond_5
    move/from16 v0, v40

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    move/from16 v2, v40

    :goto_7
    add-int v20, v43, v2

    .line 116
    .local v20, "p":I
    aget v2, v3, v20

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    sub-int v28, v27, v18

    .local v28, "rbs":I
    mul-int v2, v23, v28

    add-int v26, v26, v2

    .line 117
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    mul-int v2, v22, v28

    add-int v16, v16, v2

    .line 118
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    mul-int v2, v21, v28

    add-int/2addr v12, v2

    .line 120
    add-int v24, v24, v23

    .line 121
    add-int v14, v14, v22

    .line 122
    add-int v10, v10, v21

    .line 124
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 110
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .end local v20    # "p":I
    .end local v28    # "rbs":I
    :cond_6
    move/from16 v2, v18

    .line 112
    goto :goto_7

    .line 135
    .restart local v41    # "x":I
    :cond_7
    mul-int v2, v26, v19

    shr-int v2, v2, v29

    mul-int v4, v16, v19

    shr-int v4, v4, v29

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    mul-int v4, v12, v19

    shr-int v4, v4, v29

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    aput v2, v3, v43

    .line 137
    sub-int v26, v26, v25

    .line 138
    sub-int v16, v16, v15

    .line 139
    sub-int/2addr v12, v11

    .line 141
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    sub-int v25, v25, v2

    .line 142
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    sub-int/2addr v15, v2

    .line 143
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    sub-int/2addr v11, v2

    .line 145
    add-int v2, v41, p1

    add-int/lit8 v20, v2, 0x1

    .restart local v20    # "p":I
    move/from16 v0, v20

    move/from16 v1, v40

    if-ge v0, v1, :cond_8

    .end local v20    # "p":I
    :goto_8
    add-int v20, v20, v45

    .line 150
    .restart local v20    # "p":I
    aget v2, v3, v20

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    add-int v24, v24, v2

    .line 151
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    add-int/2addr v14, v2

    .line 152
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    add-int/2addr v10, v2

    .line 154
    add-int v26, v26, v24

    .line 155
    add-int v16, v16, v14

    .line 156
    add-int/2addr v12, v10

    .line 158
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    move-object/from16 v33, v0

    .line 160
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    move/from16 v23, v0

    add-int v25, v25, v23

    .line 161
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 162
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    move/from16 v21, v0

    add-int v11, v11, v21

    .line 164
    sub-int v24, v24, v23

    .line 165
    sub-int v14, v14, v22

    .line 166
    sub-int v10, v10, v21

    .line 168
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    move-object/from16 v34, v0

    .line 171
    add-int/lit8 v43, v43, 0x1

    .line 130
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_6

    :cond_8
    move/from16 v20, v40

    .line 145
    goto :goto_8

    .line 179
    .end local v10    # "b_in_sum":I
    .end local v11    # "b_out_sum":I
    .end local v12    # "b_sum":I
    .end local v14    # "g_in_sum":I
    .end local v15    # "g_out_sum":I
    .end local v16    # "g_sum":I
    .end local v20    # "p":I
    .end local v21    # "pb":I
    .end local v22    # "pg":I
    .end local v23    # "pr":I
    .end local v24    # "r_in_sum":I
    .end local v25    # "r_out_sum":I
    .end local v26    # "r_sum":I
    :cond_9
    const/16 v26, 0x0

    .restart local v26    # "r_sum":I
    move/from16 v12, v26

    .restart local v12    # "b_sum":I
    move/from16 v16, v26

    .restart local v16    # "g_sum":I
    move/from16 v24, v26

    .restart local v24    # "r_in_sum":I
    move/from16 v10, v26

    .restart local v10    # "b_in_sum":I
    move/from16 v14, v26

    .line 181
    .restart local v14    # "g_in_sum":I
    move/from16 v43, v41

    .line 185
    aget v2, v3, v43

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    .restart local v23    # "pr":I
    mul-int v25, v27, v23

    .line 186
    .restart local v25    # "r_out_sum":I
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    .restart local v22    # "pg":I
    mul-int v15, v27, v22

    .line 187
    .restart local v15    # "g_out_sum":I
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .restart local v21    # "pb":I
    mul-int v11, v27, v21

    .line 189
    .restart local v11    # "b_out_sum":I
    mul-int v2, v36, v23

    add-int v26, v26, v2

    .line 190
    mul-int v2, v36, v22

    add-int v16, v16, v2

    .line 191
    mul-int v2, v36, v21

    add-int/2addr v12, v2

    .line 193
    move-object/from16 v30, v35

    .line 195
    const/16 v18, 0x0

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_a

    .line 203
    move/from16 v44, v5

    .line 205
    .local v44, "yp":I
    const/16 v18, 0x1

    :goto_a
    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_b

    .line 228
    move/from16 v43, v41

    .line 229
    move-object/from16 v33, v35

    .line 230
    move-object/from16 v34, v32

    .line 231
    const/16 v42, 0x0

    :goto_b
    move/from16 v0, v42

    if-lt v0, v9, :cond_d

    .line 177
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 197
    .end local v44    # "yp":I
    :cond_a
    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    .line 198
    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    .line 199
    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    .line 200
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 195
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 207
    .restart local v44    # "yp":I
    :cond_b
    add-int v43, v44, v41

    .line 212
    aget v2, v3, v43

    and-int/lit16 v0, v2, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    sub-int v28, v27, v18

    .restart local v28    # "rbs":I
    mul-int v2, v23, v28

    add-int v26, v26, v2

    .line 213
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    mul-int v2, v22, v28

    add-int v16, v16, v2

    .line 214
    aget v2, v3, v43

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v30

    iput v0, v1, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    mul-int v2, v21, v28

    add-int/2addr v12, v2

    .line 216
    add-int v24, v24, v23

    .line 217
    add-int v14, v14, v22

    .line 218
    add-int v10, v10, v21

    .line 220
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    move-object/from16 v30, v0

    .line 222
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 224
    add-int v44, v44, v5

    .line 205
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 233
    .end local v28    # "rbs":I
    :cond_d
    move/from16 v20, v43

    .line 237
    .restart local v20    # "p":I
    mul-int v2, v26, v19

    shr-int v2, v2, v29

    mul-int v4, v16, v19

    shr-int v4, v4, v29

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    mul-int v4, v12, v19

    shr-int v4, v4, v29

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    const/high16 v4, -0x1000000

    or-int/2addr v2, v4

    aput v2, v3, v20

    .line 239
    sub-int v26, v26, v25

    .line 240
    sub-int v16, v16, v15

    .line 241
    sub-int/2addr v12, v11

    .line 243
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    sub-int v25, v25, v2

    .line 244
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    sub-int/2addr v15, v2

    .line 245
    move-object/from16 v0, v33

    iget v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    sub-int/2addr v11, v2

    .line 247
    add-int v20, v42, v27

    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_e

    .end local v20    # "p":I
    :goto_c
    mul-int v2, v20, v5

    add-int v20, v41, v2

    .line 252
    .restart local v20    # "p":I
    aget v2, v3, v20

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    add-int v24, v24, v2

    add-int v26, v26, v24

    .line 253
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    add-int/2addr v14, v2

    add-int v16, v16, v14

    .line 254
    aget v2, v3, v20

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, v33

    iput v2, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    add-int/2addr v10, v2

    add-int/2addr v12, v10

    .line 256
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    move-object/from16 v33, v0

    .line 258
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->r:I

    move/from16 v23, v0

    add-int v25, v25, v23

    .line 259
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->g:I

    move/from16 v22, v0

    add-int v15, v15, v22

    .line 260
    move-object/from16 v0, v34

    iget v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->b:I

    move/from16 v21, v0

    add-int v11, v11, v21

    .line 262
    sub-int v24, v24, v23

    .line 263
    sub-int v14, v14, v22

    .line 264
    sub-int v10, v10, v21

    .line 266
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/vkontakte/android/StackBlur$BlurStack;->next:Lcom/vkontakte/android/StackBlur$BlurStack;

    move-object/from16 v34, v0

    .line 268
    add-int v43, v43, v5

    .line 231
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_b

    :cond_e
    move/from16 v20, v17

    .line 247
    goto :goto_c
.end method
