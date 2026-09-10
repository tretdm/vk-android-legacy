.class public Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;
.super Ljava/lang/Object;
.source "GLRenderBuffer.java"


# static fields
.field private static final DumpConfigs:Z = false

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final LoggingTag:Ljava/lang/String; = "photo_picker_gl"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private first_initialization:Z

.field height:I

.field private mEGL:Ljavax/microedition/khronos/egl/EGL10;

.field private mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field renderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private threadOwnerName:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->first_initialization:Z

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->threadOwnerName:Ljava/lang/String;

    .line 49
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 51
    .local v0, "version":[I
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 52
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 53
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 54
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->init(II)V

    .line 57
    const-string v1, "Step after initialization"

    invoke-static {v1}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 58
    return-void
.end method

.method private chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 145
    const/16 v0, 0x13

    new-array v2, v0, [I

    .line 146
    const/16 v0, 0x3033

    aput v0, v2, v4

    aput v7, v2, v6

    const/4 v0, 0x2

    .line 147
    const/16 v1, 0x3040

    aput v1, v2, v0

    const/4 v0, 0x3

    aput v7, v2, v0

    .line 148
    const/16 v0, 0x3026

    aput v0, v2, v7

    const/4 v0, 0x6

    .line 149
    const/16 v1, 0x3024

    aput v1, v2, v0

    const/4 v0, 0x7

    aput v3, v2, v0

    .line 150
    const/16 v0, 0x3023

    aput v0, v2, v3

    const/16 v0, 0x9

    aput v3, v2, v0

    const/16 v0, 0xa

    .line 151
    const/16 v1, 0x3022

    aput v1, v2, v0

    const/16 v0, 0xb

    aput v3, v2, v0

    const/16 v0, 0xc

    .line 152
    const/16 v1, 0x3021

    aput v1, v2, v0

    const/16 v0, 0xd

    aput v3, v2, v0

    const/16 v0, 0xe

    .line 153
    const/16 v1, 0x3020

    aput v1, v2, v0

    const/16 v0, 0xf

    const/16 v1, 0x20

    aput v1, v2, v0

    const/16 v0, 0x10

    .line 154
    const/16 v1, 0x3025

    aput v1, v2, v0

    const/16 v0, 0x11

    const/16 v1, 0x18

    aput v1, v2, v0

    const/16 v0, 0x12

    .line 155
    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 158
    .local v2, "attribList":[I
    new-array v5, v6, [I

    .line 159
    .local v5, "numConfig":[I
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 161
    aget v4, v5, v4

    .line 162
    .local v4, "configSize":I
    new-array v0, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 165
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->dumpConfigs()V

    .line 167
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v0, v0, v6

    return-object v0
.end method

.method private convertToBitmap()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 212
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 219
    .local v10, "ms":J
    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v6

    .line 220
    .local v6, "ib":Ljava/nio/IntBuffer;
    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v8

    .line 225
    .local v8, "ibt":Ljava/nio/IntBuffer;
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    iget v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 227
    const-string v0, "Reading pixels from buffer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->GLVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    if-lt v7, v0, :cond_0

    .line 237
    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    iget v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->bitmap:Landroid/graphics/Bitmap;

    .line 238
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 240
    const-string v0, "Converted buffer (%d bytes) to image in %dms"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    iget v4, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    mul-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v10

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->GLInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .end local v6    # "ib":Ljava/nio/IntBuffer;
    .end local v7    # "i":I
    .end local v8    # "ibt":Ljava/nio/IntBuffer;
    .end local v10    # "ms":J
    :goto_1
    return-void

    .line 231
    .restart local v6    # "ib":Ljava/nio/IntBuffer;
    .restart local v7    # "i":I
    .restart local v8    # "ibt":Ljava/nio/IntBuffer;
    .restart local v10    # "ms":J
    :cond_0
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    if-lt v9, v0, :cond_1

    .line 229
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 233
    :cond_1
    iget v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v9

    iget v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    mul-int/2addr v1, v7

    add-int/2addr v1, v9

    invoke-virtual {v6, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-virtual {v8, v0, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 242
    .end local v6    # "ib":Ljava/nio/IntBuffer;
    .end local v7    # "i":I
    .end local v8    # "ibt":Ljava/nio/IntBuffer;
    .end local v9    # "j":I
    .end local v10    # "ms":J
    :catch_0
    move-exception v12

    .line 244
    .local v12, "th":Ljava/lang/Throwable;
    const-string v0, "Cannot get bitmap from GLRenderBuffer"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v0, v12, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->GLError(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private dumpConfigs()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method private getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 4
    .param p1, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p2, "attribute"    # I

    .prologue
    const/4 v1, 0x0

    .line 200
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 202
    .local v0, "value":[I
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, p1, p2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v1, v0, v1

    :cond_0
    return v1
.end method

.method private init(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 78
    iput p1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    .line 79
    iput p2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    .line 82
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 83
    const/16 v2, 0x3057

    aput v2, v0, v7

    aput p1, v0, v8

    const/4 v2, 0x2

    .line 84
    const/16 v3, 0x3056

    aput v3, v0, v2

    aput p2, v0, v4

    const/4 v2, 0x4

    .line 85
    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 89
    .local v0, "attribList":[I
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 94
    .local v1, "versionAttrib":[I
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 95
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 96
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 98
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 100
    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 102
    const-string v2, "glMakeCurrent"

    invoke-static {v2}, Lcom/vkontakte/android/imagepicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->first_initialization:Z

    if-eqz v2, :cond_0

    .line 103
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->instance()Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    invoke-static {v8}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->setForceFiltersDisabled(Z)V

    .line 105
    :cond_0
    iput-boolean v7, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->first_initialization:Z

    .line 106
    return-void

    .line 89
    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 72
    return-void
.end method

.method public getBitmap(Ljava/lang/Runnable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Renderer was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->getThreadOwnerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Current thread cannot access this GLRenderBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 131
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 136
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 137
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->convertToBitmap()V

    .line 139
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getThreadOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->threadOwnerName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->threadOwnerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 4
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->getThreadOwnerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Current is not owning this GLRenderBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->width:I

    iget v3, p0, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->height:I

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 116
    return-void
.end method

.method public updateSurface(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->destroy()V

    .line 64
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/imagepicker/gl/GLRenderBuffer;->init(II)V

    .line 66
    :cond_0
    return-void
.end method
