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
    .line 172
    iput-object p1, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->canceled:Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/NewListImageLoader;Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;-><init>(Lcom/vkontakte/android/ui/NewListImageLoader;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->canceled:Z

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    iget-object v0, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 190
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->canceled:Z

    if-eqz v4, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    :try_start_0
    new-instance v4, Lcom/vkontakte/android/ImageCache$RequestWrapper;

    invoke-direct {v4}, Lcom/vkontakte/android/ImageCache$RequestWrapper;-><init>()V

    iput-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 196
    iget-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "parts":[Ljava/lang/String;
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [Landroid/graphics/Bitmap;

    .line 198
    .local v1, "bmps":[Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_4

    .line 201
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    if-eqz v4, :cond_2

    .line 202
    invoke-static {v1}, Lcom/vkontakte/android/ui/NewListImageLoader;->drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    iget-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/vkontakte/android/ImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 208
    .end local v1    # "bmps":[Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_2
    :goto_2
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->canceled:Z

    if-nez v4, :cond_0

    .line 209
    iget-boolean v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 210
    iget-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-static {v4}, Lcom/vkontakte/android/ui/NewListImageLoader;->access$0(Lcom/vkontakte/android/ui/NewListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    move-result-object v4

    iget v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->item:I

    iget v6, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->image:I

    invoke-virtual {v4, v5, v6, v0}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->imageLoaded(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-static {v4}, Lcom/vkontakte/android/ui/NewListImageLoader;->access$1(Lcom/vkontakte/android/ui/NewListImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :goto_3
    :try_start_2
    iget-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-static {v4}, Lcom/vkontakte/android/ui/NewListImageLoader;->access$2(Lcom/vkontakte/android/ui/NewListImageLoader;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->this$0:Lcom/vkontakte/android/ui/NewListImageLoader;

    invoke-static {v4}, Lcom/vkontakte/android/ui/NewListImageLoader;->access$1(Lcom/vkontakte/android/ui/NewListImageLoader;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 215
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 199
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "bmps":[Landroid/graphics/Bitmap;
    .restart local v2    # "i":I
    .restart local v3    # "parts":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v2, -0x1

    aget-object v5, v3, v2

    iget-object v6, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    invoke-static {v5, v6, v7, v8}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v1, v4

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    .end local v1    # "bmps":[Landroid/graphics/Bitmap;
    .end local v2    # "i":I
    .end local v3    # "parts":[Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    invoke-static {v4, v5, v6, v7}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;Lcom/vkontakte/android/ImageCache$RequestWrapper;Lcom/vkontakte/android/ImageCache$ProgressCallback;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    .line 211
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method public setDecode(Z)V
    .locals 1
    .param p1, "decode"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->reqWrapper:Lcom/vkontakte/android/ImageCache$RequestWrapper;

    iput-boolean p1, v0, Lcom/vkontakte/android/ImageCache$RequestWrapper;->decode:Z

    .line 222
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
