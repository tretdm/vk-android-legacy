.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;
.super Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;
.source "ImagePickerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getThumbnailForImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$cacheKey:Ljava/lang/String;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$gridThumb:Z

.field private final synthetic val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Ljava/lang/String;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$cacheKey:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$gridThumb:Z

    iput-object p5, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 736
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/utils/CancellableRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 743
    .local v2, "ms":J
    new-instance v5, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v7

    invoke-direct {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;-><init>(I)V

    .line 745
    .local v5, "result":Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsTemp()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 746
    invoke-virtual {v5, v8}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->setIsTemp(Z)V

    .line 748
    :cond_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v7

    iget-object v9, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsCached(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 750
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 811
    :goto_0
    return-void

    .line 754
    :cond_1
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v7}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getIsTemp()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 758
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$9(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$gridThumb:Z

    if-nez v7, :cond_4

    .line 760
    :cond_2
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v8}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x60

    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-static {v7, v8, v9, v10}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$10(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/String;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v0

    .line 767
    .local v0, "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    :goto_1
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->getFailed()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 769
    invoke-virtual {v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 798
    .end local v0    # "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    :cond_3
    :goto_2
    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_a

    .line 800
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    const/4 v8, -0x1

    invoke-static {v7, v8}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$8(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 807
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    long-to-int v7, v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->setLoadedIn(I)V

    .line 809
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v7, v5}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 764
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v8}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getPath()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v9}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$11(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I

    move-result v9

    iget-object v10, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-static {v7, v8, v9, v10}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$10(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/String;ILcom/vkontakte/android/imagepicker/entries/ImageEntry;)Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    move-result-object v0

    .restart local v0    # "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    goto :goto_1

    .line 774
    .end local v0    # "bitmap":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$9(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$gridThumb:Z

    if-eqz v7, :cond_8

    const/4 v6, 0x0

    .line 776
    .local v6, "smallVariant":Z
    :goto_4
    const/4 v0, 0x0

    .line 778
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6

    .line 780
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v9}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v9

    int-to-long v9, v9

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v7, v9, v10, v11, v12}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 783
    :cond_6
    if-nez v0, :cond_7

    .line 785
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 786
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$12(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I

    move-result v7

    :goto_5
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 788
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getStaticContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v9, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v9}, Lcom/vkontakte/android/imagepicker/entries/ImageEntry;->getImageId()I

    move-result v9

    int-to-long v9, v9

    invoke-static {v7, v9, v10, v8, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 791
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_7
    new-instance v1, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;-><init>(Landroid/graphics/Bitmap;)V

    .line 793
    .local v1, "bitmapEntry":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$image:Lcom/vkontakte/android/imagepicker/entries/ImageEntry;

    invoke-virtual {v7, v8, v1}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->rotateImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;)V

    .line 795
    invoke-virtual {v1}, Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapEntry":Lcom/vkontakte/android/imagepicker/entries/BitmapEntry;
    .end local v6    # "smallVariant":Z
    :cond_8
    move v6, v8

    .line 774
    goto :goto_4

    .line 786
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v6    # "smallVariant":Z
    :cond_9
    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$13(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;)I

    move-result v7

    goto :goto_5

    .line 804
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "smallVariant":Z
    :cond_a
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$9;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/vkontakte/android/imagepicker/entries/ImageDataEntry;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto/16 :goto_3
.end method
