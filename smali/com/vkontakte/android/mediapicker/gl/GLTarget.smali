.class public Lcom/vkontakte/android/mediapicker/gl/GLTarget;
.super Landroid/opengl/GLES20;
.source "GLTarget.java"


# instance fields
.field gl_framebuffer:[I

.field height:I

.field targetTexture:Lcom/vkontakte/android/mediapicker/gl/GLTexture;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/opengl/GLES20;-><init>()V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    .line 11
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 5

    .prologue
    const v4, 0x8d40

    const/4 v3, 0x0

    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    aget v0, v0, v3

    invoke-static {v4, v0}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->glBindFramebuffer(II)V

    .line 78
    const v0, 0x8ce0

    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->targetTexture:Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    invoke-virtual {v2}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->texture()I

    move-result v2

    invoke-static {v4, v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->glFramebufferTexture2D(IIIII)V

    .line 79
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->width:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->height:I

    invoke-static {v3, v3, v0, v1}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->glViewport(IIII)V

    .line 80
    return-void
.end method

.method public check()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    aget v1, v1, v4

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->glCheckFramebufferStatus(I)I

    move-result v0

    .line 32
    .local v0, "status":I
    const-string v1, "======== FRAMEBUFFER %d STATUS %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return v5
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public loadWithImage(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->width:I

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->height:I

    .line 62
    const-string v1, "Width: %d, Height: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    invoke-static {v4, v1, v5}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->glGenFramebuffers(I[II)V

    .line 66
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;-><init>()V

    .line 67
    .local v0, "texture":Lcom/vkontakte/android/mediapicker/gl/GLTexture;
    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->targetTexture:Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    .line 69
    invoke-virtual {v0, p1}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->loadWithImage(Landroid/graphics/Bitmap;)Z

    .line 70
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->activate()V

    .line 72
    return v4
.end method

.method public loadWithSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->width:I

    .line 49
    iput p2, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->height:I

    .line 51
    new-instance v0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    invoke-direct {v0}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->targetTexture:Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    .line 52
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->targetTexture:Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->loadWithSize(II)V

    .line 54
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->glGenFramebuffers(I[II)V

    .line 55
    return-void
.end method

.method public texture()Lcom/vkontakte/android/mediapicker/gl/GLTexture;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->targetTexture:Lcom/vkontakte/android/mediapicker/gl/GLTexture;

    return-object v0
.end method

.method public unload()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    invoke-static {v2, v0, v1}, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->glDeleteFramebuffers(I[II)V

    .line 42
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTarget;->gl_framebuffer:[I

    .line 44
    :cond_0
    return-void
.end method
