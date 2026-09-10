.class Lcom/vkontakte/android/ui/GifView$AnimationRunner;
.super Ljava/lang/Object;
.source "GifView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/GifView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/GifView;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner;-><init>(Lcom/vkontakte/android/ui/GifView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)Lcom/vkontakte/android/ui/GifView;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 41

    .prologue
    .line 199
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->access$0(Lcom/vkontakte/android/ui/GifView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v36

    if-nez v36, :cond_1

    .line 356
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    :goto_2
    return-void

    .line 200
    :cond_1
    const-wide/16 v24, 0x0

    .local v24, "nextDelay":J
    const-wide/16 v29, 0x0

    .line 201
    .local v29, "t":J
    :try_start_2
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 202
    .local v11, "clearPaint":Landroid/graphics/Paint;
    const/16 v36, -0x1

    move/from16 v0, v36

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    new-instance v26, Ljava/io/DataInputStream;

    new-instance v36, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v38

    invoke-direct/range {v36 .. v38}, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;-><init>(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 205
    .local v26, "s":Ljava/io/DataInputStream;
    const/16 v36, 0x6

    move/from16 v0, v36

    new-array v0, v0, [B

    move-object/from16 v27, v0

    .line 206
    .local v27, "sig":[B
    invoke-virtual/range {v26 .. v27}, Ljava/io/DataInputStream;->readFully([B)V

    .line 207
    const/16 v36, 0x0

    aget-byte v36, v27, v36

    const/16 v37, 0x47

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    const/16 v36, 0x1

    aget-byte v36, v27, v36

    const/16 v37, 0x49

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    const/16 v36, 0x2

    aget-byte v36, v27, v36

    const/16 v37, 0x46

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_2

    const/16 v36, 0x3

    aget-byte v36, v27, v36

    const/16 v37, 0x38

    move/from16 v0, v36

    move/from16 v1, v37

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v36, Ljava/io/IOException;

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Incorrect GIF signature "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v38, Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v36
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 351
    .end local v11    # "clearPaint":Landroid/graphics/Paint;
    .end local v24    # "nextDelay":J
    .end local v26    # "s":Ljava/io/DataInputStream;
    .end local v27    # "sig":[B
    .end local v29    # "t":J
    :catch_0
    move-exception v34

    .line 352
    .local v34, "x":Ljava/lang/Exception;
    const-string v36, "vk"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/vkontakte/android/ui/GifView;->access$11(Lcom/vkontakte/android/ui/GifView;Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    goto/16 :goto_1

    .line 208
    .end local v34    # "x":Ljava/lang/Exception;
    .restart local v11    # "clearPaint":Landroid/graphics/Paint;
    .restart local v24    # "nextDelay":J
    .restart local v26    # "s":Ljava/io/DataInputStream;
    .restart local v27    # "sig":[B
    .restart local v29    # "t":J
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/vkontakte/android/ui/GifView;->access$3(Lcom/vkontakte/android/ui/GifView;I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/vkontakte/android/ui/GifView;->access$4(Lcom/vkontakte/android/ui/GifView;I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->access$5(Lcom/vkontakte/android/ui/GifView;)I

    move-result v36

    const/16 v37, 0x2bc

    move/from16 v0, v36

    move/from16 v1, v37

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->access$6(Lcom/vkontakte/android/ui/GifView;)I

    move-result v36

    const/16 v37, 0x2bc

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_5

    .line 211
    :cond_4
    new-instance v36, Ljava/io/IOException;

    const-string v37, "Too big!"

    invoke-direct/range {v36 .. v37}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 213
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    new-instance v37, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;-><init>(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V

    invoke-virtual/range {v36 .. v37}, Lcom/vkontakte/android/ui/GifView;->post(Ljava/lang/Runnable;)Z

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->access$7(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;

    move-result-object v36

    if-nez v36, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/vkontakte/android/ui/GifView;->access$5(Lcom/vkontakte/android/ui/GifView;)I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/vkontakte/android/ui/GifView;->access$6(Lcom/vkontakte/android/ui/GifView;)I

    move-result v38

    sget-object v39, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v37 .. v39}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/vkontakte/android/ui/GifView;->access$8(Lcom/vkontakte/android/ui/GifView;Landroid/graphics/Bitmap;)V

    .line 218
    :cond_6
    new-instance v9, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->access$7(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-direct {v9, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v9, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v15

    .line 220
    .local v15, "flags":I
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .line 221
    .local v6, "bgColor":I
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    .line 222
    const/16 v17, 0x0

    .line 224
    .local v17, "globalPal":[B
    and-int/lit16 v0, v15, 0x80

    move/from16 v36, v0

    if-lez v36, :cond_7

    .line 225
    const/16 v36, 0x1

    and-int/lit8 v37, v15, 0x7

    add-int/lit8 v37, v37, 0x1

    shl-int v28, v36, v37

    .line 227
    .local v28, "size":I
    mul-int/lit8 v36, v28, 0x3

    move/from16 v0, v36

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 228
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 230
    .end local v28    # "size":I
    :cond_7
    const-wide/16 v13, 0x64

    .line 231
    .local v13, "delay":J
    const/16 v32, -0x1

    .line 232
    .local v32, "transpColor":I
    const/4 v10, 0x0

    .line 233
    .local v10, "clearBg":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 234
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->access$0(Lcom/vkontakte/android/ui/GifView;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 235
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v8

    .line 236
    .local v8, "c":I
    const/16 v36, 0x21

    move/from16 v0, v36

    if-ne v8, v0, :cond_f

    .line 237
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v35

    .line 239
    .local v35, "xtype":I
    const/16 v36, 0xf9

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 240
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    .line 241
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v21

    .line 242
    .local v21, "lflags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v36

    mul-int/lit8 v36, v36, 0xa

    move/from16 v0, v36

    int-to-long v13, v0

    .line 243
    const-wide/16 v36, 0x1e

    cmp-long v36, v13, v36

    if-gez v36, :cond_9

    .line 244
    const-wide/16 v13, 0x64

    .line 246
    :cond_9
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v32

    .line 247
    and-int/lit8 v36, v21, 0x1

    if-nez v36, :cond_a

    const/16 v32, -0x1

    .line 248
    :cond_a
    shr-int/lit8 v36, v21, 0x2

    const/16 v37, 0x2

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    const/4 v10, 0x1

    .line 249
    :goto_4
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    goto :goto_3

    .line 248
    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    .line 250
    .end local v21    # "lflags":I
    :cond_c
    const/16 v36, 0xff

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_e

    .line 251
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    .line 252
    const/16 v36, 0x8

    move/from16 v0, v36

    new-array v4, v0, [B

    .line 253
    .local v4, "_appid":[B
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->read([B)I

    .line 254
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 256
    .local v5, "appid":Ljava/lang/String;
    const-wide/16 v36, 0x3

    move-object/from16 v0, v26

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    .line 257
    const-string v36, "NETSCAPE"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 258
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    .line 259
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/vkontakte/android/ui/GifView;->access$9(Lcom/vkontakte/android/ui/GifView;I)V

    .line 261
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    goto/16 :goto_3

    .line 263
    :cond_d
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v19

    .line 264
    .local v19, "l":I
    :goto_5
    if-lez v19, :cond_8

    .line 265
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    .line 266
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v19

    goto :goto_5

    .line 270
    .end local v4    # "_appid":[B
    .end local v5    # "appid":Ljava/lang/String;
    .end local v19    # "l":I
    :cond_e
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v19

    .line 271
    .restart local v19    # "l":I
    :goto_6
    if-lez v19, :cond_8

    .line 272
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    .line 273
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v19

    goto :goto_6

    .line 276
    .end local v19    # "l":I
    .end local v35    # "xtype":I
    :cond_f
    const/16 v36, 0x2c

    move/from16 v0, v36

    if-ne v8, v0, :cond_17

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v20

    .line 279
    .local v20, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v31

    .line 280
    .local v31, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v33

    .line 281
    .local v33, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v18

    .line 283
    .local v18, "height":I
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v21

    .line 284
    .restart local v21    # "lflags":I
    const/16 v22, 0x0

    .line 285
    .local v22, "localPal":[B
    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v36, v0

    if-lez v36, :cond_10

    .line 286
    const/16 v36, 0x1

    and-int/lit8 v37, v21, 0x7

    add-int/lit8 v37, v37, 0x1

    shl-int v28, v36, v37

    .line 287
    .restart local v28    # "size":I
    mul-int/lit8 v36, v28, 0x3

    move/from16 v0, v36

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 289
    const/16 v36, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 291
    .end local v28    # "size":I
    :cond_10
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 292
    .local v7, "buf":Ljava/io/ByteArrayOutputStream;
    const-string v36, "GIF89a"

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->getBytes()[B

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v7, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-static {v0, v7, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 295
    if-eqz v22, :cond_13

    and-int/lit8 v36, v21, 0x7

    :goto_7
    move/from16 v0, v36

    or-int/lit16 v0, v0, 0xf0

    move/from16 v36, v0

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 296
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 297
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 299
    if-eqz v22, :cond_14

    .end local v22    # "localPal":[B
    :goto_8
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 300
    const/16 v36, 0x21

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 301
    const/16 v36, 0xf9

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 302
    const/16 v36, 0x4

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 303
    if-lez v32, :cond_15

    const/16 v36, 0x1

    :goto_9
    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v0, v7, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 305
    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 306
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    const/16 v36, 0x2c

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v0, v7, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-static {v0, v7, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v7, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-static {v0, v7, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 312
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 313
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v23

    .line 314
    .local v23, "mc":I
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v19

    .line 316
    .restart local v19    # "l":I
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 317
    const/16 v36, 0xff

    move/from16 v0, v36

    new-array v12, v0, [B

    .line 318
    .local v12, "db":[B
    :goto_a
    if-gtz v19, :cond_16

    .line 324
    const/16 v36, 0x3b

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 325
    new-instance v16, Lcom/vkontakte/android/ui/GifView$Frame;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/GifView$Frame;-><init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$Frame;)V

    .line 326
    .local v16, "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v38

    invoke-static/range {v36 .. v38}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    .line 327
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->x:I

    .line 328
    move/from16 v0, v31

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->y:I

    .line 329
    move-object/from16 v0, v16

    iput-wide v13, v0, Lcom/vkontakte/android/ui/GifView$Frame;->delay:J

    .line 330
    move-object/from16 v0, v16

    iput-boolean v10, v0, Lcom/vkontakte/android/ui/GifView$Frame;->clear:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 332
    const-wide/16 v36, 0x0

    cmp-long v36, v13, v36

    if-lez v36, :cond_11

    .line 333
    const-wide/16 v36, 0x0

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v29

    sub-long v38, v13, v38

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 335
    :cond_11
    :goto_b
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 338
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->clear:Z

    move/from16 v36, v0

    if-eqz v36, :cond_12

    .line 339
    new-instance v36, Landroid/graphics/Rect;

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v39

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v40

    invoke-direct/range {v36 .. v40}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v36

    invoke-virtual {v9, v0, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 341
    :cond_12
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->x:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->y:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    move-object/from16 v3, v39

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    .line 343
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->delay:J

    move-wide/from16 v24, v0

    .line 344
    goto/16 :goto_3

    .line 295
    .end local v12    # "db":[B
    .end local v16    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .end local v19    # "l":I
    .end local v23    # "mc":I
    .restart local v22    # "localPal":[B
    :cond_13
    and-int/lit8 v36, v15, 0x7

    goto/16 :goto_7

    :cond_14
    move-object/from16 v22, v17

    .line 299
    goto/16 :goto_8

    .line 303
    .end local v22    # "localPal":[B
    :cond_15
    const/16 v36, 0x0

    goto/16 :goto_9

    .line 319
    .restart local v12    # "db":[B
    .restart local v19    # "l":I
    .restart local v23    # "mc":I
    :cond_16
    const/16 v36, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v36

    move/from16 v2, v19

    invoke-virtual {v0, v12, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 320
    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v7, v12, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 321
    invoke-virtual/range {v26 .. v26}, Ljava/io/DataInputStream;->read()I

    move-result v19

    .line 322
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_a

    .line 344
    .end local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "db":[B
    .end local v18    # "height":I
    .end local v19    # "l":I
    .end local v20    # "left":I
    .end local v21    # "lflags":I
    .end local v23    # "mc":I
    .end local v31    # "top":I
    .end local v33    # "width":I
    :cond_17
    const/16 v36, 0x3b

    move/from16 v0, v36

    if-ne v8, v0, :cond_8

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v36

    check-cast v36, Ljava/io/FileInputStream;

    invoke-virtual/range {v36 .. v36}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v36

    const-wide/16 v37, 0x0

    invoke-virtual/range {v36 .. v38}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 356
    .end local v6    # "bgColor":I
    .end local v8    # "c":I
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "clearBg":Z
    .end local v11    # "clearPaint":Landroid/graphics/Paint;
    .end local v13    # "delay":J
    .end local v15    # "flags":I
    .end local v17    # "globalPal":[B
    .end local v24    # "nextDelay":J
    .end local v26    # "s":Ljava/io/DataInputStream;
    .end local v27    # "sig":[B
    .end local v29    # "t":J
    .end local v32    # "transpColor":I
    :catch_1
    move-exception v36

    goto/16 :goto_2

    .line 333
    .restart local v6    # "bgColor":I
    .restart local v7    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "c":I
    .restart local v9    # "canvas":Landroid/graphics/Canvas;
    .restart local v10    # "clearBg":Z
    .restart local v11    # "clearPaint":Landroid/graphics/Paint;
    .restart local v12    # "db":[B
    .restart local v13    # "delay":J
    .restart local v15    # "flags":I
    .restart local v16    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .restart local v17    # "globalPal":[B
    .restart local v18    # "height":I
    .restart local v19    # "l":I
    .restart local v20    # "left":I
    .restart local v21    # "lflags":I
    .restart local v23    # "mc":I
    .restart local v24    # "nextDelay":J
    .restart local v26    # "s":Ljava/io/DataInputStream;
    .restart local v27    # "sig":[B
    .restart local v29    # "t":J
    .restart local v31    # "top":I
    .restart local v32    # "transpColor":I
    .restart local v33    # "width":I
    :catch_2
    move-exception v36

    goto/16 :goto_b
.end method
