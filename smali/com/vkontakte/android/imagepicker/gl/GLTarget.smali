.class public Lcom/vkontakte/android/imagepicker/gl/GLTarget;
.super Landroid/opengl/GLES20;
.source "GLTarget.java"


# static fields
.field static gl_framebuffer:I

.field static gl_framebuffer_inited:Z

.field static height:I

.field static last_texture:I

.field static width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/imagepicker/gl/GLTarget;->gl_framebuffer_inited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/opengl/GLES20;-><init>()V

    return-void
.end method

.method static unload()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    sget-boolean v0, Lcom/vkontakte/android/imagepicker/gl/GLTarget;->gl_framebuffer_inited:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/vkontakte/android/imagepicker/gl/GLTarget;->gl_framebuffer:I

    if-eqz v0, :cond_0

    .line 61
    new-array v0, v3, [I

    sget v1, Lcom/vkontakte/android/imagepicker/gl/GLTarget;->gl_framebuffer:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Lcom/vkontakte/android/imagepicker/gl/GLTarget;->glDeleteFramebuffers(I[II)V

    .line 62
    sput v2, Lcom/vkontakte/android/imagepicker/gl/GLTarget;->gl_framebuffer:I

    .line 64
    :cond_0
    return-void
.end method

.method static updateForTexture(III)V
    .locals 0
    .param p0, "texture"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 18
    return-void
.end method

.method static updateViewport(II)V
    .locals 0
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 55
    return-void
.end method
