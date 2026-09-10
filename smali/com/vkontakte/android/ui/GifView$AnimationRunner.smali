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
    .line 205
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p2, "x1"    # Lcom/vkontakte/android/ui/GifView$1;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner;-><init>(Lcom/vkontakte/android/ui/GifView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 54

    .prologue
    .line 208
    const/16 v3, 0x2b

    :try_start_0
    new-array v0, v3, [B

    move-object/from16 v47, v0

    fill-array-data v47, :array_0

    .line 209
    .local v47, "transpGif":[B
    const/4 v3, 0x0

    move-object/from16 v0, v47

    array-length v5, v0

    move-object/from16 v0, v47

    invoke-static {v0, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v49

    .line 210
    .local v49, "transpTest":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    const/16 v50, 0x1

    .line 211
    .local v50, "useAlphaHack":Z
    :goto_0
    if-eqz v50, :cond_0

    .line 212
    const-string v3, "vk"

    const-string v5, "Enabling gif alpha hack - Google, please fix this ASAP!"

    invoke-static {v3, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$500(Lcom/vkontakte/android/ui/GifView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    const-wide/16 v36, 0x0

    .local v36, "nextDelay":J
    const-wide/16 v43, 0x0

    .line 215
    .local v43, "t":J
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 216
    .local v19, "clearPaint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    new-instance v40, Ljava/io/DataInputStream;

    new-instance v3, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/GifView;->access$600(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;-><init>(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)V

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 219
    .local v40, "s":Ljava/io/DataInputStream;
    const/4 v3, 0x6

    new-array v0, v3, [B

    move-object/from16 v41, v0

    .line 220
    .local v41, "sig":[B
    invoke-virtual/range {v40 .. v41}, Ljava/io/DataInputStream;->readFully([B)V

    .line 221
    const/4 v3, 0x0

    aget-byte v3, v41, v3

    const/16 v5, 0x47

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    aget-byte v3, v41, v3

    const/16 v5, 0x49

    if-ne v3, v5, :cond_1

    const/4 v3, 0x2

    aget-byte v3, v41, v3

    const/16 v5, 0x46

    if-ne v3, v5, :cond_1

    const/4 v3, 0x3

    aget-byte v3, v41, v3

    const/16 v5, 0x38

    if-eq v3, v5, :cond_4

    .line 222
    :cond_1
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->close()V

    .line 223
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect GIF signature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .end local v19    # "clearPaint":Landroid/graphics/Paint;
    .end local v36    # "nextDelay":J
    .end local v40    # "s":Ljava/io/DataInputStream;
    .end local v41    # "sig":[B
    .end local v43    # "t":J
    .end local v47    # "transpGif":[B
    .end local v49    # "transpTest":Landroid/graphics/Bitmap;
    .end local v50    # "useAlphaHack":Z
    :catch_0
    move-exception v52

    .line 403
    .local v52, "x":Ljava/lang/Throwable;
    const-string v3, "vk"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$302(Lcom/vkontakte/android/ui/GifView;Z)Z

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    .line 407
    .end local v52    # "x":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$600(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 415
    :goto_2
    return-void

    .line 210
    .restart local v47    # "transpGif":[B
    .restart local v49    # "transpTest":Landroid/graphics/Bitmap;
    :cond_3
    const/16 v50, 0x0

    goto/16 :goto_0

    .line 225
    .restart local v19    # "clearPaint":Landroid/graphics/Paint;
    .restart local v36    # "nextDelay":J
    .restart local v40    # "s":Ljava/io/DataInputStream;
    .restart local v41    # "sig":[B
    .restart local v43    # "t":J
    .restart local v50    # "useAlphaHack":Z
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Lcom/vkontakte/android/ui/GifView;->access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$702(Lcom/vkontakte/android/ui/GifView;I)I

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Lcom/vkontakte/android/ui/GifView;->access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$902(Lcom/vkontakte/android/ui/GifView;I)I

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/GifView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "activity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    const/16 v5, 0x20

    if-le v3, v5, :cond_6

    const/16 v32, 0x5dc

    .line 228
    .local v32, "lim":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$700(Lcom/vkontakte/android/ui/GifView;)I

    move-result v3

    move/from16 v0, v32

    if-gt v3, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$900(Lcom/vkontakte/android/ui/GifView;)I

    move-result v3

    move/from16 v0, v32

    if-le v3, v0, :cond_7

    .line 229
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too big: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/GifView;->access$700(Lcom/vkontakte/android/ui/GifView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/GifView;->access$900(Lcom/vkontakte/android/ui/GifView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    .end local v32    # "lim":I
    :cond_6
    const/16 v32, 0x320

    goto :goto_3

    .line 231
    .restart local v32    # "lim":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    new-instance v5, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;-><init>(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/GifView;->post(Ljava/lang/Runnable;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$1000(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_8

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/GifView;->access$700(Lcom/vkontakte/android/ui/GifView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/GifView;->access$900(Lcom/vkontakte/android/ui/GifView;)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$1002(Lcom/vkontakte/android/ui/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 237
    :cond_8
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$1000(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 238
    .local v17, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v23

    .line 239
    .local v23, "flags":I
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v14

    .line 240
    .local v14, "bgColorIndex":I
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 241
    const/16 v25, 0x0

    .line 243
    .local v25, "globalPal":[B
    move/from16 v0, v23

    and-int/lit16 v3, v0, 0x80

    if-lez v3, :cond_9

    .line 244
    const/4 v3, 0x1

    and-int/lit8 v5, v23, 0x7

    add-int/lit8 v5, v5, 0x1

    shl-int v42, v3, v5

    .line 246
    .local v42, "size":I
    mul-int/lit8 v3, v42, 0x3

    new-array v0, v3, [B

    move-object/from16 v25, v0

    .line 247
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 249
    .end local v42    # "size":I
    :cond_9
    if-eqz v25, :cond_d

    mul-int/lit8 v3, v14, 0x3

    aget-byte v3, v25, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    mul-int/lit8 v5, v14, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v25, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    const/high16 v5, -0x1000000

    or-int v13, v3, v5

    .line 250
    .local v13, "bgColor":I
    :goto_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    const-wide/16 v21, 0x64

    .line 252
    .local v21, "delay":J
    const/16 v46, -0x1

    .line 253
    .local v46, "transpColor":I
    const/16 v18, 0x0

    .line 254
    .local v18, "clearBg":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    .line 255
    const/16 v35, 0x0

    .line 256
    .local v35, "n":I
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$500(Lcom/vkontakte/android/ui/GifView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v16

    .line 258
    .local v16, "c":I
    const/16 v3, 0x21

    move/from16 v0, v16

    if-ne v0, v3, :cond_12

    .line 259
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v53

    .line 261
    .local v53, "xtype":I
    const/16 v3, 0xf9

    move/from16 v0, v53

    if-ne v0, v3, :cond_f

    .line 262
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 263
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v31

    .line 265
    .local v31, "lflags":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    int-to-long v0, v3

    move-wide/from16 v21, v0

    .line 266
    const-wide/16 v5, 0x1e

    cmp-long v3, v21, v5

    if-gez v3, :cond_b

    .line 267
    const-wide/16 v21, 0x64

    .line 269
    :cond_b
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v46

    .line 270
    and-int/lit8 v3, v31, 0x1

    if-nez v3, :cond_c

    const/16 v46, -0x1

    .line 271
    :cond_c
    shr-int/lit8 v3, v31, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_e

    const/16 v18, 0x1

    .line 273
    :goto_6
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    goto :goto_5

    .line 249
    .end local v13    # "bgColor":I
    .end local v16    # "c":I
    .end local v18    # "clearBg":Z
    .end local v21    # "delay":J
    .end local v31    # "lflags":I
    .end local v35    # "n":I
    .end local v46    # "transpColor":I
    .end local v53    # "xtype":I
    :cond_d
    const/high16 v13, -0x1000000

    goto :goto_4

    .line 271
    .restart local v13    # "bgColor":I
    .restart local v16    # "c":I
    .restart local v18    # "clearBg":Z
    .restart local v21    # "delay":J
    .restart local v31    # "lflags":I
    .restart local v35    # "n":I
    .restart local v46    # "transpColor":I
    .restart local v53    # "xtype":I
    :cond_e
    const/16 v18, 0x0

    goto :goto_6

    .line 274
    .end local v31    # "lflags":I
    :cond_f
    const/16 v3, 0xff

    move/from16 v0, v53

    if-ne v0, v3, :cond_11

    .line 275
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 276
    const/16 v3, 0x8

    new-array v11, v3, [B

    .line 277
    .local v11, "_appid":[B
    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    .line 278
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V

    .line 280
    .local v12, "appid":Ljava/lang/String;
    const-wide/16 v5, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    .line 281
    const-string v3, "NETSCAPE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 282
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 283
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Lcom/vkontakte/android/ui/GifView;->access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$1102(Lcom/vkontakte/android/ui/GifView;I)I

    .line 285
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    goto/16 :goto_5

    .line 287
    :cond_10
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    .line 288
    .local v29, "l":I
    :goto_7
    if-lez v29, :cond_a

    .line 289
    move/from16 v0, v29

    int-to-long v5, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    .line 290
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    goto :goto_7

    .line 294
    .end local v11    # "_appid":[B
    .end local v12    # "appid":Ljava/lang/String;
    .end local v29    # "l":I
    :cond_11
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    .line 295
    .restart local v29    # "l":I
    :goto_8
    if-lez v29, :cond_a

    .line 296
    move/from16 v0, v29

    int-to-long v5, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    .line 297
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    goto :goto_8

    .line 300
    .end local v29    # "l":I
    .end local v53    # "xtype":I
    :cond_12
    const/16 v3, 0x2c

    move/from16 v0, v16

    if-ne v0, v3, :cond_20

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v30

    .line 303
    .local v30, "left":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v45

    .line 304
    .local v45, "top":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v51

    .line 305
    .local v51, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v26

    .line 307
    .local v26, "height":I
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v31

    .line 309
    .restart local v31    # "lflags":I
    and-int/lit8 v3, v31, 0x40

    if-lez v3, :cond_14

    const/16 v28, 0x1

    .line 310
    .local v28, "interlaced":Z
    :goto_9
    const/16 v33, 0x0

    .line 311
    .local v33, "localPal":[B
    move/from16 v0, v31

    and-int/lit16 v3, v0, 0x80

    if-lez v3, :cond_13

    .line 312
    const/4 v3, 0x1

    and-int/lit8 v5, v31, 0x7

    add-int/lit8 v5, v5, 0x1

    shl-int v42, v3, v5

    .line 313
    .restart local v42    # "size":I
    mul-int/lit8 v3, v42, 0x3

    new-array v0, v3, [B

    move-object/from16 v33, v0

    .line 315
    const/4 v3, 0x0

    move-object/from16 v0, v33

    array-length v5, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 317
    .end local v42    # "size":I
    :cond_13
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 318
    .local v15, "buf":Ljava/io/ByteArrayOutputStream;
    const-string v3, "GIF89a"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move/from16 v0, v51

    invoke-static {v3, v15, v0}, Lcom/vkontakte/android/ui/GifView;->access$1200(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move/from16 v0, v26

    invoke-static {v3, v15, v0}, Lcom/vkontakte/android/ui/GifView;->access$1200(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 321
    if-eqz v33, :cond_15

    and-int/lit8 v3, v31, 0x7

    :goto_a
    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 322
    invoke-virtual {v15, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 325
    if-eqz v33, :cond_16

    move-object/from16 v3, v33

    :goto_b
    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 326
    const/16 v3, 0x21

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 327
    const/16 v3, 0xf9

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 328
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 329
    if-ltz v46, :cond_17

    const/4 v3, 0x1

    :goto_c
    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x0

    invoke-static {v3, v15, v5}, Lcom/vkontakte/android/ui/GifView;->access$1200(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 331
    move/from16 v0, v46

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 332
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    const/16 v3, 0x2c

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x0

    invoke-static {v3, v15, v5}, Lcom/vkontakte/android/ui/GifView;->access$1200(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x0

    invoke-static {v3, v15, v5}, Lcom/vkontakte/android/ui/GifView;->access$1200(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move/from16 v0, v51

    invoke-static {v3, v15, v0}, Lcom/vkontakte/android/ui/GifView;->access$1200(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move/from16 v0, v26

    invoke-static {v3, v15, v0}, Lcom/vkontakte/android/ui/GifView;->access$1200(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 338
    if-eqz v28, :cond_18

    const/16 v3, 0x40

    :goto_d
    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 339
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v34

    .line 340
    .local v34, "mc":I
    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 341
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    .line 342
    .restart local v29    # "l":I
    move/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 343
    const/16 v3, 0xff

    new-array v0, v3, [B

    move-object/from16 v20, v0

    .line 344
    .local v20, "db":[B
    :goto_e
    if-lez v29, :cond_19

    .line 345
    const/4 v3, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 346
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v15, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 347
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    .line 348
    move/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_e

    .line 309
    .end local v15    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "db":[B
    .end local v28    # "interlaced":Z
    .end local v29    # "l":I
    .end local v33    # "localPal":[B
    .end local v34    # "mc":I
    :cond_14
    const/16 v28, 0x0

    goto/16 :goto_9

    .line 321
    .restart local v15    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v28    # "interlaced":Z
    .restart local v33    # "localPal":[B
    :cond_15
    and-int/lit8 v3, v23, 0x7

    goto/16 :goto_a

    :cond_16
    move-object/from16 v3, v25

    .line 325
    goto/16 :goto_b

    .line 329
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 338
    :cond_18
    const/4 v3, 0x0

    goto :goto_d

    .line 350
    .restart local v20    # "db":[B
    .restart local v29    # "l":I
    .restart local v34    # "mc":I
    :cond_19
    const/16 v3, 0x3b

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 351
    new-instance v38, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 352
    .local v38, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v38

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 353
    new-instance v24, Lcom/vkontakte/android/ui/GifView$Frame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v5}, Lcom/vkontakte/android/ui/GifView$Frame;-><init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$1;)V

    .line 354
    .local v24, "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    move-object/from16 v0, v38

    invoke-static {v3, v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    .line 355
    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->x:I

    .line 356
    move/from16 v0, v45

    move-object/from16 v1, v24

    iput v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->y:I

    .line 357
    move-wide/from16 v0, v21

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/vkontakte/android/ui/GifView$Frame;->delay:J

    .line 358
    move/from16 v0, v18

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->clear:Z

    .line 360
    if-eqz v50, :cond_1d

    if-ltz v46, :cond_1d

    if-nez v18, :cond_1d

    .line 361
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v3, v5

    new-array v4, v3, [I

    .line 362
    .local v4, "pixels":[I
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v24

    iget-object v9, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 363
    if-nez v33, :cond_1b

    move-object/from16 v39, v25

    .line 364
    .local v39, "pal":[B
    :goto_f
    const/16 v48, 0x0

    .line 365
    .local v48, "transpRGB":I
    move-object/from16 v0, v39

    array-length v3, v0

    div-int/lit8 v3, v3, 0x3

    move/from16 v0, v46

    if-ge v0, v3, :cond_1d

    .line 366
    mul-int/lit8 v3, v46, 0x3

    aget-byte v3, v39, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    mul-int/lit8 v5, v46, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v39, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    mul-int/lit8 v5, v46, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v39, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    const/high16 v5, -0x1000000

    or-int v48, v3, v5

    .line 367
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_10
    array-length v3, v4

    move/from16 v0, v27

    if-ge v0, v3, :cond_1c

    .line 368
    aget v3, v4, v27

    move/from16 v0, v48

    if-ne v3, v0, :cond_1a

    .line 369
    const/4 v3, 0x0

    aput v3, v4, v27

    .line 367
    :cond_1a
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    .end local v27    # "i":I
    .end local v39    # "pal":[B
    .end local v48    # "transpRGB":I
    :cond_1b
    move-object/from16 v39, v33

    .line 363
    goto :goto_f

    .line 372
    .restart local v27    # "i":I
    .restart local v39    # "pal":[B
    .restart local v48    # "transpRGB":I
    :cond_1c
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 377
    .end local v4    # "pixels":[I
    .end local v27    # "i":I
    .end local v39    # "pal":[B
    .end local v48    # "transpRGB":I
    :cond_1d
    const-wide/16 v5, 0x0

    cmp-long v3, v21, v5

    if-lez v3, :cond_1e

    .line 378
    const-wide/16 v5, 0x0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v43

    sub-long v7, v21, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 380
    :cond_1e
    :goto_11
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    .line 383
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/vkontakte/android/ui/GifView$Frame;->clear:Z

    if-eqz v3, :cond_1f

    .line 384
    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 389
    :cond_1f
    :try_start_5
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    move-object/from16 v0, v24

    iget v5, v0, Lcom/vkontakte/android/ui/GifView$Frame;->x:I

    int-to-float v5, v5

    move-object/from16 v0, v24

    iget v6, v0, Lcom/vkontakte/android/ui/GifView$Frame;->y:I

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 391
    :goto_12
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    .line 392
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->delay:J

    move-wide/from16 v36, v0

    .line 393
    add-int/lit8 v35, v35, 0x1

    .line 394
    goto/16 :goto_5

    .end local v15    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "db":[B
    .end local v24    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .end local v26    # "height":I
    .end local v28    # "interlaced":Z
    .end local v29    # "l":I
    .end local v30    # "left":I
    .end local v31    # "lflags":I
    .end local v33    # "localPal":[B
    .end local v34    # "mc":I
    .end local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v45    # "top":I
    .end local v51    # "width":I
    :cond_20
    const/16 v3, 0x3b

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 396
    const/16 v35, 0x0

    .line 397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$600(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 407
    .end local v13    # "bgColor":I
    .end local v14    # "bgColorIndex":I
    .end local v16    # "c":I
    .end local v17    # "canvas":Landroid/graphics/Canvas;
    .end local v18    # "clearBg":Z
    .end local v19    # "clearPaint":Landroid/graphics/Paint;
    .end local v21    # "delay":J
    .end local v23    # "flags":I
    .end local v25    # "globalPal":[B
    .end local v32    # "lim":I
    .end local v35    # "n":I
    .end local v36    # "nextDelay":J
    .end local v40    # "s":Ljava/io/DataInputStream;
    .end local v41    # "sig":[B
    .end local v43    # "t":J
    .end local v46    # "transpColor":I
    .end local v47    # "transpGif":[B
    .end local v49    # "transpTest":Landroid/graphics/Bitmap;
    .end local v50    # "useAlphaHack":Z
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 390
    .restart local v13    # "bgColor":I
    .restart local v14    # "bgColorIndex":I
    .restart local v15    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v16    # "c":I
    .restart local v17    # "canvas":Landroid/graphics/Canvas;
    .restart local v18    # "clearBg":Z
    .restart local v19    # "clearPaint":Landroid/graphics/Paint;
    .restart local v20    # "db":[B
    .restart local v21    # "delay":J
    .restart local v23    # "flags":I
    .restart local v24    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .restart local v25    # "globalPal":[B
    .restart local v26    # "height":I
    .restart local v28    # "interlaced":Z
    .restart local v29    # "l":I
    .restart local v30    # "left":I
    .restart local v31    # "lflags":I
    .restart local v32    # "lim":I
    .restart local v33    # "localPal":[B
    .restart local v34    # "mc":I
    .restart local v35    # "n":I
    .restart local v36    # "nextDelay":J
    .restart local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    .restart local v40    # "s":Ljava/io/DataInputStream;
    .restart local v41    # "sig":[B
    .restart local v43    # "t":J
    .restart local v45    # "top":I
    .restart local v46    # "transpColor":I
    .restart local v47    # "transpGif":[B
    .restart local v49    # "transpTest":Landroid/graphics/Bitmap;
    .restart local v50    # "useAlphaHack":Z
    .restart local v51    # "width":I
    :catch_2
    move-exception v3

    goto :goto_12

    .line 378
    :catch_3
    move-exception v3

    goto :goto_11

    .line 208
    nop

    :array_0
    .array-data 1
        0x47t
        0x49t
        0x46t
        0x38t
        0x39t
        0x61t
        0x1t
        0x0t
        0x1t
        0x0t
        -0x80t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x21t
        -0x7t
        0x4t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x2t
        0x44t
        0x1t
        0x0t
        0x3bt
    .end array-data
.end method
