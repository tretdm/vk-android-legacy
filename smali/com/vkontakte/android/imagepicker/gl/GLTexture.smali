.class public Lcom/vkontakte/android/imagepicker/gl/GLTexture;
.super Landroid/opengl/GLES20;
.source "GLTexture.java"


# instance fields
.field failed:Z

.field gl_texture:I

.field height:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/opengl/GLES20;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->failed:Z

    .line 13
    return-void
.end method

.method static bitmapAsByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 113
    .local v1, "pixels":[I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 115
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v1

    if-lt v9, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 120
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 121
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 123
    return-object v8

    .line 116
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    aget v0, v1, v9

    shl-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0xff

    aput v0, v1, v9

    .line 115
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFailed()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->failed:Z

    return v0
.end method

.method getTextureSize(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, 0x1

    .line 92
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 96
    const/16 v1, 0x400

    :goto_1
    return v1

    .line 93
    :cond_0
    shl-int v1, v2, v0

    if-le v1, p1, :cond_1

    .line 94
    shl-int v1, v2, v0

    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadWithBitmap(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 73
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 78
    .local v0, "height":I
    invoke-static {p1}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->bitmapAsByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0, v2, v0, v4}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->loadWithSize(IILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v3, 0x1

    .line 87
    .end local v0    # "height":I
    .end local v2    # "width":I
    :goto_0
    return v3

    .line 82
    :catch_0
    move-exception v1

    .line 84
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v4, "Cannot load with bitmap"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method loadWithSize(IILjava/nio/ByteBuffer;)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v5, 0x2601

    const/16 v2, 0x1908

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 45
    new-array v9, v4, [I

    .line 46
    .local v9, "genTextures":[I
    iput p1, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->width:I

    .line 47
    iput p2, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->height:I

    .line 49
    const v3, 0x84c2

    invoke-static {v3}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glActiveTexture(I)V

    .line 50
    invoke-static {v4, v9, v1}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glGenTextures(I[II)V

    .line 52
    aget v3, v9, v1

    iput v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->gl_texture:I

    .line 54
    iget v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->gl_texture:I

    invoke-static {v0, v3}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glBindTexture(II)V

    .line 56
    const/16 v3, 0x2801

    invoke-static {v0, v3, v5}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glTexParameteri(III)V

    .line 57
    const/16 v3, 0x2800

    invoke-static {v0, v3, v5}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glTexParameteri(III)V

    .line 58
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glTexParameteri(III)V

    .line 59
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glTexParameteri(III)V

    .line 61
    const/16 v7, 0x1401

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 65
    const-string v0, "glTexImage2D"

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 66
    return-void
.end method

.method public setFailed()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->failed:Z

    .line 23
    return-void
.end method

.method size()[I
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->width:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->height:I

    aput v2, v0, v1

    return-object v0
.end method

.method texture()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->gl_texture:I

    return v0
.end method

.method unload()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->gl_texture:I

    if-eqz v0, :cond_0

    .line 34
    new-array v0, v3, [I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->gl_texture:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->glDeleteTextures(I[II)V

    .line 36
    iput v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLTexture;->gl_texture:I

    .line 38
    :cond_0
    return-void
.end method
