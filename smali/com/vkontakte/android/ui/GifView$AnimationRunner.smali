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
    .line 197
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner;-><init>(Lcom/vkontakte/android/ui/GifView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)Lcom/vkontakte/android/ui/GifView;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 44

    .prologue
    .line 200
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->access$0(Lcom/vkontakte/android/ui/GifView;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v39

    if-nez v39, :cond_1

    .line 366
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 374
    :goto_2
    return-void

    .line 201
    :cond_1
    const-wide/16 v27, 0x0

    .local v27, "nextDelay":J
    const-wide/16 v32, 0x0

    .line 202
    .local v32, "t":J
    :try_start_2
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 203
    .local v12, "clearPaint":Landroid/graphics/Paint;
    const/16 v39, -0x1

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 205
    new-instance v29, Ljava/io/DataInputStream;

    new-instance v39, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v41

    invoke-direct/range {v39 .. v41}, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;-><init>(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 206
    .local v29, "s":Ljava/io/DataInputStream;
    const/16 v39, 0x6

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 207
    .local v30, "sig":[B
    invoke-virtual/range {v29 .. v30}, Ljava/io/DataInputStream;->readFully([B)V

    .line 208
    const/16 v39, 0x0

    aget-byte v39, v30, v39

    const/16 v40, 0x47

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    const/16 v39, 0x1

    aget-byte v39, v30, v39

    const/16 v40, 0x49

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    const/16 v39, 0x2

    aget-byte v39, v30, v39

    const/16 v40, 0x46

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    const/16 v39, 0x3

    aget-byte v39, v30, v39

    const/16 v40, 0x38

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "Incorrect GIF signature "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v41, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 361
    .end local v12    # "clearPaint":Landroid/graphics/Paint;
    .end local v27    # "nextDelay":J
    .end local v29    # "s":Ljava/io/DataInputStream;
    .end local v30    # "sig":[B
    .end local v32    # "t":J
    :catch_0
    move-exception v37

    .line 362
    .local v37, "x":Ljava/lang/Exception;
    const-string v39, "vk"

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-static/range {v39 .. v40}, Lcom/vkontakte/android/ui/GifView;->access$11(Lcom/vkontakte/android/ui/GifView;Z)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    goto/16 :goto_1

    .line 209
    .end local v37    # "x":Ljava/lang/Exception;
    .restart local v12    # "clearPaint":Landroid/graphics/Paint;
    .restart local v27    # "nextDelay":J
    .restart local v29    # "s":Ljava/io/DataInputStream;
    .restart local v30    # "sig":[B
    .restart local v32    # "t":J
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v40

    invoke-static/range {v39 .. v40}, Lcom/vkontakte/android/ui/GifView;->access$3(Lcom/vkontakte/android/ui/GifView;I)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v40

    invoke-static/range {v39 .. v40}, Lcom/vkontakte/android/ui/GifView;->access$4(Lcom/vkontakte/android/ui/GifView;I)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->getContext()Landroid/content/Context;

    move-result-object v39

    const-string v40, "activity"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/ActivityManager;

    invoke-virtual/range {v39 .. v39}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v39

    const/16 v40, 0x20

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_5

    const/16 v24, 0x5dc

    .line 212
    .local v24, "lim":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->access$5(Lcom/vkontakte/android/ui/GifView;)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v24

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->access$6(Lcom/vkontakte/android/ui/GifView;)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 213
    :cond_4
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "Too big: "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/vkontakte/android/ui/GifView;->access$5(Lcom/vkontakte/android/ui/GifView;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "x"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/vkontakte/android/ui/GifView;->access$6(Lcom/vkontakte/android/ui/GifView;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 211
    .end local v24    # "lim":I
    :cond_5
    const/16 v24, 0x320

    goto :goto_3

    .line 215
    .restart local v24    # "lim":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    new-instance v40, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;-><init>(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V

    invoke-virtual/range {v39 .. v40}, Lcom/vkontakte/android/ui/GifView;->post(Ljava/lang/Runnable;)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->access$7(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;

    move-result-object v39

    if-nez v39, :cond_7

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/vkontakte/android/ui/GifView;->access$5(Lcom/vkontakte/android/ui/GifView;)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Lcom/vkontakte/android/ui/GifView;->access$6(Lcom/vkontakte/android/ui/GifView;)I

    move-result v41

    sget-object v42, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v40 .. v42}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/vkontakte/android/ui/GifView;->access$8(Lcom/vkontakte/android/ui/GifView;Landroid/graphics/Bitmap;)V

    .line 220
    :cond_7
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->access$7(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    .local v10, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v16

    .line 222
    .local v16, "flags":I
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v7

    .line 223
    .local v7, "bgColorIndex":I
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    .line 224
    const/16 v18, 0x0

    .line 226
    .local v18, "globalPal":[B
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v39, v0

    if-lez v39, :cond_8

    .line 227
    const/16 v39, 0x1

    and-int/lit8 v40, v16, 0x7

    add-int/lit8 v40, v40, 0x1

    shl-int v31, v39, v40

    .line 229
    .local v31, "size":I
    mul-int/lit8 v39, v31, 0x3

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 230
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 232
    .end local v31    # "size":I
    :cond_8
    mul-int/lit8 v39, v7, 0x3

    aget-byte v39, v18, v39

    shl-int/lit8 v39, v39, 0x10

    mul-int/lit8 v40, v7, 0x3

    add-int/lit8 v40, v40, 0x1

    aget-byte v40, v18, v40

    shl-int/lit8 v40, v40, 0x8

    or-int v39, v39, v40

    mul-int/lit8 v40, v7, 0x3

    add-int/lit8 v40, v40, 0x2

    aget-byte v40, v18, v40

    or-int v39, v39, v40

    const/high16 v40, -0x1000000

    or-int v6, v39, v40

    .line 233
    .local v6, "bgColor":I
    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    const-wide/16 v14, 0x64

    .line 235
    .local v14, "delay":J
    const/16 v35, -0x1

    .line 236
    .local v35, "transpColor":I
    const/4 v11, 0x0

    .line 237
    .local v11, "clearBg":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 238
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->access$0(Lcom/vkontakte/android/ui/GifView;)Z

    move-result v39

    if-eqz v39, :cond_0

    .line 239
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 240
    .local v9, "c":I
    const/16 v39, 0x21

    move/from16 v0, v39

    if-ne v9, v0, :cond_10

    .line 241
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v38

    .line 243
    .local v38, "xtype":I
    const/16 v39, 0xf9

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    .line 244
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    .line 245
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v23

    .line 247
    .local v23, "lflags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v39

    mul-int/lit8 v39, v39, 0xa

    move/from16 v0, v39

    int-to-long v14, v0

    .line 248
    const-wide/16 v39, 0x1e

    cmp-long v39, v14, v39

    if-gez v39, :cond_a

    .line 249
    const-wide/16 v14, 0x64

    .line 251
    :cond_a
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v35

    .line 252
    and-int/lit8 v39, v23, 0x1

    if-nez v39, :cond_b

    const/16 v35, -0x1

    .line 253
    :cond_b
    shr-int/lit8 v39, v23, 0x2

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_c

    const/4 v11, 0x1

    .line 255
    :goto_5
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    goto :goto_4

    .line 253
    :cond_c
    const/4 v11, 0x0

    goto :goto_5

    .line 256
    .end local v23    # "lflags":I
    :cond_d
    const/16 v39, 0xff

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_f

    .line 257
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    .line 258
    const/16 v39, 0x8

    move/from16 v0, v39

    new-array v4, v0, [B

    .line 259
    .local v4, "_appid":[B
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/io/DataInputStream;->read([B)I

    .line 260
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 262
    .local v5, "appid":Ljava/lang/String;
    const-wide/16 v39, 0x3

    move-object/from16 v0, v29

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    .line 263
    const-string v39, "NETSCAPE"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_e

    .line 264
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    .line 265
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v40

    invoke-static/range {v39 .. v40}, Lcom/vkontakte/android/ui/GifView;->access$9(Lcom/vkontakte/android/ui/GifView;I)V

    .line 267
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    goto/16 :goto_4

    .line 269
    :cond_e
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v21

    .line 270
    .local v21, "l":I
    :goto_6
    if-lez v21, :cond_9

    .line 271
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v39, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    .line 272
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v21

    goto :goto_6

    .line 276
    .end local v4    # "_appid":[B
    .end local v5    # "appid":Ljava/lang/String;
    .end local v21    # "l":I
    :cond_f
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v21

    .line 277
    .restart local v21    # "l":I
    :goto_7
    if-lez v21, :cond_9

    .line 278
    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v39, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v39

    invoke-virtual {v0, v1, v2}, Ljava/io/DataInputStream;->skip(J)J

    .line 279
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v21

    goto :goto_7

    .line 282
    .end local v21    # "l":I
    .end local v38    # "xtype":I
    :cond_10
    const/16 v39, 0x2c

    move/from16 v0, v39

    if-ne v9, v0, :cond_1a

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v22

    .line 285
    .local v22, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v34

    .line 286
    .local v34, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v36

    .line 287
    .local v36, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v19

    .line 289
    .local v19, "height":I
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v23

    .line 291
    .restart local v23    # "lflags":I
    and-int/lit8 v39, v23, 0x40

    if-lez v39, :cond_14

    const/16 v20, 0x1

    .line 292
    .local v20, "interlaced":Z
    :goto_8
    const/16 v25, 0x0

    .line 293
    .local v25, "localPal":[B
    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x80

    move/from16 v39, v0

    if-lez v39, :cond_11

    .line 294
    const/16 v39, 0x1

    and-int/lit8 v40, v23, 0x7

    add-int/lit8 v40, v40, 0x1

    shl-int v31, v39, v40

    .line 295
    .restart local v31    # "size":I
    mul-int/lit8 v39, v31, 0x3

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 297
    const/16 v39, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 299
    .end local v31    # "size":I
    :cond_11
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 300
    .local v8, "buf":Ljava/io/ByteArrayOutputStream;
    const-string v39, "GIF89a"

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->getBytes()[B

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 303
    if-eqz v25, :cond_15

    and-int/lit8 v39, v23, 0x7

    :goto_9
    move/from16 v0, v39

    or-int/lit16 v0, v0, 0xf0

    move/from16 v39, v0

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 304
    invoke-virtual {v8, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 305
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 307
    if-eqz v25, :cond_16

    .end local v25    # "localPal":[B
    :goto_a
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 308
    const/16 v39, 0x21

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 309
    const/16 v39, 0xf9

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 310
    const/16 v39, 0x4

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 311
    if-ltz v35, :cond_17

    const/16 v39, 0x1

    :goto_b
    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 313
    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 315
    const/16 v39, 0x2c

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 320
    if-eqz v20, :cond_18

    const/16 v39, 0x40

    :goto_c
    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 321
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v26

    .line 322
    .local v26, "mc":I
    move/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v21

    .line 324
    .restart local v21    # "l":I
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 325
    const/16 v39, 0xff

    move/from16 v0, v39

    new-array v13, v0, [B

    .line 326
    .local v13, "db":[B
    :goto_d
    if-gtz v21, :cond_19

    .line 332
    const/16 v39, 0x3b

    move/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    new-instance v17, Lcom/vkontakte/android/ui/GifView$Frame;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/ui/GifView$Frame;-><init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$Frame;)V

    .line 334
    .local v17, "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v39

    const/16 v40, 0x0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v41

    invoke-static/range {v39 .. v41}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    .line 335
    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->x:I

    .line 336
    move/from16 v0, v34

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->y:I

    .line 337
    move-object/from16 v0, v17

    iput-wide v14, v0, Lcom/vkontakte/android/ui/GifView$Frame;->delay:J

    .line 338
    move-object/from16 v0, v17

    iput-boolean v11, v0, Lcom/vkontakte/android/ui/GifView$Frame;->clear:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 340
    const-wide/16 v39, 0x0

    cmp-long v39, v14, v39

    if-lez v39, :cond_12

    .line 341
    const-wide/16 v39, 0x0

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v41

    sub-long v41, v41, v32

    sub-long v41, v14, v41

    invoke-static/range {v39 .. v42}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 343
    :cond_12
    :goto_e
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    .line 346
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->clear:Z

    move/from16 v39, v0

    if-eqz v39, :cond_13

    .line 347
    new-instance v39, Landroid/graphics/Rect;

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getWidth()I

    move-result v42

    invoke-virtual {v10}, Landroid/graphics/Canvas;->getHeight()I

    move-result v43

    invoke-direct/range {v39 .. v43}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v39

    invoke-virtual {v10, v0, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 350
    :cond_13
    :try_start_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->image:Landroid/graphics/Bitmap;

    move-object/from16 v39, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->x:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->y:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 352
    :goto_f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    .line 353
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->delay:J

    move-wide/from16 v27, v0

    .line 354
    goto/16 :goto_4

    .line 291
    .end local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "db":[B
    .end local v17    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .end local v20    # "interlaced":Z
    .end local v21    # "l":I
    .end local v26    # "mc":I
    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 303
    .restart local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v20    # "interlaced":Z
    .restart local v25    # "localPal":[B
    :cond_15
    and-int/lit8 v39, v16, 0x7

    goto/16 :goto_9

    :cond_16
    move-object/from16 v25, v18

    .line 307
    goto/16 :goto_a

    .line 311
    .end local v25    # "localPal":[B
    :cond_17
    const/16 v39, 0x0

    goto/16 :goto_b

    .line 320
    :cond_18
    const/16 v39, 0x0

    goto/16 :goto_c

    .line 327
    .restart local v13    # "db":[B
    .restart local v21    # "l":I
    .restart local v26    # "mc":I
    :cond_19
    const/16 v39, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v39

    move/from16 v2, v21

    invoke-virtual {v0, v13, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 328
    const/16 v39, 0x0

    move/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v8, v13, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 329
    invoke-virtual/range {v29 .. v29}, Ljava/io/DataInputStream;->read()I

    move-result v21

    .line 330
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_d

    .line 354
    .end local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "db":[B
    .end local v19    # "height":I
    .end local v20    # "interlaced":Z
    .end local v21    # "l":I
    .end local v22    # "left":I
    .end local v23    # "lflags":I
    .end local v26    # "mc":I
    .end local v34    # "top":I
    .end local v36    # "width":I
    :cond_1a
    const/16 v39, 0x3b

    move/from16 v0, v39

    if-ne v9, v0, :cond_9

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v39

    check-cast v39, Ljava/io/FileInputStream;

    invoke-virtual/range {v39 .. v39}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v39

    const-wide/16 v40, 0x0

    invoke-virtual/range {v39 .. v41}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 366
    .end local v6    # "bgColor":I
    .end local v7    # "bgColorIndex":I
    .end local v9    # "c":I
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "clearBg":Z
    .end local v12    # "clearPaint":Landroid/graphics/Paint;
    .end local v14    # "delay":J
    .end local v16    # "flags":I
    .end local v18    # "globalPal":[B
    .end local v24    # "lim":I
    .end local v27    # "nextDelay":J
    .end local v29    # "s":Ljava/io/DataInputStream;
    .end local v30    # "sig":[B
    .end local v32    # "t":J
    .end local v35    # "transpColor":I
    :catch_1
    move-exception v39

    goto/16 :goto_2

    .line 351
    .restart local v6    # "bgColor":I
    .restart local v7    # "bgColorIndex":I
    .restart local v8    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "c":I
    .restart local v10    # "canvas":Landroid/graphics/Canvas;
    .restart local v11    # "clearBg":Z
    .restart local v12    # "clearPaint":Landroid/graphics/Paint;
    .restart local v13    # "db":[B
    .restart local v14    # "delay":J
    .restart local v16    # "flags":I
    .restart local v17    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .restart local v18    # "globalPal":[B
    .restart local v19    # "height":I
    .restart local v20    # "interlaced":Z
    .restart local v21    # "l":I
    .restart local v22    # "left":I
    .restart local v23    # "lflags":I
    .restart local v24    # "lim":I
    .restart local v26    # "mc":I
    .restart local v27    # "nextDelay":J
    .restart local v29    # "s":Ljava/io/DataInputStream;
    .restart local v30    # "sig":[B
    .restart local v32    # "t":J
    .restart local v34    # "top":I
    .restart local v35    # "transpColor":I
    .restart local v36    # "width":I
    :catch_2
    move-exception v39

    goto :goto_f

    .line 341
    :catch_3
    move-exception v39

    goto/16 :goto_e
.end method
