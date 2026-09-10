.class public Lcom/vkontakte/android/NewVideoPlayerActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "NewVideoPlayerActivity.java"

# interfaces
.implements Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;
    }
.end annotation


# instance fields
.field private actionBarView:Landroid/view/View;

.field private animBottomHide:Landroid/view/animation/Animation;

.field private animBottomShow:Landroid/view/animation/Animation;

.field private animTopHide:Landroid/view/animation/Animation;

.field private animTopShow:Landroid/view/animation/Animation;

.field private callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

.field private canLike:Z

.field private completed:Z

.field private curQuality:I

.field private endMenu:Landroid/view/View;

.field private file:Lcom/vkontakte/android/api/VideoFile;

.field private fillScreen:Z

.field private firstResize:Z

.field private height:I

.field private ignoreNextVisibilityChange:Z

.field private incViewSent:Z

.field private isLiked:Z

.field private needRestartPlayer:Z

.field private numComments:I

.field private numLikes:I

.field private pausedByCall:Z

.field private playedTime:I

.field private player:Lcom/vkontakte/android/media/PlayerWrapper;

.field private playing:Z

.field private progress:Landroid/widget/ProgressBar;

.field private ready:Z

.field private seekBar:Landroid/widget/SeekBar;

.field private seeking:Z

.field private surface:Landroid/view/SurfaceView;

.field t:J

.field private texView:Landroid/view/TextureView;

.field private thumb:Landroid/widget/ImageView;

.field private timer:Ljava/util/Timer;

.field private uiVisibility:I

.field private uiVisible:Z

.field private wakelock:Landroid/os/PowerManager$WakeLock;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    .line 73
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 77
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    .line 79
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 80
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 81
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    .line 82
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    .line 85
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->isLiked:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->canLike:Z

    .line 87
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 88
    iput v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    .line 89
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    .line 91
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    .line 92
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    .line 93
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 884
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 879
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    return v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    return v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    return v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    return v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->replay()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return-void
.end method

.method private cancelHideUI()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 881
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 882
    return-void
.end method

.method private getMaxQuality()I
    .locals 9

    .prologue
    const/16 v6, 0x1e0

    const/16 v4, 0x168

    const/16 v5, 0x2d0

    .line 402
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-ge v7, v8, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v4

    .line 403
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    if-nez v7, :cond_2

    move v4, v5

    goto :goto_0

    .line 404
    :cond_2
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 405
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v0, 0x0

    .line 406
    .local v0, "hasBack":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    if-lt v1, v7, :cond_3

    .line 413
    :goto_2
    if-nez v0, :cond_5

    move v4, v5

    goto :goto_0

    .line 407
    :cond_3
    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 408
    iget v7, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v7, :cond_4

    .line 409
    const/4 v0, 0x1

    .line 410
    goto :goto_2

    .line 406
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 415
    :cond_5
    const/4 v7, 0x1

    :try_start_0
    invoke-static {v7}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 416
    .local v3, "profile":Landroid/media/CamcorderProfile;
    iget v7, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-lt v7, v5, :cond_6

    move v4, v5

    .line 417
    goto :goto_0

    .line 418
    :cond_6
    iget v5, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v5, v6, :cond_0

    move v4, v6

    .line 419
    goto :goto_0

    .line 421
    .end local v3    # "profile":Landroid/media/CamcorderProfile;
    :catch_0
    move-exception v4

    move v4, v5

    .line 423
    goto :goto_0
.end method

.method private hideUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const v3, 0x7f08014b

    const/4 v2, 0x0

    .line 834
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 835
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 836
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-nez v0, :cond_2

    .line 867
    :cond_1
    :goto_0
    return-void

    .line 837
    :cond_2
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 838
    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 839
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 843
    :goto_1
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$17;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$17;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 848
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 849
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$18;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$18;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 842
    :cond_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    goto :goto_1

    .line 859
    :cond_4
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 860
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 863
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 864
    const v1, 0x7f08014b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private hideUI(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 870
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 871
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 872
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$19;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 876
    int-to-long v2, p1

    .line 872
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 877
    return-void
.end method

.method private openYoutubeApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 619
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 620
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 621
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 628
    :goto_0
    const v3, 0x18894

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 629
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 630
    :cond_1
    return-void

    .line 621
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 623
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.youtube"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private playExternal(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x1000000

    const/high16 v7, 0x428c0000    # 70.0f

    const/4 v6, 0x1

    .line 633
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 634
    .local v3, "webWrap":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 635
    .local v2, "wv":Landroid/webkit/WebView;
    new-instance v4, Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/CircularProgressBar;-><init>(Landroid/content/Context;)V

    .line 636
    .local v4, "progress":Lcom/vkontakte/android/ui/CircularProgressBar;
    new-array v5, v6, [Z

    const/4 v0, 0x0

    aput-boolean v6, v5, v0

    .line 637
    .local v5, "canShowProgress":[Z
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;

    invoke-direct {v0, p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$12;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;[Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 644
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$13;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Lcom/vkontakte/android/ui/CircularProgressBar;[Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 692
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 693
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 694
    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 695
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 696
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 697
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/16 v7, 0x11

    invoke-direct {v0, v1, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 700
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 702
    return-void
.end method

.method private replay()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 289
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 290
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v1, :cond_2

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    const/16 v1, 0x1388

    invoke-direct {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    .line 295
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 296
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 297
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 299
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 300
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 302
    :cond_4
    iget-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 303
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_5

    .line 304
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 305
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    .line 306
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 307
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 308
    const v1, 0x7f08014b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 309
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 310
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->getDataSource()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "ds":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 312
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 313
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 318
    .end local v0    # "ds":Ljava/lang/String;
    :cond_5
    :goto_1
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    .line 319
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 320
    const v1, 0x7f08014f

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201b9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    iput-boolean v6, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 322
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    goto/16 :goto_0

    .line 316
    :cond_6
    new-instance v1, Lcom/vkontakte/android/api/VideoReportStats;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iget v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/vkontakte/android/api/VideoReportStats;-><init>(IIIZ)V

    invoke-virtual {v1}, Lcom/vkontakte/android/api/VideoReportStats;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_1
.end method

.method private showUI()V
    .locals 5

    .prologue
    const v1, 0x7f08014e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 885
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-eqz v0, :cond_0

    .line 903
    :goto_0
    return-void

    .line 886
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 887
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 888
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 889
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 890
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 891
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 895
    :goto_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 896
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 898
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 899
    const v1, 0x7f08014b

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :cond_1
    :goto_2
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0

    .line 893
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    goto :goto_1

    .line 900
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private startFile()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 334
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 335
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string v6, "http://www.youtube.com/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 336
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->openYoutubeApp(Ljava/lang/String;)V

    .line 399
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    goto :goto_0

    .line 342
    :cond_1
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ext="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; embed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 344
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->playExternal(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const v5, 0x18894

    invoke-virtual {p0, v0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 351
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_4

    .line 352
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onError(I)V

    goto :goto_0

    .line 355
    :cond_4
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "240"

    aput-object v5, v4, v7

    const-string v5, "360"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "480"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "720 (HD)"

    aput-object v6, v4, v5

    .line 356
    .local v4, "q":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 357
    .local v3, "n":I
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getMaxQuality()I

    move-result v2

    .line 358
    .local v2, "mq":I
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 359
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-eqz v5, :cond_6

    const/16 v5, 0x1e0

    if-lt v2, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 360
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    if-eqz v5, :cond_7

    const/16 v5, 0x2d0

    if-lt v2, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 361
    :cond_7
    if-le v3, v8, :cond_8

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_8

    .line 362
    new-array v1, v3, [Ljava/lang/String;

    .line 363
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v4, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    new-instance v6, Lcom/vkontakte/android/NewVideoPlayerActivity$7;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$7;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v5, v1, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 387
    new-instance v6, Lcom/vkontakte/android/NewVideoPlayerActivity$8;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$8;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 393
    const v6, 0x7f0600ea

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 394
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 396
    .end local v1    # "items":[Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->initPlayer(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 705
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 706
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onBackPressed()V

    .line 711
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public initPlayer(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f08014b

    const/4 v3, 0x0

    .line 427
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "forceVideoSurface"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 428
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 429
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    .line 431
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 432
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 433
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 434
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "bg":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 458
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 460
    .end local v0    # "bg":Landroid/view/SurfaceView;
    :cond_1
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 461
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 471
    :goto_0
    return-void

    .line 464
    :cond_2
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    .line 465
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    const v2, 0x3f800008    # 1.000001f

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 466
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 467
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 468
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 717
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_5

    const/4 v7, 0x6

    :goto_0
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 100
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setVolumeControlStream(I)V

    .line 102
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 103
    const-wide/16 v7, 0x9

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewVideoPlayerActivity;->requestWindowFeature(J)V

    .line 104
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020090

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    const v7, 0x7f03006c

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setContentView(I)V

    .line 106
    const v7, 0x7f08014b

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "action_bar_container"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "abId":I
    if-nez v0, :cond_0

    const v0, 0x7f080031

    .line 109
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    .line 130
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    .line 132
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 134
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 136
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 137
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 138
    .local v1, "d":[B
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    const v7, 0x7f08014b

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 140
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_1

    const/high16 v7, 0x10a0000

    const v8, 0x10a0001

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 143
    .end local v1    # "d":[B
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_1
    const v7, 0x7f080157

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    .line 144
    const v7, 0x7f080154

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 145
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/api/VideoFile;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    .line 147
    const v7, 0x7f04000e

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    .line 148
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 149
    const v7, 0x7f040011

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    .line 150
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 151
    const v7, 0x7f04000c

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    .line 152
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 153
    const v7, 0x7f040010

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    .line 154
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 156
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 157
    const v7, 0x7f08014f

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    const v7, 0x7f08014c

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$2;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$2;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v7, 0x7f080155

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$3;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    const v7, 0x7f080153

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "%d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v11, v11, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v11, v11, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 202
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 203
    .local v3, "pm":Landroid/os/PowerManager;
    const/16 v7, 0xa

    const-string v8, "VkVideoPlayer"

    invoke-virtual {v3, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 204
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 206
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "action"

    const/4 v8, 0x7

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 211
    const v7, 0x7f08014b

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 212
    .local v5, "root":Landroid/view/View;
    new-instance v7, Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-direct {v7, p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 233
    .end local v5    # "root":Landroid/view/View;
    :cond_2
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 234
    .local v6, "telManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 235
    const v7, 0x7f03006a

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    .line 237
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    const v8, 0x7f08014a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const v7, 0x7f080152

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 245
    const v7, 0x7f080153

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/Global;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 247
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_7

    .line 248
    :cond_4
    const v7, 0x7f08014e

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 250
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :goto_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 254
    new-instance v7, Lcom/vkontakte/android/api/VideoGetById;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v9, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v9, v9, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iget-object v10, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v10, v10, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/vkontakte/android/api/VideoGetById;-><init>(IILjava/lang/String;)V

    .line 255
    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 280
    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 285
    :goto_2
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 286
    return-void

    .line 99
    .end local v0    # "abId":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 252
    .restart local v0    # "abId":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "pm":Landroid/os/PowerManager;
    .restart local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_6
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    goto :goto_1

    .line 282
    :cond_7
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 720
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onDestroy()V

    .line 721
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 722
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v3}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 724
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 728
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 729
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/vkontakte/android/NewVideoPlayerActivity$14;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$14;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 734
    const-wide/16 v4, 0xc8

    .line 729
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 735
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 736
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 737
    return-void
.end method

.method public onEndOfBuffer()V
    .locals 1

    .prologue
    .line 953
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$20;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$20;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 956
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 795
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$16;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 326
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onBackPressed()V

    .line 328
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 931
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 932
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    if-eqz v0, :cond_0

    .line 933
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    .line 935
    :cond_0
    return-void
.end method

.method public onPlaybackCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 761
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/VideoFile;->repeat:Z

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 763
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 791
    :goto_0
    return-void

    .line 766
    :cond_0
    iput-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 768
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$15;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPlaybackResumed()V
    .locals 1

    .prologue
    .line 960
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$21;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$21;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 963
    return-void
.end method

.method public onPlayerReady(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    .line 476
    iput p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    .line 477
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$10;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$10;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 492
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 493
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 742
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 747
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 748
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 754
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 755
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 756
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0
.end method

.method public onUpdateBuffered(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 830
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->duration:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 831
    return-void
.end method

.method public onUpdatePlaybackPosition(I)V
    .locals 5
    .param p1, "sec"    # I

    .prologue
    .line 607
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    .line 608
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    if-nez v0, :cond_0

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    .line 610
    new-instance v0, Lcom/vkontakte/android/api/VideoReportStats;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iget v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/api/VideoReportStats;-><init>(IIIZ)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/VideoReportStats;->exec()Lcom/vkontakte/android/APIRequest;

    .line 612
    :cond_0
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$11;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 616
    return-void
.end method

.method public resize()V
    .locals 35

    .prologue
    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 497
    const/4 v14, 0x0

    .local v14, "realScrW":I
    const/4 v13, 0x0

    .local v13, "realScrH":I
    const/16 v25, 0x0

    .local v25, "visibleW":I
    const/16 v24, 0x0

    .line 498
    .local v24, "visibleH":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    .line 500
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x11

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_5

    .line 501
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 502
    .local v20, "size":Landroid/graphics/Point;
    const-string v30, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 503
    .local v28, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 504
    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/Point;->x:I

    .line 505
    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 519
    .end local v20    # "size":Landroid/graphics/Point;
    .end local v28    # "wm":Landroid/view/WindowManager;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v31

    invoke-direct {v0, v14, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    :cond_0
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 526
    .local v21, "sratio":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v26, v30, v31

    .line 527
    .local v26, "vratio":F
    const/high16 v15, 0x3f800000    # 1.0f

    .local v15, "scaleX":F
    const/high16 v16, 0x3f800000    # 1.0f

    .local v16, "scaleY":F
    const/16 v22, 0x0

    .local v22, "transX":F
    const/16 v23, 0x0

    .line 528
    .local v23, "transY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    cmpl-float v30, v26, v21

    if-lez v30, :cond_7

    .line 529
    :cond_1
    int-to-float v0, v13

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v9, v30, v31

    .line 530
    .local v9, "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v27, v30, v9

    .line 531
    .local v27, "w":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 532
    int-to-float v0, v14

    move/from16 v30, v0

    div-float v15, v27, v30

    .line 539
    .end local v27    # "w":F
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    move/from16 v30, v0

    if-eqz v30, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3

    move/from16 v0, v25

    if-ne v14, v0, :cond_2

    move/from16 v0, v24

    if-eq v13, v0, :cond_3

    .line 540
    :cond_2
    sub-int v30, v14, v25

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v22, v0

    .line 541
    sub-int v30, v13, v24

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v23, v0

    .line 543
    :cond_3
    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    const-string v32, "Video scale: "

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/view/TextureView;->setScaleX(F)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 551
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    .line 578
    .end local v9    # "k":F
    .end local v13    # "realScrH":I
    .end local v14    # "realScrW":I
    .end local v15    # "scaleX":F
    .end local v16    # "scaleY":F
    .end local v21    # "sratio":F
    .end local v22    # "transX":F
    .end local v23    # "transY":F
    .end local v24    # "visibleH":I
    .end local v25    # "visibleW":I
    .end local v26    # "vratio":F
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    if-nez v30, :cond_d

    .line 603
    :goto_3
    return-void

    .line 508
    .restart local v13    # "realScrH":I
    .restart local v14    # "realScrW":I
    .restart local v24    # "visibleH":I
    .restart local v25    # "visibleW":I
    :cond_5
    :try_start_0
    const-string v30, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 509
    .restart local v28    # "wm":Landroid/view/WindowManager;
    const-class v30, Landroid/view/Display;

    const-string v31, "getRawWidth"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 510
    .local v12, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v30, Landroid/view/Display;

    const-string v31, "getRawHeight"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 511
    .local v11, "mGetRawH":Ljava/lang/reflect/Method;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 512
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    goto/16 :goto_0

    .line 513
    .end local v11    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v12    # "mGetRawW":Ljava/lang/reflect/Method;
    .end local v28    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v29

    .line 514
    .local v29, "x":Ljava/lang/Exception;
    move/from16 v14, v25

    .line 515
    move/from16 v13, v24

    goto/16 :goto_0

    .line 528
    .end local v29    # "x":Ljava/lang/Exception;
    .restart local v15    # "scaleX":F
    .restart local v16    # "scaleY":F
    .restart local v21    # "sratio":F
    .restart local v22    # "transX":F
    .restart local v23    # "transY":F
    .restart local v26    # "vratio":F
    :cond_6
    cmpg-float v30, v26, v21

    if-ltz v30, :cond_1

    .line 534
    :cond_7
    int-to-float v0, v14

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v9, v30, v31

    .line 535
    .restart local v9    # "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v8, v30, v9

    .line 536
    .local v8, "h":F
    int-to-float v0, v13

    move/from16 v30, v0

    div-float v16, v8, v30

    .line 537
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 553
    .end local v8    # "h":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    const-string v31, "scaleX"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v15, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 554
    .local v5, "animX":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    const-string v31, "scaleY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v16, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 555
    .local v6, "animY":Landroid/animation/ObjectAnimator;
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    .line 556
    .local v19, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    .line 557
    .local v7, "bldr":Landroid/animation/AnimatorSet$Builder;
    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-eqz v30, :cond_9

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    const-string v31, "translationX"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v22, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 559
    .local v3, "animTX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 561
    .end local v3    # "animTX":Landroid/animation/ObjectAnimator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/TextureView;->getTranslationX()F

    move-result v30

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_a

    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-nez v30, :cond_a

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    const-string v31, "translationX"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aput v34, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 563
    .restart local v3    # "animTX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 565
    .end local v3    # "animTX":Landroid/animation/ObjectAnimator;
    :cond_a
    const/16 v30, 0x0

    cmpl-float v30, v23, v30

    if-eqz v30, :cond_b

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    const-string v31, "translationY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput v23, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 567
    .local v4, "animTY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 569
    .end local v4    # "animTY":Landroid/animation/ObjectAnimator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/TextureView;->getTranslationY()F

    move-result v30

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_c

    const/16 v30, 0x0

    cmpl-float v30, v23, v30

    if-nez v30, :cond_c

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    const-string v31, "translationY"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    aput v34, v32, v33

    invoke-static/range {v30 .. v32}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 571
    .restart local v4    # "animTY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 573
    .end local v4    # "animTY":Landroid/animation/ObjectAnimator;
    :cond_c
    const-wide/16 v30, 0x12c

    move-object/from16 v0, v19

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 574
    new-instance v30, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v30 .. v30}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 575
    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 579
    .end local v5    # "animX":Landroid/animation/ObjectAnimator;
    .end local v6    # "animY":Landroid/animation/ObjectAnimator;
    .end local v7    # "bldr":Landroid/animation/AnimatorSet$Builder;
    .end local v9    # "k":F
    .end local v13    # "realScrH":I
    .end local v14    # "realScrW":I
    .end local v15    # "scaleX":F
    .end local v16    # "scaleY":F
    .end local v19    # "set":Landroid/animation/AnimatorSet;
    .end local v21    # "sratio":F
    .end local v22    # "transX":F
    .end local v23    # "transY":F
    .end local v24    # "visibleH":I
    .end local v25    # "visibleW":I
    .end local v26    # "vratio":F
    :cond_d
    const/16 v18, 0x0

    .local v18, "scrW":I
    const/16 v17, 0x0

    .line 580
    .local v17, "scrH":I
    const v30, 0x7f08014b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 581
    const v30, 0x7f08014b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 582
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 583
    .restart local v21    # "sratio":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v26, v30, v31

    .line 584
    .restart local v26    # "vratio":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    cmpl-float v30, v26, v21

    if-lez v30, :cond_10

    .line 585
    :cond_e
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v9, v30, v31

    .line 586
    .restart local v9    # "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v27, v0

    .line 588
    .local v27, "w":I
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v17

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 589
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 584
    .end local v9    # "k":F
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v27    # "w":I
    :cond_f
    cmpg-float v30, v26, v21

    if-ltz v30, :cond_e

    .line 596
    :cond_10
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v9, v30, v31

    .line 597
    .restart local v9    # "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v8, v0

    .line 599
    .local v8, "h":I
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v9

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v18

    move/from16 v1, v30

    invoke-direct {v10, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 600
    .restart local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method
