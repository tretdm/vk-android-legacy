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

.field private errorBgPaint:Landroid/graphics/Paint;

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

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 38
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 51
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 38
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 56
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 36
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 38
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 40
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
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/GifView;->writeShort(Ljava/io/OutputStream;I)V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/ui/GifView;Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/ui/GifView;Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/ui/GifView;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1

    .prologue
    .line 42
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
    .line 159
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/GifView;->readShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/ui/GifView;I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/ui/GifView;I)V
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    return-void
.end method

.method static synthetic access$5(Lcom/vkontakte/android/ui/GifView;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/ui/GifView;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    return v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/ui/GifView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/ui/GifView;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
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
    .line 160
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
    .line 164
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 165
    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 166
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "_s"    # Ljava/io/InputStream;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView;->stream:Ljava/io/InputStream;

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 154
    new-instance v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner;-><init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$AnimationRunner;)V

    .line 155
    .local v0, "ar":Lcom/vkontakte/android/ui/GifView$AnimationRunner;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    .line 156
    iget-object v1, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 157
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 146
    .local v1, "is":Ljava/io/FileInputStream;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/GifView;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 148
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
    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/GifView$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/GifView$1;-><init>(Lcom/vkontakte/android/ui/GifView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 140
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 77
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 169
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "error":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 172
    .local v10, "w":F
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float v7, v0, v1

    .line 173
    .local v7, "h":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float v1, v10, v11

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v2, v7, v11

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 197
    .end local v6    # "error":Ljava/lang/String;
    .end local v7    # "h":F
    .end local v10    # "w":F
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v0, v2

    .line 183
    .local v9, "vratio":F
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 184
    .local v8, "iratio":F
    cmpg-float v0, v9, v8

    if-gez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v13, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 190
    .end local v8    # "iratio":F
    .end local v9    # "vratio":F
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 192
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    .restart local v6    # "error":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 194
    .restart local v10    # "w":F
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float v7, v0, v1

    .line 195
    .restart local v7    # "h":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float v1, v10, v11

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float v2, v7, v11

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 187
    .end local v6    # "error":Ljava/lang/String;
    .end local v7    # "h":F
    .end local v10    # "w":F
    .restart local v8    # "iratio":F
    .restart local v9    # "vratio":F
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v13, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    .line 81
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    if-nez v4, :cond_1

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/GifView;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/ui/GifView;->setMeasuredDimension(II)V

    .line 97
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 86
    .local v3, "vratio":F
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 88
    .local v0, "iratio":F
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    .line 89
    :cond_2
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 90
    .local v2, "maxW":I
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 91
    .local v1, "maxH":I
    cmpg-float v4, v3, v0

    if-gez v4, :cond_3

    .line 92
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

    .line 94
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
