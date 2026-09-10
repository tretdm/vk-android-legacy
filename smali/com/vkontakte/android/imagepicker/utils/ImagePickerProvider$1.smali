.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;
.super Ljava/lang/Object;
.source "ImagePickerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->getPathForStyledImage(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;

.field private final synthetic val$compression:I

.field private final synthetic val$lock:Ljava/util/concurrent/Semaphore;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$result:[Ljava/lang/String;

.field private final synthetic val$size:I

.field private final synthetic val$toPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;Ljava/util/concurrent/Semaphore;Ljava/lang/String;ILjava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$path:Ljava/lang/String;

    iput p4, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$size:I

    iput-object p5, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$toPath:Ljava/lang/String;

    iput p6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$compression:I

    iput-object p7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$result:[Ljava/lang/String;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$path:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->access$0(Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;->access$1(Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider;Ljava/util/HashMap;)Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    move-result-object v3

    .line 182
    .local v3, "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    new-instance v12, Ljava/io/File;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getOrientation()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getOrientation()I

    move-result v2

    const/16 v4, 0xb4

    if-eq v2, v4, :cond_2

    const/16 v21, 0x1

    .line 185
    .local v21, "swapSides":Z
    :goto_0
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 186
    .local v14, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 190
    if-eqz v21, :cond_3

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    .line 191
    .local v23, "width":I
    :goto_1
    if-eqz v21, :cond_4

    iget v13, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 193
    .local v13, "height":I
    :goto_2
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$size:I

    move/from16 v0, v23

    invoke-virtual {v2, v0, v13, v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getSampleSize(III)I

    move-result v17

    .line 195
    .local v17, "sampleSize":I
    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 198
    const/4 v2, 0x1

    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 200
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v2, v4, :cond_0

    .line 201
    const/4 v2, 0x1

    iput-boolean v2, v14, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 203
    :cond_0
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 204
    .local v18, "sourceBitmap":Landroid/graphics/Bitmap;
    new-instance v20, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 206
    .local v20, "styledBitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    if-eqz v21, :cond_5

    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v23, v0

    .line 207
    :goto_3
    if-eqz v21, :cond_6

    iget v13, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 209
    :goto_4
    div-int v2, v23, v17

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setCropWidth(I)V

    .line 210
    div-int v2, v13, v17

    invoke-virtual {v3, v2}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->setCropHeight(I)V

    .line 212
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->rotateImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 214
    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getCropData()[F

    move-result-object v11

    .line 221
    .local v11, "cropData":[F
    if-eqz v21, :cond_7

    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_5
    int-to-float v2, v2

    const/4 v4, 0x4

    aget v4, v11, v4

    div-float v15, v2, v4

    .line 222
    .local v15, "ratioX":F
    if-eqz v21, :cond_8

    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_6
    int-to-float v2, v2

    const/4 v4, 0x5

    aget v4, v11, v4

    div-float v16, v2, v4

    .line 224
    .local v16, "ratioY":F
    const/4 v2, 0x0

    aget v4, v11, v2

    mul-float/2addr v4, v15

    aput v4, v11, v2

    .line 225
    const/4 v2, 0x1

    aget v4, v11, v2

    mul-float v4, v4, v16

    aput v4, v11, v2

    .line 226
    const/4 v2, 0x2

    aget v4, v11, v2

    mul-float/2addr v4, v15

    aput v4, v11, v2

    .line 227
    const/4 v2, 0x3

    aget v4, v11, v2

    mul-float v4, v4, v16

    aput v4, v11, v2

    .line 228
    const/4 v2, 0x4

    aget v4, v11, v2

    mul-float/2addr v4, v15

    aput v4, v11, v2

    .line 229
    const/4 v2, 0x5

    aget v4, v11, v2

    mul-float v4, v4, v16

    aput v4, v11, v2

    .line 231
    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->setCropped([F)V

    .line 234
    .end local v11    # "cropData":[F
    .end local v15    # "ratioX":F
    .end local v16    # "ratioY":F
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    new-instance v6, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1$1;-><init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 244
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$size:I

    .line 234
    invoke-virtual/range {v2 .. v8}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->style(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Landroid/graphics/Bitmap;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V

    .line 246
    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 247
    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v4, "Error processing image (perhaps, there is no enought memory)"

    invoke-direct {v2, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v3    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "height":I
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v17    # "sampleSize":I
    .end local v18    # "sourceBitmap":Landroid/graphics/Bitmap;
    .end local v20    # "styledBitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .end local v21    # "swapSides":Z
    .end local v23    # "width":I
    :catch_0
    move-exception v9

    .line 270
    .local v9, "access":Ljava/lang/IllegalAccessException;
    :try_start_1
    const-string v2, "Error getPathForStyledImage"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v9, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$result:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v2, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 282
    .end local v9    # "access":Ljava/lang/IllegalAccessException;
    :goto_7
    return-void

    .line 183
    .restart local v3    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .restart local v12    # "file":Ljava/io/File;
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 190
    .restart local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v21    # "swapSides":Z
    :cond_3
    :try_start_2
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    goto/16 :goto_1

    .line 191
    .restart local v23    # "width":I
    :cond_4
    iget v13, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto/16 :goto_2

    .line 206
    .restart local v13    # "height":I
    .restart local v17    # "sampleSize":I
    .restart local v18    # "sourceBitmap":Landroid/graphics/Bitmap;
    .restart local v20    # "styledBitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    :cond_5
    iget v0, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v23, v0

    goto/16 :goto_3

    .line 207
    :cond_6
    iget v13, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto/16 :goto_4

    .line 221
    .restart local v11    # "cropData":[F
    :cond_7
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto/16 :goto_5

    .line 222
    .restart local v15    # "ratioX":F
    :cond_8
    iget v2, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto/16 :goto_6

    .line 249
    .end local v11    # "cropData":[F
    .end local v15    # "ratioX":F
    :cond_9
    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsStyled()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v2, v4, :cond_a

    .line 250
    invoke-static {}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->instance()Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getStyle()Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->text(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 252
    :cond_a
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$toPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v10, "bmpFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 255
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 260
    :cond_b
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$toPath:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 261
    .local v19, "stream":Ljava/io/FileOutputStream;
    invoke-virtual/range {v20 .. v20}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$compression:I

    move-object/from16 v0, v19

    invoke-virtual {v2, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 263
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->flush()V

    .line 264
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$result:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_7

    .line 274
    .end local v3    # "image":Lcom/vkontakte/android/imagepicker/entries/ImageEntry;
    .end local v10    # "bmpFile":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "height":I
    .end local v14    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v17    # "sampleSize":I
    .end local v18    # "sourceBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "stream":Ljava/io/FileOutputStream;
    .end local v20    # "styledBitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .end local v21    # "swapSides":Z
    .end local v23    # "width":I
    :catch_1
    move-exception v22

    .line 276
    .local v22, "throwable":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "Error getPathForStyledImage "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-static {v2, v0, v4}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_7

    .line 279
    .end local v22    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerProvider$1;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 281
    throw v2
.end method
