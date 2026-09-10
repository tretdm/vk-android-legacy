.class public Lcom/vkontakte/android/ui/GifView;
.super Landroid/view/View;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/GifView$AnimationRunner;,
        Lcom/vkontakte/android/ui/GifView$Frame;,
        Lcom/vkontakte/android/ui/GifView$SyncedInputStream;
    }
.end annotation


# instance fields
.field private animThread:Ljava/lang/Thread;

.field private curFrame:I

.field private error:Z

.field private errorPaint:Landroid/graphics/Paint;

.field private frameBuffer:Landroid/graphics/Bitmap;

.field private frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/ui/GifView$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private gifH:I

.field private gifW:I

.field private imgPaint:Landroid/graphics/Paint;

.field private loaded:Z

.field private loop:I

.field private runAnimation:Z

.field private stream:Ljava/io/InputStream;

.field private syncLock:Ljava/lang/Object;

.field private waiting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 35
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 40
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 49
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 35
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 40
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 54
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 34
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 35
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 40
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 59
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/GifView;->writeShort(Ljava/io/OutputStream;I)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/GifView;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/GifView;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/GifView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/GifView;->readShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/GifView;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/GifView;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/GifView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/GifView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/GifView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/GifView;I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    return-void
.end method

.method private readShort(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private writeShort(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 162
    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 163
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "_s"    # Ljava/io/InputStream;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView;->stream:Ljava/io/InputStream;

    .line 150
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 151
    new-instance v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner;-><init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V

    .line 152
    .local v0, "ar":Lcom/vkontakte/android/ui/GifView$AnimationRunner;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    .line 153
    iget-object v1, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 154
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 143
    .local v1, "is":Ljava/io/FileInputStream;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/GifView;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/GifView$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/GifView$1;-><init>(Lcom/vkontakte/android/ui/GifView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 74
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 166
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    if-nez v5, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 174
    .local v3, "vratio":F
    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 175
    .local v2, "iratio":F
    cmpg-float v5, v3, v2

    if-gez v5, :cond_3

    .line 176
    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v12, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 181
    .end local v2    # "iratio":F
    .end local v3    # "vratio":F
    :cond_2
    :goto_1
    iget-boolean v5, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    if-eqz v5, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "error":Ljava/lang/String;
    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 184
    .local v4, "w":F
    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->descent()F

    move-result v6

    add-float v1, v5, v6

    .line 185
    .local v1, "h":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    div-float v6, v4, v11

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    div-float v7, v1, v11

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "h":F
    .end local v4    # "w":F
    .restart local v2    # "iratio":F
    .restart local v3    # "vratio":F
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v7, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v12, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 78
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    if-nez v4, :cond_1

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/GifView;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/ui/GifView;->setMeasuredDimension(II)V

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 83
    .local v3, "vratio":F
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 85
    .local v0, "iratio":F
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    .line 86
    :cond_2
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 87
    .local v2, "maxW":I
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 88
    .local v1, "maxH":I
    cmpg-float v4, v3, v0

    if-gez v4, :cond_3

    .line 89
    int-to-float v4, v2

    iget v5, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Lcom/vkontakte/android/ui/GifView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 91
    :cond_3
    int-to-float v4, v1

    iget v5, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget v5, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4, v1}, Lcom/vkontakte/android/ui/GifView;->setMeasuredDimension(II)V

    goto :goto_0
.end method
