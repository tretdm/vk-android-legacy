.class public Lcom/vkontakte/android/mediapicker/gl/GLTexture;
.super Landroid/opengl/GLES20;
.source "GLTexture.java"


# static fields
.field public static final GLTextureFilter:I = 0x2600

.field public static final GLTextureUnitTemp:I = 0x84c0


# instance fields
.field failed:Z

.field gl_texture:[I

.field height:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/opengl/GLES20;-><init>()V

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->gl_texture:[I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->failed:Z

    return-void
.end method

.method static bitmapAsByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 159
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 161
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

    .line 163
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v1

    if-ge v9, v0, :cond_0

    .line 164
    aget v0, v1, v9

    shl-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0xff

    aput v0, v1, v9

    .line 163
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 168
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 169
    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    return-object v8
.end method


# virtual methods
.method public getFailed()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->failed:Z

    return v0
.end method

.method public loadWithImage(Landroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 113
    :try_start_0
    invoke-static {p1}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->bitmapAsByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 114
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v0}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->loadWithSize(IILjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v2, 0x1

    .line 123
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return v2

    .line 118
    :catch_0
    move-exception v1

    .line 120
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v3, "Cannot load with bitmap"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public loadWithSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->loadWithSize(IILjava/nio/ByteBuffer;)V

    .line 129
    return-void
.end method

.method public loadWithSize(IILjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const v6, 0x812f

    const/16 v5, 0x2600

    const/16 v2, 0x1908

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 133
    iput p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->width:I

    .line 134
    iput p2, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->height:I

    .line 136
    const v3, 0x84c0

    invoke-static {v3}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glActiveTexture(I)V

    .line 137
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->gl_texture:[I

    invoke-static {v3, v4, v1}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glGenTextures(I[II)V

    .line 138
    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->gl_texture:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glBindTexture(II)V

    .line 140
    const/16 v3, 0x2801

    invoke-static {v0, v3, v5}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glTexParameteri(III)V

    .line 141
    const/16 v3, 0x2800

    invoke-static {v0, v3, v5}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glTexParameteri(III)V

    .line 142
    const/16 v3, 0x2802

    invoke-static {v0, v3, v6}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glTexParameteri(III)V

    .line 143
    const/16 v3, 0x2803

    invoke-static {v0, v3, v6}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glTexParameteri(III)V

    .line 145
    const/16 v7, 0x1401

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 146
    return-void
.end method

.method public readImage()Landroid/graphics/Bitmap;
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 50
    :try_start_0
    const-string v11, "-readImage: "

    .line 54
    .local v11, "prefix":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 56
    .local v8, "ms":J
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->width:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 57
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->width:I

    iget v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->height:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glReadPixels(IIIIIILjava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 72
    iget v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->width:I

    iget v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 77
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 78
    invoke-virtual {v7, v6}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "ms":J
    .end local v11    # "prefix":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 85
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "ms":J
    .restart local v11    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 87
    .local v10, "outOfMemoryError":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 88
    invoke-static {}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->instance()Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/providers/LruCacheProvider;->clear()V

    .line 90
    const-string v0, "OutOfMemoryError while working with filtered image"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v10, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v7, v13

    .line 92
    goto :goto_0

    .line 94
    .end local v10    # "outOfMemoryError":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v12

    .line 96
    .local v12, "throwable":Ljava/lang/Throwable;
    const-string v0, "Cannot read GL image"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v12, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v13

    .line 98
    goto :goto_0

    .line 101
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "ms":J
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v12    # "throwable":Ljava/lang/Throwable;
    :catch_2
    move-exception v12

    .line 103
    .restart local v12    # "throwable":Ljava/lang/Throwable;
    const-string v0, "Cannot read image in root"

    new-array v1, v14, [Ljava/lang/Object;

    invoke-static {v0, v12, v1}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v7, v13

    .line 105
    goto :goto_0
.end method

.method public setFailed()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->failed:Z

    .line 29
    return-void
.end method

.method public size()[I
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->width:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->height:I

    aput v2, v0, v1

    return-object v0
.end method

.method public texture()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->gl_texture:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public unload()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->gl_texture:[I

    aget v0, v0, v1

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->gl_texture:[I

    invoke-static {v2, v0, v1}, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->glDeleteTextures(I[II)V

    .line 153
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLTexture;->gl_texture:[I

    .line 155
    :cond_0
    return-void
.end method
