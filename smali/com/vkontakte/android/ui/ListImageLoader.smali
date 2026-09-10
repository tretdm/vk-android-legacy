.class public Lcom/vkontakte/android/ui/ListImageLoader;
.super Ljava/lang/Object;
.source "ListImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/ListImageLoader$Task;,
        Lcom/vkontakte/android/ui/ListImageLoader$TaskRunner;
    }
.end annotation


# instance fields
.field private adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

.field public allowRepeat:Z

.field private images:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public needCancelLoad:[Z

.field private queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/vkontakte/android/ui/ListImageLoader$Task;",
            ">;"
        }
    .end annotation
.end field

.field private removed:Z

.field public running:[Z

.field private wrappers:[Lcom/vkontakte/android/ImageCache$RequestWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->images:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-array v0, v1, [Lcom/vkontakte/android/ImageCache$RequestWrapper;

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->wrappers:[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->removed:Z

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->allowRepeat:Z

    .line 32
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->running:[Z

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->queue:Ljava/util/LinkedList;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->queue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/ListImageLoader;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->images:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/ListImageLoader;)Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/ListImageLoader;)[Lcom/vkontakte/android/ImageCache$RequestWrapper;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->wrappers:[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    return-object v0
.end method

.method static synthetic access$4([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 136
    invoke-static {p0}, Lcom/vkontakte/android/ui/ListImageLoader;->drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x1

    const v5, 0x40333333    # 2.8f

    const/high16 v4, 0x40000000    # 2.0f

    .line 160
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 161
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 163
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 164
    .local v0, "p":Landroid/graphics/Path;
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 165
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v5, v5, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 168
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 169
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 170
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 171
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 172
    return-void

    .line 167
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0
.end method

.method private static drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "bmps"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 137
    const/high16 v4, 0x42480000    # 50.0f

    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 138
    .local v1, "bs":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 141
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 143
    array-length v4, p0

    if-ne v4, v11, :cond_1

    .line 144
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

    .line 145
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

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v6, v7, v9, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    array-length v4, p0

    if-ne v4, v12, :cond_2

    .line 147
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

    .line 148
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

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v7, v9, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 149
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

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v6, v7, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 150
    :cond_2
    array-length v4, p0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 151
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

    .line 152
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

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v9, v7, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
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

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v8, v1, 0x2

    invoke-direct {v6, v7, v9, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 154
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

    add-int/lit8 v7, v7, 0x1

    div-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v6, v7, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->removed:Z

    .line 121
    return-void
.end method

.method public cancel()V
    .locals 6

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 109
    iget-object v3, p0, Lcom/vkontakte/android/ui/ListImageLoader;->wrappers:[Lcom/vkontakte/android/ImageCache$RequestWrapper;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    .line 111
    return-void

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/ui/ListImageLoader;->needCancelLoad:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    aget-object v1, v3, v2

    .line 110
    .local v1, "wrapper":Lcom/vkontakte/android/ImageCache$RequestWrapper;
    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/vkontakte/android/ImageCache$RequestWrapper;->request:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->removed:Z

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/ListImageLoader;->cancel()V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->images:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 117
    return-void
.end method

.method public getAdapter()Lcom/vkontakte/android/ui/ListImageLoaderAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    return-object v0
.end method

.method public getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->images:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->images:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 133
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/vkontakte/android/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-static {p1}, Lcom/vkontakte/android/ImageCache;->getFromTop(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlreadyLoaded(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 124
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoader;->images:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoader;->images:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/vkontakte/android/ImageCache;->isInTopCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public load(II)V
    .locals 2
    .param p1, "firstVisibleItem"    # I
    .param p2, "numVisibleItems"    # I

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->removed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    if-nez v0, :cond_1

    .line 50
    :cond_0
    const-string v0, "vk"

    const-string v1, "removed || adapter=null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoader;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/ListImageLoader$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vkontakte/android/ui/ListImageLoader$1;-><init>(Lcom/vkontakte/android/ui/ListImageLoader;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/vkontakte/android/ui/ListImageLoaderAdapter;)V
    .locals 0
    .param p1, "a"    # Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoader;->adapter:Lcom/vkontakte/android/ui/ListImageLoaderAdapter;

    .line 42
    return-void
.end method
