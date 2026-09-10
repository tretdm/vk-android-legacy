.class Lcom/vkontakte/android/ui/AttachmentsEditorView$13;
.super Ljava/lang/Object;
.source "AttachmentsEditorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/AttachmentsEditorView;->createLocalImageView(Ljava/lang/String;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

.field private final synthetic val$fileUri:Ljava/lang/String;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/AttachmentsEditorView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    iput-object p2, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$fileUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$v:Landroid/view/View;

    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 668
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$fileUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 669
    .local v2, "uri":Landroid/net/Uri;
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Add attachment: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 673
    const/4 v5, 0x1

    .line 674
    const/4 v6, 0x0

    .line 671
    invoke-static {v1, v2, v5, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->queryMiniThumbnails(Landroid/content/ContentResolver;Landroid/net/Uri;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 675
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 676
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 677
    const-string v1, "_data"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 678
    .local v22, "thumb":Ljava/lang/String;
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Image thumb "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 681
    .end local v22    # "thumb":Ljava/lang/String;
    :cond_0
    if-eqz v14, :cond_1

    .line 682
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 685
    .end local v14    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "file"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$fileUri:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getNeedUseStyledThumb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 686
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "impick"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 687
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$fileUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getOriginalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 688
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "r"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 689
    .local v16, "fd":Landroid/os/ParcelFileDescriptor;
    const/16 v21, 0x0

    .line 690
    .local v21, "rotation":I
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "content"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    .line 692
    const/4 v1, 0x1

    :try_start_3
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "orientation"

    aput-object v5, v3, v1

    .line 693
    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 694
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 695
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 697
    :cond_4
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "img rotation is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 700
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_5
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "file"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v21, :cond_7

    .line 701
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-static {v1, v2}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->access$16(Lcom/vkontakte/android/ui/AttachmentsEditorView;Landroid/net/Uri;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v20

    .line 702
    .local v20, "realPath":Ljava/lang/String;
    if-eqz v20, :cond_7

    .line 704
    :try_start_5
    new-instance v15, Landroid/media/ExifInterface;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 705
    .local v15, "exif":Landroid/media/ExifInterface;
    const-string v1, "Orientation"

    const/4 v5, 0x0

    invoke-virtual {v15, v1, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v18

    .line 706
    .local v18, "o":I
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exif orientation "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 707
    packed-switch v18, :pswitch_data_0

    .line 724
    .end local v15    # "exif":Landroid/media/ExifInterface;
    .end local v18    # "o":I
    .end local v20    # "realPath":Ljava/lang/String;
    :cond_7
    :goto_2
    :pswitch_0
    :try_start_6
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 725
    .local v19, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    move-object/from16 v0, v19

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 726
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 727
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    .line 728
    .local v23, "ts":I
    move-object/from16 v0, v19

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 729
    .local v12, "bs":I
    const/4 v1, 0x0

    move-object/from16 v0, v19

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 730
    move/from16 v0, v23

    if-le v12, v0, :cond_8

    .line 731
    int-to-float v1, v12

    move/from16 v0, v23

    int-to-float v5, v0

    div-float/2addr v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    move-object/from16 v0, v19

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 733
    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v5, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 734
    .local v4, "_bmp":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_9

    .line 735
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 736
    .local v9, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v21

    int-to-float v1, v0

    invoke-virtual {v9, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 737
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 739
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    :cond_9
    move-object v11, v4

    .line 740
    .local v11, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 747
    .end local v4    # "_bmp":Landroid/graphics/Bitmap;
    .end local v12    # "bs":I
    .end local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v21    # "rotation":I
    .end local v23    # "ts":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->this$0:Lcom/vkontakte/android/ui/AttachmentsEditorView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ui/AttachmentsEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v5, Lcom/vkontakte/android/ui/AttachmentsEditorView$13$1;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$v:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11, v6}, Lcom/vkontakte/android/ui/AttachmentsEditorView$13$1;-><init>(Lcom/vkontakte/android/ui/AttachmentsEditorView$13;Landroid/graphics/Bitmap;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 754
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    :goto_4
    return-void

    .line 709
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v15    # "exif":Landroid/media/ExifInterface;
    .restart local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v18    # "o":I
    .restart local v20    # "realPath":Ljava/lang/String;
    .restart local v21    # "rotation":I
    :pswitch_1
    const/16 v21, 0x0

    .line 710
    goto/16 :goto_2

    .line 712
    :pswitch_2
    const/16 v21, 0x5a

    .line 713
    goto/16 :goto_2

    .line 715
    :pswitch_3
    const/16 v21, 0xb4

    .line 716
    goto/16 :goto_2

    .line 718
    :pswitch_4
    const/16 v21, 0x10e

    goto/16 :goto_2

    .line 742
    .end local v15    # "exif":Landroid/media/ExifInterface;
    .end local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "o":I
    .end local v20    # "realPath":Ljava/lang/String;
    .end local v21    # "rotation":I
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "thumbs/t"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$fileUri:Ljava/lang/String;

    invoke-static {v5}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".jpg"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 743
    .local v17, "fname":Ljava/lang/String;
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Before get styled "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$fileUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkontakte/android/ui/AttachmentsEditorView$13;->val$fileUri:Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getThumbnail(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 745
    .restart local v11    # "bmp":Landroid/graphics/Bitmap;
    const-string v1, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "After get, result = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 753
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v11    # "bmp":Landroid/graphics/Bitmap;
    .end local v17    # "fname":Ljava/lang/String;
    :catch_0
    move-exception v24

    .local v24, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    move-object/from16 v0, v24

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 721
    .end local v24    # "x":Ljava/lang/Exception;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "realPath":Ljava/lang/String;
    .restart local v21    # "rotation":I
    :catch_1
    move-exception v1

    goto/16 :goto_2

    .line 698
    .end local v20    # "realPath":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 683
    .end local v16    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "rotation":I
    :catch_3
    move-exception v1

    goto/16 :goto_0

    .line 707
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
