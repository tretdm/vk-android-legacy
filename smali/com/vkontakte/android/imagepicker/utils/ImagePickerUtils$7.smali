.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getPreviewForFilter(Landroid/content/Context;IILcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$filter_id:I

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/String;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$context:Landroid/content/Context;

    iput p5, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$filter_id:I

    iput p6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$size:I

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 572
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getIsCached(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 574
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->getFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    .line 611
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 588
    .local v3, "manager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;->getAssetsFiltersPreviewsFolder()Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/vkontakte/android/imagepicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    iget v8, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$filter_id:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 594
    .local v4, "stream":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 596
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 605
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/InputStream;
    .local v1, "failed":Z
    :goto_1
    if-nez v1, :cond_1

    .line 606
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->instance()Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$key:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/vkontakte/android/imagepicker/utils/LocalImageCache;->cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 610
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/imagepicker/utils/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 597
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "failed":Z
    :catch_0
    move-exception v5

    .line 599
    .local v5, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x1

    .line 600
    .restart local v1    # "failed":Z
    const/4 v0, 0x0

    .line 602
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    const-string v6, "Cannot get preview for filter %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$filter_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v5, v7}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 608
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iget v7, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$7;->val$size:I

    invoke-static {v6, v7}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$8(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method
