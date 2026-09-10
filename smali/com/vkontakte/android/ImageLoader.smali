.class public Lcom/vkontakte/android/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ImageLoader$QueueEntry;
    }
.end annotation


# instance fields
.field public isFinished:Z

.field q:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/ImageLoader$QueueEntry;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z

.field thread:Ljava/lang/Thread;

.field private waiting:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ImageLoader;->q:Ljava/util/Vector;

    .line 19
    iput-boolean v1, p0, Lcom/vkontakte/android/ImageLoader;->running:Z

    iput-boolean v1, p0, Lcom/vkontakte/android/ImageLoader;->waiting:Z

    .line 21
    iput-boolean v1, p0, Lcom/vkontakte/android/ImageLoader;->isFinished:Z

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ImageLoader;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vkontakte/android/ImageLoader;->runThread()V

    return-void
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

    .line 136
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 138
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 139
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 140
    .local v0, "p":Landroid/graphics/Path;
    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 141
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v5, v5, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 144
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 145
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 146
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 148
    return-void

    .line 143
    :cond_0
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0
.end method

.method private static drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bmps"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 116
    const/high16 v3, 0x42480000    # 50.0f

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 117
    .local v1, "bs":I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v2, "c":Landroid/graphics/Canvas;
    array-length v3, p0

    if-ne v3, v10, :cond_1

    .line 120
    aget-object v3, p0, v8

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    aget-object v6, p0, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x3

    aget-object v7, p0, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    invoke-direct {v5, v8, v8, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 121
    aget-object v3, p0, v9

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x3

    aget-object v7, p0, v9

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6, v8, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    array-length v3, p0

    if-ne v3, v11, :cond_2

    .line 123
    aget-object v3, p0, v8

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    aget-object v6, p0, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x3

    aget-object v7, p0, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    invoke-direct {v5, v8, v8, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    aget-object v3, p0, v9

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x2

    invoke-direct {v5, v6, v8, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 125
    aget-object v3, p0, v10

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aget-object v6, p0, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v6, v7, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 126
    :cond_2
    array-length v3, p0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 127
    aget-object v3, p0, v8

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aget-object v6, p0, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    div-int/lit8 v7, v1, 0x2

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 128
    aget-object v3, p0, v9

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aget-object v6, p0, v9

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x2

    invoke-direct {v5, v8, v6, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 129
    aget-object v3, p0, v10

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aget-object v6, p0, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x2

    invoke-direct {v5, v6, v8, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 130
    aget-object v3, p0, v11

    new-instance v4, Landroid/graphics/Rect;

    aget-object v5, p0, v11

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aget-object v6, p0, v11

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    div-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v5, v6, v7, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v2, v3, v4, v5}, Lcom/vkontakte/android/ImageLoader;->drawBitmapRounded(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private runThread()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 55
    iput-boolean v6, p0, Lcom/vkontakte/android/ImageLoader;->running:Z

    .line 58
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/ImageLoader;->q:Ljava/util/Vector;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/vkontakte/android/ImageLoader;->q:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 60
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkontakte/android/ImageLoader;->isFinished:Z

    .line 61
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkontakte/android/ImageLoader;->running:Z

    .line 62
    return-void

    .line 65
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/ImageLoader;->q:Ljava/util/Vector;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/ImageLoader$QueueEntry;

    .line 68
    .local v2, "e":Lcom/vkontakte/android/ImageLoader$QueueEntry;
    iget-object v6, v2, Lcom/vkontakte/android/ImageLoader$QueueEntry;->url:Ljava/lang/String;

    const-string v7, "M|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 69
    iget-object v6, v2, Lcom/vkontakte/android/ImageLoader$QueueEntry;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v6, v2, Lcom/vkontakte/android/ImageLoader$QueueEntry;->v:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    if-nez v6, :cond_3

    const-wide/16 v6, 0xc8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 74
    :cond_3
    iget-object v6, v2, Lcom/vkontakte/android/ImageLoader$QueueEntry;->v:Landroid/widget/ImageView;

    new-instance v7, Lcom/vkontakte/android/ImageLoader$2;

    invoke-direct {v7, p0, v2, v0}, Lcom/vkontakte/android/ImageLoader$2;-><init>(Lcom/vkontakte/android/ImageLoader;Lcom/vkontakte/android/ImageLoader$QueueEntry;Landroid/graphics/Bitmap;)V

    .line 79
    const-wide/16 v8, 0x0

    .line 74
    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :goto_1
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 95
    :goto_2
    iget-boolean v6, p0, Lcom/vkontakte/android/ImageLoader;->waiting:Z

    if-eqz v6, :cond_0

    const-wide/16 v6, 0xfa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 96
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "e":Lcom/vkontakte/android/ImageLoader$QueueEntry;
    :catch_0
    move-exception v5

    .line 97
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 81
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v2    # "e":Lcom/vkontakte/android/ImageLoader$QueueEntry;
    :cond_4
    :try_start_1
    iget-object v6, v2, Lcom/vkontakte/android/ImageLoader$QueueEntry;->url:Ljava/lang/String;

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "mdUrls":[Ljava/lang/String;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    new-array v1, v6, [Landroid/graphics/Bitmap;

    .line 83
    .local v1, "bmps":[Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_3
    array-length v6, v4

    if-lt v3, v6, :cond_5

    .line 87
    invoke-static {v1}, Lcom/vkontakte/android/ImageLoader;->drawMultichatPhoto([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    iget-object v6, v2, Lcom/vkontakte/android/ImageLoader$QueueEntry;->v:Landroid/widget/ImageView;

    new-instance v7, Lcom/vkontakte/android/ImageLoader$3;

    invoke-direct {v7, p0, v2, v0}, Lcom/vkontakte/android/ImageLoader$3;-><init>(Lcom/vkontakte/android/ImageLoader;Lcom/vkontakte/android/ImageLoader$QueueEntry;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 85
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    add-int/lit8 v6, v3, -0x1

    aget-object v7, v4, v3

    invoke-static {v7}, Lcom/vkontakte/android/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v1, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;
    .locals 6
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "resize"    # Z
    .param p3, "id"    # J

    .prologue
    .line 49
    new-instance v0, Lcom/vkontakte/android/ImageLoader$QueueEntry;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/ImageLoader$QueueEntry;-><init>(Landroid/widget/ImageView;Ljava/lang/String;ZJ)V

    .line 50
    .local v0, "qe":Lcom/vkontakte/android/ImageLoader$QueueEntry;
    iget-object v1, p0, Lcom/vkontakte/android/ImageLoader;->q:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 51
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/ImageLoader;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 38
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ImageLoader;->waiting:Z

    .line 42
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ImageLoader;->waiting:Z

    .line 46
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ImageLoader$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ImageLoader$1;-><init>(Lcom/vkontakte/android/ImageLoader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkontakte/android/ImageLoader;->thread:Ljava/lang/Thread;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/ImageLoader;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 34
    return-void
.end method
