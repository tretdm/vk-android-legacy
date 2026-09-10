.class Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;
.super Ljava/lang/Object;
.source "LocalImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->getPreviewForFilter(Landroid/content/Context;IILcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

.field final synthetic val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filter_id:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;Ljava/lang/String;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Landroid/content/Context;II)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$context:Landroid/content/Context;

    iput p5, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$filter_id:I

    iput p6, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 808
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->isCached(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 810
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    .line 847
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 824
    .local v3, "manager":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/AssetsProvider;->getPreviewsFolder()Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, "filePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/vkontakte/android/mediapicker/gl/ImageProcessor;->Filters:[[Ljava/lang/String;

    iget v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$filter_id:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 826
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 830
    .local v4, "stream":Ljava/io/InputStream;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 832
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 841
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/InputStream;
    .local v1, "failed":Z
    :goto_1
    if-nez v1, :cond_1

    .line 842
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->instance()Lcom/vkontakte/android/mediapicker/utils/StrictCache;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$key:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/vkontakte/android/mediapicker/utils/StrictCache;->cache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 846
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-virtual {v6, v0}, Lcom/vkontakte/android/mediapicker/entries/ActionCallback;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 833
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "failed":Z
    :catch_0
    move-exception v5

    .line 835
    .local v5, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x1

    .line 836
    .restart local v1    # "failed":Z
    const/4 v0, 0x0

    .line 838
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    const-string v6, "Cannot get preview for filter %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$filter_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v5, v7}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 844
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->this$0:Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;

    iget v7, p0, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader$10;->val$size:I

    invoke-static {v6, v7}, Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;->access$700(Lcom/vkontakte/android/mediapicker/utils/LocalImageLoader;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method
