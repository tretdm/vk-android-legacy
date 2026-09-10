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
    .line 206
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner;-><init>(Lcom/vkontakte/android/ui/GifView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)Lcom/vkontakte/android/ui/GifView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 54

    .prologue
    .line 209
    const/16 v3, 0x2b

    :try_start_0
    new-array v0, v3, [B

    move-object/from16 v47, v0

    const/4 v3, 0x0

    const/16 v5, 0x47

    aput-byte v5, v47, v3

    const/4 v3, 0x1

    const/16 v5, 0x49

    aput-byte v5, v47, v3

    const/4 v3, 0x2

    const/16 v5, 0x46

    aput-byte v5, v47, v3

    const/4 v3, 0x3

    const/16 v5, 0x38

    aput-byte v5, v47, v3

    const/4 v3, 0x4

    const/16 v5, 0x39

    aput-byte v5, v47, v3

    const/4 v3, 0x5

    const/16 v5, 0x61

    aput-byte v5, v47, v3

    const/4 v3, 0x6

    const/4 v5, 0x1

    aput-byte v5, v47, v3

    const/16 v3, 0x8

    const/4 v5, 0x1

    aput-byte v5, v47, v3

    const/16 v3, 0xa

    const/16 v5, -0x80

    aput-byte v5, v47, v3

    const/16 v3, 0xd

    const/4 v5, -0x1

    aput-byte v5, v47, v3

    const/16 v3, 0xe

    const/4 v5, -0x1

    aput-byte v5, v47, v3

    const/16 v3, 0xf

    const/4 v5, -0x1

    aput-byte v5, v47, v3

    const/16 v3, 0x13

    const/16 v5, 0x21

    aput-byte v5, v47, v3

    const/16 v3, 0x14

    const/4 v5, -0x7

    aput-byte v5, v47, v3

    const/16 v3, 0x15

    const/4 v5, 0x4

    aput-byte v5, v47, v3

    const/16 v3, 0x16

    const/4 v5, 0x1

    aput-byte v5, v47, v3

    const/16 v3, 0x1b

    const/16 v5, 0x2c

    aput-byte v5, v47, v3

    const/16 v3, 0x20

    const/4 v5, 0x1

    aput-byte v5, v47, v3

    const/16 v3, 0x22

    const/4 v5, 0x1

    aput-byte v5, v47, v3

    const/16 v3, 0x25

    const/4 v5, 0x2

    aput-byte v5, v47, v3

    const/16 v3, 0x26

    const/4 v5, 0x2

    aput-byte v5, v47, v3

    const/16 v3, 0x27

    const/16 v5, 0x44

    aput-byte v5, v47, v3

    const/16 v3, 0x28

    const/4 v5, 0x1

    aput-byte v5, v47, v3

    const/16 v3, 0x2a

    const/16 v5, 0x3b

    aput-byte v5, v47, v3

    .line 210
    .local v47, "transpGif":[B
    const/4 v3, 0x0

    move-object/from16 v0, v47

    array-length v5, v0

    move-object/from16 v0, v47

    invoke-static {v0, v3, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v49

    .line 211
    .local v49, "transpTest":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    const/16 v50, 0x1

    .line 212
    .local v50, "useAlphaHack":Z
    :goto_0
    if-eqz v50, :cond_0

    .line 213
    const-string v3, "vk"

    const-string v5, "Enabling gif alpha hack - Google, please fix this ASAP!"

    invoke-static {v3, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$0(Lcom/vkontakte/android/ui/GifView;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    .line 408
    .end local v47    # "transpGif":[B
    .end local v49    # "transpTest":Landroid/graphics/Bitmap;
    .end local v50    # "useAlphaHack":Z
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :goto_3
    return-void

    .line 211
    .restart local v47    # "transpGif":[B
    .restart local v49    # "transpTest":Landroid/graphics/Bitmap;
    :cond_1
    const/16 v50, 0x0

    goto :goto_0

    .line 215
    .restart local v50    # "useAlphaHack":Z
    :cond_2
    const-wide/16 v36, 0x0

    .local v36, "nextDelay":J
    const-wide/16 v43, 0x0

    .line 216
    .local v43, "t":J
    :try_start_2
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 217
    .local v19, "clearPaint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    new-instance v40, Ljava/io/DataInputStream;

    new-instance v3, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/vkontakte/android/ui/GifView$SyncedInputStream;-><init>(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)V

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    .local v40, "s":Ljava/io/DataInputStream;
    const/4 v3, 0x6

    new-array v0, v3, [B

    move-object/from16 v41, v0

    .line 221
    .local v41, "sig":[B
    invoke-virtual/range {v40 .. v41}, Ljava/io/DataInputStream;->readFully([B)V

    .line 222
    const/4 v3, 0x0

    aget-byte v3, v41, v3

    const/16 v5, 0x47

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    aget-byte v3, v41, v3

    const/16 v5, 0x49

    if-ne v3, v5, :cond_3

    const/4 v3, 0x2

    aget-byte v3, v41, v3

    const/16 v5, 0x46

    if-ne v3, v5, :cond_3

    const/4 v3, 0x3

    aget-byte v3, v41, v3

    const/16 v5, 0x38

    if-eq v3, v5, :cond_4

    .line 223
    :cond_3
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->close()V

    .line 224
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incorrect GIF signature "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 403
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

    .line 404
    .local v52, "x":Ljava/lang/Throwable;
    const-string v3, "vk"

    move-object/from16 v0, v52

    invoke-static {v3, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$11(Lcom/vkontakte/android/ui/GifView;Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    goto/16 :goto_2

    .line 226
    .end local v52    # "x":Ljava/lang/Throwable;
    .restart local v19    # "clearPaint":Landroid/graphics/Paint;
    .restart local v36    # "nextDelay":J
    .restart local v40    # "s":Ljava/io/DataInputStream;
    .restart local v41    # "sig":[B
    .restart local v43    # "t":J
    .restart local v47    # "transpGif":[B
    .restart local v49    # "transpTest":Landroid/graphics/Bitmap;
    .restart local v50    # "useAlphaHack":Z
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$3(Lcom/vkontakte/android/ui/GifView;I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$4(Lcom/vkontakte/android/ui/GifView;I)V

    .line 228
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

    .line 229
    .local v32, "lim":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$5(Lcom/vkontakte/android/ui/GifView;)I

    move-result v3

    move/from16 v0, v32

    if-gt v3, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$6(Lcom/vkontakte/android/ui/GifView;)I

    move-result v3

    move/from16 v0, v32

    if-le v3, v0, :cond_7

    .line 230
    :cond_5
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Too big: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/GifView;->access$5(Lcom/vkontakte/android/ui/GifView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/GifView;->access$6(Lcom/vkontakte/android/ui/GifView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    .end local v32    # "lim":I
    :cond_6
    const/16 v32, 0x320

    goto :goto_4

    .line 232
    .restart local v32    # "lim":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    new-instance v5, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/vkontakte/android/ui/GifView$AnimationRunner$1;-><init>(Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/ui/GifView;->post(Ljava/lang/Runnable;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$7(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_8

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v5}, Lcom/vkontakte/android/ui/GifView;->access$5(Lcom/vkontakte/android/ui/GifView;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v6}, Lcom/vkontakte/android/ui/GifView;->access$6(Lcom/vkontakte/android/ui/GifView;)I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$8(Lcom/vkontakte/android/ui/GifView;Landroid/graphics/Bitmap;)V

    .line 238
    :cond_8
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$7(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    .local v17, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v23

    .line 240
    .local v23, "flags":I
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v14

    .line 241
    .local v14, "bgColorIndex":I
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 242
    const/16 v25, 0x0

    .line 244
    .local v25, "globalPal":[B
    move/from16 v0, v23

    and-int/lit16 v3, v0, 0x80

    if-lez v3, :cond_9

    .line 245
    const/4 v3, 0x1

    and-int/lit8 v5, v23, 0x7

    add-int/lit8 v5, v5, 0x1

    shl-int v42, v3, v5

    .line 247
    .local v42, "size":I
    mul-int/lit8 v3, v42, 0x3

    new-array v0, v3, [B

    move-object/from16 v25, v0

    .line 248
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 250
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

    .line 251
    .local v13, "bgColor":I
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    const-wide/16 v21, 0x64

    .line 253
    .local v21, "delay":J
    const/16 v46, -0x1

    .line 254
    .local v46, "transpColor":I
    const/16 v18, 0x0

    .line 255
    .local v18, "clearBg":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    .line 256
    const/16 v35, 0x0

    .line 257
    .local v35, "n":I
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$0(Lcom/vkontakte/android/ui/GifView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v16

    .line 259
    .local v16, "c":I
    const/16 v3, 0x21

    move/from16 v0, v16

    if-ne v0, v3, :cond_12

    .line 260
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v53

    .line 262
    .local v53, "xtype":I
    const/16 v3, 0xf9

    move/from16 v0, v53

    if-ne v0, v3, :cond_f

    .line 263
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 264
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v31

    .line 266
    .local v31, "lflags":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    int-to-long v0, v3

    move-wide/from16 v21, v0

    .line 267
    const-wide/16 v5, 0x1e

    cmp-long v3, v21, v5

    if-gez v3, :cond_b

    .line 268
    const-wide/16 v21, 0x64

    .line 270
    :cond_b
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v46

    .line 271
    and-int/lit8 v3, v31, 0x1

    if-nez v3, :cond_c

    const/16 v46, -0x1

    .line 272
    :cond_c
    shr-int/lit8 v3, v31, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_e

    const/16 v18, 0x1

    .line 274
    :goto_7
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    goto :goto_6

    .line 250
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

    goto :goto_5

    .line 272
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

    goto :goto_7

    .line 275
    .end local v31    # "lflags":I
    :cond_f
    const/16 v3, 0xff

    move/from16 v0, v53

    if-ne v0, v3, :cond_11

    .line 276
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 277
    const/16 v3, 0x8

    new-array v11, v3, [B

    .line 278
    .local v11, "_appid":[B
    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    .line 279
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v11}, Ljava/lang/String;-><init>([B)V

    .line 281
    .local v12, "appid":Ljava/lang/String;
    const-wide/16 v5, 0x3

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    .line 282
    const-string v3, "NETSCAPE"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 283
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 284
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v5, v0}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/vkontakte/android/ui/GifView;->access$9(Lcom/vkontakte/android/ui/GifView;I)V

    .line 286
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    goto/16 :goto_6

    .line 288
    :cond_10
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    .line 289
    .local v29, "l":I
    :goto_8
    if-lez v29, :cond_a

    .line 290
    move/from16 v0, v29

    int-to-long v5, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    .line 291
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    goto :goto_8

    .line 295
    .end local v11    # "_appid":[B
    .end local v12    # "appid":Ljava/lang/String;
    .end local v29    # "l":I
    :cond_11
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    .line 296
    .restart local v29    # "l":I
    :goto_9
    if-lez v29, :cond_a

    .line 297
    move/from16 v0, v29

    int-to-long v5, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/io/DataInputStream;->skip(J)J

    .line 298
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    goto :goto_9

    .line 301
    .end local v29    # "l":I
    .end local v53    # "xtype":I
    :cond_12
    const/16 v3, 0x2c

    move/from16 v0, v16

    if-ne v0, v3, :cond_20

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v30

    .line 304
    .local v30, "left":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v45

    .line 305
    .local v45, "top":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v51

    .line 306
    .local v51, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move-object/from16 v0, v40

    invoke-static {v3, v0}, Lcom/vkontakte/android/ui/GifView;->access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I

    move-result v26

    .line 308
    .local v26, "height":I
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v31

    .line 310
    .restart local v31    # "lflags":I
    and-int/lit8 v3, v31, 0x40

    if-lez v3, :cond_17

    const/16 v28, 0x1

    .line 311
    .local v28, "interlaced":Z
    :goto_a
    const/16 v33, 0x0

    .line 312
    .local v33, "localPal":[B
    move/from16 v0, v31

    and-int/lit16 v3, v0, 0x80

    if-lez v3, :cond_13

    .line 313
    const/4 v3, 0x1

    and-int/lit8 v5, v31, 0x7

    add-int/lit8 v5, v5, 0x1

    shl-int v42, v3, v5

    .line 314
    .restart local v42    # "size":I
    mul-int/lit8 v3, v42, 0x3

    new-array v0, v3, [B

    move-object/from16 v33, v0

    .line 316
    const/4 v3, 0x0

    move-object/from16 v0, v33

    array-length v5, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3, v5}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 318
    .end local v42    # "size":I
    :cond_13
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 319
    .local v15, "buf":Ljava/io/ByteArrayOutputStream;
    const-string v3, "GIF89a"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move/from16 v0, v51

    invoke-static {v3, v15, v0}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move/from16 v0, v26

    invoke-static {v3, v15, v0}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 322
    if-eqz v33, :cond_18

    and-int/lit8 v3, v31, 0x7

    :goto_b
    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 323
    invoke-virtual {v15, v14}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 324
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 326
    if-eqz v33, :cond_19

    move-object/from16 v3, v33

    :goto_c
    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 327
    const/16 v3, 0x21

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 328
    const/16 v3, 0xf9

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 329
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    if-ltz v46, :cond_1a

    const/4 v3, 0x1

    :goto_d
    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x0

    invoke-static {v3, v15, v5}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 332
    move/from16 v0, v46

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 333
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    const/16 v3, 0x2c

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x0

    invoke-static {v3, v15, v5}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x0

    invoke-static {v3, v15, v5}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move/from16 v0, v51

    invoke-static {v3, v15, v0}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    move/from16 v0, v26

    invoke-static {v3, v15, v0}, Lcom/vkontakte/android/ui/GifView;->access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V

    .line 339
    if-eqz v28, :cond_1b

    const/16 v3, 0x40

    :goto_e
    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 340
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v34

    .line 341
    .local v34, "mc":I
    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 342
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    .line 343
    .restart local v29    # "l":I
    move/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 344
    const/16 v3, 0xff

    new-array v0, v3, [B

    move-object/from16 v20, v0

    .line 345
    .local v20, "db":[B
    :goto_f
    if-gtz v29, :cond_1c

    .line 351
    const/16 v3, 0x3b

    invoke-virtual {v15, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 352
    new-instance v38, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 353
    .local v38, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v38

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 354
    new-instance v24, Lcom/vkontakte/android/ui/GifView$Frame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v3, v5}, Lcom/vkontakte/android/ui/GifView$Frame;-><init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$Frame;)V

    .line 355
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

    .line 356
    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->x:I

    .line 357
    move/from16 v0, v45

    move-object/from16 v1, v24

    iput v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->y:I

    .line 358
    move-wide/from16 v0, v21

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/vkontakte/android/ui/GifView$Frame;->delay:J

    .line 359
    move/from16 v0, v18

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/vkontakte/android/ui/GifView$Frame;->clear:Z

    .line 361
    if-eqz v50, :cond_14

    if-ltz v46, :cond_14

    if-nez v18, :cond_14

    .line 362
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

    .line 363
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

    .line 364
    if-nez v33, :cond_1d

    move-object/from16 v39, v25

    .line 365
    .local v39, "pal":[B
    :goto_10
    const/16 v48, 0x0

    .line 366
    .local v48, "transpRGB":I
    move-object/from16 v0, v39

    array-length v3, v0

    div-int/lit8 v3, v3, 0x3

    move/from16 v0, v46

    if-ge v0, v3, :cond_14

    .line 367
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

    .line 368
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_11
    array-length v3, v4

    move/from16 v0, v27

    if-lt v0, v3, :cond_1e

    .line 373
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
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 378
    .end local v4    # "pixels":[I
    .end local v27    # "i":I
    .end local v39    # "pal":[B
    .end local v48    # "transpRGB":I
    :cond_14
    const-wide/16 v5, 0x0

    cmp-long v3, v21, v5

    if-lez v3, :cond_15

    .line 379
    const-wide/16 v5, 0x0

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v7, v7, v43

    sub-long v7, v21, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 381
    :cond_15
    :goto_12
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    .line 384
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/vkontakte/android/ui/GifView$Frame;->clear:Z

    if-eqz v3, :cond_16

    .line 385
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
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 390
    :cond_16
    :try_start_6
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
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 392
    :goto_13
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-virtual {v3}, Lcom/vkontakte/android/ui/GifView;->postInvalidate()V

    .line 393
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/vkontakte/android/ui/GifView$Frame;->delay:J

    move-wide/from16 v36, v0

    .line 394
    add-int/lit8 v35, v35, 0x1

    .line 395
    goto/16 :goto_6

    .line 310
    .end local v15    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "db":[B
    .end local v24    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .end local v28    # "interlaced":Z
    .end local v29    # "l":I
    .end local v33    # "localPal":[B
    .end local v34    # "mc":I
    .end local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_17
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 322
    .restart local v15    # "buf":Ljava/io/ByteArrayOutputStream;
    .restart local v28    # "interlaced":Z
    .restart local v33    # "localPal":[B
    :cond_18
    and-int/lit8 v3, v23, 0x7

    goto/16 :goto_b

    :cond_19
    move-object/from16 v3, v25

    .line 326
    goto/16 :goto_c

    .line 330
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_d

    .line 339
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_e

    .line 346
    .restart local v20    # "db":[B
    .restart local v29    # "l":I
    .restart local v34    # "mc":I
    :cond_1c
    const/4 v3, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 347
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v15, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 348
    invoke-virtual/range {v40 .. v40}, Ljava/io/DataInputStream;->read()I

    move-result v29

    .line 349
    move/from16 v0, v29

    invoke-virtual {v15, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_f

    .restart local v4    # "pixels":[I
    .restart local v24    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .restart local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1d
    move-object/from16 v39, v33

    .line 364
    goto/16 :goto_10

    .line 369
    .restart local v27    # "i":I
    .restart local v39    # "pal":[B
    .restart local v48    # "transpRGB":I
    :cond_1e
    aget v3, v4, v27

    move/from16 v0, v48

    if-ne v3, v0, :cond_1f

    .line 370
    const/4 v3, 0x0

    aput v3, v4, v27

    .line 368
    :cond_1f
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_11

    .line 395
    .end local v4    # "pixels":[I
    .end local v15    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v20    # "db":[B
    .end local v24    # "frame":Lcom/vkontakte/android/ui/GifView$Frame;
    .end local v26    # "height":I
    .end local v27    # "i":I
    .end local v28    # "interlaced":Z
    .end local v29    # "l":I
    .end local v30    # "left":I
    .end local v31    # "lflags":I
    .end local v33    # "localPal":[B
    .end local v34    # "mc":I
    .end local v38    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v39    # "pal":[B
    .end local v45    # "top":I
    .end local v48    # "transpRGB":I
    .end local v51    # "width":I
    :cond_20
    const/16 v3, 0x3b

    move/from16 v0, v16

    if-ne v0, v3, :cond_a

    .line 397
    const/16 v35, 0x0

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;->this$0:Lcom/vkontakte/android/ui/GifView;

    invoke-static {v3}, Lcom/vkontakte/android/ui/GifView;->access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 408
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

    goto/16 :goto_3

    .line 391
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

    goto :goto_13

    .line 379
    :catch_3
    move-exception v3

    goto/16 :goto_12
.end method
