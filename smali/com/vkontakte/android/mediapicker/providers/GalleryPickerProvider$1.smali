.class Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;
.super Ljava/lang/Object;
.source "GalleryPickerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getPathForStyledImage(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

.field private final synthetic val$compression:I

.field private final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$result:[Ljava/lang/String;

.field private final synthetic val$size:I

.field private final synthetic val$toPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;Ljava/util/concurrent/Semaphore;Ljava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->this$0:Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$path:Ljava/lang/String;

    iput p4, p0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$size:I

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$toPath:Ljava/lang/String;

    iput p6, p0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$compression:I

    iput-object p7, p0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$result:[Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 177
    :try_start_0
    new-instance v3, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$path:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->parseImagePath(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;-><init>(Ljava/util/HashMap;)V

    .line 178
    .local v3, "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$path:Ljava/lang/String;

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    const-string v2, "GalleryPickerProvider whispers: image doesn\'t exist on this path %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getOrientation()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getOrientation()I

    move-result v2

    const/16 v4, 0xb4

    if-eq v2, v4, :cond_2

    const/16 v25, 0x1

    .line 187
    .local v25, "swapSides":Z
    :goto_0
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 188
    .local v17, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 190
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 192
    if-eqz v25, :cond_3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v27, v0

    .line 193
    .local v27, "width":I
    :goto_1
    if-eqz v25, :cond_4

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 195
    .local v16, "height":I
    :goto_2
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$size:I

    move/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1, v4}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getSampleSize(III)I

    move-result v20

    .line 197
    .local v20, "sampleSize":I
    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 199
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 200
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 202
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v2, v4, :cond_1

    .line 203
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 205
    :cond_1
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 207
    .local v21, "sourceBitmap":Landroid/graphics/Bitmap;
    if-nez v21, :cond_5

    .line 208
    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v4, "Image doesnt exist or corrupted"

    invoke-direct {v2, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v3    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "height":I
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "sampleSize":I
    .end local v21    # "sourceBitmap":Landroid/graphics/Bitmap;
    .end local v25    # "swapSides":Z
    .end local v27    # "width":I
    :catch_0
    move-exception v11

    .line 285
    .local v11, "access":Ljava/lang/IllegalAccessException;
    :try_start_1
    const-string v2, "Error getPathForStyledImage"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v11, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$result:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 297
    .end local v11    # "access":Ljava/lang/IllegalAccessException;
    :goto_3
    return-void

    .line 185
    .restart local v3    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .restart local v15    # "file":Ljava/io/File;
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 192
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v25    # "swapSides":Z
    :cond_3
    :try_start_2
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    goto :goto_1

    .line 193
    .restart local v27    # "width":I
    :cond_4
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    goto :goto_2

    .line 210
    .restart local v16    # "height":I
    .restart local v20    # "sampleSize":I
    .restart local v21    # "sourceBitmap":Landroid/graphics/Bitmap;
    :cond_5
    new-instance v24, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 212
    .local v24, "styledBitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    if-eqz v25, :cond_7

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v27, v0

    .line 213
    :goto_4
    if-eqz v25, :cond_8

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    .line 215
    :goto_5
    div-int v2, v27, v20

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setCropWidth(I)V

    .line 216
    div-int v2, v16, v20

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->setCropHeight(I)V

    .line 218
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->instance()Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->rotateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 220
    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 222
    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getCropData()[F

    move-result-object v14

    .line 225
    .local v14, "cropData":[F
    const-string v4, "width %d (%d) -> %f, height %d (%d) -> %f"

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x2

    const/4 v6, 0x4

    aget v6, v14, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x4

    invoke-virtual/range {v24 .. v24}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x5

    const/4 v6, 0x5

    aget v6, v14, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    if-eqz v25, :cond_9

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_6
    int-to-float v2, v2

    const/4 v4, 0x4

    aget v4, v14, v4

    div-float v18, v2, v4

    .line 228
    .local v18, "ratioX":F
    if-eqz v25, :cond_a

    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_7
    int-to-float v2, v2

    const/4 v4, 0x5

    aget v4, v14, v4

    div-float v19, v2, v4

    .line 230
    .local v19, "ratioY":F
    const/4 v2, 0x0

    aget v4, v14, v2

    mul-float v4, v4, v18

    aput v4, v14, v2

    .line 231
    const/4 v2, 0x1

    aget v4, v14, v2

    mul-float v4, v4, v19

    aput v4, v14, v2

    .line 232
    const/4 v2, 0x2

    aget v4, v14, v2

    mul-float v4, v4, v18

    aput v4, v14, v2

    .line 233
    const/4 v2, 0x3

    aget v4, v14, v2

    mul-float v4, v4, v19

    aput v4, v14, v2

    .line 234
    const/4 v2, 0x4

    aget v4, v14, v2

    mul-float v4, v4, v18

    aput v4, v14, v2

    .line 235
    const/4 v2, 0x5

    aget v4, v14, v2

    mul-float v4, v4, v19

    aput v4, v14, v2

    .line 237
    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setCropped([F)V

    .line 240
    .end local v14    # "cropData":[F
    .end local v18    # "ratioX":F
    .end local v19    # "ratioY":F
    :cond_6
    invoke-static {}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v7, v0, v1}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1$1;-><init>(Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 250
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$size:I

    const/4 v10, 0x2

    .line 240
    invoke-virtual/range {v2 .. v10}, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->style(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZZLcom/vkontakte/android/mediapicker/entries/ActionCallback;ZII)V

    .line 252
    invoke-virtual/range {v24 .. v24}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    .line 253
    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v4, "Error processing image (perhaps, there is no enought memory)"

    invoke-direct {v2, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    .end local v3    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "height":I
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "sampleSize":I
    .end local v21    # "sourceBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "styledBitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .end local v25    # "swapSides":Z
    .end local v27    # "width":I
    :catch_1
    move-exception v26

    .line 291
    .local v26, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "Error getPathForStyledImage "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v26

    invoke-static {v2, v0, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_3

    .line 212
    .end local v26    # "throwable":Ljava/lang/Throwable;
    .restart local v3    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "height":I
    .restart local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v20    # "sampleSize":I
    .restart local v21    # "sourceBitmap":Landroid/graphics/Bitmap;
    .restart local v24    # "styledBitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .restart local v25    # "swapSides":Z
    .restart local v27    # "width":I
    :cond_7
    :try_start_4
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v27, v0

    goto/16 :goto_4

    .line 213
    :cond_8
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    goto/16 :goto_5

    .line 227
    .restart local v14    # "cropData":[F
    :cond_9
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto/16 :goto_6

    .line 228
    .restart local v18    # "ratioX":F
    :cond_a
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto/16 :goto_7

    .line 255
    .end local v14    # "cropData":[F
    .end local v18    # "ratioX":F
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v2, v4, :cond_c

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsStyled()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 260
    new-instance v23, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-direct/range {v23 .. v23}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;-><init>()V

    .line 261
    .local v23, "style":Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    invoke-virtual {v3}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->setText(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {v24 .. v24}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 264
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v0, v23

    invoke-static {v2, v4, v5, v0}, Lcom/vkontakte/android/mediapicker/gl/TextPainter;->drawLobsterForBitmap(Landroid/graphics/Canvas;IILcom/vkontakte/android/mediapicker/entries/StyleEntry;)V

    .line 267
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v23    # "style":Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    :cond_c
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$toPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v13, "bmpFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_d

    .line 270
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 275
    :cond_d
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$toPath:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 276
    .local v22, "stream":Ljava/io/FileOutputStream;
    invoke-virtual/range {v24 .. v24}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$compression:I

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 278
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->flush()V

    .line 279
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$result:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_3

    .line 294
    .end local v3    # "image":Lcom/vkontakte/android/mediapicker/entries/ImageEntry;
    .end local v13    # "bmpFile":Ljava/io/File;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "height":I
    .end local v17    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "sampleSize":I
    .end local v21    # "sourceBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "stream":Ljava/io/FileOutputStream;
    .end local v24    # "styledBitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .end local v25    # "swapSides":Z
    .end local v27    # "width":I
    :catchall_0
    move-exception v2

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 296
    throw v2
.end method
