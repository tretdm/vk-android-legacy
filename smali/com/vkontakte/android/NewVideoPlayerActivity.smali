.class public Lcom/vkontakte/android/NewVideoPlayerActivity;
.super Landroid/app/Activity;
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

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 83
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    .line 85
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 86
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 87
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    .line 88
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/NewVideoPlayerActivity$1;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    .line 91
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->isLiked:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->canLike:Z

    .line 93
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 94
    iput v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    .line 95
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    .line 97
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    .line 98
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    .line 99
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    .line 100
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    .line 101
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->adding:Z

    .line 102
    iput v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->statusBarHeight:I

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->referer:Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 1085
    return-void
.end method

.method static synthetic access$100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/vkontakte/android/NewVideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    return p1
.end method

.method static synthetic access$1300(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/api/VideoFile;)Lcom/vkontakte/android/api/VideoFile;
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # Lcom/vkontakte/android/api/VideoFile;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    return-void
.end method

.method static synthetic access$1700(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    return-void
.end method

.method static synthetic access$1802(Lcom/vkontakte/android/NewVideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    return p1
.end method

.method static synthetic access$1902(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->adding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    return v0
.end method

.method static synthetic access$2002(Lcom/vkontakte/android/NewVideoPlayerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->curQuality:I

    return p1
.end method

.method static synthetic access$2100(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    return v0
.end method

.method static synthetic access$2300(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    return v0
.end method

.method static synthetic access$2400(Lcom/vkontakte/android/NewVideoPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->referer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->statusBG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return p1
.end method

.method static synthetic access$300(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->replay()V

    return-void
.end method

.method static synthetic access$500(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return v0
.end method

.method static synthetic access$702(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    return v0
.end method

.method static synthetic access$900(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkontakte/android/NewVideoPlayerActivity;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI()V

    return-void
.end method

.method private addVideo()V
    .locals 4

    .prologue
    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->adding:Z

    .line 397
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    .line 398
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    if-nez v0, :cond_0

    .line 399
    new-instance v0, Lcom/vkontakte/android/api/VideoAdd;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/VideoAdd;-><init>(II)V

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$7;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$7;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/VideoAdd;->setCallback(Lcom/vkontakte/android/api/VideoAdd$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 437
    :goto_0
    return-void

    .line 418
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/WallDelete;

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    iget v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/WallDelete;-><init>(III)V

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$8;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$8;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/WallDelete;->setCallback(Lcom/vkontakte/android/api/WallDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private cancelHideUI()V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1008
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 1009
    return-void
.end method

.method private getMaxQuality()I
    .locals 12

    .prologue
    const/16 v8, 0x2d0

    const/16 v11, 0x1e0

    .line 508
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x9

    if-ge v9, v10, :cond_1

    const/16 v8, 0x168

    .line 539
    :cond_0
    :goto_0
    return v8

    .line 509
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v9

    if-eqz v9, :cond_0

    .line 510
    new-instance v5, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v5}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 511
    .local v5, "info":Landroid/hardware/Camera$CameraInfo;
    const/4 v3, 0x0

    .line 512
    .local v3, "hasBack":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 513
    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 514
    iget v9, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v9, :cond_5

    .line 515
    const/4 v3, 0x1

    .line 519
    :cond_2
    const/4 v1, 0x0

    .line 520
    .local v1, "fromCamera":I
    if-eqz v3, :cond_3

    .line 522
    const/4 v9, 0x1

    :try_start_0
    invoke-static {v9}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v6

    .line 523
    .local v6, "profile":Landroid/media/CamcorderProfile;
    iget v9, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v10, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lt v9, v8, :cond_6

    .line 524
    const/16 v1, 0x2d0

    .line 531
    .end local v6    # "profile":Landroid/media/CamcorderProfile;
    :cond_3
    :goto_2
    const/16 v2, 0x168

    .line 532
    .local v2, "fromScreen":I
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 533
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 534
    .local v7, "screenSize":I
    const/16 v8, 0x320

    if-lt v7, v8, :cond_8

    .line 535
    const/16 v2, 0x2d0

    .line 539
    :cond_4
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    .line 512
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "fromCamera":I
    .end local v2    # "fromScreen":I
    .end local v7    # "screenSize":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 525
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

    .line 526
    const/16 v1, 0x1e0

    goto :goto_2

    .line 527
    :cond_7
    const/16 v1, 0x168

    goto :goto_2

    .line 536
    .end local v6    # "profile":Landroid/media/CamcorderProfile;
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "fromScreen":I
    .restart local v7    # "screenSize":I
    :cond_8
    if-le v7, v11, :cond_4

    .line 537
    const/16 v2, 0x1e0

    goto :goto_3

    .line 528
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "fromScreen":I
    .end local v7    # "screenSize":I
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private hideUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const v3, 0x7f0801b2

    const/4 v2, 0x0

    .line 955
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 956
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 957
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-nez v0, :cond_2

    .line 994
    :cond_1
    :goto_0
    return-void

    .line 958
    :cond_2
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 959
    const v0, 0x7f0801b5

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 960
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 961
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 962
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->statusBG:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 963
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->statusBG:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 966
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$19;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$19;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 975
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 976
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$20;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 965
    :cond_4
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_1

    .line 986
    :cond_5
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 987
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 990
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

    const v1, 0x7f0801b2

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

    .line 992
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private hideUI(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 997
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 998
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 999
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$21;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1004
    return-void
.end method

.method private openYoutubeApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 740
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 741
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 742
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 744
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.youtube"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 745
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    const v4, 0x18894

    invoke-virtual {p0, v2, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 750
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_2

    const/high16 v4, 0x10a0000

    const v5, 0x10a0001

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 751
    :cond_2
    return-void
.end method

.method private playExternal(Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x1000000

    const/high16 v7, 0x428c0000    # 70.0f

    const/4 v6, 0x1

    .line 754
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 755
    .local v3, "webWrap":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 756
    .local v2, "wv":Landroid/webkit/WebView;
    new-instance v4, Lcom/vkontakte/android/ui/CircularProgressBar;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/ui/CircularProgressBar;-><init>(Landroid/content/Context;)V

    .line 757
    .local v4, "progress":Lcom/vkontakte/android/ui/CircularProgressBar;
    new-array v5, v6, [Z

    const/4 v0, 0x0

    aput-boolean v6, v5, v0

    .line 758
    .local v5, "canShowProgress":[Z
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$14;

    invoke-direct {v0, p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$14;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;[Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 765
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$15;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/webkit/WebView;Landroid/widget/FrameLayout;Lcom/vkontakte/android/ui/CircularProgressBar;[Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 813
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 814
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 815
    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 816
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 817
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 818
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v6

    const/16 v7, 0x11

    invoke-direct {v0, v1, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/ui/CircularProgressBar;->setVisibility(I)V

    .line 821
    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 823
    return-void
.end method

.method private replay()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 332
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 333
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v1, :cond_2

    .line 367
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    const/16 v1, 0x1388

    invoke-direct {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    .line 338
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 339
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 340
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, v5}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 342
    :cond_3
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 343
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    :cond_4
    iget-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 346
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    if-eqz v1, :cond_5

    .line 347
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 348
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    .line 349
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 350
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 351
    const v1, 0x7f0801b2

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 352
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 353
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->getDataSource()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "ds":Ljava/lang/String;
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 355
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 356
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 362
    .end local v0    # "ds":Ljava/lang/String;
    :cond_5
    :goto_1
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    .line 363
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 364
    const v1, 0x7f0801b6

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020169

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    iput-boolean v6, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 366
    iput-boolean v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    goto/16 :goto_0

    .line 360
    :cond_6
    const-string v1, "video_play"

    invoke-static {v1}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v1

    const-string v2, "video"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v4, v4, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

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
    const v1, 0x7f0801b5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1012
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-eqz v0, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 1013
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 1014
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1016
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1032
    :goto_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1033
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 1035
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

    const v1, 0x7f0801b2

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

    .line 1043
    :cond_1
    :goto_2
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0

    .line 1030
    :cond_2
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_1

    .line 1037
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private startFile()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 440
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 441
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string v6, "http://www.youtube.com/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 442
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->openYoutubeApp(Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    goto :goto_0

    .line 448
    :cond_1
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

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

    .line 449
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 450
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->playExternal(Ljava/lang/String;)V

    goto :goto_0

    .line 452
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v6, v6, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 453
    .local v0, "intent":Landroid/content/Intent;
    const v5, 0x18894

    invoke-virtual {p0, v0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 457
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_4

    .line 458
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onError(I)V

    goto :goto_0

    .line 461
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

    .line 462
    .local v4, "q":[Ljava/lang/String;
    const/4 v3, 0x1

    .line 463
    .local v3, "n":I
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getMaxQuality()I

    move-result v2

    .line 464
    .local v2, "mq":I
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 465
    :cond_5
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-eqz v5, :cond_6

    const/16 v5, 0x1e0

    if-lt v2, v5, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 466
    :cond_6
    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    if-eqz v5, :cond_7

    const/16 v5, 0x2d0

    if-lt v2, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 467
    :cond_7
    if-le v3, v8, :cond_8

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_8

    .line 468
    new-array v1, v3, [Ljava/lang/String;

    .line 469
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v4, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    new-instance v5, Lcom/vkontakte/android/VKAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/vkontakte/android/NewVideoPlayerActivity$10;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$10;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v5, v1, v6}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-direct {v6, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d035d

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 502
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

    .line 826
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 827
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 828
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onBackPressed()V

    .line 832
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public initPlayer(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0801b2

    const/4 v3, 0x0

    .line 543
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

    .line 544
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 545
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    .line 547
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 548
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 549
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 550
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 551
    .local v0, "bg":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/NewVideoPlayerActivity$11;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$11;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 574
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 576
    .end local v0    # "bg":Landroid/view/SurfaceView;
    :cond_1
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 577
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 578
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 587
    :goto_0
    return-void

    .line 580
    :cond_2
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    .line 581
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    const v2, 0x3f800008    # 1.000001f

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 582
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 583
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 584
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 585
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
    .line 837
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 838
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_5

    const/4 v7, 0x6

    :goto_0
    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 111
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setVolumeControlStream(I)V

    .line 113
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 115
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x4000000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 117
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->requestWindowFeature(I)Z

    .line 119
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v9, -0x56000000

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    const v7, 0x7f030085

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setContentView(I)V

    .line 121
    const v7, 0x7f0801b2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "action_bar_container"

    const-string v9, "id"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 123
    .local v0, "abId":I
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    .line 164
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    .line 166
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 167
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 168
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 170
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 171
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 172
    .local v1, "d":[B
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    const v7, 0x7f0801b2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 174
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_0

    const/high16 v7, 0x10a0000

    const v8, 0x10a0001

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 176
    .end local v1    # "d":[B
    .end local v4    # "r":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "referer"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "referer"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->referer:Ljava/lang/String;

    .line 179
    :cond_1
    const v7, 0x7f0801be

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    .line 180
    const v7, 0x7f0801bb

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 181
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/api/VideoFile;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

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

    .line 184
    const v7, 0x7f04000e

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    .line 185
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 186
    const v7, 0x7f040011

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    .line 187
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 188
    const v7, 0x7f04000c

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    .line 189
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 190
    const v7, 0x7f040010

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    .line 191
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 193
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 194
    const v7, 0x7f0801b6

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v7, 0x7f0801b3

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$2;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$2;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v7, 0x7f0801bc

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$3;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v7, v7, Lcom/vkontakte/android/api/VideoFile;->duration:I

    const/16 v8, 0xe10

    if-ge v7, v8, :cond_6

    .line 237
    const v7, 0x7f0801ba

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

    .line 240
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 242
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 243
    .local v3, "pm":Landroid/os/PowerManager;
    const/16 v7, 0xa

    const-string v8, "VkVideoPlayer"

    invoke-virtual {v3, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 244
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 246
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "action"

    const/4 v8, 0x7

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, v2}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 251
    const v7, 0x7f0801b2

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 252
    .local v5, "root":Landroid/view/View;
    new-instance v7, Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-direct {v7, p0, v5}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/view/View;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 273
    .end local v5    # "root":Landroid/view/View;
    :cond_2
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 274
    .local v6, "telManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 275
    const v7, 0x7f030083

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    .line 277
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    const v8, 0x7f0801b0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v7, 0x7f0801b9

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 285
    const v7, 0x7f0801ba

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/vkontakte/android/ui/Fonts;->getRobotoLightItalic()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 287
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_8

    .line 288
    :cond_4
    const v7, 0x7f0801b5

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    if-eqz v7, :cond_7

    .line 290
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->actionBarView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :goto_2
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 294
    new-instance v7, Lcom/vkontakte/android/api/VideoGetById;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v9, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v9, v9, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iget-object v10, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v10, v10, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/vkontakte/android/api/VideoGetById;-><init>(IILjava/lang/String;)V

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 328
    :goto_3
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 329
    return-void

    .line 110
    .end local v0    # "abId":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 239
    .restart local v0    # "abId":I
    :cond_6
    const v7, 0x7f0801ba

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

    .line 292
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "pm":Landroid/os/PowerManager;
    .restart local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActionBar;->hide()V

    goto :goto_2

    .line 325
    :cond_8
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0801ed

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 370
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v3, 0x7f0f000d

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 371
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v0, v0, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 372
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->addedID:I

    if-eqz v0, :cond_2

    const v0, 0x7f020087

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 373
    const v0, 0x7f0801f9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    if-eq v3, v4, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    return v1

    :cond_1
    move v0, v2

    .line 371
    goto :goto_0

    .line 372
    :cond_2
    const v0, 0x7f020080

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 841
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 842
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v3}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 845
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 849
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 850
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/vkontakte/android/NewVideoPlayerActivity$16;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$16;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 856
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 857
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 858
    return-void
.end method

.method public onEndOfBuffer()V
    .locals 1

    .prologue
    .line 1101
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$22;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$22;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1104
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 916
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$18;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 947
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 378
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onBackPressed()V

    .line 380
    const/4 v1, 0x1

    .line 392
    :goto_0
    return v1

    .line 382
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0801ed

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->adding:Z

    if-nez v1, :cond_1

    .line 383
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->addVideo()V

    .line 385
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0801f9

    if-ne v1, v2, :cond_2

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkontakte/android/ReportContentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "itemID"

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 388
    const-string v1, "ownerID"

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v2, v2, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    const-string v1, "type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 392
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1072
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1073
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    if-eqz v0, :cond_0

    .line 1074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    .line 1076
    :cond_0
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->pause()V

    .line 1078
    const v0, 0x7f0801b6

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1079
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 1080
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    .line 1081
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    .line 1083
    :cond_1
    return-void
.end method

.method public onPlaybackCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-boolean v0, v0, Lcom/vkontakte/android/api/VideoFile;->repeat:Z

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 884
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/media/PlayerWrapper;->play()V

    .line 912
    :goto_0
    return-void

    .line 887
    :cond_0
    iput-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 889
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$17;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$17;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPlaybackResumed()V
    .locals 1

    .prologue
    .line 1108
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$23;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$23;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1111
    return-void
.end method

.method public onPlayerReady(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 591
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    .line 592
    iput p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    .line 593
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$12;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 609
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 610
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 863
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 869
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 878
    :goto_0
    return-void

    .line 875
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 876
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 877
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0
.end method

.method public onUpdateBuffered(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 951
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

    .line 952
    return-void
.end method

.method public onUpdatePlaybackPosition(I)V
    .locals 4
    .param p1, "sec"    # I

    .prologue
    .line 724
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    .line 725
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playedTime:I

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v1, v1, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    if-nez v0, :cond_0

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->incViewSent:Z

    .line 728
    const-string v0, "video_play"

    invoke-static {v0}, Lcom/vkontakte/android/data/Analytics;->track(Ljava/lang/String;)Lcom/vkontakte/android/data/Analytics$EventBuilder;

    move-result-object v0

    const-string v1, "video"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v3, v3, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

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

    .line 730
    :cond_0
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$13;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 737
    return-void
.end method

.method public resize()V
    .locals 35

    .prologue
    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    .line 614
    const/4 v14, 0x0

    .local v14, "realScrW":I
    const/4 v13, 0x0

    .local v13, "realScrH":I
    const/16 v25, 0x0

    .local v25, "visibleW":I
    const/16 v24, 0x0

    .line 615
    .local v24, "visibleH":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    .line 617
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x11

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_3

    .line 618
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 619
    .local v20, "size":Landroid/graphics/Point;
    const-string v30, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 620
    .local v28, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 621
    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/Point;->x:I

    .line 622
    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 636
    .end local v20    # "size":Landroid/graphics/Point;
    .end local v28    # "wm":Landroid/view/WindowManager;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v31

    invoke-direct {v0, v14, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    :cond_0
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 643
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

    .line 644
    .local v26, "vratio":F
    const/high16 v15, 0x3f800000    # 1.0f

    .local v15, "scaleX":F
    const/high16 v16, 0x3f800000    # 1.0f

    .local v16, "scaleY":F
    const/16 v22, 0x0

    .local v22, "transX":F
    const/16 v23, 0x0

    .line 645
    .local v23, "transY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    cmpl-float v30, v26, v21

    if-lez v30, :cond_5

    .line 646
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

    .line 647
    .local v9, "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v27, v30, v9

    .line 648
    .local v27, "w":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 649
    int-to-float v0, v14

    move/from16 v30, v0

    div-float v15, v27, v30

    .line 660
    .end local v27    # "w":F
    :goto_1
    const-string v30, "vk"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Video scale: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

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

    .line 663
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/view/TextureView;->setScaleX(F)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 668
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    .line 695
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

    .line 720
    :goto_3
    return-void

    .line 625
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

    .line 626
    .restart local v28    # "wm":Landroid/view/WindowManager;
    const-class v30, Landroid/view/Display;

    const-string v31, "getRawWidth"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 627
    .local v12, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v30, Landroid/view/Display;

    const-string v31, "getRawHeight"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 628
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

    .line 629
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

    .line 630
    .end local v11    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v12    # "mGetRawW":Ljava/lang/reflect/Method;
    .end local v28    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v29

    .line 631
    .local v29, "x":Ljava/lang/Exception;
    move/from16 v14, v25

    .line 632
    move/from16 v13, v24

    goto/16 :goto_0

    .line 645
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

    .line 651
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

    .line 652
    .restart local v9    # "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v8, v30, v9

    .line 653
    .local v8, "h":F
    int-to-float v0, v13

    move/from16 v30, v0

    div-float v16, v8, v30

    .line 654
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 670
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

    .line 671
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

    .line 672
    .local v6, "animY":Landroid/animation/ObjectAnimator;
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    .line 673
    .local v19, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    .line 674
    .local v7, "bldr":Landroid/animation/AnimatorSet$Builder;
    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-eqz v30, :cond_7

    .line 675
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

    .line 676
    .local v3, "animTX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 678
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

    .line 679
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

    .line 680
    .restart local v3    # "animTX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 682
    .end local v3    # "animTX":Landroid/animation/ObjectAnimator;
    :cond_8
    const/16 v30, 0x0

    cmpl-float v30, v23, v30

    if-eqz v30, :cond_9

    .line 683
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

    .line 684
    .local v4, "animTY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 686
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

    .line 687
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

    .line 688
    .restart local v4    # "animTY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 690
    .end local v4    # "animTY":Landroid/animation/ObjectAnimator;
    :cond_a
    const-wide/16 v30, 0x12c

    move-object/from16 v0, v19

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 691
    new-instance v30, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v30 .. v30}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 692
    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 696
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

    .line 697
    .local v17, "scrH":I
    const v30, 0x7f0801b2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 698
    const v30, 0x7f0801b2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 699
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 700
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

    .line 701
    .restart local v26    # "vratio":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_d

    cmpl-float v30, v26, v21

    if-lez v30, :cond_e

    .line 702
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

    .line 703
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

    .line 705
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

    .line 706
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 701
    .end local v9    # "k":F
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v27    # "w":I
    :cond_d
    cmpg-float v30, v26, v21

    if-ltz v30, :cond_c

    .line 713
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

    .line 714
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

    .line 716
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

    .line 717
    .restart local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method
