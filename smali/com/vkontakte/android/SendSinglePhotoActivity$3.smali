.class Lcom/vkontakte/android/SendSinglePhotoActivity$3;
.super Ljava/lang/Object;
.source "SendSinglePhotoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SendSinglePhotoActivity;->loadPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SendSinglePhotoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    iput-object p2, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 96
    :try_start_0
    iget-object v8, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->val$uri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 97
    .local v6, "url":Landroid/net/Uri;
    const-string v8, "impick"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->val$uri:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getNeedUseStyledThumb(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thumbs/t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->val$uri:Ljava/lang/String;

    invoke-static {v9}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "fname":Ljava/lang/String;
    iget-object v8, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;

    move-result-object v9

    iget-object v10, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->val$uri:Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getThumbnail(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$202(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 121
    .end local v1    # "fname":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    new-instance v9, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;

    invoke-direct {v9, p0}, Lcom/vkontakte/android/SendSinglePhotoActivity$3$1;-><init>(Lcom/vkontakte/android/SendSinglePhotoActivity$3;)V

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/SendSinglePhotoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    .end local v6    # "url":Landroid/net/Uri;
    :goto_1
    return-void

    .line 103
    .restart local v6    # "url":Landroid/net/Uri;
    :cond_0
    const-string v8, "impick"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 104
    iget-object v8, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->val$uri:Ljava/lang/String;

    invoke-static {v8}, Lcom/vkontakte/android/mediapicker/providers/GalleryPickerProvider;->getOriginalUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 105
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-virtual {v8}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 106
    .local v5, "stream":Ljava/io/InputStream;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 107
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 108
    const/4 v8, 0x0

    invoke-static {v5, v8, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 110
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    invoke-virtual {v8}, Lcom/vkontakte/android/SendSinglePhotoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget v8, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    div-int v4, v8, v9

    .line 114
    .local v4, "sample":I
    move-object v0, v5

    check-cast v0, Ljava/io/FileInputStream;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 116
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 117
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 118
    iget-object v8, p0, Lcom/vkontakte/android/SendSinglePhotoActivity$3;->this$0:Lcom/vkontakte/android/SendSinglePhotoActivity;

    const/4 v9, 0x0

    invoke-static {v5, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/SendSinglePhotoActivity;->access$202(Lcom/vkontakte/android/SendSinglePhotoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "sample":I
    .end local v5    # "stream":Ljava/io/InputStream;
    .end local v6    # "url":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 128
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
