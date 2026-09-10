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

.field private useHWPlayer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "_context"    # Landroid/content/Context;
    .param p2, "_holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 17
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 20
    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwSurfaceSet:Z

    .line 28
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    .line 29
    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 32
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/media/PlayerWrapper;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayerPrepared()V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/media/PlayerWrapper;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/media/PlayerWrapper;)Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/media/PlayerWrapper;I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->prevBufPercent:I

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/media/PlayerWrapper;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private hwPlayerPrepared()V
    .locals 3

    .prologue
    .line 127
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

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$6;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    iget v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 140
    :cond_1
    return-void
.end method

.method private initHWPlayer(Ljava/lang/String;)V
    .locals 3
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    .line 57
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$1;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 64
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$2;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$3;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 79
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$4;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$4;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initNativePlayer(Ljava/lang/String;)V
    .locals 2
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    .line 95
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->setDataSource(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper$5;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper$5;-><init>(Lcom/vkontakte/android/media/PlayerWrapper;)V

    iput-object v1, v0, Lcom/vkontakte/android/media/NativeVideoPlayer;->callback:Lcom/vkontakte/android/media/NativeVideoPlayer$Callback;

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->start()V

    .line 124
    return-void
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 4
    .param p1, "ds"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 38
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    .local v0, "apiLevel":I
    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    :cond_0
    iput-boolean v2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 41
    if-ge v0, v3, :cond_1

    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->initNativePlayer(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    .line 47
    if-ge v0, v3, :cond_3

    .line 48
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 49
    :cond_3
    invoke-direct {p0, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->pause()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 145
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->resume()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2
    .param p1, "sec"    # I

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 159
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/NativeVideoPlayer;->seek(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->listener:Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;

    .line 177
    return-void
.end method

.method public stopAndRelease()V
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->useHWPlayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    .line 173
    :goto_2
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->nativePlayer:Lcom/vkontakte/android/media/NativeVideoPlayer;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/NativeVideoPlayer;->stop()V

    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    goto :goto_1

    .line 165
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
    .line 190
    const-string v0, "vk"

    const-string v1, "==== SURFACE CHANGED!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 198
    const-string v1, "vk"

    const-string v2, "==== SURFACE CREATED!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-object p1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 202
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    .local v0, "p":Z
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 207
    :goto_0
    if-nez v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 226
    .end local v0    # "p":Z
    :cond_0
    :goto_1
    return-void

    .line 210
    .restart local v0    # "p":Z
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->seekTo:I

    .line 211
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 221
    iget-object v1, p0, Lcom/vkontakte/android/media/PlayerWrapper;->dataSource:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->initHWPlayer(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string v0, "vk"

    const-string v1, "==== SURFACE DESTROYED!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->surfaceReady:Z

    .line 232
    iput-object v2, p0, Lcom/vkontakte/android/media/PlayerWrapper;->holder:Landroid/view/SurfaceHolder;

    .line 233
    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/media/PlayerWrapper;->hwPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 234
    :cond_0
    return-void
.end method
