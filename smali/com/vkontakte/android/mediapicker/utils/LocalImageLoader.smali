.class public Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;
.super Lcom/vkontakte/android/mediapicker/utils/Loggable;
.source "LocalImageLoader.java"


# static fields
.field private static deviceIsSamsung:Z

.field private static deviceIsSamsungInited:Z

.field private static instance:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;


# instance fields
.field private highloadTasks:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private highloadThread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

.field private highload_inited:Z

.field private thread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

.field private thumbTasks:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private thumbload_inited:Z

.field private thumbnailTasksLimit:I

.field private use_small_thumb:Z

.field private use_small_thumb_inited:Z

.field private use_thumb_sample_size:I

.field private use_thumb_size:I

.field private use_thumb_small_sample_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 662
    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->deviceIsSamsung:Z

    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->deviceIsSamsungInited:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/Loggable;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbnailTasksLimit:I

    .line 54
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbload_inited:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highload_inited:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highloadTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 876
    iput-boolean v2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_small_thumb_inited:Z

    .line 61
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const-string v1, "ImagePickerThumbQueue"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->start()V

    .line 64
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const-string v1, "ImagePickerDiskQueue"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highloadThread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highloadThread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->start()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    iget v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbnailTasksLimit:I

    return v0
.end method

.method static synthetic access$002(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbnailTasksLimit:I

    return p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->initThumbQueue()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_small_thumb:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    iget v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_size:I

    return v0
.end method

.method static synthetic access$500(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    iget v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_small_sample_size:I

    return v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    iget v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_sample_size:I

    return v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getFailedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highload_inited:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highload_inited:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highloadTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method private dispatchThumbnail(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)V
    .locals 1
    .param p1, "runnable"    # Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;

    .prologue
    .line 156
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$3;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$3;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->invoke(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method private getFailedBitmap(I)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "size"    # I

    .prologue
    .line 719
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "thumb_error_image"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 721
    .local v7, "key":Ljava/lang/String;
    const/16 v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 723
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->isCached(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 725
    .local v4, "bmp":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v19

    if-nez v19, :cond_2

    .line 726
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 776
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_1
    return-object v3

    .line 723
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 729
    :cond_2
    const/16 v16, 0x1

    .line 730
    .local v16, "split":Z
    const/16 v18, 0x10

    .line 731
    .local v18, "textSize":I
    const/high16 v19, 0x40e00000    # 7.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    .line 733
    .local v17, "textOffset":F
    const/16 v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 735
    const/high16 v19, 0x43120000    # 146.0f

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result p1

    .line 736
    const/16 v16, 0x1

    .line 737
    const/16 v18, 0xa

    .line 740
    :cond_3
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 742
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 743
    .local v14, "p":Landroid/graphics/Paint;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 744
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 745
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 746
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 748
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 749
    .local v5, "c":Landroid/graphics/Canvas;
    const v19, -0xeeeeef

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 751
    if-nez v16, :cond_4

    .line 753
    const/16 v19, 0x30

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v8

    .line 754
    .local v8, "msg":Ljava/lang/String;
    const/16 v19, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v8, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v13

    .line 755
    .local v13, "msgSize":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v13, v20

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v8, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 773
    .end local v8    # "msg":Ljava/lang/String;
    .end local v13    # "msgSize":F
    :goto_2
    const/16 v19, -0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 774
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v3}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 759
    :cond_4
    const/16 v19, 0x31

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v9

    .line 760
    .local v9, "msg1":Ljava/lang/String;
    const/16 v19, 0x32

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v11

    .line 762
    .local v11, "msg2":Ljava/lang/String;
    const/16 v19, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v9, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    .line 763
    .local v10, "msg1Size":F
    const/16 v19, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v11, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v12

    .line 765
    .local v12, "msg2Size":F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(F)I

    move-result v19

    move/from16 v0, v19

    int-to-float v15, v0

    .line 767
    .local v15, "scaledTextSize":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v6, v0

    .line 769
    .local v6, "center":I
    int-to-float v0, v6

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v10, v20

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v15, v21

    sub-float v20, v20, v21

    add-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v9, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 770
    int-to-float v0, v6

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v12, v20

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v6

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v21, v15, v21

    add-float v20, v20, v21

    add-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v11, v0, v1, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private getMediaColumnsProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 653
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private initThumbQueue()V
    .locals 3

    .prologue
    .line 106
    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbload_inited:Z

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const-string v1, "ThumbnailLoadQueue"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "queue":Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->start()V

    .line 112
    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$2;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbload_inited:Z

    .line 152
    .end local v0    # "queue":Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;
    :cond_0
    return-void
.end method

.method public static instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .line 49
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    return-object v0
.end method

.method private postThumbnailFromMemcache(Ljava/lang/String;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fromStrictCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 853
    if-eqz p2, :cond_1

    .line 855
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->isCached(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 872
    :goto_0
    return v0

    .line 862
    :cond_0
    const-string v2, "Something went wrong: strict cache doesn\'t conatin the thumb with key: %s"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->isCached(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 867
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 872
    goto :goto_0
.end method

.method private scaleThumbnail(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "requiredSize"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 781
    int-to-float v4, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 783
    .local v1, "ratio":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v3, v4

    .line 784
    .local v3, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 786
    .local v0, "height":I
    const/4 v4, 0x1

    invoke-static {p2, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 789
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    return-object v2
.end method

.method private tryFixContentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 541
    const-string v1, "content://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 543
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-object v0

    .line 546
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 548
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 549
    goto :goto_0
.end method


# virtual methods
.method public dispatchHighload(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 292
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$5;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->invokeHighload(Ljava/lang/Runnable;)V

    .line 338
    return-void
.end method

.method public getBitmapByPath(Ljava/lang/String;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxSize"    # I
    .param p3, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 344
    new-instance v0, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;-><init>()V

    .line 348
    .local v0, "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getOrientation()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getOrientation()I

    move-result v9

    const/16 v11, 0xb4

    if-eq v9, v11, :cond_2

    .line 353
    .local v6, "swapSides":Z
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "file":Ljava/io/File;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 356
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 359
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 365
    if-eqz v6, :cond_3

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 366
    .local v8, "width":I
    :goto_1
    if-eqz v6, :cond_4

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 368
    .local v2, "height":I
    :goto_2
    invoke-virtual {p0, v8, v2, p2}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getSampleSize(III)I

    move-result v4

    .line 370
    .local v4, "sampleSize":I
    div-int/2addr v8, v4

    .line 371
    div-int/2addr v2, v4

    .line 376
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 377
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 378
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 379
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 381
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 383
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    if-eqz p3, :cond_0

    .line 385
    if-eqz v6, :cond_5

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_3
    invoke-virtual {p3, v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setCropWidth(I)V

    .line 386
    if-eqz v6, :cond_6

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_4
    invoke-virtual {p3, v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setCropHeight(I)V

    .line 389
    :cond_0
    invoke-virtual {p0, p3, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->rotateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "height":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "sampleSize":I
    .end local v6    # "swapSides":Z
    .end local v8    # "width":I
    :goto_5
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    if-eqz p3, :cond_1

    .line 400
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getScreenMinSize()I

    move-result v5

    .line 402
    .local v5, "size":I
    invoke-direct {p0, v5}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getFailedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 403
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->setFailed()V

    .line 406
    .end local v5    # "size":I
    :cond_1
    return-object v0

    :cond_2
    move v6, v10

    .line 348
    goto :goto_0

    .line 365
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "swapSides":Z
    :cond_3
    :try_start_1
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_1

    .line 366
    .restart local v8    # "width":I
    :cond_4
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2

    .line 385
    .restart local v2    # "height":I
    .restart local v4    # "sampleSize":I
    :cond_5
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_3

    .line 386
    :cond_6
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 391
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "height":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "sampleSize":I
    .end local v6    # "swapSides":Z
    .end local v8    # "width":I
    :catch_0
    move-exception v7

    .line 393
    .local v7, "throwable":Ljava/lang/Throwable;
    const-string v9, "Cannot get image"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 395
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public getImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V
    .locals 14
    .param p1, "originalImage"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "noFilter"    # Z
    .param p3, "noEnhance"    # Z
    .param p5, "sync"    # Z
    .param p6, "size"    # I
    .param p7, "context"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            "ZZ",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p4, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;>;"
    new-instance v2, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 416
    .local v2, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;

    move-object v1, p0

    move/from16 v3, p6

    move/from16 v4, p5

    move-object/from16 v5, p4

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$6;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;IZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZZI)V

    .line 477
    .local v0, "getter":Ljava/lang/Runnable;
    if-eqz p5, :cond_0

    .line 479
    new-instance v9, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 483
    .local v9, "lock":Ljava/util/concurrent/Semaphore;
    const/4 v1, 0x1

    :try_start_0
    new-array v13, v1, [Z

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v13, v1

    .line 484
    .local v13, "unlock_executed":[Z
    new-instance v12, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;

    invoke-direct {v12, p0, v13, v9}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$7;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;[ZLjava/util/concurrent/Semaphore;)V

    .line 498
    .local v12, "unlock":Ljava/lang/Runnable;
    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$8;

    invoke-direct {v1, p0, v0, v12}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$8;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->dispatchHighload(Ljava/lang/Runnable;)V

    .line 509
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, "threadName":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$9;

    invoke-direct {v1, p0, v13, v10}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$9;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;[ZLjava/lang/String;)V

    const/16 v3, 0x2710

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->invokeHighload(Ljava/lang/Runnable;I)V

    .line 526
    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v9    # "lock":Ljava/util/concurrent/Semaphore;
    .end local v10    # "threadName":Ljava/lang/String;
    .end local v12    # "unlock":Ljava/lang/Runnable;
    .end local v13    # "unlock_executed":[Z
    :goto_0
    return-void

    .line 528
    .restart local v9    # "lock":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v11

    .line 530
    .local v11, "throwable":Ljava/lang/Throwable;
    const-string v1, "Cannot get image sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 535
    .end local v9    # "lock":Ljava/util/concurrent/Semaphore;
    .end local v11    # "throwable":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->dispatchHighload(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getImageByUri(Landroid/app/Activity;Landroid/net/Uri;)Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .locals 25
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 556
    const/16 v22, 0x0

    .line 557
    .local v22, "path":Ljava/lang/String;
    const/16 v24, 0x0

    .line 559
    .local v24, "temp":Z
    const/16 v20, 0x0

    .local v20, "orientation":I
    const/4 v10, 0x0

    .line 562
    .local v10, "bucket_id":I
    const-string v3, "Getting image by uri %s, scheme: %s file: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    const-string v3, "content"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getMediaColumnsProjection()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 568
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 570
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->tryFixContentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 606
    :cond_1
    :goto_0
    invoke-static {v11}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 609
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_2
    if-nez v22, :cond_3

    const-string v3, "file"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 611
    :cond_3
    const/4 v15, -0x1

    .line 613
    .local v15, "id":I
    if-nez v22, :cond_4

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 616
    :cond_4
    const/16 v24, 0x1

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getMediaColumnsProjection()[Ljava/lang/String;

    move-result-object v5

    const-string v6, "_data=? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v22, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 621
    .restart local v11    # "cursor":Landroid/database/Cursor;
    const-string v3, "Getting content image by path result. Path: %s, count: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v22, v4, v5

    const/4 v5, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 625
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 626
    const-string v3, "orientation"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 628
    const/16 v24, 0x0

    .line 631
    :cond_5
    invoke-static {v11}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 638
    if-eqz v24, :cond_f

    new-instance v17, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v15, v1, v3, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(ILjava/lang/String;ZI)V

    .line 640
    .local v17, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :goto_1
    if-eqz v10, :cond_6

    .line 641
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setBucketId(I)V

    .line 643
    :cond_6
    if-nez v20, :cond_7

    .line 644
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->setOrientationByPath(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/io/File;)V

    .line 646
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "id":I
    .end local v17    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    :cond_7
    :goto_2
    return-object v17

    .line 574
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_8
    const-string v3, "_data"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 575
    .local v12, "dataIndex":I
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 576
    .local v16, "idIndex":I
    const-string v3, "orientation"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 578
    .local v19, "orIndex":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 580
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_9

    .line 581
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 582
    :cond_9
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 583
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_a

    .line 584
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 586
    :cond_a
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->tryFixContentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 590
    .local v13, "fix":Ljava/lang/String;
    if-eqz v13, :cond_b

    .line 591
    move-object/from16 v22, v13

    goto/16 :goto_0

    .line 594
    :cond_b
    const-string v3, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 595
    .local v23, "splitted":[Ljava/lang/String;
    const-string v13, ""

    .line 597
    move-object/from16 v9, v23

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3
    move/from16 v0, v18

    if-ge v14, v0, :cond_d

    aget-object v21, v9, v14

    .line 598
    .local v21, "part":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 597
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 598
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 600
    .end local v21    # "part":Ljava/lang/String;
    :cond_d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    move-object/from16 v22, v13

    goto/16 :goto_0

    .line 635
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "dataIndex":I
    .end local v13    # "fix":Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v16    # "idIndex":I
    .end local v18    # "len$":I
    .end local v19    # "orIndex":I
    .end local v23    # "splitted":[Ljava/lang/String;
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 638
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "id":I
    :cond_f
    new-instance v17, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v15, v1, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(ILjava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public getPreviewForFilter(Landroid/content/Context;IILcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filter_id"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p4, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->getFilterPreviewCacheKey(I)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->isCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 798
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 849
    :goto_0
    return-void

    .line 803
    :cond_0
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Ljava/lang/String;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->invoke(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getQueue()Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    return-object v0
.end method

.method public getSampleSize(III)I
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maximumSize"    # I

    .prologue
    .line 666
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 667
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 668
    .local v8, "screenWidth":I
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 670
    .local v7, "screenHeight":I
    sget-boolean v2, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->deviceIsSamsung:Z

    .line 672
    .local v2, "fitsInScreenSize":Z
    if-gt p1, v8, :cond_0

    if-le p2, v7, :cond_1

    :cond_0
    if-gt p1, v7, :cond_6

    if-gt p1, v8, :cond_6

    .line 674
    :cond_1
    sget-boolean v9, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->deviceIsSamsungInited:Z

    if-nez v9, :cond_3

    .line 676
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "device":Ljava/lang/String;
    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 679
    .local v5, "manufacturer":Ljava/lang/String;
    const-string v9, "samsung"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    const-string v9, "samsung"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_9

    :cond_2
    const/4 v9, 0x1

    :goto_0
    sput-boolean v9, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->deviceIsSamsung:Z

    .line 680
    const/4 v9, 0x1

    sput-boolean v9, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->deviceIsSamsungInited:Z

    .line 683
    .end local v0    # "device":Ljava/lang/String;
    .end local v5    # "manufacturer":Ljava/lang/String;
    :cond_3
    sget-boolean v9, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->deviceIsSamsung:Z

    if-nez v9, :cond_a

    const/16 v9, 0x514

    if-gt p1, v9, :cond_4

    const/16 v9, 0x30c

    if-le p2, v9, :cond_5

    :cond_4
    const/16 v9, 0x30c

    if-gt p1, v9, :cond_a

    const/16 v9, 0x514

    if-gt p2, v9, :cond_a

    :cond_5
    const/4 v2, 0x1

    .line 686
    :cond_6
    :goto_1
    if-lez p3, :cond_c

    .line 688
    const/4 v3, 0x1

    .line 690
    .local v3, "inSampleSize":I
    if-gt p1, p3, :cond_7

    if-le p2, p3, :cond_8

    .line 692
    :cond_7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, p3

    div-float v6, v9, v10

    .line 694
    .local v6, "ratio":F
    if-eqz v2, :cond_b

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    :goto_2
    double-to-int v3, v9

    .line 714
    .end local v6    # "ratio":F
    :cond_8
    :goto_3
    return v3

    .line 679
    .end local v3    # "inSampleSize":I
    .restart local v0    # "device":Ljava/lang/String;
    .restart local v5    # "manufacturer":Ljava/lang/String;
    :cond_9
    const/4 v9, 0x0

    goto :goto_0

    .line 683
    .end local v0    # "device":Ljava/lang/String;
    .end local v5    # "manufacturer":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 694
    .restart local v3    # "inSampleSize":I
    .restart local v6    # "ratio":F
    :cond_b
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    goto :goto_2

    .line 700
    .end local v3    # "inSampleSize":I
    .end local v6    # "ratio":F
    :cond_c
    const/16 v9, 0x400

    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 702
    .local v4, "limit":I
    if-lez p3, :cond_d

    .line 703
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 705
    :cond_d
    const/4 v3, 0x1

    .line 707
    .restart local v3    # "inSampleSize":I
    if-gt p1, v4, :cond_e

    if-le p2, v4, :cond_8

    .line 709
    :cond_e
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float v6, v9, v10

    .line 711
    .restart local v6    # "ratio":F
    if-eqz v2, :cond_f

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    :goto_4
    double-to-int v3, v9

    goto :goto_3

    :cond_f
    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    goto :goto_4
.end method

.method public getThumbTasksLimit()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thumbnailTasksLimit:I

    return v0
.end method

.method public getThumbnailForImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 8
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "gridThumb"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/mediapicker/entries/ImageEntry;",
            "Z",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/high16 v7, 0x44000000    # 512.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 170
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_small_thumb_inited:Z

    if-nez v0, :cond_0

    .line 172
    const/high16 v0, 0x43120000    # 146.0f

    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v0, v4}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->dp(FF)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_size:I

    .line 173
    iget v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_size:I

    const/16 v4, 0xc0

    if-ge v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_small_thumb:Z

    .line 174
    iget v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_size:I

    int-to-float v0, v0

    div-float v0, v7, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_sample_size:I

    .line 175
    iget v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_size:I

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    div-float v0, v7, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_thumb_small_sample_size:I

    .line 176
    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_small_thumb_inited:Z

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->use_small_thumb:Z

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "cacheKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    invoke-direct {p0, v3, v0, p3}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->postThumbnailFromMemcache(Ljava/lang/String;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    :goto_2
    return-void

    .end local v3    # "cacheKey":Ljava/lang/String;
    :cond_2
    move v0, v2

    .line 173
    goto :goto_0

    :cond_3
    move v1, v2

    .line 179
    goto :goto_1

    .line 184
    .restart local v3    # "cacheKey":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/lang/String;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->dispatchThumbnail(Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;)V

    goto :goto_2
.end method

.method public invoke(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 73
    return-void
.end method

.method public invoke(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->thread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 78
    return-void
.end method

.method public invokeHighload(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highloadThread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 283
    return-void
.end method

.method public invokeHighload(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->highloadThread:Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/mediapicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 288
    return-void
.end method

.method public rotateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V
    .locals 10
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "bitmap"    # Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    .prologue
    const/4 v9, 0x0

    .line 918
    if-nez p1, :cond_1

    .line 920
    const-string v0, "Image cannot be rotated, because it\'s null"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 929
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getOrientation()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 933
    :try_start_0
    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 935
    .local v7, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v7}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 937
    .end local v7    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 939
    .local v8, "throwable":Ljava/lang/Throwable;
    const-string v0, "Cannot rotate bitmap"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setOrientationByPath(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/io/File;)V
    .locals 7
    .param p1, "image"    # Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 885
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 886
    .local v0, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 887
    .local v1, "orientation":I
    const/4 v2, 0x0

    .line 889
    .local v2, "rotation":I
    packed-switch v1, :pswitch_data_0

    .line 908
    :goto_0
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    .end local v0    # "exif":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    .end local v2    # "rotation":I
    :goto_1
    return-void

    .line 892
    .restart local v0    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "orientation":I
    .restart local v2    # "rotation":I
    :pswitch_1
    const/4 v2, 0x0

    .line 893
    goto :goto_0

    .line 895
    :pswitch_2
    const/16 v2, 0x5a

    .line 896
    goto :goto_0

    .line 898
    :pswitch_3
    const/16 v2, 0xb4

    .line 899
    goto :goto_0

    .line 901
    :pswitch_4
    const/16 v2, 0x10e

    goto :goto_0

    .line 910
    .end local v0    # "exif":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    .end local v2    # "rotation":I
    :catch_0
    move-exception v3

    .line 912
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string v4, "Cannot read orientation from EXIF"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setThumbTasksLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 89
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$1;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$1;-><init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->invoke(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method
