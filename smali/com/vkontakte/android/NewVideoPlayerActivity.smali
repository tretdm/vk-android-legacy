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

.field private addedID:I

.field private adding:Z

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

.field private referer:Ljava/lang/String;

.field private seekBar:Landroid/widget/SeekBar;

.field private seeking:Z

.field private statusBG:Landroid/view/View;

.field private statusBarHeight:I

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

    .line 73
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    .line 81
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 85
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    .line 87
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 88
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 89
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    .line 90
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    .line 93
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->isLiked:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->canLike:Z

    .line 95
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 96
    iput v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    .line 97
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    .line 99
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    .line 100
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    .line 101
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    .line 102
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    .line 103
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->adding:Z

    .line 104
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->statusBarHeight:I

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->referer:Ljava/lang/String;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1009
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    return-void
.end method

.method static synthetic access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->adding:Z

    return-void
.end method

.method static synthetic access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    return v0
.end method

.method static synthetic access$28(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    return v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/NewVideoPlayerActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->referer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    return v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->statusBG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    return v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->replay()V

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return-void
.end method

.method private addVideo()V
    .locals 4

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->adding:Z

    .line 400
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    .line 401
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/vkontakte/android/api/VideoAdd;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoAdd;-><init>(II)V

    .line 403
    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$7;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoAdd;->setCallback(Lcom/vkontakte/android/api/VideoAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 440
    :goto_0
    return-void

    .line 421
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iget v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    .line 422
    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$8;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 438
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private cancelHideUI()V
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1011
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 1012
    return-void
.end method

.method private getMaxQuality()I
    .locals 12

    .prologue
    const/16 v8, 0x2d0

    const/16 v11, 0x1e0

    .line 511
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x9

    if-ge v9, v10, :cond_1

    const/16 v8, 0x168

    .line 542
    :cond_0
    :goto_0
    return v8

    .line 512
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v9

    if-eqz v9, :cond_0

    .line 513
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 514
    .local v5, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v3, 0x0

    .line 515
    .local v3, "hasBack":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v9

    if-lt v4, v9, :cond_4

    .line 522
    :goto_2
    const/4 v1, 0x0

    .line 523
    .local v1, "fromCamera":I
    if-eqz v3, :cond_2

    .line 525
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v9}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v6

    .line 526
    .local v6, "profile":Landroid/media/CamcorderProfile;
    iget v9, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v10, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lt v9, v8, :cond_6

    .line 527
    const/16 v1, 0x2d0

    .line 534
    .end local v6    # "profile":Landroid/media/CamcorderProfile;
    :cond_2
    :goto_3
    const/16 v2, 0x168

    .line 535
    .local v2, "fromScreen":I
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 536
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 537
    .local v7, "screenSize":I
    const/16 v8, 0x320

    if-lt v7, v8, :cond_8

    .line 538
    const/16 v2, 0x2d0

    .line 542
    :cond_3
    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    .line 516
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "fromCamera":I
    .end local v2    # "fromScreen":I
    .end local v7    # "screenSize":I
    :cond_4
    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 517
    iget v9, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v9, :cond_5

    .line 518
    const/4 v3, 0x1

    .line 519
    goto :goto_2

    .line 515
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 528
    .restart local v1    # "fromCamera":I
    .restart local v6    # "profile":Landroid/media/CamcorderProfile;
    :cond_6
    :try_start_1
    iget v8, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v9, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-lt v8, v11, :cond_7

    .line 529
    const/16 v1, 0x1e0

    goto :goto_3

    .line 530
    :cond_7
    const/16 v1, 0x168

    goto :goto_3

    .line 539
    .end local v6    # "profile":Landroid/media/CamcorderProfile;
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "fromScreen":I
    .restart local v7    # "screenSize":I
    :cond_8
    if-le v7, v11, :cond_3

    .line 540
    const/16 v2, 0x1e0

    goto :goto_4

    .line 531
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "fromScreen":I
    .end local v7    # "screenSize":I
    :catch_0
    move-exception v8

    goto :goto_3
.end method

.method private hideUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const v3, 0x7f0901d2

    const/4 v2, 0x0

    .line 958
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 959
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 960
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-nez v0, :cond_2

    .line 997
    :cond_1
    :goto_0
    return-void

    .line 961
    :cond_2
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 962
    const v0, 0x7f0901d5

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 963
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 964
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 965
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->statusBG:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 966
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->statusBG:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 969
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$19;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 978
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 979
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$20;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 968
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    goto :goto_1

    .line 989
    :cond_5
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 990
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 993
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

    .line 994
    const v1, 0x7f0901d2

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

    goto/16 :goto_0

    .line 995
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private hideUI(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1001
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 1002
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$21;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 1006
    int-to-long v2, p1

    .line 1002
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1007
    return-void
.end method

.method private openYoutubeApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 743
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 744
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 745
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 752
    :goto_0
    const v3, 0x18894

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 753
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 754
    :cond_1
    return-void

    .line 745
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 747
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.youtube"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 748
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

    .line 757
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 758
    .local v3, "webWrap":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 759
    .local v2, "wv":Landroid/webkit/WebView;
    new-instance v4, Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/CircularProgressBar;-><init>(Landroid/content/Context;)V

    .line 760
    .local v4, "progress":Lcom/vkontakte/android/ui/CircularProgressBar;
    new-array v5, v6, [Z

    const/4 v0, 0x0

    aput-boolean v6, v5, v0

    .line 761
    .local v5, "canShowProgress":[Z
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$14;

    invoke-direct {v0, p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$14;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;[Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 768
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$15;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Lcom/vkontakte/android/ui/CircularProgressBar;[Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 816
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 817
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 818
    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 819
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 820
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 821
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/16 v7, 0x11

    invoke-direct {v0, v1, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 823
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 824
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    .line 826
    return-void
.end method

.method private replay()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 336
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v1, :cond_2

    .line 370
    :cond_1
    :goto_0
    return-void

    .line 340
    :cond_2
    const/16 v1, 0x1388

    invoke-direct {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    .line 341
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 342
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 343
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 345
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 346
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 348
    :cond_4
    iget-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 349
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_5

    .line 350
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    .line 352
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 353
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 354
    const v1, 0x7f0901d2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 355
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 356
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->getDataSource()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "ds":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 358
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 359
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 365
    .end local v0    # "ds":Ljava/lang/String;
    :cond_5
    :goto_1
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    .line 366
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 367
    const v1, 0x7f0901d6

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0201e9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    iput-boolean v6, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 369
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    goto/16 :goto_0

    .line 363
    :cond_6
    const-string v1, "video_play"

    invoke-static {v1}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string v2, "video"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v4, v4, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v4, v4, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string v2, "quality"

    iget v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string v2, "position"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string v2, "source"

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->referer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    goto :goto_1
.end method

.method private showUI()V
    .locals 5

    .prologue
    const v1, 0x7f0901d5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1015
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-eqz v0, :cond_0

    .line 1047
    :goto_0
    return-void

    .line 1016
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 1017
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1019
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1035
    :goto_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1036
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 1038
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

    .line 1039
    const v1, 0x7f0901d2

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

    .line 1046
    :cond_1
    :goto_2
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0

    .line 1033
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    goto :goto_1

    .line 1040
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private startFile()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 444
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string v6, "http://www.youtube.com/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->openYoutubeApp(Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    goto :goto_0

    .line 451
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

    .line 452
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 453
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->playExternal(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    const v5, 0x18894

    invoke-virtual {p0, v0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 460
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_4

    .line 461
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onError(I)V

    goto :goto_0

    .line 464
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

    .line 465
    .local v4, "q":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 466
    .local v3, "n":I
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getMaxQuality()I

    move-result v2

    .line 467
    .local v2, "mq":I
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 468
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-eqz v5, :cond_6

    const/16 v5, 0x1e0

    if-lt v2, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 469
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    if-eqz v5, :cond_7

    const/16 v5, 0x2d0

    if-lt v2, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 470
    :cond_7
    if-le v3, v8, :cond_8

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_8

    .line 471
    new-array v1, v3, [Ljava/lang/String;

    .line 472
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v4, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 474
    new-instance v6, Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v5, v1, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 496
    new-instance v6, Lcom/vkontakte/android/NewVideoPlayerActivity$10;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$10;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 502
    const v6, 0x7f080104

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 503
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 505
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

    .line 829
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 830
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onBackPressed()V

    .line 835
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
    const v4, 0x7f0901d2

    const/4 v3, 0x0

    .line 546
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "forceVideoSurface"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 548
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    .line 550
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 551
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 552
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 553
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 554
    .local v0, "bg":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/NewVideoPlayerActivity$11;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$11;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 577
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 579
    .end local v0    # "bg":Landroid/view/SurfaceView;
    :cond_1
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 580
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 590
    :goto_0
    return-void

    .line 583
    :cond_2
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    .line 584
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    const v2, 0x3f800008    # 1.000001f

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 585
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 586
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 587
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 588
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
    .line 840
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 841
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_6

    const/4 v7, 0x6

    :goto_0
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 113
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setVolumeControlStream(I)V

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 117
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x4000000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 119
    const-wide/16 v7, 0x9

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewVideoPlayerActivity;->requestWindowFeature(J)V

    .line 121
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v9, -0x56000000

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const v7, 0x7f030094

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setContentView(I)V

    .line 123
    const v7, 0x7f0901d2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "action_bar_container"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "abId":I
    if-nez v0, :cond_0

    const v0, 0x7f09003b

    .line 126
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    .line 167
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    .line 169
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 170
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 171
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 173
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 174
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 175
    .local v1, "d":[B
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    const v7, 0x7f0901d2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 177
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_1

    const/high16 v7, 0x10a0000

    const v8, 0x10a0001

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 179
    .end local v1    # "d":[B
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "referer"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "referer"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->referer:Ljava/lang/String;

    .line 182
    :cond_2
    const v7, 0x7f0901de

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    .line 183
    const v7, 0x7f0901db

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 184
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/api/VideoFile;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    .line 185
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "video"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/vkontakte/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 187
    const v7, 0x7f04000e

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    .line 188
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 189
    const v7, 0x7f040011

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    .line 190
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 191
    const v7, 0x7f04000c

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    .line 192
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 193
    const v7, 0x7f040010

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    .line 194
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 196
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 197
    const v7, 0x7f0901d6

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v7, 0x7f0901d3

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$2;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$2;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v7, 0x7f0901dc

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$3;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v7, v7, Lcom/vkontakte/android/api/VideoFile;->duration:I

    const/16 v8, 0xe10

    if-ge v7, v8, :cond_7

    .line 240
    const v7, 0x7f0901da

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

    .line 243
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 245
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 246
    .local v3, "pm":Landroid/os/PowerManager;
    const/16 v7, 0xa

    const-string v8, "VkVideoPlayer"

    invoke-virtual {v3, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 247
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 249
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "action"

    const/4 v8, 0x7

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_3

    .line 254
    const v7, 0x7f0901d2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 255
    .local v5, "root":Landroid/view/View;
    new-instance v7, Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-direct {v7, p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 276
    .end local v5    # "root":Landroid/view/View;
    :cond_3
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 277
    .local v6, "telManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 278
    const v7, 0x7f030092

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    .line 280
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    const v8, 0x7f0901d0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v7, 0x7f0901d9

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 288
    const v7, 0x7f0901da

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 290
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 291
    :cond_5
    const v7, 0x7f0901d5

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 293
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :goto_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 297
    new-instance v7, Lcom/vkontakte/android/api/VideoGetById;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v9, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v9, v9, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iget-object v10, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v10, v10, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/vkontakte/android/api/VideoGetById;-><init>(IILjava/lang/String;)V

    .line 298
    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 326
    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 331
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 332
    return-void

    .line 112
    .end local v0    # "abId":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 242
    .restart local v0    # "abId":I
    :cond_7
    const v7, 0x7f0901da

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v11, v11, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit16 v11, v11, 0xe10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v11, v11, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v11, v11, 0x3c

    rem-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v11, v11, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 295
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "pm":Landroid/os/PowerManager;
    .restart local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    goto :goto_2

    .line 328
    :cond_9
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    const v5, 0x7f09020d

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f0e000d

    invoke-virtual {v0, v3, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 374
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v0, v0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 375
    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    if-eqz v0, :cond_2

    const v0, 0x7f0200f5

    :goto_1
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 376
    const v0, 0x7f090219

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v4, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 377
    return v1

    :cond_1
    move v0, v2

    .line 374
    goto :goto_0

    .line 375
    :cond_2
    const v0, 0x7f0200ee

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 844
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onDestroy()V

    .line 845
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 846
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v3}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 848
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 852
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 853
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/vkontakte/android/NewVideoPlayerActivity$16;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$16;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 858
    const-wide/16 v4, 0xc8

    .line 853
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 859
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 860
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 861
    return-void
.end method

.method public onEndOfBuffer()V
    .locals 1

    .prologue
    .line 1104
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$22;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$22;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1107
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 919
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$18;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 950
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 381
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onBackPressed()V

    .line 383
    const/4 v1, 0x1

    .line 395
    :goto_0
    return v1

    .line 385
    :cond_0
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f09020d

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->adding:Z

    if-nez v1, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->addVideo()V

    .line 388
    :cond_1
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090219

    if-ne v1, v2, :cond_2

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "itemID"

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string v1, "ownerID"

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v1, "type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 395
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1075
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->onPause()V

    .line 1076
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    if-eqz v0, :cond_0

    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    .line 1079
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->pause()V

    .line 1081
    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0201ea

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 1083
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    .line 1084
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    .line 1086
    :cond_1
    return-void
.end method

.method public onPlaybackCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 885
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/VideoFile;->repeat:Z

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 887
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 915
    :goto_0
    return-void

    .line 890
    :cond_0
    iput-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 891
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 892
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$17;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPlaybackResumed()V
    .locals 1

    .prologue
    .line 1111
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$23;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$23;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1114
    return-void
.end method

.method public onPlayerReady(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 594
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    .line 595
    iput p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    .line 596
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$12;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 613
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 866
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 872
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 878
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 879
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 880
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0
.end method

.method public onUpdateBuffered(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 954
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

    .line 955
    return-void
.end method

.method public onUpdatePlaybackPosition(I)V
    .locals 4
    .param p1, "sec"    # I

    .prologue
    .line 727
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    .line 728
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    if-nez v0, :cond_0

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    .line 731
    const-string v0, "video_play"

    invoke-static {v0}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "video"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "quality"

    iget v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "position"

    const-string v2, "middle"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "source"

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->referer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/data/Analytics$EventBuilder;->sendNow()Lcom/vkontakte/android/data/Analytics$EventBuilder;

    .line 733
    :cond_0
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$13;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 740
    return-void
.end method

.method public resize()V
    .locals 35

    .prologue
    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 617
    const/4 v14, 0x0

    .local v14, "realScrW":I
    const/4 v13, 0x0

    .local v13, "realScrH":I
    const/16 v25, 0x0

    .local v25, "visibleW":I
    const/16 v24, 0x0

    .line 618
    .local v24, "visibleH":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    .line 620
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x11

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 621
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 622
    .local v20, "size":Landroid/graphics/Point;
    const-string v30, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 623
    .local v28, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 624
    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/Point;->x:I

    .line 625
    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 639
    .end local v20    # "size":Landroid/graphics/Point;
    .end local v28    # "wm":Landroid/view/WindowManager;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v31

    invoke-direct {v0, v14, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    :cond_0
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 646
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

    .line 647
    .local v26, "vratio":F
    const/high16 v15, 0x3f800000    # 1.0f

    .local v15, "scaleX":F
    const/high16 v16, 0x3f800000    # 1.0f

    .local v16, "scaleY":F
    const/16 v22, 0x0

    .local v22, "transX":F
    const/16 v23, 0x0

    .line 648
    .local v23, "transY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    cmpl-float v30, v26, v21

    if-lez v30, :cond_5

    .line 649
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

    .line 650
    .local v9, "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v27, v30, v9

    .line 651
    .local v27, "w":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 652
    int-to-float v0, v14

    move/from16 v30, v0

    div-float v15, v27, v30

    .line 663
    .end local v27    # "w":F
    :goto_1
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

    .line 666
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/view/TextureView;->setScaleX(F)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 671
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    .line 698
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
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    if-nez v30, :cond_b

    .line 723
    :goto_3
    return-void

    .line 628
    .restart local v13    # "realScrH":I
    .restart local v14    # "realScrW":I
    .restart local v24    # "visibleH":I
    .restart local v25    # "visibleW":I
    :cond_3
    :try_start_0
    const-string v30, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 629
    .restart local v28    # "wm":Landroid/view/WindowManager;
    const-class v30, Landroid/view/Display;

    const-string v31, "getRawWidth"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 630
    .local v12, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v30, Landroid/view/Display;

    const-string v31, "getRawHeight"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 631
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

    .line 632
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

    .line 633
    .end local v11    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v12    # "mGetRawW":Ljava/lang/reflect/Method;
    .end local v28    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v29

    .line 634
    .local v29, "x":Ljava/lang/Exception;
    move/from16 v14, v25

    .line 635
    move/from16 v13, v24

    goto/16 :goto_0

    .line 648
    .end local v29    # "x":Ljava/lang/Exception;
    .restart local v15    # "scaleX":F
    .restart local v16    # "scaleY":F
    .restart local v21    # "sratio":F
    .restart local v22    # "transX":F
    .restart local v23    # "transY":F
    .restart local v26    # "vratio":F
    :cond_4
    cmpg-float v30, v26, v21

    if-ltz v30, :cond_1

    .line 654
    :cond_5
    int-to-float v0, v14

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v9, v30, v31

    .line 655
    .restart local v9    # "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v8, v30, v9

    .line 656
    .local v8, "h":F
    int-to-float v0, v13

    move/from16 v30, v0

    div-float v16, v8, v30

    .line 657
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 673
    .end local v8    # "h":F
    :cond_6
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

    .line 674
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

    .line 675
    .local v6, "animY":Landroid/animation/ObjectAnimator;
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    .line 676
    .local v19, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    .line 677
    .local v7, "bldr":Landroid/animation/AnimatorSet$Builder;
    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-eqz v30, :cond_7

    .line 678
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

    .line 679
    .local v3, "animTX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 681
    .end local v3    # "animTX":Landroid/animation/ObjectAnimator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/TextureView;->getTranslationX()F

    move-result v30

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_8

    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-nez v30, :cond_8

    .line 682
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

    .line 683
    .restart local v3    # "animTX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 685
    .end local v3    # "animTX":Landroid/animation/ObjectAnimator;
    :cond_8
    const/16 v30, 0x0

    cmpl-float v30, v23, v30

    if-eqz v30, :cond_9

    .line 686
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

    .line 687
    .local v4, "animTY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 689
    .end local v4    # "animTY":Landroid/animation/ObjectAnimator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/TextureView;->getTranslationY()F

    move-result v30

    const/16 v31, 0x0

    cmpl-float v30, v30, v31

    if-eqz v30, :cond_a

    const/16 v30, 0x0

    cmpl-float v30, v23, v30

    if-nez v30, :cond_a

    .line 690
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

    .line 691
    .restart local v4    # "animTY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 693
    .end local v4    # "animTY":Landroid/animation/ObjectAnimator;
    :cond_a
    const-wide/16 v30, 0x12c

    move-object/from16 v0, v19

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 694
    new-instance v30, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v30 .. v30}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 695
    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 699
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
    :cond_b
    const/16 v18, 0x0

    .local v18, "scrW":I
    const/16 v17, 0x0

    .line 700
    .local v17, "scrH":I
    const v30, 0x7f0901d2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 701
    const v30, 0x7f0901d2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 702
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 703
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

    .line 704
    .restart local v26    # "vratio":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_d

    cmpl-float v30, v26, v21

    if-lez v30, :cond_e

    .line 705
    :cond_c
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

    .line 706
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

    .line 708
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

    .line 709
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 704
    .end local v9    # "k":F
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v27    # "w":I
    :cond_d
    cmpg-float v30, v26, v21

    if-ltz v30, :cond_c

    .line 716
    :cond_e
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

    .line 717
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

    .line 719
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

    .line 720
    .restart local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method
