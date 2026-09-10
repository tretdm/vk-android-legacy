.class Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;
.super Ljava/lang/Object;
.source "ListImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/ListImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskRunner"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoader;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ui/ListImageLoader;I)V
    .locals 1
    .param p2, "i"    # I

    .prologue
    .line 237
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    .line 238
    iput p2, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    .line 239
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 242
    const/16 v6, 0x13

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 245
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v6, v6, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    iget v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    .line 247
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v6, v6, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    iget v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aget-boolean v6, v6, v7

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    if-nez v4, :cond_2

    .line 292
    .end local v4    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v6, v6, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    iget v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aput-boolean v11, v6, v7

    .line 294
    :goto_2
    return-void

    .line 248
    .restart local v4    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 250
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 251
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v7

    iget v8, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    iget v9, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v9, v6}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 291
    .end local v4    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 254
    .restart local v4    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_3
    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 255
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$3(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v6

    iget v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aget-object v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 256
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v6, v6, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    iget v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_4

    .line 257
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v6, v6, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    iget v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    .line 258
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v6, v6, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    iget v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    const/4 v8, 0x0

    aput-boolean v8, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 262
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 264
    :try_start_2
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 268
    :cond_5
    :goto_3
    if-eqz v0, :cond_0

    :try_start_3
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v6

    iget v7, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    iget v8, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    invoke-virtual {v6, v7, v8, v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 270
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v0, 0x0

    .line 271
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_8

    .line 272
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020120

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    :cond_7
    :goto_4
    if-eqz v0, :cond_0

    .line 286
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v6, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v6}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v6

    iget v7, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    iget v8, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    invoke-virtual {v6, v7, v8, v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 274
    :cond_8
    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "mdUrls":[Ljava/lang/String;
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    new-array v1, v6, [Landroid/graphics/Bitmap;

    .line 276
    .local v1, "bmps":[Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_5
    array-length v6, v3

    if-lt v2, v6, :cond_a

    .line 280
    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoader;->drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    invoke-static {v5, v0}, Lcom/vkontakte/android/ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 282
    if-eqz v0, :cond_9

    array-length v6, v1

    const/4 v7, 0x2

    if-ge v6, v7, :cond_7

    .line 283
    :cond_9
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020120

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 278
    :cond_a
    add-int/lit8 v6, v2, -0x1

    aget-object v7, v3, v2

    iget-object v8, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v8}, Lcom/vkontakte/android/ui/ListImageLoader;->access$3(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v8

    iget v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aget-object v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v1, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 265
    .end local v1    # "bmps":[Landroid/graphics/Bitmap;
    .end local v2    # "k":I
    .end local v3    # "mdUrls":[Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_3
.end method
