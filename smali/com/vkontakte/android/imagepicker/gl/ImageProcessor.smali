.class public Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# static fields
.field public static final Filters:[[Ljava/lang/String;

.field private static final LoggingTag:Ljava/lang/String; = "imagepicker_processor"

.field private static final TEXT_OFFSET_RATIO:F = 0.065f

.field private static final TEXT_RATIO:F = 0.068f

.field private static final TEXT_ROW_RATIO:F = 0.009f

.field private static final TEXT_WIDTH_RATIO:F = 0.95f

.field private static instance:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

.field private static text_paint2:Landroid/graphics/Paint;

.field private static text_paint_inited:Z


# instance fields
.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private queue:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 29
    const/16 v0, 0x13

    new-array v0, v0, [[Ljava/lang/String;

    .line 30
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Normal"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 31
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "Pro"

    aput-object v2, v1, v5

    const-string v2, "filter_blackboard.jpg"

    aput-object v2, v1, v6

    const-string v2, "pro_overlaymap.png"

    aput-object v2, v1, v7

    const-string v2, "pro_map.png"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    .line 32
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "Horus"

    aput-object v2, v1, v5

    const-string v2, "filter_blackboard.jpg"

    aput-object v2, v1, v6

    const-string v2, "horus_overlaymap.png"

    aput-object v2, v1, v7

    const-string v2, "horus_map.png"

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    .line 33
    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "Latona"

    aput-object v2, v1, v5

    const-string v2, "latona_map.png"

    aput-object v2, v1, v6

    const-string v2, "latona_softlight.png"

    aput-object v2, v1, v7

    const-string v2, "latona_curves.png"

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    .line 34
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Aurora"

    aput-object v2, v1, v5

    const-string v2, "aurora_curves.png"

    aput-object v2, v1, v6

    const-string v2, "aurora_overlaymap.png"

    aput-object v2, v1, v7

    const-string v2, "aurora_vignettemap.png"

    aput-object v2, v1, v8

    const-string v2, "aurora_blowout.png"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "aurora_map.png"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    .line 35
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Liber"

    aput-object v3, v2, v5

    const-string v3, "liber_map.png"

    aput-object v3, v2, v6

    const-string v3, "liber_vignettemap.png"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 36
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Zaria"

    aput-object v3, v2, v5

    const-string v3, "zaria_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 37
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Vesta"

    aput-object v3, v2, v5

    const-string v3, "vesta_overlay.png"

    aput-object v3, v2, v6

    const-string v3, "vesta_softlight.png"

    aput-object v3, v2, v7

    const-string v3, "vesta_curves.png"

    aput-object v3, v2, v8

    const-string v3, "vesta_overlaymapwarm.png"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "vesta_colorshift.png"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 38
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Fortuna"

    aput-object v3, v2, v5

    const-string v3, "fortuna_map.png"

    aput-object v3, v2, v6

    const-string v3, "fortuna_gradientmap.png"

    aput-object v3, v2, v7

    const-string v3, "fortuna_softlight.png"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 39
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Nox"

    aput-object v3, v2, v5

    const-string v3, "nox_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 40
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Veles"

    aput-object v3, v2, v5

    const-string v3, "veles_background.jpg"

    aput-object v3, v2, v6

    const-string v3, "veles_overlay.png"

    aput-object v3, v2, v7

    const-string v3, "veles_map.png"

    aput-object v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 41
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Minerva"

    aput-object v3, v2, v5

    const-string v3, "minerva_map.png"

    aput-object v3, v2, v6

    const-string v3, "minerva_gradientmap.png"

    aput-object v3, v2, v7

    const-string v3, "minerva_softlight.png"

    aput-object v3, v2, v8

    const-string v3, "filter_metal.jpg"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 42
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Luna"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 43
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Iris"

    aput-object v3, v2, v5

    const-string v3, "iris_edgeburn.jpg"

    aput-object v3, v2, v6

    const-string v3, "iris_gradientmap.png"

    aput-object v3, v2, v7

    const-string v3, "iris_softlight.png"

    aput-object v3, v2, v8

    const-string v3, "filter_metal.jpg"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 44
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Terra"

    aput-object v3, v2, v5

    const-string v3, "terra_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 45
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Genius"

    aput-object v3, v2, v5

    const-string v3, "genius_map.png"

    aput-object v3, v2, v6

    const-string v3, "genius_metal.jpg"

    aput-object v3, v2, v7

    const-string v3, "genius_softlight.png"

    aput-object v3, v2, v8

    const-string v3, "genius_curves.png"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 46
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Vesper"

    aput-object v3, v2, v5

    const-string v3, "vesper_map.png"

    aput-object v3, v2, v6

    const-string v3, "vesper_vignettemap.png"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 47
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Mitra"

    aput-object v3, v2, v5

    const-string v3, "filter_blackboard.jpg"

    aput-object v3, v2, v6

    const-string v3, "mitra_overlaymap.png"

    aput-object v3, v2, v7

    const-string v3, "mitra_map.png"

    aput-object v3, v2, v8

    const-string v3, "mitra_bigmap.png"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 48
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Diana"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 28
    sput-object v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    .line 320
    sput-boolean v5, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint_inited:Z

    .line 360
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    const-string v1, "RendererQueue"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->queue:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->queue:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->start()V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private drawLobsterParts(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/imagepicker/entries/StyleEntry;)V
    .locals 19
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "left"    # I
    .param p7, "right"    # I
    .param p8, "style"    # Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .prologue
    .line 366
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3d8b4396    # 0.068f

    mul-float v9, v14, v15

    .line 367
    .local v9, "textSize":F
    sget-object v14, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 368
    sget-object v14, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    const v15, 0x40333333    # 2.8f

    const v16, 0x3fb33333    # 1.4f

    const v17, 0x3fe66666    # 1.8f

    const/high16 v18, -0x26000000

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 370
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3c1374bc    # 0.009f

    mul-float/2addr v14, v15

    add-float v8, v9, v14

    .line 372
    .local v8, "rowHeight":F
    move/from16 v0, p2

    int-to-float v14, v0

    const v15, 0x3f733333    # 0.95f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    new-instance v15, Landroid/text/TextPaint;

    sget-object v16, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    invoke-direct/range {v15 .. v16}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v14, v15}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->splitLinesByWidth(ILandroid/text/TextPaint;)Ljava/util/List;

    move-result-object v13

    .line 376
    .local v13, "words":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .line 378
    .local v7, "lines":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v14, :cond_0

    .line 379
    new-instance v14, Landroid/graphics/drawable/GradientDrawable;

    sget-object v15, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, -0x60000000

    aput v18, v16, v17

    invoke-direct/range {v14 .. v16}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 381
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 383
    .local v5, "drawable":Landroid/graphics/drawable/GradientDrawable;
    move/from16 v0, p5

    int-to-float v14, v0

    move/from16 v0, p3

    int-to-float v15, v0

    const v16, 0x3d851eb8    # 0.065f

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    int-to-float v15, v7

    mul-float/2addr v15, v8

    sub-float/2addr v14, v15

    const v15, 0x3f4ccccd    # 0.8f

    mul-float/2addr v15, v8

    sub-float/2addr v14, v15

    float-to-int v11, v14

    .line 385
    .local v11, "top":I
    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p5

    invoke-virtual {v5, v0, v11, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 386
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 388
    move/from16 v0, p3

    int-to-float v14, v0

    const v15, 0x3d851eb8    # 0.065f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    sub-int p5, p5, v14

    .line 390
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lt v6, v14, :cond_1

    .line 400
    return-void

    .line 392
    :cond_1
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 393
    .local v12, "word":Ljava/lang/String;
    sget-object v14, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    invoke-virtual {v14, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 395
    .local v10, "textWidth":F
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v10, v14

    float-to-int v14, v14

    sub-int v3, p4, v14

    .line 396
    .local v3, "drawX":I
    move/from16 v0, p5

    int-to-float v14, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    sub-int/2addr v15, v6

    int-to-float v15, v15

    mul-float/2addr v15, v8

    sub-float/2addr v14, v15

    float-to-int v4, v14

    .line 398
    .local v4, "drawY":I
    int-to-float v14, v3

    int-to-float v15, v4

    sget-object v16, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v12, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 390
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance:Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    return-object v0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    const-string v0, "imagepicker_processor"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public crop(Landroid/graphics/Bitmap;[FLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "coords"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[F",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 436
    aget v4, p2, v5

    float-to-int v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 437
    .local v2, "x":I
    aget v4, p2, v7

    float-to-int v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 439
    .local v3, "y":I
    const/4 v4, 0x2

    aget v4, p2, v4

    aget v5, p2, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x4

    aget v5, p2, v5

    int-to-float v6, v2

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 440
    .local v1, "w":I
    const/4 v4, 0x3

    aget v4, p2, v4

    aget v5, p2, v7

    sub-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x5

    aget v5, p2, v5

    int-to-float v6, v3

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 442
    .local v0, "h":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 444
    :cond_0
    invoke-virtual {p3, p1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 452
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-static {p1, v2, v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public dispatch_async(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->queue:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 110
    return-void
.end method

.method public dispatch_sync(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->queue:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    if-ne v2, v3, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 105
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 85
    .local v0, "lock":Ljava/util/concurrent/Semaphore;
    new-instance v2, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$1;-><init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 97
    :try_start_0
    const-string v2, "ImageProcessor, near 98"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 103
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Error invoking sync renderer"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public drawLobster(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/imagepicker/entries/StyleEntry;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "left"    # I
    .param p7, "right"    # I
    .param p8, "style"    # Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .prologue
    .line 417
    if-eqz p8, :cond_0

    invoke-virtual/range {p8 .. p8}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->updateTextPaints()V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 424
    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->drawLobsterParts(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/imagepicker/entries/StyleEntry;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v9

    .line 428
    .local v9, "throwable":Ljava/lang/Throwable;
    const-string v0, "Error drawing lobster"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v9, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public drawLobsterForBitmap(Landroid/graphics/Canvas;IILcom/vkontakte/android/imagepicker/entries/StyleEntry;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "style"    # Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .prologue
    .line 404
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->updateTextPaints()V

    .line 409
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v4, v0

    .line 410
    .local v4, "x":I
    move v5, p3

    .line 412
    .local v5, "y":I
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->drawLobsterParts(Landroid/graphics/Canvas;IIIIIILcom/vkontakte/android/imagepicker/entries/StyleEntry;)V

    goto :goto_0
.end method

.method public filter(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 7
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "filtered"    # Z
    .param p4, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Landroid/graphics/Bitmap;",
            "ZZ",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p5, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->filter(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/imagepicker/utils/ActionCallback;I)V

    .line 234
    return-void
.end method

.method public filter(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/imagepicker/utils/ActionCallback;I)V
    .locals 17
    .param p1, "sourceImage"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "wasFiltered"    # Z
    .param p4, "sync"    # Z
    .param p6, "maximumSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Landroid/graphics/Bitmap;",
            "ZZ",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p5, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    if-eqz p4, :cond_2

    move-object/from16 v11, p1

    .line 240
    .local v11, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :goto_0
    invoke-virtual {v11}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getFilterId()I

    move-result v7

    .line 241
    .local v7, "filter_id":I
    invoke-virtual {v11}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v8

    .line 242
    .local v8, "texture_id":I
    invoke-virtual {v11}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v11}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getTextureStylesCount()I

    move-result v9

    .line 244
    .local v9, "texture_styles":I
    :goto_1
    new-instance v6, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 246
    .local v6, "bitmapEntry":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    new-instance v5, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v5, v0, v1, v2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$4;-><init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    .line 258
    .local v5, "bitmapCallback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    new-instance v3, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$5;-><init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;III)V

    .line 291
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    .line 296
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v10

    const/4 v12, 0x1

    new-instance v13, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$6;-><init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 306
    const/4 v14, 0x1

    move/from16 v15, p6

    .line 296
    invoke-virtual/range {v10 .. v15}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V

    .line 312
    :cond_1
    invoke-virtual {v6}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v10, v4}, Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->instance(II)Lcom/vkontakte/android/imagepicker/gl/GLRenderer;

    move-result-object v16

    .line 314
    .local v16, "instance":Lcom/vkontakte/android/imagepicker/gl/GLRenderer;
    if-eqz p4, :cond_4

    .line 315
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->invoke_sync(Ljava/lang/Runnable;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    .line 318
    :goto_2
    return-void

    .line 238
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "bitmapCallback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    .end local v6    # "bitmapEntry":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .end local v7    # "filter_id":I
    .end local v8    # "texture_id":I
    .end local v9    # "texture_styles":I
    .end local v11    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v16    # "instance":Lcom/vkontakte/android/imagepicker/gl/GLRenderer;
    :cond_2
    new-instance v11, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    goto :goto_0

    .line 242
    .restart local v7    # "filter_id":I
    .restart local v8    # "texture_id":I
    .restart local v11    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 317
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    .restart local v5    # "bitmapCallback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    .restart local v6    # "bitmapEntry":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .restart local v9    # "texture_styles":I
    .restart local v16    # "instance":Lcom/vkontakte/android/imagepicker/gl/GLRenderer;
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/vkontakte/android/imagepicker/gl/GLRenderer;->invoke_async(Ljava/lang/Runnable;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    goto :goto_2
.end method

.method public style(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;Z)V
    .locals 7
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "noFilter"    # Z
    .param p5, "fromUi"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p4, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->style(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V

    .line 115
    return-void
.end method

.method public style(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V
    .locals 8
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "noFilter"    # Z
    .param p5, "fromUi"    # Z
    .param p6, "maximumSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Landroid/graphics/Bitmap;",
            "Z",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p4, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p4, p2}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 190
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p6

    move v6, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$2;-><init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZIZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    .line 186
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p5, :cond_1

    .line 187
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public text(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 339
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    new-instance v2, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    invoke-direct {v2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;-><init>()V

    .line 343
    .local v2, "style":Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
    invoke-virtual {v2, p2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setText(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->updateTextPaints()V

    .line 347
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 349
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3d8b4396    # 0.068f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 350
    .local v1, "size":I
    sget-object v3, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 351
    sget-object v3, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    const v4, 0x40333333    # 2.8f

    const v5, 0x3fb33333    # 1.4f

    const v6, 0x3fe66666    # 1.8f

    const/high16 v7, -0x26000000

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 353
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->drawLobsterForBitmap(Landroid/graphics/Canvas;IILcom/vkontakte/android/imagepicker/entries/StyleEntry;)V

    goto :goto_0
.end method

.method public updateStyledThumb(Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v9, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 207
    .local v5, "width":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 208
    .local v0, "height":F
    const/high16 v4, 0x435b0000    # 219.0f

    .line 210
    .local v4, "thumbSize":F
    div-float v6, v4, v5

    div-float v7, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 212
    .local v1, "ratio":F
    mul-float/2addr v5, v1

    .line 213
    mul-float/2addr v0, v1

    .line 215
    float-to-int v6, v5

    float-to-int v7, v0

    const/4 v8, 0x1

    invoke-static {p1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 219
    .local v2, "thumb":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 221
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v2, v6, v9, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 228
    .local v3, "thumb2":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v6

    invoke-virtual {p2, v9}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->cacheStyledThumb(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 229
    return-void

    .line 225
    .end local v3    # "thumb2":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v2, v9, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "thumb2":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public updateStyledThumbAsync(Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    .line 194
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor$3;-><init>(Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;Landroid/graphics/Bitmap;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public updateTextPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 326
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint_inited:Z

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    .line 329
    sget-object v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    sget-object v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    sget-object v0, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint2:Landroid/graphics/Paint;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getLobsterTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 333
    sput-boolean v2, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text_paint_inited:Z

    .line 335
    :cond_0
    return-void
.end method
