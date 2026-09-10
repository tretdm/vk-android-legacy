.class public Lcom/vkontakte/android/mediapicker/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCamera(I)Landroid/hardware/Camera;
    .locals 4
    .param p0, "cameraIndex"    # I

    .prologue
    .line 19
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 22
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 24
    .local v0, "camera":Landroid/hardware/Camera;
    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v0    # "camera":Landroid/hardware/Camera;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 26
    :catch_0
    move-exception v1

    .line 28
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "Cannot open camera"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
