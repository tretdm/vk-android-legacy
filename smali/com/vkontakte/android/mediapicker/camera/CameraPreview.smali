.class public Lcom/vkontakte/android/mediapicker/camera/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private holder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->camera:Landroid/hardware/Camera;

    .line 24
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->holder:Landroid/view/SurfaceHolder;

    .line 25
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 26
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 76
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "t":Ljava/lang/Exception;
    const-string v1, "Error starting"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    .end local v0    # "t":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 36
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "Error setting camera preview: "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 48
    return-void
.end method
