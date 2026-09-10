.class public Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# static fields
.field public static final CONTEXT_PRIVATE:I = 0x1

.field public static final CONTEXT_PUBLIC:I = 0x2

.field public static final Filters:[[Ljava/lang/String;

.field private static final LOGGING_TAG:Ljava/lang/String; = "imagepicker_processor"

.field private static instance:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;


# instance fields
.field private filterContexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;",
            ">;"
        }
    .end annotation
.end field

.field private last_image_key:Ljava/lang/String;

.field private queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

.field private renderingCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private sourceTextures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/mediapicker/gl/GLTexture;",
            ">;"
        }
    .end annotation
.end field


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
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getScreenMaxSize()I

    move-result v0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    :cond_0
    const/16 v0, 0x13

    new-array v0, v0, [[Ljava/lang/String;

    .line 31
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Normal"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 32
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

    .line 33
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

    .line 34
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

    .line 35
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

    .line 36
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Liber"

    aput-object v3, v2, v5

    const-string v3, "liber_map.png"

    aput-object v3, v2, v6

    const-string v3, "liber_vignettemap.png"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 37
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Zaria"

    aput-object v3, v2, v5

    const-string v3, "zaria_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 38
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

    .line 39
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

    .line 40
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Nox"

    aput-object v3, v2, v5

    const-string v3, "nox_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 41
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

    .line 42
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

    .line 43
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Luna"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 44
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

    .line 45
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Terra"

    aput-object v3, v2, v5

    const-string v3, "terra_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 46
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

    .line 47
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Vesper"

    aput-object v3, v2, v5

    const-string v3, "vesper_map.png"

    aput-object v3, v2, v6

    const-string v3, "vesper_vignettemap.png"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 48
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

    .line 49
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Diana"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 28
    :goto_0
    sput-object v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    return-void

    .line 51
    :cond_1
    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/String;

    .line 52
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Normal"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 53
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

    .line 54
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

    .line 55
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

    .line 56
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

    .line 57
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Liber"

    aput-object v3, v2, v5

    const-string v3, "liber_map.png"

    aput-object v3, v2, v6

    const-string v3, "liber_vignettemap.png"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 58
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Zaria"

    aput-object v3, v2, v5

    const-string v3, "zaria_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 59
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

    .line 60
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

    .line 61
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Nox"

    aput-object v3, v2, v5

    const-string v3, "nox_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 62
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

    .line 63
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

    .line 64
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

    const/16 v1, 0xd

    .line 65
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Terra"

    aput-object v3, v2, v5

    const-string v3, "terra_map.png"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 66
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

    const/16 v1, 0xf

    .line 67
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Vesper"

    aput-object v3, v2, v5

    const-string v3, "vesper_map.png"

    aput-object v3, v2, v6

    const-string v3, "vesper_vignettemap.png"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 68
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Diana"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    goto/16 :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const-string v1, "RendererQueue"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->start()V

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Ljava/lang/String;ILcom/vkontakte/android/mediapicker/entries/BitmapEntry;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->renderForBitmapWithKey(Ljava/lang/String;ILcom/vkontakte/android/mediapicker/entries/BitmapEntry;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->renderingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Z)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearTextures(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Z)V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearFilters(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clear()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->applyCropForBitmap(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->applyClaheForBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 697
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->applyFilterForBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private applyClaheForBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 683
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 685
    :cond_0
    const-string v2, "Cannot apply CLAHE for bitmap: bitmap is %s"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    const-string v1, "null"

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->IPWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 694
    :goto_1
    return-object v0

    .line 685
    :cond_1
    const-string v1, "recycled"

    goto :goto_0

    .line 690
    :cond_2
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/gl/CLAHE;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 692
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method private applyCropForBitmap(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "coords"    # [F

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 652
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p2, :cond_4

    .line 654
    :cond_0
    const-string v8, "Cannot apply crop for bitmap. Info: {bn: %s, br: %s, cn: %s}"

    new-array v9, v11, [Ljava/lang/Object;

    if-nez p1, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->YN(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->YN(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v6

    if-nez p2, :cond_3

    :goto_2
    invoke-static {v6}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->YN(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->IPWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_3
    return-object p1

    .restart local p1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    move v5, v7

    .line 654
    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    .line 659
    :cond_4
    aget v5, p2, v7

    float-to-int v5, v5

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 660
    .local v3, "x":I
    aget v5, p2, v6

    float-to-int v5, v5

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 662
    .local v4, "y":I
    aget v5, p2, v10

    aget v8, p2, v7

    sub-float/2addr v5, v8

    float-to-int v5, v5

    const/4 v8, 0x4

    aget v8, p2, v8

    int-to-float v9, v3

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 663
    .local v2, "w":I
    aget v5, p2, v11

    aget v8, p2, v6

    sub-float/2addr v5, v8

    float-to-int v5, v5

    const/4 v8, 0x5

    aget v8, p2, v8

    int-to-float v9, v4

    sub-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 665
    .local v0, "h":I
    if-lez v2, :cond_5

    if-gtz v0, :cond_8

    .line 667
    :cond_5
    const-string v8, "Something went wrong while cropping a bitmap: %s"

    new-array v6, v6, [Ljava/lang/Object;

    if-gtz v2, :cond_6

    if-gtz v0, :cond_6

    const-string v5, "w <= 0 && h <= 0"

    :goto_4
    aput-object v5, v6, v7

    invoke-static {v8, v6}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->IPWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    if-gtz v2, :cond_7

    const-string v5, "w <= 0"

    goto :goto_4

    :cond_7
    const-string v5, "h <= 0"

    goto :goto_4

    .line 673
    :cond_8
    invoke-static {p1, v3, v4, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 675
    .local v1, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v1

    .line 677
    goto :goto_3
.end method

.method private applyFilterForBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filter"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 699
    if-eqz p1, :cond_0

    if-gtz p2, :cond_2

    .line 701
    :cond_0
    const-string v2, "Cannot apply filter for bitmap: %s"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    const-string v1, "bitmap is null"

    :goto_0
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->IPWarn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 710
    :goto_1
    return-object v0

    .line 701
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "filter id is normal or unknown: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 706
    :cond_2
    const/4 v0, 0x0

    .line 708
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearTextures(Z)V

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clearFilters(Z)V

    .line 405
    return-void
.end method

.method private clearFilters(Z)V
    .locals 6
    .param p1, "noUnload"    # Z

    .prologue
    .line 454
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 480
    :goto_0
    return-void

    .line 459
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 461
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 474
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 476
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 478
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string v4, "Cannot clear filters contexts"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 461
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 463
    .local v1, "fid":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;

    .line 465
    .local v0, "context":Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 470
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->unload()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private clearTextures(Z)V
    .locals 6
    .param p1, "noUnload"    # Z

    .prologue
    .line 421
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->last_image_key:Ljava/lang/String;

    .line 423
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    if-nez v4, :cond_0

    .line 450
    :goto_0
    return-void

    .line 428
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 430
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 444
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 448
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string v4, "Cannot clear source textures"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    .end local v3    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    .line 434
    .local v2, "texture":Lcom/vkontakte/android/mediapicker/gl/GLTexture;
    if-eqz v2, :cond_1

    .line 439
    if-nez p1, :cond_1

    .line 440
    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->unload()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private compareKeys(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 357
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance:Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    return-object v0
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 93
    const-string v0, "imagepicker_processor"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private renderForBitmapWithKey(Ljava/lang/String;ILcom/vkontakte/android/mediapicker/entries/BitmapEntry;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "filterId"    # I
    .param p3, "bitmap"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p4, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    if-nez v13, :cond_0

    .line 485
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iput-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    .line 487
    :cond_0
    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    if-nez v13, :cond_1

    .line 488
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iput-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    .line 490
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 493
    .local v10, "totalMs":J
    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->last_image_key:Ljava/lang/String;

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->last_image_key:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 496
    .local v4, "ms":J
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clear()V

    .line 502
    .end local v4    # "ms":J
    :cond_2
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->last_image_key:Ljava/lang/String;

    .line 504
    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;

    move-object v1, v13

    .line 506
    .local v1, "context":Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;
    :goto_0
    if-nez v1, :cond_3

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 510
    .restart local v4    # "ms":J
    new-instance v2, Lcom/vkontakte/android/mediapicker/gl/GLFilter;

    sget-object v13, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    aget-object v13, v13, p2

    invoke-direct {v2, v13}, Lcom/vkontakte/android/mediapicker/gl/GLFilter;-><init>([Ljava/lang/String;)V

    .line 512
    .local v2, "filter":Lcom/vkontakte/android/mediapicker/gl/GLFilter;
    new-instance v1, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;

    .end local v1    # "context":Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;
    invoke-direct {v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;-><init>(Lcom/vkontakte/android/mediapicker/gl/GLFilter;)V

    .line 513
    .restart local v1    # "context":Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;
    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->load()Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;

    .line 515
    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->filterContexts:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .end local v2    # "filter":Lcom/vkontakte/android/mediapicker/gl/GLFilter;
    .end local v4    # "ms":J
    :cond_3
    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    move-object v8, v13

    .line 523
    .local v8, "source":Lcom/vkontakte/android/mediapicker/gl/GLTexture;
    :goto_1
    if-nez v8, :cond_4

    .line 525
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 530
    .restart local v4    # "ms":J
    new-instance v8, Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    .end local v8    # "source":Lcom/vkontakte/android/mediapicker/gl/GLTexture;
    invoke-direct {v8}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;-><init>()V

    .line 531
    .restart local v8    # "source":Lcom/vkontakte/android/mediapicker/gl/GLTexture;
    invoke-virtual/range {p3 .. p3}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v8, v13}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->loadWithImage(Landroid/graphics/Bitmap;)Z

    .line 537
    .end local v4    # "ms":J
    :cond_4
    if-eqz v8, :cond_5

    .line 539
    invoke-virtual/range {p3 .. p3}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 540
    .local v12, "width":I
    invoke-virtual/range {p3 .. p3}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 542
    .local v3, "height":I
    new-instance v9, Lcom/vkontakte/android/mediapicker/gl/GLTarget;

    invoke-direct {v9}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;-><init>()V

    .line 544
    .local v9, "target":Lcom/vkontakte/android/mediapicker/gl/GLTarget;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 545
    .restart local v4    # "ms":J
    invoke-virtual {v9, v12, v3}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->loadWithSize(II)V

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 550
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->activate()V

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 555
    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->texture()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;->renderForTexture(I)Z

    move-result v6

    .line 559
    .local v6, "rendered":Z
    if-nez v6, :cond_8

    .line 561
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->clear()V

    .line 562
    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 583
    .end local v3    # "height":I
    .end local v4    # "ms":J
    .end local v6    # "rendered":Z
    .end local v9    # "target":Lcom/vkontakte/android/mediapicker/gl/GLTarget;
    .end local v12    # "width":I
    :cond_5
    :goto_2
    return-void

    .line 504
    .end local v1    # "context":Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;
    .end local v8    # "source":Lcom/vkontakte/android/mediapicker/gl/GLTexture;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 521
    .restart local v1    # "context":Lcom/vkontakte/android/mediapicker/gl/GLFilterContext;
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 566
    .restart local v3    # "height":I
    .restart local v4    # "ms":J
    .restart local v6    # "rendered":Z
    .restart local v8    # "source":Lcom/vkontakte/android/mediapicker/gl/GLTexture;
    .restart local v9    # "target":Lcom/vkontakte/android/mediapicker/gl/GLTarget;
    .restart local v12    # "width":I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 567
    iget-object v13, v9, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->targetTexture:Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    invoke-virtual {v13}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->readImage()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 571
    .local v7, "resultBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 574
    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->unload()V

    .line 578
    iget-object v13, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->sourceTextures:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public applyStylesForBitmap(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/StyleEntry;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Z)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "styleEntry"    # Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    .param p4, "async"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/vkontakte/android/mediapicker/entries/StyleEntry;",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p3, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsStyled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_2

    .line 607
    :cond_0
    if-eqz p3, :cond_1

    .line 608
    invoke-virtual {p3, p1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 646
    :cond_1
    :goto_0
    return-void

    .line 613
    :cond_2
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$9;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/StyleEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    .line 642
    .local v0, "block":Ljava/lang/Runnable;
    if-eqz p4, :cond_3

    .line 643
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 645
    :cond_3
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_sync(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public clearCurrentContext()V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$8;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method public clearForOtherContext(Z)V
    .locals 1
    .param p1, "onClose"    # Z

    .prologue
    .line 390
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$7;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$7;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method public crop(Landroid/graphics/Bitmap;[FLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "coords"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "[F",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 364
    aget v4, p2, v5

    float-to-int v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 365
    .local v2, "x":I
    aget v4, p2, v7

    float-to-int v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 367
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

    .line 368
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

    .line 370
    .local v0, "h":I
    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    .line 372
    :cond_0
    invoke-virtual {p3, p1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 380
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-static {p1, v2, v3, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public dispatch_async(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 132
    return-void
.end method

.method public dispatch_sync(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->queue:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    if-ne v2, v3, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 127
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 107
    .local v0, "lock":Ljava/util/concurrent/Semaphore;
    new-instance v2, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$1;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    .line 119
    :try_start_0
    const-string v2, "ImageProcessor, near 98"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->ThreadBlock(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 125
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Error invoking sync renderer"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public filter(ILcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;I)V
    .locals 18
    .param p1, "context"    # I
    .param p2, "sourceImage"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p3, "sourceBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "wasFiltered"    # Z
    .param p5, "sync"    # Z
    .param p7, "maximumSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            "Landroid/graphics/Bitmap;",
            "ZZ",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p6, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->renderingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v4, :cond_4

    .line 268
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    invoke-direct {v4, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->renderingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 273
    :cond_0
    :goto_0
    if-eqz p5, :cond_5

    move-object/from16 v8, p2

    .line 274
    .local v8, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle(Z)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "1"

    :goto_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCropKeys()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, "image_key":Ljava/lang/String;
    new-instance v6, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    .local v6, "bitmapEntry":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    const-string v9, "Applying filter for key %s (last key was %s)"

    const/4 v4, 0x2

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v10, v4

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->last_image_key:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v4, "null"

    :goto_3
    aput-object v4, v10, v11

    invoke-static {v9, v10}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    new-instance v5, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$4;

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v5, v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$4;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    .line 292
    .local v5, "bitmapCallback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    new-instance v3, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;

    move-object/from16 v4, p0

    move/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$5;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;Ljava/lang/String;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;I)V

    .line 318
    .local v3, "runnable":Ljava/lang/Runnable;
    if-eqz p3, :cond_1

    if-eqz p4, :cond_3

    .line 323
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->last_image_key:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->compareKeys(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsLoaded()Z

    move-result v4

    if-nez v4, :cond_8

    .line 326
    :cond_2
    const-string v4, "Getting image from disk"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4, v9}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    new-instance v13, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$6;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 338
    const/4 v14, 0x1

    move-object v10, v8

    move/from16 v15, p7

    move/from16 v16, p1

    .line 328
    invoke-virtual/range {v9 .. v16}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V

    .line 347
    :cond_3
    :goto_4
    invoke-virtual {v6}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v6}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v9, v4}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->instance(II)Lcom/vkontakte/android/mediapicker/gl/GLRenderer;

    move-result-object v17

    .line 349
    .local v17, "instance":Lcom/vkontakte/android/mediapicker/gl/GLRenderer;
    if-eqz p5, :cond_9

    .line 350
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke_sync(Ljava/lang/Runnable;Z)V

    .line 353
    :goto_5
    return-void

    .line 270
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "bitmapCallback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    .end local v6    # "bitmapEntry":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .end local v7    # "image_key":Ljava/lang/String;
    .end local v8    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v17    # "instance":Lcom/vkontakte/android/mediapicker/gl/GLRenderer;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->renderingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_0

    .line 273
    :cond_5
    new-instance v8, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    goto/16 :goto_1

    .line 274
    .restart local v8    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_6
    const-string v4, "0"

    goto/16 :goto_2

    .line 278
    .restart local v6    # "bitmapEntry":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .restart local v7    # "image_key":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->last_image_key:Ljava/lang/String;

    goto/16 :goto_3

    .line 341
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    .restart local v5    # "bitmapCallback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    :cond_8
    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageData()Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v4}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 352
    .restart local v17    # "instance":Lcom/vkontakte/android/mediapicker/gl/GLRenderer;
    :cond_9
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lcom/vkontakte/android/mediapicker/gl/GLRenderer;->invoke_async(Ljava/lang/Runnable;Z)V

    goto :goto_5
.end method

.method public isRendering()Z
    .locals 1

    .prologue
    .line 260
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->renderingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->renderingCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public style(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V
    .locals 10
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "noFilter"    # Z
    .param p4, "noEnhance"    # Z
    .param p6, "fromUi"    # Z
    .param p7, "maximumSize"    # I
    .param p8, "context"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            "Landroid/graphics/Bitmap;",
            "ZZ",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p5, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-virtual {p5, p2}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 206
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    move/from16 v6, p8

    move/from16 v7, p7

    move/from16 v8, p6

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$2;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZIIZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    .line 202
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz p6, :cond_1

    .line 203
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->dispatch_async(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 205
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public updateStyledThumb(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v9, 0x0

    .line 222
    if-nez p2, :cond_0

    .line 254
    :goto_0
    return-void

    .line 225
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 227
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v6

    invoke-virtual {p2, v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 233
    .local v5, "width":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v0, v6

    .line 234
    .local v0, "height":F
    const/high16 v4, 0x435b0000    # 219.0f

    .line 236
    .local v4, "thumbSize":F
    div-float v6, v4, v5

    div-float v7, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 238
    .local v1, "ratio":F
    mul-float/2addr v5, v1

    .line 239
    mul-float/2addr v0, v1

    .line 241
    float-to-int v6, v5

    float-to-int v7, v0

    const/4 v8, 0x1

    invoke-static {p1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 244
    .local v2, "thumb":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_3

    .line 246
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

    .line 253
    .local v3, "thumb2":Landroid/graphics/Bitmap;
    :goto_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v6

    invoke-virtual {p2, v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 250
    .end local v3    # "thumb2":Landroid/graphics/Bitmap;
    :cond_3
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
    goto :goto_1
.end method

.method public updateStyledThumbAsync(Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    .line 210
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor$3;-><init>(Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;Landroid/graphics/Bitmap;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method
