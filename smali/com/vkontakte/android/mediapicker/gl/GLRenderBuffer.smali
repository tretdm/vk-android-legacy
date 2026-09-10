.class public Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;
.super Ljava/lang/Object;
.source "GLRenderBuffer.java"


# static fields
.field private static final DumpConfigs:Z = false

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_SURFACE_SIZE:I = 0x400

.field private static final LoggingTag:Ljava/lang/String; = "photo_picker_gl"


# instance fields
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
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->first_initialization:Z

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->threadOwnerName:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->initContext(II)V

    .line 48
    return-void
.end method

.method private chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v4, 0x0

    const/16 v6, 0x8

    .line 154
    const/16 v0, 0x11

    new-array v2, v0, [I

    .line 155
    const/16 v0, 0x3033

    aput v0, v2, v4

    aput v7, v2, v8

    const/4 v0, 0x2

    .line 156
    const/16 v1, 0x3040

    aput v1, v2, v0

    const/4 v0, 0x3

    aput v7, v2, v0

    .line 157
    const/16 v0, 0x3026

    aput v0, v2, v7

    const/4 v0, 0x6

    .line 158
    const/16 v1, 0x3025

    aput v1, v2, v0

    .line 159
    const/16 v0, 0x3024

    aput v0, v2, v6

    const/16 v0, 0x9

    aput v6, v2, v0

    const/16 v0, 0xa

    .line 160
    const/16 v1, 0x3023

    aput v1, v2, v0

    const/16 v0, 0xb

    aput v6, v2, v0

    const/16 v0, 0xc

    .line 161
    const/16 v1, 0x3022

    aput v1, v2, v0

    const/16 v0, 0xd

    aput v6, v2, v0

    const/16 v0, 0xe

    .line 162
    const/16 v1, 0x3021

    aput v1, v2, v0

    const/16 v0, 0xf

    aput v6, v2, v0

    const/16 v0, 0x10

    .line 163
    const/16 v1, 0x3038

    aput v1, v2, v0

    .line 166
    .local v2, "attribList":[I
    new-array v5, v8, [I

    .line 167
    .local v5, "numConfig":[I
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 169
    aget v10, v5, v4

    .line 170
    .local v10, "configSize":I
    new-array v0, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    .line 171
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v8, v2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 173
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->dumpConfigs()V

    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfigs:[Ljavax/microedition/khronos/egl/EGLConfig;

    aget-object v3, v0, v4

    :cond_0
    return-object v3
.end method

.method private dumpConfigs()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method private getConfigAttrib(Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 4
    .param p1, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p2, "attribute"    # I

    .prologue
    const/4 v1, 0x0

    .line 208
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 210
    .local v0, "value":[I
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

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

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 85
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_0

    .line 87
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setForceFiltersDisabled(Z)V

    .line 119
    :goto_0
    return-void

    .line 91
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->width:I

    .line 92
    iput p2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->height:I

    .line 95
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 96
    const/16 v2, 0x3057

    aput v2, v0, v8

    aput p1, v0, v7

    const/4 v2, 0x2

    .line 97
    const/16 v3, 0x3056

    aput v3, v0, v2

    aput p2, v0, v4

    const/4 v2, 0x4

    .line 98
    const/16 v3, 0x3038

    aput v3, v0, v2

    .line 102
    .local v0, "attribList":[I
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 107
    .local v1, "versionAttrib":[I
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 108
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 109
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 111
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 113
    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 115
    const-string v2, "glMakeCurrent"

    invoke-static {v2}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->first_initialization:Z

    if-eqz v2, :cond_1

    .line 116
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->instance()Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    invoke-static {v7}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->setForceFiltersDisabled(Z)V

    .line 118
    :cond_1
    iput-boolean v8, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->first_initialization:Z

    goto :goto_0

    .line 102
    nop

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
    .line 77
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 79
    return-void
.end method

.method public drawFrame(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Renderer was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->getThreadOwnerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Current thread cannot access this GLRenderBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->getAreFiltersSupported()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 148
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getThreadOwnerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->threadOwnerName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->threadOwnerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public initContext(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 52
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 54
    .local v0, "version":[I
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 58
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGL:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 59
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->chooseConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 62
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->init(II)V

    .line 64
    const-string v1, "Step after initialization"

    invoke-static {v1}, Lcom/vkontakte/android/mediapicker/gl/ResourceLoader;->checkGlError(Ljava/lang/String;)Z

    .line 65
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 4
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->getThreadOwnerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Current is not owning this GLRenderBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 127
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 128
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget v2, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->width:I

    iget v3, p0, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->height:I

    invoke-interface {v0, v1, v2, v3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 129
    return-void
.end method

.method public updateSurface(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->destroy()V

    .line 71
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/gl/GLRenderBuffer;->init(II)V

    .line 73
    :cond_0
    return-void
.end method
