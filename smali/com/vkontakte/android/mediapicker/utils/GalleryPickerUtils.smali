.class public Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;
.super Lcom/vkontakte/android/mediapicker/utils/Loggable;
.source "GalleryPickerUtils.java"


# static fields
.field private static final MaximumCaptionLength:I = 0xb0

.field public static final SMALL_SCREEN_FILTERS_ENABLED:Z

.field public static emptyOnClickListener:Landroid/view/View$OnClickListener;

.field private static force_filters_disabled:Z

.field private static hanim_enabled:Z

.field private static hanim_inited:Z

.field private static instance:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

.field private static is_device_shitty:Z

.field private static is_device_shitty_inited:Z

.field public static sharedInstance:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private static shittyDevices:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    .line 43
    sput-boolean v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->force_filters_disabled:Z

    .line 44
    sput-boolean v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->hanim_inited:Z

    .line 48
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$1;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->emptyOnClickListener:Landroid/view/View$OnClickListener;

    .line 82
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "GT-S5360"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "GT-S5830M"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GT-S5830i"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GT-S5830C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GT-S5570I"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GT-S5363"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GT-S5367"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GT-S6102"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GT-S6102B"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GT-S5300"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "GT-S5839i"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "GT-S6802B"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "GT-S5302B"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "GT-S6802"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "GT-S5369"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "GT-B5330"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "GT-B5512B"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ZTE V768"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MS1"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "PSPR355"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ONE TOUCH 983"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Vodafone Smart II"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TREND"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "OMNI"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Multilaser Orion"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->shittyDevices:[Ljava/lang/String;

    .line 91
    sput-boolean v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->is_device_shitty:Z

    sput-boolean v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->is_device_shitty_inited:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/Loggable;-><init>()V

    .line 160
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # Lcom/vkontakte/android/mediapicker/entries/ActionCallback;
    .param p3, "x3"    # Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAlbums(Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    return-void
.end method

.method public static closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Cannot close an album cursor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getAlbums(Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 34
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;",
            ">;>;",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;>;>;"
    .local p3, "cameraBucketCallback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<[Ljava/lang/Integer;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "bucket_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "bucket_display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "datetaken"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "orientation"

    aput-object v3, v4, v2

    .line 209
    .local v4, "projection":[Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, "datetaken DESC"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 211
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 213
    :cond_0
    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 214
    if-nez v18, :cond_2

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    .line 313
    .end local v18    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 214
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    .end local v18    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v29

    .line 310
    .local v29, "throwable":Ljava/lang/Throwable;
    invoke-virtual/range {p2 .. p2}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->getHasExecuted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 219
    .end local v29    # "throwable":Ljava/lang/Throwable;
    .restart local v18    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v25, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v21, "entries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;>;"
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 223
    .local v23, "imageIdColumn":I
    const-string v2, "bucket_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 224
    .local v12, "bucketIdColumn":I
    const-string v2, "bucket_display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 225
    .local v14, "bucketNameColumn":I
    const-string v2, "_data"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 226
    .local v19, "dataColumn":I
    const-string v2, "datetaken"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 227
    .local v20, "dateColumn":I
    const-string v2, "orientation"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 229
    .local v27, "orientationColumn":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getCameraDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, "cameraFolder":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->getVKCameraDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 230
    .local v31, "vkCameraFolder":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "cameraFound":Z
    const/16 v32, 0x0

    .line 231
    .local v32, "vkCameraFound":Z
    const/4 v15, -0x1

    .local v15, "cameraBucketId":I
    const/16 v30, -0x1

    .line 235
    .local v30, "vkCameraBucketId":I
    :cond_4
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 236
    .local v7, "imageId":I
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 237
    .local v6, "bucketId":I
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 238
    .local v13, "bucketName":Ljava/lang/String;
    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "path":Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 240
    .local v8, "dateTaken":I
    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 242
    .local v10, "orientation":I
    new-instance v5, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-direct/range {v5 .. v10}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(IIILjava/lang/String;I)V

    .line 244
    .local v5, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 246
    new-instance v11, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-direct {v11, v6, v13, v7}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;-><init>(ILjava/lang/String;I)V

    .line 248
    .local v11, "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    invoke-virtual {v11, v5}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->addImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    .line 250
    if-nez v17, :cond_6

    if-eqz v9, :cond_6

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 252
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->setIsCamera(Z)V

    .line 253
    const/4 v2, 0x0

    invoke-virtual {v11}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 255
    invoke-virtual {v11}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v15

    .line 257
    const/16 v17, 0x1

    .line 273
    :goto_2
    invoke-virtual {v11}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .end local v11    # "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 282
    invoke-static/range {v18 .. v18}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->closeCursor(Landroid/database/Cursor;)V

    .line 284
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v28, "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 288
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 290
    .local v26, "lastKey":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    .line 292
    .local v24, "key":Ljava/lang/Integer;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    .line 294
    .restart local v11    # "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    invoke-virtual {v11}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->updateCounter()V

    .line 296
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 297
    invoke-virtual {v11}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->setHasNext()V

    .line 299
    :cond_5
    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 259
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v24    # "key":Ljava/lang/Integer;
    .end local v26    # "lastKey":Ljava/lang/Integer;
    .end local v28    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;>;"
    :cond_6
    if-nez v32, :cond_8

    if-eqz v9, :cond_8

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 261
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->setIsCamera(Z)V

    .line 262
    if-eqz v17, :cond_7

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v11}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 264
    invoke-virtual {v11}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v30

    .line 266
    const/16 v32, 0x1

    goto/16 :goto_2

    .line 262
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 270
    :cond_8
    invoke-virtual {v11}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 277
    .end local v11    # "album":Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;
    :cond_9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;

    invoke-virtual {v2, v5}, Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;->addImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;)V

    goto/16 :goto_3

    .line 303
    .restart local v28    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;>;"
    :cond_a
    if-nez v17, :cond_b

    if-eqz v32, :cond_c

    .line 304
    :cond_b
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Integer;

    const/16 v33, 0x0

    if-eqz v17, :cond_d

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_6
    aput-object v2, v3, v33

    const/16 v33, 0x1

    if-eqz v17, :cond_e

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_7
    aput-object v2, v3, v33

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    .line 306
    :cond_c
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 304
    :cond_d
    const/4 v2, 0x0

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public static getAreFiltersSupported()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x1

    .line 76
    .local v0, "supported":Z
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDensity()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-gez v1, :cond_0

    move v1, v2

    :goto_0
    and-int/2addr v0, v1

    .line 77
    sget-boolean v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->force_filters_disabled:Z

    if-nez v1, :cond_1

    :goto_1
    and-int/2addr v0, v3

    .line 79
    return v0

    :cond_0
    move v1, v3

    .line 76
    goto :goto_0

    :cond_1
    move v3, v2

    .line 77
    goto :goto_1
.end method

.method public static getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 124
    if-nez p0, :cond_1

    .line 125
    const/4 p0, 0x0

    .line 134
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 128
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    const-string v0, "file://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 131
    :cond_2
    const-string v0, "impick://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "impick://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getIsDeviceShitty()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 95
    sget-boolean v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->is_device_shitty_inited:Z

    if-eqz v4, :cond_0

    .line 96
    sget-boolean v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->is_device_shitty:Z

    .line 109
    .local v0, "arr$":[Ljava/lang/String;
    .local v2, "i$":I
    .local v3, "len$":I
    :goto_0
    return v4

    .line 98
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->shittyDevices:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 100
    .local v1, "device":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 102
    sput-boolean v6, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->is_device_shitty:Z

    .line 107
    .end local v1    # "device":Ljava/lang/String;
    :cond_1
    sput-boolean v6, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->is_device_shitty_inited:Z

    .line 109
    sget-boolean v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->is_device_shitty:Z

    goto :goto_0

    .line 98
    .restart local v1    # "device":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getSelector(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "color"    # I

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 549
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 552
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    .line 554
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 581
    .local v1, "selectionDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 582
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 583
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 585
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_0

    .line 586
    const/16 v2, 0x96

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/StateListDrawable;->setExitFadeDuration(I)V

    .line 588
    :cond_0
    return-object v0

    .line 558
    .end local v1    # "selectionDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$7;-><init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;I)V

    .restart local v1    # "selectionDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getThumbnailAnimationDuration()I
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getHardAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xfa

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method public static instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    return-object v0
.end method

.method public static isFileStyled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 139
    if-eqz p0, :cond_0

    const-string v0, "impick"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setForceFiltersDisabled(Z)V
    .locals 0
    .param p0, "isDisabled"    # Z

    .prologue
    .line 64
    sput-boolean p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->force_filters_disabled:Z

    .line 65
    return-void
.end method

.method public static setViewNotFocusable(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 114
    if-nez p0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method public static showFiltersToast()V
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/LangProvider;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
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
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->bounce(Landroid/view/View;ZLjava/lang/Runnable;)V

    .line 464
    return-void
.end method

.method public bounce(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "reverse"    # Z
    .param p3, "onToggled"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 469
    if-eqz p1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-ge v2, v3, :cond_2

    .line 471
    :cond_0
    if-eqz p3, :cond_1

    .line 475
    :try_start_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v1

    .line 479
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "Cannot toggle in bouncer"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 486
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_2
    if-eqz p2, :cond_3

    const v0, 0x3f547ae1    # 0.83f

    .line 490
    .local v0, "ratio":F
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x4e

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;

    invoke-direct {v3, p0, p1, v0, p3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$6;-><init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 535
    :catch_1
    move-exception v1

    .line 537
    .restart local v1    # "throwable":Ljava/lang/Throwable;
    const-string v2, "Cannot bounce badge, setting scale & calling onToggled"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 540
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 542
    if-eqz p3, :cond_1

    .line 543
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 486
    .end local v0    # "ratio":F
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_3
    const v0, 0x3f95c28f    # 1.17f

    goto :goto_1
.end method

.method public clearTextInput(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/EditText;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xb0

    .line 615
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 620
    .local v0, "selection":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 622
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 623
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public fade(Landroid/view/View;FFILjava/lang/Runnable;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "from"    # F
    .param p3, "to"    # F
    .param p4, "duration"    # I
    .param p5, "after"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 375
    if-nez p1, :cond_1

    .line 377
    if-eqz p5, :cond_0

    .line 381
    :try_start_0
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v1

    .line 385
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v3, "Cannot execute action \"after\" in ImagePickerUtils.fade"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 391
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_2

    .line 393
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 397
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;

    invoke-direct {v4, p0, p1, p3, p5}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$4;-><init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Landroid/view/View;FLjava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 421
    :catch_1
    move-exception v1

    .line 423
    .restart local v1    # "throwable":Ljava/lang/Throwable;
    const-string v3, "Cannot animate view, setting alpha"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 426
    if-eqz p5, :cond_0

    .line 430
    :try_start_2
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 432
    :catch_2
    move-exception v2

    .line 434
    .local v2, "throwable2":Ljava/lang/Throwable;
    const-string v3, "Cannot call after action"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 441
    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v2    # "throwable2":Ljava/lang/Throwable;
    :cond_2
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 443
    .local v0, "animation":Landroid/view/animation/Animation;
    int-to-long v3, p4

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 444
    new-instance v3, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$5;

    invoke-direct {v3, p0, p5}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$5;-><init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 456
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
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 356
    if-eqz p3, :cond_0

    move v2, v0

    .line 357
    .local v2, "from":F
    :goto_0
    if-eqz p3, :cond_1

    .local v3, "to":F
    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move-object v5, p2

    .line 359
    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fade(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 360
    return-void

    .end local v2    # "from":F
    .end local v3    # "to":F
    :cond_0
    move v2, v3

    .line 356
    goto :goto_0

    .restart local v2    # "from":F
    :cond_1
    move v3, v0

    .line 357
    goto :goto_1
.end method

.method public fadeIn(Landroid/view/View;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "after"    # Ljava/lang/Runnable;
    .param p3, "duration"    # I

    .prologue
    .line 350
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fade(Landroid/view/View;Ljava/lang/Runnable;ZI)V

    .line 351
    return-void
.end method

.method public fadeOut(Landroid/view/View;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "after"    # Ljava/lang/Runnable;
    .param p3, "duration"    # I

    .prologue
    .line 345
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->fade(Landroid/view/View;Ljava/lang/Runnable;ZI)V

    .line 346
    return-void
.end method

.method public getHardAnimationsEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 149
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->hanim_inited:Z

    if-nez v0, :cond_0

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->getDensity()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->hanim_enabled:Z

    .line 152
    sput-boolean v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->hanim_inited:Z

    .line 155
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->hanim_enabled:Z

    return v0

    .line 151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 165
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->invoke(Ljava/lang/Runnable;)V

    .line 166
    return-void
.end method

.method public invokeGetAlbums(Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;",
            ">;>;",
            "Lcom/vkontakte/android/mediapicker/entries/ActionCallback",
            "<[",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "callback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<Ljava/util/List<Lcom/vkontakte/android/mediapicker/entries/AlbumEntry;>;>;"
    .local p3, "cameraBucketCallback":Lcom/vkontakte/android/mediapicker/entries/ActionCallback;, "Lcom/vkontakte/android/mediapicker/entries/ActionCallback<[Ljava/lang/Integer;>;"
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;-><init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invoke(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public scale(Landroid/view/View;FI)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "to"    # F
    .param p3, "duration"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->scale(Landroid/view/View;FILjava/lang/Runnable;)V

    .line 322
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
    .line 326
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$3;

    invoke-direct {v1, p0, p4}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$3;-><init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 341
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
    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 367
    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 370
    :cond_0
    return-void
.end method

.method public setSelector(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 593
    const/4 v0, 0x0

    const v1, -0x66cc4a1b

    invoke-virtual {p0, p1, v0, v1}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setSelector(Landroid/view/View;ZI)V

    .line 594
    return-void
.end method

.method public setSelector(Landroid/view/View;ZI)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "preventStateSet"    # Z
    .param p3, "color"    # I

    .prologue
    const/4 v2, 0x0

    .line 598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 599
    invoke-direct {p0, p3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getSelector(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :goto_0
    if-nez p2, :cond_0

    .line 605
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 606
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 607
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 609
    :cond_0
    return-void

    .line 601
    :cond_1
    invoke-direct {p0, p3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getSelector(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
