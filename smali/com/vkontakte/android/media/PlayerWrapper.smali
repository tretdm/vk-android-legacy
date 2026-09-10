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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 22
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 25
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwSurfaceSet:Z

    .line 33
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    .line 34
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "tv"    # Landroid/view/TextureView;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 22
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 25
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwSurfaceSet:Z

    .line 33
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    .line 34
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->textureView:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/vkontakte/android/media/PlayerWrapper$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/media/PlayerWrapper$1;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/PlayerWrapper;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceTexture:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/media/PlayerWrapper;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayerPrepared()V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/media/PlayerWrapper;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/media/PlayerWrapper;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    return-void
.end method

.method private hwPlayerPrepared()V
    .locals 3

    .prologue
    .line 186
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

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$8;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 195
    iget v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    if-lez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 199
    :cond_1
    return-void
.end method

.method private initHWPlayer(Ljava/lang/String;)V
    .locals 3
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$2;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 103
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$3;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$4;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$5;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$6;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initNativePlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v0, Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->setDataSource(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$7;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    iput-object v1, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    .line 174
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->start()V

    .line 175
    return-void
.end method


# virtual methods
.method public getDataSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 77
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "apiLevel":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    :cond_0
    iput-boolean v2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 80
    if-ge v0, v3, :cond_1

    .line 81
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->initNativePlayer(Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 86
    if-ge v0, v3, :cond_3

    .line 87
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 88
    :cond_3
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 204
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->resume()V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->start()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2
    .param p1, "sec"    # I

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->seek(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    .line 240
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    .line 236
    :goto_2
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->stop()V

    goto :goto_2

    .line 231
    :catch_0
    move-exception v0

    goto :goto_1

    .line 228
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
    .line 259
    const-string v0, "vk"

    const-string v1, "==== SURFACE CHANGED!!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 267
    const-string v1, "vk"

    const-string v2, "==== SURFACE CREATED!!"

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 271
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 274
    .local v0, "p":Z
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 276
    :goto_0
    if-nez v0, :cond_1

    .line 277
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 295
    .end local v0    # "p":Z
    :cond_0
    :goto_1
    return-void

    .line 279
    .restart local v0    # "p":Z
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 290
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V

    goto :goto_1

    .line 275
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 299
    const-string v0, "vk"

    const-string v1, "==== SURFACE DESTROYED!!"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 301
    iput-object v2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 303
    :cond_0
    return-void
.end method
