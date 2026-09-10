.class public Lcom/vkontakte/android/mediapicker/camera/CameraActivity;
.super Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;
.source "CameraActivity.java"


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private contentView:Landroid/widget/FrameLayout;

.field private needResume:Z

.field private preview:Lcom/vkontakte/android/mediapicker/camera/CameraPreview;

.field private rectSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;-><init>()V

    return-void
.end method

.method private updateRectSize()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->getScreenMinSize()I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->rectSize:I

    .line 92
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x1

    .line 30
    invoke-super {p0, p1}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->requestWindowFeature(I)Z

    .line 35
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 42
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/camera/CameraHolder;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    .line 44
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->contentView:Landroid/widget/FrameLayout;

    .line 45
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->contentView:Landroid/widget/FrameLayout;

    const v1, -0xe5e5e6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 47
    new-instance v0, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/mediapicker/camera/CameraPreview;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->preview:Lcom/vkontakte/android/mediapicker/camera/CameraPreview;

    .line 49
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->preview:Lcom/vkontakte/android/mediapicker/camera/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->updateRectSize()V

    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->setContentView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->onPause()V

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->needResume:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Cannot release camera"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    iput-boolean v3, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->needResume:Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/vkontakte/android/mediapicker/providers/ActivityClassProvider;->onResume()V

    .line 63
    :try_start_0
    iget-boolean v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->needResume:Z

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/camera/CameraActivity;->camera:Landroid/hardware/Camera;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "Cannot access camera"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/mediapicker/utils/Loggable;->Error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
