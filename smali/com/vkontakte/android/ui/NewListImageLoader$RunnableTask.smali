.class Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
.super Ljava/lang/Object;
.source "NewListImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/NewListImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableTask"
.end annotation


# instance fields
.field public canceled:Z

.field public image:I

.field public item:I

.field private reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

.field public set:Z

.field final synthetic this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

.field public thread:I

.field public url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/NewListImageLoader;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->canceled:Z

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/NewListImageLoader;Lcom/vkontakte/android/ui/NewListImageLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/ui/NewListImageLoader;
    .param p2, "x1"    # Lcom/vkontakte/android/ui/NewListImageLoader$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;-><init>(Lcom/vkontakte/android/ui/NewListImageLoader;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->canceled:Z

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    iget-object v0, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 193
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->canceled:Z

    if-eqz v5, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    :try_start_0
    new-instance v5, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct {v5}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 199
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 201
    .local v3, "len":I
    new-array v1, v3, [Landroid/graphics/Bitmap;

    .line 202
    .local v1, "bmps":[Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    add-int/lit8 v5, v3, 0x1

    if-ge v2, v5, :cond_2

    .line 203
    add-int/lit8 v5, v2, -0x1

    aget-object v6, v4, v2

    iget-object v7, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    invoke-static {v6, v7, v8, v9}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v1, v5

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    :cond_2
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    if-eqz v5, :cond_3

    .line 206
    invoke-static {v1}, Lcom/vkontakte/android/ui/NewListImageLoader;->drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/vkontakte/android/ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 219
    .end local v1    # "bmps":[Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_3
    :goto_2
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->canceled:Z

    if-nez v5, :cond_0

    .line 224
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 225
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-static {v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->access$100(Lcom/vkontakte/android/ui/NewListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v5

    iget v6, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->item:I

    iget v7, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->image:I

    invoke-virtual {v5, v6, v7, v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    :goto_3
    :try_start_1
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-static {v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->access$200(Lcom/vkontakte/android/ui/NewListImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :goto_4
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-static {v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->access$300(Lcom/vkontakte/android/ui/NewListImageLoader;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 230
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-static {v5}, Lcom/vkontakte/android/ui/NewListImageLoader;->access$200(Lcom/vkontakte/android/ui/NewListImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 209
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string v6, "A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 210
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string v6, "\\|"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 211
    .restart local v4    # "parts":[Ljava/lang/String;
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_5
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 212
    aget-object v5, v4, v2

    iget-object v6, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    invoke-static {v5, v6, v7, v8}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    if-nez v0, :cond_3

    iget-boolean v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    if-eqz v5, :cond_3

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 217
    .end local v2    # "i":I
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    iget-object v6, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    invoke-static {v5, v6, v7, v8}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_2

    .line 228
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    goto :goto_4

    .line 227
    :catch_1
    move-exception v5

    goto :goto_3
.end method

.method public setDecode(Z)V
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 234
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    iput-boolean p1, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->decode:Z

    .line 237
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->item:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->image:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->thread:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
