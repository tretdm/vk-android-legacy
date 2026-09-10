.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;
.super Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;
.source "LocalImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getThumbnailForImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

.field private final synthetic val$cacheKey:Ljava/lang/String;

.field private final synthetic val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field private final synthetic val$gridThumb:Z

.field private final synthetic val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Ljava/lang/String;ZLcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$cacheKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$gridThumb:Z

    iput-object p5, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    .line 184
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/CancellableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 191
    .local v2, "ms":J
    new-instance v5, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v7

    invoke-direct {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;-><init>(I)V

    .line 193
    .local v5, "result":Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsTemp()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 194
    invoke-virtual {v5, v8}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->setIsTemp(Z)V

    .line 196
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v7

    iget-object v9, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->isCached(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 198
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 274
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v7}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getIsTemp()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 209
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$4(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$gridThumb:Z

    if-nez v7, :cond_4

    .line 214
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iget-object v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x60

    iget-object v10, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v7, v8, v9, v10}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getBitmapByPath(Ljava/lang/String;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    .line 224
    .local v0, "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    :goto_1
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->getFailed()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 226
    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    .end local v0    # "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    :cond_3
    :goto_2
    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_a

    .line 263
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$8(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-int v7, v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->setLoadedIn(I)V

    .line 272
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v7, v5}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iget-object v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v8}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getPath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    invoke-static {v9}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$5(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)I

    move-result v9

    iget-object v10, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v7, v8, v9, v10}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getBitmapByPath(Ljava/lang/String;ILcom/vkontakte/android/mediapicker/entries/ImageEntry;)Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    move-result-object v0

    .restart local v0    # "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    goto :goto_1

    .line 231
    .end local v0    # "bitmap":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$4(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$gridThumb:Z

    if-eqz v7, :cond_8

    const/4 v6, 0x0

    .line 233
    .local v6, "smallVariant":Z
    :goto_4
    const/4 v0, 0x0

    .line 235
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6

    .line 240
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v9

    int-to-long v9, v9

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v7, v9, v10, v11, v12}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    :cond_6
    if-nez v0, :cond_7

    .line 248
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 249
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$6(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)I

    move-result v7

    :goto_5
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 251
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/ResourceProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v9}, Lcom/vkontakte/android/mediapicker/entries/ImageEntry;->getImageId()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v9, v10, v8, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    new-instance v1, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 256
    .local v1, "bitmapEntry":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iget-object v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$image:Lcom/vkontakte/android/mediapicker/entries/ImageEntry;

    invoke-virtual {v7, v8, v1}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->rotateImage(Lcom/vkontakte/android/mediapicker/entries/ImageEntry;Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;)V

    .line 258
    invoke-virtual {v1}, Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapEntry":Lcom/vkontakte/android/mediapicker/entries/BitmapEntry;
    .end local v6    # "smallVariant":Z
    :cond_8
    move v6, v8

    .line 231
    goto :goto_4

    .line 249
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "smallVariant":Z
    :cond_9
    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$7(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;)I

    move-result v7

    goto :goto_5

    .line 267
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "smallVariant":Z
    :cond_a
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$4;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/vkontakte/android/mediapicker/entries/ImageDataEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3
.end method
