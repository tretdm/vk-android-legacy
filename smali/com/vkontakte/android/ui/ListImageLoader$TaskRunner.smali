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
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 244
    :try_start_0
    const-string v7, "vk_img_loader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Started img loader thread #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v7, v7, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    iget v8, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 247
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v7, v7, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    iget v8, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aget-boolean v7, v7, v8

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

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
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v7, v7, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    iget v8, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aput-boolean v12, v7, v8

    .line 293
    const-string v7, "vk_img_loader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Img loader thread #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exited"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_2
    return-void

    .line 248
    .restart local v4    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    :cond_2
    :try_start_1
    iget-object v5, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->url:Ljava/lang/String;

    .line 249
    .local v5, "url":Ljava/lang/String;
    const-string v7, "vk_img_loader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "thread "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": loading "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    if-eqz v5, :cond_0

    .line 251
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 252
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v8

    iget v9, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    iget v10, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v10, v7}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    .line 253
    const-string v7, "vk_img_loader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "thread "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": returned from ram"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v9}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 291
    .end local v4    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    .end local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk_img_loader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error on img loader thread #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 254
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v4    # "task":Lcom/vkontakte/android/ui/ListImageLoader$Task;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v7, "M"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 255
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$3(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v7

    iget v8, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aget-object v7, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 256
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v7, v7, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    iget v8, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_4

    .line 257
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v7, v7, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    iget v8, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 258
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    iget-object v7, v7, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    iget v8, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    const/4 v9, 0x0

    aput-boolean v9, v7, v8

    .line 259
    const-string v7, "vk_img_loader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Img loader thread #"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " canceled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 262
    :cond_4
    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    .line 264
    :try_start_3
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 267
    :cond_5
    :goto_3
    :try_start_4
    const-string v7, "vk_img_loader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "thread "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": loaded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v7

    iget v8, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    iget v9, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    invoke-virtual {v7, v8, v9, v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 270
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v0, 0x0

    .line 271
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_8

    .line 272
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02012c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    :cond_7
    :goto_4
    if-eqz v0, :cond_0

    .line 286
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v7, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v7}, Lcom/vkontakte/android/ui/ListImageLoader;->access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v7

    iget v8, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->item:I

    iget v9, v4, Lcom/vkontakte/android/ui/ListImageLoader$Task;->image:I

    invoke-virtual {v7, v8, v9, v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 274
    :cond_8
    const-string v7, "\\|"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "mdUrls":[Ljava/lang/String;
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    new-array v1, v7, [Landroid/graphics/Bitmap;

    .line 276
    .local v1, "bmps":[Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_5
    array-length v7, v3

    if-lt v2, v7, :cond_a

    .line 280
    invoke-static {v1}, Lcom/vkontakte/android/ui/ListImageLoader;->drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    invoke-static {v5, v0}, Lcom/vkontakte/android/ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 282
    if-eqz v0, :cond_9

    array-length v7, v1

    const/4 v8, 0x2

    if-ge v7, v8, :cond_7

    .line 283
    :cond_9
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02012c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4

    .line 277
    :cond_a
    const-string v7, "vk_img_loader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "M_URL["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    add-int/lit8 v7, v2, -0x1

    aget-object v8, v3, v2

    iget-object v9, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->this$0:Lcom/vkontakte/android/ui/ListImageLoader;

    invoke-static {v9}, Lcom/vkontakte/android/ui/ListImageLoader;->access$3(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    move-result-object v9

    iget v10, p0, Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;->index:I

    aget-object v9, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v1, v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 265
    .end local v1    # "bmps":[Landroid/graphics/Bitmap;
    .end local v2    # "k":I
    .end local v3    # "mdUrls":[Ljava/lang/String;
    :catch_1
    move-exception v7

    goto/16 :goto_3
.end method
