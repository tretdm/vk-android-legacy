.class Lcom/vkontakte/android/fragments/SignupProfileFragment$7;
.super Ljava/lang/Object;
.source "SignupProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupProfileFragment;->updatePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 183
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$200(Lcom/vkontakte/android/fragments/SignupProfileFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 185
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "file"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 186
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "r"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 187
    .local v15, "fd":Landroid/os/ParcelFileDescriptor;
    const/16 v20, 0x0

    .line 188
    .local v20, "rotation":I
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    const/4 v1, 0x1

    :try_start_1
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "orientation"

    aput-object v5, v3, v1

    .line 191
    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 192
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 195
    :cond_1
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "img rotation is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 198
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "file"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v20, :cond_4

    .line 199
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v1, v2}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$400(Lcom/vkontakte/android/fragments/SignupProfileFragment;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v19

    .line 200
    .local v19, "realPath":Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 202
    :try_start_3
    new-instance v14, Landroid/media/ExifInterface;

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 203
    .local v14, "exif":Landroid/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v14, v1, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v17

    .line 204
    .local v17, "o":I
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exif orientation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 205
    packed-switch v17, :pswitch_data_0

    .line 222
    .end local v14    # "exif":Landroid/media/ExifInterface;
    .end local v17    # "o":I
    .end local v19    # "realPath":Ljava/lang/String;
    :cond_4
    :goto_1
    :pswitch_0
    :try_start_4
    new-instance v18, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 223
    .local v18, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    move-object/from16 v0, v18

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 224
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 225
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v21

    .line 226
    .local v21, "ts":I
    move-object/from16 v0, v18

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 227
    .local v12, "bs":I
    const/4 v1, 0x0

    move-object/from16 v0, v18

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 228
    move/from16 v0, v21

    if-le v12, v0, :cond_5

    .line 229
    int-to-float v1, v12

    move/from16 v0, v21

    int-to-float v5, v0

    div-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    move-object/from16 v0, v18

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 231
    :cond_5
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 232
    .local v4, "_bmp":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_6

    .line 233
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 234
    .local v9, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v20

    int-to-float v1, v0

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 235
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 237
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :cond_6
    move-object v11, v4

    .line 238
    .local v11, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 245
    .end local v4    # "_bmp":Landroid/graphics/Bitmap;
    .end local v12    # "bs":I
    .end local v15    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v20    # "rotation":I
    .end local v21    # "ts":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/fragments/SignupProfileFragment$7;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v5, Lcom/vkontakte/android/fragments/SignupProfileFragment$7$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Lcom/vkontakte/android/fragments/SignupProfileFragment$7$1;-><init>(Lcom/vkontakte/android/fragments/SignupProfileFragment$7;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    :goto_3
    return-void

    .line 207
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v14    # "exif":Landroid/media/ExifInterface;
    .restart local v15    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "o":I
    .restart local v19    # "realPath":Ljava/lang/String;
    .restart local v20    # "rotation":I
    :pswitch_1
    const/16 v20, 0x0

    .line 208
    goto :goto_1

    .line 210
    :pswitch_2
    const/16 v20, 0x5a

    .line 211
    goto/16 :goto_1

    .line 213
    :pswitch_3
    const/16 v20, 0xb4

    .line 214
    goto/16 :goto_1

    .line 216
    :pswitch_4
    const/16 v20, 0x10e

    goto/16 :goto_1

    .line 240
    .end local v14    # "exif":Landroid/media/ExifInterface;
    .end local v15    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "o":I
    .end local v19    # "realPath":Ljava/lang/String;
    .end local v20    # "rotation":I
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thumbs/t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".jpg"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 241
    .local v16, "fname":Ljava/lang/String;
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Before get styled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getThumbnail(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 243
    .restart local v11    # "bmp":Landroid/graphics/Bitmap;
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After get, result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 251
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v16    # "fname":Ljava/lang/String;
    :catch_0
    move-exception v22

    .local v22, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    move-object/from16 v0, v22

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 219
    .end local v22    # "x":Ljava/lang/Exception;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v15    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "realPath":Ljava/lang/String;
    .restart local v20    # "rotation":I
    :catch_1
    move-exception v1

    goto/16 :goto_1

    .line 196
    .end local v19    # "realPath":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 205
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
