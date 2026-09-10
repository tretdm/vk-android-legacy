.class public Lcom/vkontakte/android/ui/GifView;
.super Landroid/view/View;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/GifView$SyncedInputStream;,
        Lcom/vkontakte/android/ui/GifView$AnimationRunner;,
        Lcom/vkontakte/android/ui/GifView$Frame;
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

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 35
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 50
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 35
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 55
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frames:Ljava/util/ArrayList;

    .line 35
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    .line 36
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 37
    iput v1, p0, Lcom/vkontakte/android/ui/GifView;->curFrame:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 41
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    .line 46
    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    .line 60
    invoke-direct {p0}, Lcom/vkontakte/android/ui/GifView;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    return v0
.end method

.method static synthetic access$100(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/ui/GifView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/vkontakte/android/ui/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/vkontakte/android/ui/GifView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/GifView;->waiting:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/ui/GifView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->loop:I

    return p1
.end method

.method static synthetic access$1200(Lcom/vkontakte/android/ui/GifView;Ljava/io/OutputStream;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/ui/GifView;->writeShort(Ljava/io/OutputStream;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkontakte/android/ui/GifView;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->syncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vkontakte/android/ui/GifView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    return p1
.end method

.method static synthetic access$500(Lcom/vkontakte/android/ui/GifView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vkontakte/android/ui/GifView;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/ui/GifView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;

    .prologue
    .line 31
    iget v0, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    return v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/ui/GifView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/ui/GifView;Ljava/io/InputStream;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p1, "x1"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/GifView;->readShort(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/ui/GifView;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;

    .prologue
    .line 31
    iget v0, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    return v0
.end method

.method static synthetic access$902(Lcom/vkontakte/android/ui/GifView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/ui/GifView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    return p1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->imgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorBgPaint:Landroid/graphics/Paint;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
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
    .line 159
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
    .line 163
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 164
    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 165
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "_s"    # Ljava/io/InputStream;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vkontakte/android/ui/GifView;->stream:Ljava/io/InputStream;

    .line 152
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    .line 153
    new-instance v0, Lcom/vkontakte/android/ui/GifView$AnimationRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/ui/GifView$AnimationRunner;-><init>(Lcom/vkontakte/android/ui/GifView;Lcom/vkontakte/android/ui/GifView$1;)V

    .line 154
    .local v0, "ar":Lcom/vkontakte/android/ui/GifView$AnimationRunner;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 156
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 143
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "file":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 145
    .local v1, "is":Ljava/io/FileInputStream;
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/ui/GifView;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 147
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
    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/ui/GifView$1;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/ui/GifView$1;-><init>(Lcom/vkontakte/android/ui/GifView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->runAnimation:Z

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->animThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 76
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

    .line 168
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->loaded:Z

    if-nez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "error":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 171
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

    .line 172
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

    .line 196
    .end local v6    # "error":Ljava/lang/String;
    .end local v7    # "h":F
    .end local v10    # "w":F
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->frameBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v0, v2

    .line 182
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

    .line 183
    .local v8, "iratio":F
    cmpg-float v0, v9, v8

    if-gez v0, :cond_3

    .line 184
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

    .line 189
    .end local v8    # "iratio":F
    .end local v9    # "vratio":F
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/GifView;->error:Z

    if-eqz v0, :cond_0

    .line 190
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

    .line 191
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 192
    .restart local v6    # "error":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkontakte/android/ui/GifView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 193
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

    .line 194
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

    .line 186
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
    .line 80
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    if-nez v4, :cond_1

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 82
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/GifView;->getMeasuredWidth()I

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/ui/GifView;->setMeasuredDimension(II)V

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 85
    .local v3, "vratio":F
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    int-to-float v4, v4

    iget v5, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 87
    .local v0, "iratio":F
    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    .line 88
    :cond_2
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifW:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 89
    .local v2, "maxW":I
    iget v4, p0, Lcom/vkontakte/android/ui/GifView;->gifH:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 90
    .local v1, "maxH":I
    cmpg-float v4, v3, v0

    if-gez v4, :cond_3

    .line 91
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

    .line 93
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
