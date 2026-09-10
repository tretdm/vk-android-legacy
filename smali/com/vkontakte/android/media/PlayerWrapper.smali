.class public Lcom/vkontakte/android/media/PlayerWrapper;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;
    }
.end annotation


# static fields
.field public static final ERROR_CANT_DECODE:I = 0x1

.field public static final ERROR_CODEC_NOT_FOUND:I = 0x2

.field public static final ERROR_FILE_NOT_FOUND:I = 0x3

.field public static final ERROR_NETWORK:I = -0x1

.field public static final ERROR_UNSUPPORTED_OS:I


# instance fields
.field private context:Landroid/content/Context;

.field private dataSource:Ljava/lang/String;

.field private holder:Landroid/view/SurfaceHolder;

.field private hwPlayer:Landroid/media/MediaPlayer;

.field private hwSurfaceSet:Z

.field private listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

.field private nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

.field private prevBufPercent:I

.field private seekTo:I

.field private surfaceReady:Z

.field private surfaceTexture:Ljava/lang/Object;

.field private textureView:Ljava/lang/Object;

.field private useHWPlayer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 23
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 26
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwSurfaceSet:Z

    .line 34
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    .line 35
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 38
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "tv"    # Landroid/view/TextureView;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 23
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 26
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwSurfaceSet:Z

    .line 34
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    .line 35
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->textureView:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/vkontakte/android/media/PlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/media/PlayerWrapper$1;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/vkontakte/android/media/PlayerWrapper;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/media/PlayerWrapper;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceTexture:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vkontakte/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/media/PlayerWrapper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkontakte/android/media/PlayerWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/media/PlayerWrapper;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayerPrepared()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkontakte/android/media/PlayerWrapper;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/media/PlayerWrapper;

    .prologue
    .line 14
    iget v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    return v0
.end method

.method static synthetic access$302(Lcom/vkontakte/android/media/PlayerWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/media/PlayerWrapper;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    return p1
.end method

.method static synthetic access$400(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/media/PlayerWrapper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    return-object v0
.end method

.method private hwPlayerPrepared()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;->onPlayerReady(II)V

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$8;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    iget v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    if-lez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 200
    :cond_1
    return-void
.end method

.method private initHWPlayer(Ljava/lang/String;)V
    .locals 3
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 96
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$2;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$3;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$4;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 119
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$5;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$6;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 141
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initNativePlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->setDataSource(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$7;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    iput-object v1, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->start()V

    .line 176
    return-void
.end method


# virtual methods
.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 78
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "apiLevel":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    :cond_0
    iput-boolean v2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 81
    if-ge v0, v3, :cond_1

    .line 82
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 83
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->initNativePlayer(Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 87
    if-ge v0, v3, :cond_3

    .line 88
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 89
    :cond_3
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 205
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->resume()V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->start()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2
    .param p1, "sec"    # I

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->seek(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    .line 241
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    .line 237
    :goto_2
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->stop()V

    goto :goto_2

    .line 232
    :catch_0
    move-exception v0

    goto :goto_1

    .line 229
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 260
    const-string v0, "vk"

    const-string v1, "==== SURFACE CHANGED!!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 268
    const-string v1, "vk"

    const-string v2, "==== SURFACE CREATED!!"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 272
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, "p":Z
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    :goto_0
    if-nez v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 296
    .end local v0    # "p":Z
    :cond_0
    :goto_1
    return-void

    .line 280
    .restart local v0    # "p":Z
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 291
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 300
    const-string v0, "vk"

    const-string v1, "==== SURFACE DESTROYED!!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 302
    iput-object v2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 304
    :cond_0
    return-void
.end method
