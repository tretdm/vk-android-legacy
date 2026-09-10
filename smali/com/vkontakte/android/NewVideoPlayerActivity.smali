.class public Lcom/vkontakte/android/NewVideoPlayerActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
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
.field private animBottomHide:Landroid/view/animation/Animation;

.field private animBottomShow:Landroid/view/animation/Animation;

.field private animTopHide:Landroid/view/animation/Animation;

.field private animTopShow:Landroid/view/animation/Animation;

.field private callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

.field private canLike:Z

.field private completed:Z

.field private endMenu:Landroid/view/View;

.field private file:Lcom/vkontakte/android/api/VideoFile;

.field private fillScreen:Z

.field private firstResize:Z

.field private height:I

.field private ignoreNextVisibilityChange:Z

.field private isLiked:Z

.field private needRestartPlayer:Z

.field private numComments:I

.field private numLikes:I

.field private pausedByCall:Z

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

    .line 56
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 64
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 68
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    .line 70
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 71
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 72
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    .line 73
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    .line 76
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->isLiked:Z

    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->canLike:Z

    .line 78
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 79
    iput v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    .line 80
    iput-boolean v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI()V

    return-void
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return-void
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-void
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-object v0
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    return-void
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->loadExtInfo()V

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisibility:I

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return-void
.end method

.method static synthetic access$22(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    return-void
.end method

.method static synthetic access$23(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    return v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$26(Lcom/vkontakte/android/NewVideoPlayerActivity;Landroid/view/SurfaceView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/media/PlayerWrapper;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    return-void
.end method

.method static synthetic access$29(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->canLike:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    return-object v0
.end method

.method static synthetic access$30(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->canLike:Z

    return-void
.end method

.method static synthetic access$31(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->numLikes:I

    return v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->isLiked:Z

    return v0
.end method

.method static synthetic access$33(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->isLiked:Z

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->numLikes:I

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->numComments:I

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    return v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    return v0
.end method

.method static synthetic access$38(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    return v0
.end method

.method static synthetic access$39(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->numComments:I

    return v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    return v0
.end method

.method private cancelHideUI()V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 784
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 785
    return-void
.end method

.method private hideUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const v3, 0x7f060147

    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 742
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 743
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-nez v0, :cond_2

    .line 770
    :cond_1
    :goto_0
    return-void

    .line 744
    :cond_2
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 745
    const v0, 0x7f06014a

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 746
    const v0, 0x7f060150

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 747
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$20;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$20;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 751
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 752
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$21;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 762
    :cond_3
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 763
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 766
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

    .line 767
    const v1, 0x7f060147

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

    .line 768
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private hideUI(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 773
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 774
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 775
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$22;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$22;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 779
    int-to-long v2, p1

    .line 775
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 780
    return-void
.end method

.method private loadExtInfo()V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Lcom/vkontakte/android/VideoGetInfo2;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VideoGetInfo2;-><init>(Lcom/vkontakte/android/api/VideoFile;)V

    .line 350
    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$11;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$11;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VideoGetInfo2;->setCallback(Lcom/vkontakte/android/VideoGetInfo2$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    .line 366
    return-void
.end method

.method private openYoutubeApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 616
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 617
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 618
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 625
    :goto_0
    const v3, 0x18894

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 626
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {p0, v3, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 627
    :cond_1
    return-void

    .line 618
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 620
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.youtube"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showUI()V
    .locals 5

    .prologue
    const v4, 0x7f060150

    const v3, 0x7f06014a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 788
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-eqz v0, :cond_0

    .line 802
    :goto_0
    return-void

    .line 789
    :cond_0
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 790
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 791
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 792
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 793
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 794
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 795
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 797
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

    .line 798
    const v1, 0x7f060147

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

    .line 801
    :cond_1
    :goto_1
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private startFile()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 369
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 370
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string v5, "http://www.youtube.com/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->openYoutubeApp(Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    const v4, 0x18894

    invoke-virtual {p0, v0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 381
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 382
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onError(I)V

    goto :goto_0

    .line 385
    :cond_3
    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "240"

    aput-object v4, v3, v6

    const-string v4, "360"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, "480"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "720 (HD)"

    aput-object v5, v3, v4

    .line 386
    .local v3, "q":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 387
    .local v2, "n":I
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 388
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 389
    :cond_5
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 390
    :cond_6
    if-le v2, v7, :cond_7

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_7

    .line 391
    new-array v1, v2, [Ljava/lang/String;

    .line 392
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v3, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 394
    new-instance v5, Lcom/vkontakte/android/NewVideoPlayerActivity$12;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$12;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 415
    new-instance v5, Lcom/vkontakte/android/NewVideoPlayerActivity$13;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$13;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 421
    const v5, 0x7f09011d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 422
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 424
    .end local v1    # "items":[Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->initPlayer(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public initPlayer(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f060147

    const/4 v3, 0x0

    .line 430
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 432
    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    .line 434
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 435
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 436
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const-string v1, ".flv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 438
    .local v0, "bg":Landroid/view/SurfaceView;
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/vkontakte/android/NewVideoPlayerActivity$14;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$14;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 461
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 463
    .end local v0    # "bg":Landroid/view/SurfaceView;
    :cond_1
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 464
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 474
    :goto_0
    return-void

    .line 467
    :cond_2
    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    .line 468
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    const v2, 0x3f800008    # 1.000001f

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setScaleX(F)V

    .line 469
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 470
    new-instance v1, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V

    iput-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 471
    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v1, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 472
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
    .line 631
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 632
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setVolumeControlStream(I)V

    .line 87
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideTitle()V

    .line 88
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 89
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->setFormat(I)V

    .line 90
    const v7, 0x7f030049

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setContentView(I)V

    .line 91
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v7}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 92
    const v7, 0x7f060147

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 97
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_3

    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "anim_start_time"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "anim_start_time"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 99
    .local v4, "st":J
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "anim_duration"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "d":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    int-to-long v9, v0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 101
    const v7, 0x7f060147

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 102
    const v7, 0x7f060147

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 106
    int-to-long v9, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    sub-long/2addr v9, v11

    .line 102
    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 114
    .end local v0    # "d":I
    .end local v4    # "st":J
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    .line 116
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 118
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 121
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "thumb"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 122
    .local v0, "d":[B
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v0, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    const v7, 0x7f060147

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->thumb:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 124
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x5

    if-lt v7, v8, :cond_1

    const/high16 v7, 0x10a0000

    const v8, 0x10a0001

    invoke-virtual {p0, v7, v8}, Lcom/vkontakte/android/NewVideoPlayerActivity;->overridePendingTransition(II)V

    .line 127
    .end local v0    # "d":[B
    .end local v3    # "r":Landroid/graphics/Rect;
    :cond_1
    const v7, 0x7f060147

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 128
    const v7, 0x7f060153

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    .line 129
    const v7, 0x7f06014e

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 130
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/vkontakte/android/api/VideoFile;

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    .line 132
    const v7, 0x7f040005

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    .line 133
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 134
    const v7, 0x7f040007

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    .line 135
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 136
    const v7, 0x7f040003

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    .line 137
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 138
    const v7, 0x7f040006

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    .line 139
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 141
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 142
    const v7, 0x7f06014b

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$2;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$2;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v7, 0x7f060148

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$3;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$3;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v7, 0x7f06014f

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v7, 0x7f060144

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v8, v8, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const v7, 0x7f06014d

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

    .line 185
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v7, v7, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 186
    const v7, 0x7f06014a

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 187
    const v7, 0x7f060150

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 188
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 189
    new-instance v7, Lcom/vkontakte/android/api/VideoGetById;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v9, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v9, v9, Lcom/vkontakte/android/api/VideoFile;->vid:I

    iget-object v10, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v10, v10, Lcom/vkontakte/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/vkontakte/android/api/VideoGetById;-><init>(IILjava/lang/String;)V

    .line 190
    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v7

    .line 208
    invoke-virtual {v7, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 214
    :goto_1
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v8, v8, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 216
    const v7, 0x7f060153

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020231

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 219
    .local v2, "pm":Landroid/os/PowerManager;
    const/16 v7, 0xa

    const-string v8, "VkVideoPlayer"

    invoke-virtual {v2, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 220
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "action"

    const/4 v8, 0x7

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    .line 227
    const v7, 0x7f060147

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 248
    :cond_2
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 249
    .local v6, "telManager":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/16 v8, 0x20

    invoke-virtual {v6, v7, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 250
    const v7, 0x7f030047

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    .line 252
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    const v8, 0x7f06013c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$7;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$7;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    const v8, 0x7f06013d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$8;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$8;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->endMenu:Landroid/view/View;

    const v8, 0x7f06013f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const v7, 0x7f060150

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/vkontakte/android/NewVideoPlayerActivity$10;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$10;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    return-void

    .line 110
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v6    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 210
    :cond_4
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->loadExtInfo()V

    .line 211
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 635
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 636
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 637
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v3}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 639
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 643
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 644
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/vkontakte/android/NewVideoPlayerActivity$17;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$17;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 649
    const-wide/16 v4, 0xc8

    .line 644
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 650
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 651
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->callStateReceiver:Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 652
    return-void
.end method

.method public onEndOfBuffer()V
    .locals 1

    .prologue
    .line 852
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$23;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$23;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 855
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 702
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$19;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$19;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 733
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 805
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_1

    .line 806
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    .line 807
    const v0, 0x7f06014b

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 808
    const/4 v0, 0x1

    .line 826
    :goto_0
    return v0

    .line 810
    :cond_1
    const/16 v0, 0x16

    if-ne p1, v0, :cond_2

    .line 811
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    .line 812
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    .line 814
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 815
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 818
    :cond_2
    const/16 v0, 0x15

    if-ne p1, v0, :cond_3

    .line 819
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    .line 820
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    .line 822
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 823
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 826
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/vkontakte/android/CustomTitleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 830
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 831
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    if-eqz v0, :cond_0

    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->needRestartPlayer:Z

    .line 834
    :cond_0
    return-void
.end method

.method public onPlaybackCompleted()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->completed:Z

    .line 678
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$18;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$18;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method public onPlaybackResumed()V
    .locals 1

    .prologue
    .line 859
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$24;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$24;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 862
    return-void
.end method

.method public onPlayerReady(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    .line 479
    iput p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    .line 480
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$15;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$15;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 495
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 657
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 663
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 669
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 670
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 671
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0
.end method

.method public onUpdateBuffered(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 737
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

    .line 738
    return-void
.end method

.method public onUpdatePlaybackPosition(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 609
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$16;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 613
    return-void
.end method

.method public resize()V
    .locals 35

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    if-eqz v30, :cond_4

    .line 499
    const/4 v14, 0x0

    .local v14, "realScrW":I
    const/4 v13, 0x0

    .local v13, "realScrH":I
    const/16 v25, 0x0

    .local v25, "visibleW":I
    const/16 v24, 0x0

    .line 500
    .local v24, "visibleH":I
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v25, v0

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    .line 502
    sget v30, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v31, 0x11

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_5

    .line 503
    new-instance v20, Landroid/graphics/Point;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Point;-><init>()V

    .line 504
    .local v20, "size":Landroid/graphics/Point;
    const-string v30, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 505
    .local v28, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 506
    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/Point;->x:I

    .line 507
    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 521
    .end local v20    # "size":Landroid/graphics/Point;
    .end local v28    # "wm":Landroid/view/WindowManager;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    new-instance v31, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v31

    invoke-direct {v0, v14, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v30 .. v31}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    :cond_0
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 528
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

    .line 529
    .local v26, "vratio":F
    const/high16 v15, 0x3f800000    # 1.0f

    .local v15, "scaleX":F
    const/high16 v16, 0x3f800000    # 1.0f

    .local v16, "scaleY":F
    const/16 v22, 0x0

    .local v22, "transX":F
    const/16 v23, 0x0

    .line 530
    .local v23, "transY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_6

    cmpl-float v30, v26, v21

    if-lez v30, :cond_7

    .line 531
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

    .line 532
    .local v9, "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v27, v30, v9

    .line 533
    .local v27, "w":F
    const/high16 v16, 0x3f800000    # 1.0f

    .line 534
    int-to-float v0, v14

    move/from16 v30, v0

    div-float v15, v27, v30

    .line 541
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

    .line 542
    :cond_2
    sub-int v30, v14, v25

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v22, v0

    .line 543
    sub-int v30, v13, v24

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v23, v0

    .line 545
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

    .line 548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    move/from16 v30, v0

    if-eqz v30, :cond_8

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationX(F)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTranslationY(F)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/view/TextureView;->setScaleX(F)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->texView:Landroid/view/TextureView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 553
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/NewVideoPlayerActivity;->firstResize:Z

    .line 580
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

    .line 605
    :goto_3
    return-void

    .line 510
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

    .line 511
    .restart local v28    # "wm":Landroid/view/WindowManager;
    const-class v30, Landroid/view/Display;

    const-string v31, "getRawWidth"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 512
    .local v12, "mGetRawW":Ljava/lang/reflect/Method;
    const-class v30, Landroid/view/Display;

    const-string v31, "getRawHeight"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v32}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 513
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

    .line 514
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

    .line 515
    .end local v11    # "mGetRawH":Ljava/lang/reflect/Method;
    .end local v12    # "mGetRawW":Ljava/lang/reflect/Method;
    .end local v28    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v29

    .line 516
    .local v29, "x":Ljava/lang/Exception;
    move/from16 v14, v25

    .line 517
    move/from16 v13, v24

    goto/16 :goto_0

    .line 530
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

    .line 536
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

    .line 537
    .restart local v9    # "k":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v8, v30, v9

    .line 538
    .local v8, "h":F
    int-to-float v0, v13

    move/from16 v30, v0

    div-float v16, v8, v30

    .line 539
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 555
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

    .line 556
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

    .line 557
    .local v6, "animY":Landroid/animation/ObjectAnimator;
    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    .line 558
    .local v19, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    .line 559
    .local v7, "bldr":Landroid/animation/AnimatorSet$Builder;
    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-eqz v30, :cond_9

    .line 560
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

    .line 561
    .local v3, "animTX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 563
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

    .line 564
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

    .line 565
    .restart local v3    # "animTX":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 567
    .end local v3    # "animTX":Landroid/animation/ObjectAnimator;
    :cond_a
    const/16 v30, 0x0

    cmpl-float v30, v23, v30

    if-eqz v30, :cond_b

    .line 568
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

    .line 569
    .local v4, "animTY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 571
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

    .line 572
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

    .line 573
    .restart local v4    # "animTY":Landroid/animation/ObjectAnimator;
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 575
    .end local v4    # "animTY":Landroid/animation/ObjectAnimator;
    :cond_c
    const-wide/16 v30, 0x12c

    move-object/from16 v0, v19

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 576
    new-instance v30, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v30 .. v30}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 577
    invoke-virtual/range {v19 .. v19}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    .line 581
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

    .line 582
    .local v17, "scrH":I
    const v30, 0x7f060147

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getWidth()I

    move-result v18

    .line 583
    const v30, 0x7f060147

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 584
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v21, v30, v31

    .line 585
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

    .line 586
    .restart local v26    # "vratio":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    cmpl-float v30, v26, v21

    if-lez v30, :cond_10

    .line 587
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

    .line 588
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

    .line 590
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

    .line 591
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 586
    .end local v9    # "k":F
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v27    # "w":I
    :cond_f
    cmpg-float v30, v26, v21

    if-ltz v30, :cond_e

    .line 598
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

    .line 599
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

    .line 601
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

    .line 602
    .restart local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v30, 0x11

    move/from16 v0, v30

    iput v0, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method
