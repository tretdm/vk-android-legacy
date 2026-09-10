.class public Lcom/vkontakte/android/ui/NewListImageLoader;
.super Ljava/lang/Object;
.source "NewListImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/NewListImageLoader$1;,
        Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "vk-img-loader"

.field private static final THREAD_COUNT:I = 0x4

.field private static threads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/background/WorkerThread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

.field private incomplete:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;",
            ">;"
        }
    .end annotation
.end field

.field private isScrolling:Z

.field private semaphore:Ljava/util/concurrent/Semaphore;

.field private threadIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/vkontakte/android/ui/NewListImageLoader;->threads:Ljava/util/ArrayList;

    .line 33
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 34
    new-instance v1, Lcom/vkontakte/android/background/WorkerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageLoader thread #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vkontakte/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    .line 35
    .local v1, "wt":Lcom/vkontakte/android/background/WorkerThread;
    invoke-virtual {v1}, Lcom/vkontakte/android/background/WorkerThread;->start()V

    .line 36
    sget-object v2, Lcom/vkontakte/android/ui/NewListImageLoader;->threads:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v1    # "wt":Lcom/vkontakte/android/background/WorkerThread;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->threadIndex:I

    .line 29
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/NewListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/NewListImageLoader;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/NewListImageLoader;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/NewListImageLoader;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkontakte/android/ui/NewListImageLoader;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/NewListImageLoader;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    return-object v0
.end method

.method public static drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bmps"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 152
    array-length v4, p0

    if-ge v4, v11, :cond_1

    const/4 v0, 0x0

    .line 172
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    const/high16 v4, 0x42480000    # 50.0f

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 154
    .local v1, "bs":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 156
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 159
    array-length v4, p0

    if-ne v4, v11, :cond_2

    .line 160
    aget-object v4, p0, v9

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    aget-object v7, p0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    aget-object v8, p0, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    invoke-direct {v6, v9, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 161
    aget-object v4, p0, v10

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    aget-object v7, p0, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    aget-object v8, p0, v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    invoke-direct {v6, v7, v9, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 162
    :cond_2
    array-length v4, p0

    if-ne v4, v12, :cond_3

    .line 163
    aget-object v4, p0, v9

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    aget-object v7, p0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    aget-object v8, p0, v9

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v6, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    invoke-direct {v6, v9, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 164
    aget-object v4, p0, v10

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v7, v9, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 165
    aget-object v4, p0, v11

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v7, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 166
    :cond_3
    array-length v4, p0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 167
    aget-object v4, p0, v9

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 168
    aget-object v4, p0, v10

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v9, v7, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 169
    aget-object v4, p0, v11

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v7, v9, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 170
    aget-object v4, p0, v12

    new-instance v5, Landroid/graphics/Rect;

    aget-object v6, p0, v12

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aget-object v7, p0, v12

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v1, 0x2

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v7, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 99
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;>;"
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;

    .line 103
    .local v1, "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    iget v2, v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->item:I

    if-ne v2, p1, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 106
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->cancel()V

    goto :goto_1

    .line 109
    .end local v1    # "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 110
    return-void

    .line 99
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancelAll()V
    .locals 3

    .prologue
    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;

    .line 130
    .local v1, "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->cancel()V

    goto :goto_1

    .line 132
    .end local v1    # "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 133
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 134
    return-void

    .line 127
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public cancelRange(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;>;"
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;

    .line 117
    .local v1, "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    iget v2, v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->item:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->item:I

    if-gt v2, p2, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 120
    invoke-virtual {v1}, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->cancel()V

    goto :goto_1

    .line 123
    .end local v1    # "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 124
    return-void

    .line 113
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    return-object v0
.end method

.method public isLoading(I)Z
    .locals 3
    .param p1, "item"    # I

    .prologue
    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;

    .line 89
    .local v1, "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    iget v2, v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->item:I

    if-ne v2, p1, :cond_0

    .line 90
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 91
    const/4 v2, 0x1

    .line 95
    .end local v1    # "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    :goto_1
    return v2

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 95
    const/4 v2, 0x0

    goto :goto_1

    .line 87
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->isScrolling:Z

    return v0
.end method

.method public loadRange(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 54
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 55
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    invoke-virtual {v2}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 57
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_0

    .line 58
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/ui/NewListImageLoader;->loadSingleItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public loadSingleItem(I)V
    .locals 6
    .param p1, "item"    # I

    .prologue
    const/4 v4, 0x0

    .line 63
    :try_start_0
    iget-object v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    invoke-virtual {v3, p1}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageCountForItem(I)I

    move-result v0

    .line 67
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 68
    new-instance v2, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;-><init>(Lcom/vkontakte/android/ui/NewListImageLoader;Lcom/vkontakte/android/ui/NewListImageLoader$1;)V

    .line 69
    .local v2, "task":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    iput p1, v2, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->item:I

    .line 70
    iput v1, v2, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->image:I

    .line 71
    iget-object v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    invoke-virtual {v3, p1, v1}, Lcom/vkontakte/android/ui/ListImageLoaderAdapter;->getImageURL(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->url:Ljava/lang/String;

    .line 72
    iget-boolean v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->isScrolling:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->set:Z

    .line 73
    iget v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->threadIndex:I

    iput v3, v2, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->thread:I

    .line 75
    iget-object v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v3, Lcom/vkontakte/android/ui/NewListImageLoader;->threads:Ljava/util/ArrayList;

    iget v5, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->threadIndex:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/background/WorkerThread;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/vkontakte/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;I)V

    .line 77
    iget v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->threadIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->threadIndex:I

    .line 78
    iget v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->threadIndex:I

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->threadIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v3, v4

    .line 72
    goto :goto_2

    .line 80
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v2    # "task":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    :catch_0
    move-exception v3

    .line 83
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 84
    return-void

    .line 63
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V
    .locals 0
    .param p1, "a"    # Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 46
    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 3
    .param p1, "s"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->isScrolling:Z

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->incomplete:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;

    .line 142
    .local v1, "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v2}, Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;->setDecode(Z)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .line 144
    .end local v1    # "t":Lcom/vkontakte/android/ui/NewListImageLoader$RunnableTask;
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/ui/NewListImageLoader;->semaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 145
    return-void

    .line 140
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
