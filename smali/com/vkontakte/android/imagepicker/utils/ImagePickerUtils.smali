.class public Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;
.super Lcom/vkontakte/android/imagepicker/utils/Loggable;
.source "ImagePickerUtils.java"


# static fields
.field private static final LoaderLogEnabled:Z = false

.field private static final MaximumCaptionLength:I = 0xb0

.field private static final ThumbLogEnabled:Z

.field public static activityInstance:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field public static emptyOnClickListener:Landroid/view/View$OnClickListener;

.field private static force_filters_disabled:Z

.field private static hanim_enabled:Z

.field private static hanim_inited:Z

.field private static instance:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;


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

.field private highloadThread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

.field private highload_inited:Z

.field private thread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

.field private thumbTasks:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;",
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$1;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->emptyOnClickListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;-><init>()V

    sput-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    .line 86
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->force_filters_disabled:Z

    .line 114
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_inited:Z

    .line 1343
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/Loggable;-><init>()V

    .line 234
    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbload_inited:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highload_inited:Z

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbnailTasksLimit:I

    .line 237
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 239
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highloadTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 653
    iput-boolean v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_small_thumb_inited:Z

    .line 243
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    const-string v1, "ImagePickerThumbQueue"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->start()V

    .line 246
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    const-string v1, "ImagePickerDiskQueue"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highloadThread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    .line 247
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highloadThread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->start()V

    .line 248
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbnailTasksLimit:I

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/String;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .locals 1

    .prologue
    .line 899
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getBitmapByPath(Ljava/lang/String;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_size:I

    return v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_small_sample_size:I

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_sample_size:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbnailTasksLimit:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->initThumbsQueue()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highload_inited:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highloadTasks:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Z)V
    .locals 0

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highload_inited:Z

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 0

    .prologue
    .line 437
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getAlbums(Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getFailedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Z
    .locals 1

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_small_thumb:Z

    return v0
.end method

.method private dispatchThumbnail(Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;)V
    .locals 1
    .param p1, "runnable"    # Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;

    .prologue
    .line 329
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$4;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$4;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method private getAlbums(Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 32
    .param p1, "activity"    # Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;",
            "Landroid/content/ContentResolver;",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;",
            ">;>;",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p3, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;>;>;"
    .local p4, "cameraBucketCallback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Ljava/lang/Integer;>;"
    const/4 v4, 0x6

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 441
    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    .line 442
    const-string v5, "bucket_id"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    .line 443
    const-string v5, "bucket_display_name"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    .line 444
    const-string v5, "_data"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    .line 445
    const-string v5, "datetaken"

    aput-object v5, v6, v4

    const/4 v4, 0x5

    .line 446
    const-string v5, "orientation"

    aput-object v5, v6, v4

    .line 451
    .local v6, "projection":[Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, ""

    const/4 v8, 0x0

    const-string v9, "datetaken DESC"

    move-object/from16 v4, p2

    invoke-static/range {v4 .. v9}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 453
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_3

    .line 455
    :cond_0
    if-nez v18, :cond_2

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    .line 541
    .end local v18    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 455
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    .end local v18    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v31

    .line 538
    .local v31, "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {p3 .. p3}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->getHasExecuted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 539
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 460
    .end local v31    # "throwable":Ljava/lang/Throwable;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v25, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 463
    .local v20, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;>;"
    const-string v4, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 464
    .local v23, "imageIdColumn":I
    const-string v4, "bucket_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 465
    .local v12, "bucketIdColumn":I
    const-string v4, "bucket_display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 466
    .local v14, "bucketNameColumn":I
    const-string v4, "_data"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 467
    .local v19, "dataColumn":I
    const-string v4, "orientation"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 469
    .local v28, "orientationColumn":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/CameraUtils;->getCameraDir()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 470
    .local v16, "cameraFolder":Ljava/lang/String;
    const/16 v17, 0x0

    .line 471
    .local v17, "cameraFound":Z
    const/4 v15, -0x1

    .line 475
    .local v15, "cameraBucketId":I
    :cond_4
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 476
    .local v22, "imageId":I
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 477
    .local v11, "bucketId":I
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 478
    .local v13, "bucketName":Ljava/lang/String;
    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 479
    .local v29, "path":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 481
    .local v27, "orientation":I
    new-instance v21, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v29

    move/from16 v3, v27

    invoke-direct {v0, v11, v1, v2, v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(IILjava/lang/String;I)V

    .line 483
    .local v21, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 485
    new-instance v10, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    move/from16 v0, v22

    invoke-direct {v10, v11, v13, v0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;-><init>(ILjava/lang/String;I)V

    .line 487
    .local v10, "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->addImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 489
    if-nez v17, :cond_7

    if-eqz v29, :cond_7

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 491
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->setIsCamera(Z)V

    .line 492
    const/4 v4, 0x0

    invoke-virtual {v10}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getBucketId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 494
    invoke-virtual {v10}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getBucketId()I

    move-result v15

    .line 496
    const/16 v17, 0x1

    .line 503
    :goto_2
    invoke-virtual {v10}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getBucketId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .end local v10    # "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 512
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v30, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 516
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 518
    .local v26, "lastKey":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 531
    .end local v26    # "lastKey":Ljava/lang/Integer;
    :cond_5
    if-eqz v17, :cond_6

    .line 532
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    .line 534
    :cond_6
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 500
    .end local v30    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;>;"
    .restart local v10    # "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    :cond_7
    invoke-virtual {v10}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->getBucketId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 507
    .end local v10    # "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    :cond_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->addImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    goto :goto_3

    .line 518
    .restart local v26    # "lastKey":Ljava/lang/Integer;
    .restart local v30    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;>;"
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 520
    .local v24, "key":Ljava/lang/Integer;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;

    .line 522
    .restart local v10    # "album":Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;
    invoke-virtual {v10}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->updateCounter()V

    .line 524
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 525
    invoke-virtual {v10}, Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;->setHasNext()V

    .line 527
    :cond_a
    move-object/from16 v0, v30

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static getAreFiltersSupported()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    const/4 v0, 0x1

    .line 102
    .local v0, "supported":Z
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDensity()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    move v1, v2

    :goto_0
    and-int/2addr v0, v1

    .line 103
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "lt26i"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    .line 104
    sget-boolean v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->force_filters_disabled:Z

    if-eqz v1, :cond_2

    :goto_2
    and-int/2addr v0, v3

    .line 106
    return v0

    :cond_0
    move v1, v3

    .line 102
    goto :goto_0

    :cond_1
    move v1, v2

    .line 103
    goto :goto_1

    :cond_2
    move v3, v2

    .line 104
    goto :goto_2
.end method

.method private getBitmapByPath(Ljava/lang/String;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "maxSize"    # I
    .param p3, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    .line 901
    new-instance v0, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-direct {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;-><init>()V

    .line 905
    .local v0, "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    :try_start_0
    invoke-virtual {p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getOrientation()I

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getOrientation()I

    move-result v9

    const/16 v11, 0xb4

    if-eq v9, v11, :cond_2

    .line 910
    .local v6, "swapSides":Z
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 911
    .local v1, "file":Ljava/io/File;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 913
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 916
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 922
    if-eqz v6, :cond_3

    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 923
    .local v8, "width":I
    :goto_1
    if-eqz v6, :cond_4

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 925
    .local v2, "height":I
    :goto_2
    invoke-virtual {p0, v8, v2, p2}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getSampleSize(III)I

    move-result v4

    .line 927
    .local v4, "sampleSize":I
    div-int/2addr v8, v4

    .line 928
    div-int/2addr v2, v4

    .line 933
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 934
    const/4 v9, 0x0

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 935
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 936
    const/4 v9, 0x1

    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 938
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 940
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    .line 942
    if-eqz v6, :cond_5

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_3
    invoke-virtual {p3, v9}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setCropWidth(I)V

    .line 943
    if-eqz v6, :cond_6

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_4
    invoke-virtual {p3, v9}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setCropHeight(I)V

    .line 946
    :cond_0
    invoke-virtual {p0, p3, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->rotateImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 955
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "height":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "sampleSize":I
    .end local v6    # "swapSides":Z
    .end local v8    # "width":I
    :goto_5
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    if-eqz p3, :cond_1

    .line 957
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getScreenMinSize()I

    move-result v5

    .line 959
    .local v5, "size":I
    invoke-direct {p0, v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getFailedBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    .line 960
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->setFailed()V

    .line 963
    .end local v5    # "size":I
    :cond_1
    return-object v0

    :cond_2
    move v6, v10

    .line 905
    goto :goto_0

    .line 922
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "swapSides":Z
    :cond_3
    :try_start_1
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_1

    .line 923
    .restart local v8    # "width":I
    :cond_4
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_2

    .line 942
    .restart local v2    # "height":I
    .restart local v4    # "sampleSize":I
    :cond_5
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_3

    .line 943
    :cond_6
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 948
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "height":I
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "sampleSize":I
    .end local v6    # "swapSides":Z
    .end local v8    # "width":I
    :catch_0
    move-exception v7

    .line 950
    .local v7, "throwable":Ljava/lang/Throwable;
    const-string v9, "Cannot get image"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v7, v10}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 952
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private getFailedBitmap(I)Landroid/graphics/Bitmap;
    .locals 20
    .param p1, "size"    # I

    .prologue
    .line 852
    const/4 v14, 0x0

    .line 853
    .local v14, "split":Z
    const/16 v16, 0x10

    .line 854
    .local v16, "textSize":I
    const/high16 v17, 0x40e00000    # 7.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v15, v0

    .line 856
    .local v15, "textOffset":F
    const/16 v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 858
    const/high16 v17, 0x43120000    # 146.0f

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result p1

    .line 859
    const/4 v14, 0x1

    .line 860
    const/16 v16, 0xa

    .line 863
    :cond_0
    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 865
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 866
    .local v12, "p":Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 867
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 868
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 869
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 871
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 872
    .local v4, "c":Landroid/graphics/Canvas;
    const v17, -0xeeeeef

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 874
    if-nez v14, :cond_1

    .line 876
    const/16 v17, 0x30

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    .line 877
    .local v6, "msg":Ljava/lang/String;
    const/16 v17, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v6, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v11

    .line 878
    .local v11, "msgSize":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v11, v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v6, v0, v1, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 896
    .end local v6    # "msg":Ljava/lang/String;
    .end local v11    # "msgSize":F
    :goto_0
    return-object v3

    .line 882
    :cond_1
    const/16 v17, 0x31

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v7

    .line 883
    .local v7, "msg1":Ljava/lang/String;
    const/16 v17, 0x32

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v9

    .line 885
    .local v9, "msg2":Ljava/lang/String;
    const/16 v17, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v7, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    .line 886
    .local v8, "msg1Size":F
    const/16 v17, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v9, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v10

    .line 888
    .local v10, "msg2Size":F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(F)I

    move-result v17

    move/from16 v0, v17

    int-to-float v13, v0

    .line 890
    .local v13, "scaledTextSize":F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v5, v0

    .line 892
    .local v5, "center":I
    int-to-float v0, v5

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v8, v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v13, v19

    sub-float v18, v18, v19

    add-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v7, v0, v1, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 893
    int-to-float v0, v5

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v10, v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v13, v19

    add-float v18, v18, v19

    add-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v9, v0, v1, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getMediaColumnsProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 168
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 169
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 170
    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 171
    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    .line 166
    return-object v0
.end method

.method public static getRelativeLayoutParamsWithRule(I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p0, "rule"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, p0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getRelativeLayoutParamsWithRule(Landroid/widget/RelativeLayout$LayoutParams;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeLayoutParamsWithRule(Landroid/widget/RelativeLayout$LayoutParams;I)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0
    .param p0, "params"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "rule"    # I

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    return-object p0
.end method

.method private getSelector(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1281
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1284
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    .line 1286
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1313
    .local v1, "selectionDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1314
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1315
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1317
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_0

    .line 1318
    const/16 v2, 0x96

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 1320
    :cond_0
    return-object v0

    .line 1290
    .end local v1    # "selectionDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$18;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)V

    .restart local v1    # "selectionDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getThumbnailAnimationDuration()I
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getHardAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xfa

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method private initThumbsQueue()V
    .locals 3

    .prologue
    .line 279
    iget-boolean v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbload_inited:Z

    if-nez v1, :cond_0

    .line 283
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    const-string v1, "ThumbnailLoadQueue"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "queue":Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->start()V

    .line 285
    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$3;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)V

    .line 321
    const/4 v2, 0x0

    .line 285
    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 323
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbload_inited:Z

    .line 325
    .end local v0    # "queue":Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;
    :cond_0
    return-void
.end method

.method public static instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    return-object v0
.end method

.method private postThumbnailFromMemcache(Ljava/lang/String;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "fromStrictCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    .line 617
    if-eqz p2, :cond_1

    .line 619
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsStyledThumbCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getStyledThumb(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 649
    :goto_0
    return v0

    .line 625
    :cond_0
    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;

    invoke-direct {v1, p0, p3, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$8;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 642
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsCached(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    goto :goto_0

    .line 649
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scaleThumbnail(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "requiredSize"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 545
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

    .line 547
    .local v1, "ratio":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v3, v4

    .line 548
    .local v3, "width":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 550
    .local v0, "height":I
    const/4 v4, 0x1

    invoke-static {p2, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 553
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    return-object v2
.end method

.method public static setForceFiltersDisabled(Z)V
    .locals 0
    .param p0, "isDisabled"    # Z

    .prologue
    .line 90
    sput-boolean p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->force_filters_disabled:Z

    .line 91
    return-void
.end method

.method public static showFiltersToast()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 96
    return-void
.end method


# virtual methods
.method public bounce(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "reverse"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 1208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->bounce(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 1209
    return-void
.end method

.method public bounce(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "reverse"    # Z
    .param p3, "onToggled"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 1214
    if-eqz p1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    .line 1216
    :cond_0
    if-eqz p3, :cond_1

    .line 1220
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :cond_1
    :goto_0
    return-void

    .line 1222
    :catch_0
    move-exception v1

    .line 1224
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "Cannot toggle in bouncer"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1231
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_2
    if-eqz p2, :cond_3

    const v0, 0x3f547ae1    # 0.83f

    .line 1233
    .local v0, "ratio":F
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x4e

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$17;

    invoke-direct {v3, p0, p1, v0, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$17;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1231
    .end local v0    # "ratio":F
    :cond_3
    const v0, 0x3f95c28f    # 1.17f

    goto :goto_1
.end method

.method public clearTextInput(Landroid/widget/EditText;[C[I)V
    .locals 20
    .param p1, "textView"    # Landroid/widget/EditText;
    .param p2, "input"    # [C
    .param p3, "lastLinesCount"    # [I

    .prologue
    .line 1347
    const/4 v8, 0x0

    .line 1348
    .local v8, "lines":I
    const/4 v7, -0x1

    .line 1349
    .local v7, "lineIndex":I
    const-string v12, ""

    .line 1351
    .local v12, "result":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v13

    .line 1352
    .local v13, "selection":I
    move-object/from16 v0, p2

    array-length v10, v0

    .line 1354
    .local v10, "prevSize":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 1358
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_5

    const/16 v16, 0x1

    .line 1359
    .local v16, "workWithLine":Z
    :goto_1
    if-eqz v16, :cond_6

    const/16 v17, 0x0

    aget v17, p3, v17

    move/from16 v0, v17

    if-le v0, v8, :cond_6

    const/4 v11, 0x1

    .line 1360
    .local v11, "removeLine":Z
    :goto_2
    if-eqz v16, :cond_7

    const/16 v17, 0x0

    aget v17, p3, v17

    move/from16 v0, v17

    if-ge v0, v8, :cond_7

    const/4 v2, 0x1

    .line 1362
    .local v2, "addLine":Z
    :goto_3
    const/16 v17, 0x0

    aput v8, p3, v17

    .line 1364
    if-eqz v11, :cond_8

    .line 1365
    const/16 v17, 0x0

    aget v18, p3, v17

    add-int/lit8 v18, v18, -0x1

    aput v18, p3, v17

    .line 1369
    :cond_0
    :goto_4
    const/4 v9, 0x0

    .line 1370
    .local v9, "prevChar":C
    const/4 v4, 0x0

    .line 1371
    .local v4, "curLineId":I
    const/4 v5, 0x0

    .line 1373
    .local v5, "curSpaceId":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_1

    const/16 v17, 0xb0

    move/from16 v0, v17

    if-lt v6, v0, :cond_9

    .line 1434
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v14

    .line 1440
    .local v14, "size":I
    if-ne v14, v10, :cond_13

    .line 1441
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :cond_2
    :goto_6
    return-void

    .line 1354
    .end local v2    # "addLine":Z
    .end local v4    # "curLineId":I
    .end local v5    # "curSpaceId":I
    .end local v6    # "i":I
    .end local v9    # "prevChar":C
    .end local v11    # "removeLine":Z
    .end local v14    # "size":I
    .end local v16    # "workWithLine":Z
    :cond_3
    aget-char v3, p2, v17

    .line 1355
    .local v3, "c":C
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v3, v0, :cond_4

    .line 1356
    add-int/lit8 v8, v8, 0x1

    .line 1354
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1358
    .end local v3    # "c":C
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 1359
    .restart local v16    # "workWithLine":Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 1360
    .restart local v11    # "removeLine":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 1366
    .restart local v2    # "addLine":Z
    :cond_8
    if-eqz v2, :cond_0

    .line 1367
    const/16 v17, 0x0

    aget v18, p3, v17

    add-int/lit8 v18, v18, 0x1

    aput v18, p3, v17

    goto :goto_4

    .line 1375
    .restart local v4    # "curLineId":I
    .restart local v5    # "curSpaceId":I
    .restart local v6    # "i":I
    .restart local v9    # "prevChar":C
    :cond_9
    aget-char v3, p2, v6

    .line 1377
    .restart local v3    # "c":C
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v3, v0, :cond_b

    .line 1373
    :cond_a
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1380
    :cond_b
    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v3, v0, :cond_d

    .line 1382
    if-gtz v5, :cond_a

    .line 1385
    add-int/lit8 v5, v5, 0x1

    .line 1392
    :goto_8
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v3, v0, :cond_11

    .line 1394
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v9, v0, :cond_c

    if-nez v2, :cond_c

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v4, v0, :cond_c

    .line 1395
    add-int/lit8 v7, v6, -0x1

    .line 1397
    :cond_c
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v4, v0, :cond_e

    .line 1399
    add-int/lit8 v4, v4, 0x1

    .line 1401
    goto :goto_7

    .line 1389
    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    .line 1404
    :cond_e
    if-eqz v11, :cond_f

    .line 1406
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_a

    .line 1407
    move v7, v6

    .line 1409
    goto :goto_7

    .line 1411
    :cond_f
    if-eqz v2, :cond_10

    .line 1413
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1415
    move v7, v6

    .line 1418
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 1421
    :cond_11
    if-eqz v9, :cond_12

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v9, v0, :cond_12

    const/16 v17, 0x20

    move/from16 v0, v17

    if-ne v3, v0, :cond_12

    .line 1423
    move v9, v3

    .line 1424
    goto :goto_7

    .line 1428
    :cond_12
    move v9, v3

    .line 1431
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    .line 1442
    .end local v3    # "c":C
    .restart local v14    # "size":I
    :cond_13
    if-le v14, v10, :cond_15

    .line 1443
    if-eqz v2, :cond_14

    :cond_14
    add-int/lit8 v17, v13, 0x1

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 1447
    :catch_0
    move-exception v15

    .line 1449
    .local v15, "t":Ljava/lang/Throwable;
    const-string v17, "Error setting selection"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1451
    invoke-virtual/range {p1 .. p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_6

    .line 1444
    .end local v15    # "t":Ljava/lang/Throwable;
    :cond_15
    if-ge v14, v10, :cond_2

    .line 1445
    if-eqz v11, :cond_16

    if-ne v13, v7, :cond_16

    const/16 v17, 0x0

    :goto_9
    sub-int v17, v13, v17

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :cond_16
    const/16 v17, 0x1

    goto :goto_9
.end method

.method public dispatchHighload(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 377
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$5;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invokeHighload(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method public fade(Landroid/view/View;FFILjava/lang/Runnable;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "from"    # F
    .param p3, "to"    # F
    .param p4, "duration"    # I
    .param p5, "after"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 1166
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 1168
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1169
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;

    invoke-direct {v2, p0, p1, p3, p5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$15;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1203
    :goto_0
    return-void

    .line 1186
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1188
    .local v0, "animation":Landroid/view/animation/Animation;
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1189
    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$16;

    invoke-direct {v1, p0, p5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$16;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1201
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public fade(Landroid/view/View;Ljava/lang/Runnable;ZI)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "after"    # Ljava/lang/Runnable;
    .param p3, "out"    # Z
    .param p4, "duration"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1147
    if-eqz p3, :cond_0

    move v4, v1

    :goto_0
    int-to-float v2, v4

    .line 1148
    .local v2, "from":F
    if-eqz p3, :cond_1

    :goto_1
    int-to-float v3, v0

    .local v3, "to":F
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object v5, p2

    .line 1150
    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fade(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 1151
    return-void

    .end local v2    # "from":F
    .end local v3    # "to":F
    :cond_0
    move v4, v0

    .line 1147
    goto :goto_0

    .restart local v2    # "from":F
    :cond_1
    move v0, v1

    .line 1148
    goto :goto_1
.end method

.method public fadeIn(Landroid/view/View;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "after"    # Ljava/lang/Runnable;
    .param p3, "duration"    # I

    .prologue
    .line 1141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fade(Landroid/view/View;Ljava/lang/Runnable;ZI)V

    .line 1142
    return-void
.end method

.method public fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "after"    # Ljava/lang/Runnable;
    .param p3, "duration"    # I

    .prologue
    .line 1136
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->fade(Landroid/view/View;Ljava/lang/Runnable;ZI)V

    .line 1137
    return-void
.end method

.method public getHardAnimationsEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 131
    sget-boolean v2, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_inited:Z

    if-nez v2, :cond_1

    .line 149
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 151
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getDensity()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_enabled:Z

    .line 158
    :goto_0
    sput-boolean v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_inited:Z

    .line 161
    :cond_1
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_enabled:Z

    return v0

    .line 155
    :cond_2
    sput-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_enabled:Z

    goto :goto_0
.end method

.method public getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;Z)V
    .locals 6
    .param p1, "originalImage"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "noFilter"    # Z
    .param p4, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Z",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 968
    .local p3, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;>;"
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V

    .line 969
    return-void
.end method

.method public getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V
    .locals 12
    .param p1, "originalImage"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "noFilter"    # Z
    .param p4, "sync"    # Z
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Z",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 973
    .local p3, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;>;"
    new-instance v2, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-direct {v2, p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;)V

    .line 978
    .local v2, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;

    move-object v1, p0

    move/from16 v3, p5

    move/from16 v4, p4

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$10;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;IZLcom/vkontakte/android/imagepicker/utils/ActionCallback;Z)V

    .line 1039
    .local v0, "getter":Ljava/lang/Runnable;
    if-eqz p4, :cond_0

    .line 1041
    new-instance v7, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 1045
    .local v7, "lock":Ljava/util/concurrent/Semaphore;
    const/4 v1, 0x1

    :try_start_0
    new-array v11, v1, [Z

    .line 1046
    .local v11, "unlock_executed":[Z
    new-instance v10, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;

    invoke-direct {v10, p0, v11, v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$11;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;[ZLjava/util/concurrent/Semaphore;)V

    .line 1060
    .local v10, "unlock":Ljava/lang/Runnable;
    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$12;

    invoke-direct {v1, p0, v0, v10}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$12;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->dispatchHighload(Ljava/lang/Runnable;)V

    .line 1071
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1073
    .local v8, "threadName":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$13;

    invoke-direct {v1, p0, v11, v8}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$13;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;[ZLjava/lang/String;)V

    .line 1088
    const/16 v3, 0x2710

    .line 1073
    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invokeHighload(Ljava/lang/Runnable;I)V

    .line 1090
    const-string v1, "Blocking %s thread in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "ImagePickerUtils: 902"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    .end local v7    # "lock":Ljava/util/concurrent/Semaphore;
    .end local v8    # "threadName":Ljava/lang/String;
    .end local v10    # "unlock":Ljava/lang/Runnable;
    .end local v11    # "unlock_executed":[Z
    :goto_0
    return-void

    .line 1094
    .restart local v7    # "lock":Ljava/util/concurrent/Semaphore;
    :catch_0
    move-exception v9

    .line 1096
    .local v9, "throwable":Ljava/lang/Throwable;
    const-string v1, "Cannot get image sync"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1101
    .end local v7    # "lock":Ljava/util/concurrent/Semaphore;
    .end local v9    # "throwable":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->dispatchHighload(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getImageByUri(Landroid/app/Activity;Landroid/net/Uri;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .locals 17
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 178
    const/16 v16, 0x0

    .line 180
    .local v16, "temp":Z
    const/4 v14, 0x0

    .local v14, "orientation":I
    const/4 v7, 0x0

    .line 185
    .local v7, "bucket_id":I
    const-string v1, "content"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getMediaColumnsProjection()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 189
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 190
    .local v9, "dataIndex":I
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 191
    .local v11, "idIndex":I
    const-string v1, "orientation"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 193
    .local v13, "orIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 195
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 196
    .local v10, "id":I
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 197
    .local v15, "path":Ljava/lang/String;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 223
    .end local v9    # "dataIndex":I
    .end local v11    # "idIndex":I
    .end local v13    # "orIndex":I
    :cond_0
    :goto_0
    if-eqz v16, :cond_5

    new-instance v12, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    const/4 v1, 0x1

    invoke-direct {v12, v10, v15, v1, v14}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(ILjava/lang/String;ZI)V

    .line 225
    .local v12, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    :goto_1
    if-eqz v7, :cond_1

    .line 226
    invoke-virtual {v12, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setBucketId(I)V

    .line 228
    :cond_1
    if-nez v14, :cond_2

    .line 229
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setOrientationByPath(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/io/File;)V

    .line 231
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":I
    .end local v12    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v15    # "path":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v12

    .line 199
    :cond_3
    const-string v1, "file"

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    const/4 v10, -0x1

    .line 202
    .restart local v10    # "id":I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 203
    .restart local v15    # "path":Ljava/lang/String;
    const/16 v16, 0x1

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getMediaColumnsProjection()[Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 210
    .restart local v8    # "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 213
    const-string v1, "orientation"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 215
    const/16 v16, 0x0

    .line 217
    goto :goto_0

    .line 220
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "id":I
    .end local v15    # "path":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 223
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "id":I
    .restart local v15    # "path":Ljava/lang/String;
    :cond_5
    new-instance v12, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-direct {v12, v10, v15, v14}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;-><init>(ILjava/lang/String;I)V

    goto :goto_1
.end method

.method public getPreviewForFilter(Landroid/content/Context;IILcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filter_id"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p4, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Ljava/lang/Object;>;"
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getFilterPreviewCacheKey(I)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsCached(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->exec(Ljava/lang/Object;)V

    .line 613
    :goto_0
    return-void

    .line 567
    :cond_0
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/String;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getQueue()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    return-object v0
.end method

.method public getSampleSize(III)I
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maximumSize"    # I

    .prologue
    .line 817
    if-lez p3, :cond_2

    .line 819
    const/4 v1, 0x1

    .line 821
    .local v1, "inSampleSize":I
    if-gt p1, p3, :cond_0

    if-le p2, p3, :cond_1

    .line 823
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p3

    div-float v3, v4, v5

    .line 825
    .local v3, "ratio":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 847
    .end local v3    # "ratio":F
    :cond_1
    :goto_0
    return v1

    .line 831
    .end local v1    # "inSampleSize":I
    :cond_2
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 833
    .local v0, "display":Landroid/util/DisplayMetrics;
    const/16 v4, 0x400

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 835
    .local v2, "limit":I
    if-lez p3, :cond_3

    .line 836
    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 838
    :cond_3
    const/4 v1, 0x1

    .line 840
    .restart local v1    # "inSampleSize":I
    if-gt p1, v2, :cond_4

    if-le p2, v2, :cond_1

    .line 842
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    div-float v3, v4, v5

    .line 844
    .restart local v3    # "ratio":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_0
.end method

.method public getThumbnailForImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 8
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "gridThumb"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/entries/ImageEntry;",
            "Z",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/high16 v7, 0x44000000    # 512.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 722
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_small_thumb_inited:Z

    if-nez v0, :cond_0

    .line 724
    const/high16 v0, 0x43120000    # 146.0f

    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v0, v4}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->dp(FF)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_size:I

    .line 725
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_size:I

    const/16 v4, 0xc0

    if-ge v0, v4, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_small_thumb:Z

    .line 726
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_size:I

    int-to-float v0, v0

    div-float v0, v7, v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_sample_size:I

    .line 727
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_size:I

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

    iput v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_thumb_small_sample_size:I

    .line 728
    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_small_thumb_inited:Z

    .line 731
    :cond_0
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->use_small_thumb:Z

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {p1, v1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getCacheKey(Z)Ljava/lang/String;

    move-result-object v3

    .line 733
    .local v3, "cacheKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getUseAlternateThumb()Z

    move-result v0

    invoke-direct {p0, v3, v0, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->postThumbnailFromMemcache(Ljava/lang/String;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 813
    :goto_2
    return-void

    .end local v3    # "cacheKey":Ljava/lang/String;
    :cond_2
    move v0, v2

    .line 725
    goto :goto_0

    :cond_3
    move v1, v2

    .line 731
    goto :goto_1

    .line 736
    .restart local v3    # "cacheKey":Ljava/lang/String;
    :cond_4
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/String;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->dispatchThumbnail(Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;)V

    goto :goto_2
.end method

.method public getThumbnailTasksLimit()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thumbnailTasksLimit:I

    return v0
.end method

.method public invoke(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->thread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 258
    return-void
.end method

.method public invokeGetAlbums(Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 6
    .param p1, "activity"    # Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;",
            "Landroid/content/ContentResolver;",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;",
            ">;>;",
            "Lcom/vkontakte/android/imagepicker/utils/ActionCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p3, "callback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Ljava/util/List<Lcom/vkontakte/android/imagepicker/entries/AlbumEntry;>;>;"
    .local p4, "cameraBucketCallback":Lcom/vkontakte/android/imagepicker/utils/ActionCallback;, "Lcom/vkontakte/android/imagepicker/utils/ActionCallback<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 435
    return-void
.end method

.method public invokeHighload(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highloadThread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 368
    return-void
.end method

.method public invokeHighload(Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->highloadThread:Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/imagepicker/utils/DispatchQueue;->postRunnable(Ljava/lang/Runnable;I)V

    .line 373
    return-void
.end method

.method public rotateImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V
    .locals 10
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "bitmap"    # Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    .prologue
    const/4 v9, 0x0

    .line 695
    if-nez p1, :cond_1

    .line 697
    const-string v0, "Image cannot be rotated, because it\'s null"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getOrientation()I

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 706
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getOrientation()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 710
    :try_start_0
    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 712
    .local v7, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v7}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    .end local v7    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v8

    .line 716
    .local v8, "throwable":Ljava/lang/Throwable;
    const-string v0, "Cannot rotate bitmap"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public scale(Landroid/view/View;FI)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "to"    # F
    .param p3, "duration"    # I

    .prologue
    .line 1112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->scale(Landroid/view/View;FILjava/lang/Runnable;)V

    .line 1113
    return-void
.end method

.method public scale(Landroid/view/View;FILjava/lang/Runnable;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "to"    # F
    .param p3, "duration"    # I
    .param p4, "after"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 1117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 1119
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$14;

    invoke-direct {v1, p0, p4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$14;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1132
    :cond_0
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 1156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 1158
    if-eqz p1, :cond_0

    .line 1159
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1161
    :cond_0
    return-void
.end method

.method public setHardAnimationDisabled()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_inited:Z

    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_enabled:Z

    .line 121
    return-void
.end method

.method public setHardAnimationsEnabled()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    sput-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_inited:Z

    .line 126
    sput-boolean v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->hanim_enabled:Z

    .line 127
    return-void
.end method

.method public setOrientationByPath(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/io/File;)V
    .locals 7
    .param p1, "image"    # Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 662
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "exif":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 664
    .local v1, "orientation":I
    const/4 v2, 0x0

    .line 666
    .local v2, "rotation":I
    packed-switch v1, :pswitch_data_0

    .line 685
    :goto_0
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v0    # "exif":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    .end local v2    # "rotation":I
    :goto_1
    return-void

    .line 669
    .restart local v0    # "exif":Landroid/media/ExifInterface;
    .restart local v1    # "orientation":I
    .restart local v2    # "rotation":I
    :pswitch_1
    const/4 v2, 0x0

    .line 670
    goto :goto_0

    .line 672
    :pswitch_2
    const/16 v2, 0x5a

    .line 673
    goto :goto_0

    .line 675
    :pswitch_3
    const/16 v2, 0xb4

    .line 676
    goto :goto_0

    .line 678
    :pswitch_4
    const/16 v2, 0x10e

    goto :goto_0

    .line 687
    .end local v0    # "exif":Landroid/media/ExifInterface;
    .end local v1    # "orientation":I
    .end local v2    # "rotation":I
    :catch_0
    move-exception v3

    .line 689
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string v4, "Cannot read orientation from EXIF"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 666
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

.method public setSelector(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1325
    const/4 v0, 0x0

    const v1, -0x66cc4a1b

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setSelector(Landroid/view/View;ZI)V

    .line 1326
    return-void
.end method

.method public setSelector(Landroid/view/View;ZI)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "preventStateSet"    # Z
    .param p3, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 1330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 1331
    invoke-direct {p0, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getSelector(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1335
    :goto_0
    if-nez p2, :cond_0

    .line 1337
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1338
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1339
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1341
    :cond_0
    return-void

    .line 1333
    :cond_1
    invoke-direct {p0, p3}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getSelector(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setThumbnailTasksLimit(I)V
    .locals 1
    .param p1, "limit"    # I

    .prologue
    .line 262
    new-instance v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$2;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method
