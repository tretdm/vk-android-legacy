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

.field private file:Lcom/vkontakte/android/api/VideoFile;

.field private fillScreen:Z

.field private height:I

.field private ignoreNextVisibilityChange:Z

.field private pausedByCall:Z

.field private player:Lcom/vkontakte/android/media/PlayerWrapper;

.field private playing:Z

.field private progress:Landroid/widget/ProgressBar;

.field private ready:Z

.field private seekBar:Landroid/widget/SeekBar;

.field private seeking:Z

.field private surface:Landroid/view/SurfaceView;

.field t:J

.field private timer:Ljava/util/Timer;

.field private uiVisible:Z

.field private wakelock:Landroid/os/PowerManager$WakeLock;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 48
    iput-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 51
    iput-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 52
    iput-boolean v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    return-void
.end method

.method static synthetic access$12(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-void
.end method

.method static synthetic access$13(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/api/VideoFile;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    return-void
.end method

.method static synthetic access$17(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->pausedByCall:Z

    return-void
.end method

.method static synthetic access$20(Lcom/vkontakte/android/NewVideoPlayerActivity;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    return v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/NewVideoPlayerActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/NewVideoPlayerActivity;)Lcom/vkontakte/android/media/PlayerWrapper;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkontakte/android/NewVideoPlayerActivity;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    return-void
.end method

.method static synthetic access$7(Lcom/vkontakte/android/NewVideoPlayerActivity;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    return v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI()V

    return-void
.end method

.method static synthetic access$9(Lcom/vkontakte/android/NewVideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->showUI()V

    return-void
.end method

.method private cancelHideUI()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 442
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 443
    return-void
.end method

.method private hideUI()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const v3, 0x7f060150

    const/4 v2, 0x0

    .line 399
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 400
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 401
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-nez v0, :cond_2

    .line 428
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 403
    const v0, 0x7f060153

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 404
    const v0, 0x7f060159

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$13;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 410
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$14;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 420
    :cond_3
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 421
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 424
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

    .line 425
    const v1, 0x7f060150

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

    .line 426
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private hideUI(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 432
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    .line 433
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/NewVideoPlayerActivity$15;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$15;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 437
    int-to-long v2, p1

    .line 433
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 438
    return-void
.end method

.method private openYoutubeApp(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 295
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 302
    :goto_0
    const v3, 0x18894

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 303
    return-void

    .line 295
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 297
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.youtube"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
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
    const v4, 0x7f060159

    const v3, 0x7f060153

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 446
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    if-eqz v0, :cond_0

    .line 460
    :goto_0
    return-void

    .line 447
    :cond_0
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 448
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 451
    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 453
    iput-boolean v2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ignoreNextVisibilityChange:Z

    .line 455
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

    .line 456
    const v1, 0x7f060150

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

    .line 459
    :cond_1
    :goto_1
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private startFile()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 179
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string v5, "http://www.youtube.com/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->openYoutubeApp(Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v5, v5, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const v4, 0x18894

    invoke-virtual {p0, v0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 186
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    .line 187
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/NewVideoPlayerActivity;->onError(I)V

    goto :goto_0

    .line 190
    :cond_2
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

    .line 191
    .local v3, "q":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 192
    .local v2, "n":I
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url360:Ljava/lang/String;

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 193
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url480:Ljava/lang/String;

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 194
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url720:Ljava/lang/String;

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 195
    :cond_5
    if-le v2, v7, :cond_6

    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_6

    .line 196
    new-array v1, v2, [Ljava/lang/String;

    .line 197
    .local v1, "items":[Ljava/lang/String;
    invoke-static {v3, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    new-instance v5, Lcom/vkontakte/android/NewVideoPlayerActivity$6;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$6;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 220
    new-instance v5, Lcom/vkontakte/android/NewVideoPlayerActivity$7;

    invoke-direct {v5, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$7;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 226
    const v5, 0x7f09011c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 227
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 229
    .end local v1    # "items":[Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity;->initPlayer(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public initPlayer(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->t:J

    .line 236
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    .line 237
    const v0, 0x7f060150

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 238
    new-instance v0, Lcom/vkontakte/android/media/PlayerWrapper;

    iget-object v1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;-><init>(Landroid/content/Context;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    .line 239
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/media/PlayerWrapper;->init(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v0, p0}, Lcom/vkontakte/android/media/PlayerWrapper;->setListener(Lcom/vkontakte/android/media/PlayerWrapper$PlayerStateListener;)V

    .line 241
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->finish()V

    .line 308
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f060150

    const/16 v4, 0x400

    const/16 v9, 0x8

    const/4 v8, 0x0

    const-wide/16 v5, 0x12c

    .line 57
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideTitle()V

    .line 59
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 61
    const v3, 0x7f030041

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->setContentView(I)V

    .line 62
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v3}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 63
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 64
    const v3, 0x7f06015a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->progress:Landroid/widget/ProgressBar;

    .line 65
    const v3, 0x7f060157

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    .line 66
    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/api/VideoFile;

    iput-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    .line 68
    const v3, 0x7f040002

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    .line 69
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomHide:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    const v3, 0x7f040004

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    .line 71
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopHide:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 72
    const v3, 0x7f040001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    .line 73
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animBottomShow:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 74
    const v3, 0x7f040003

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    .line 75
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->animTopShow:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 77
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 78
    const v3, 0x7f060154

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/NewVideoPlayerActivity$1;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$1;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v3, 0x7f060151

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/NewVideoPlayerActivity$2;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$2;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v3, 0x7f060158

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/NewVideoPlayerActivity$3;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$3;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v3, 0x7f06014d

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v4, v4, Lcom/vkontakte/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const v3, 0x7f060156

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v6, v6, Lcom/vkontakte/android/api/VideoFile;->duration:I

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v7, v7, Lcom/vkontakte/android/api/VideoFile;->duration:I

    rem-int/lit8 v7, v7, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkontakte/android/api/VideoFile;->url240:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget-object v3, v3, Lcom/vkontakte/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 115
    const v3, 0x7f060153

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 116
    const v3, 0x7f060159

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iput-boolean v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->uiVisible:Z

    .line 118
    new-instance v3, Lcom/vkontakte/android/api/VideoGetById;

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v4, v4, Lcom/vkontakte/android/api/VideoFile;->oid:I

    iget-object v5, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v5, v5, Lcom/vkontakte/android/api/VideoFile;->vid:I

    invoke-direct {v3, v4, v5}, Lcom/vkontakte/android/api/VideoGetById;-><init>(II)V

    .line 119
    new-instance v4, Lcom/vkontakte/android/NewVideoPlayerActivity$4;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$4;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Lcom/vkontakte/android/api/VideoGetById;->setCallback(Lcom/vkontakte/android/api/VideoGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v3

    .line 136
    invoke-virtual {v3, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->file:Lcom/vkontakte/android/api/VideoFile;

    iget v4, v4, Lcom/vkontakte/android/api/VideoFile;->duration:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 143
    const v3, 0x7f06015a

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020213

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 146
    .local v1, "pm":Landroid/os/PowerManager;
    const/16 v3, 0xa

    const-string v4, "VkVideoPlayer"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 147
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 154
    invoke-virtual {p0, v10}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkontakte/android/NewVideoPlayerActivity$5;

    invoke-direct {v4, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$5;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 174
    .local v2, "telManager":Landroid/telephony/TelephonyManager;
    new-instance v3, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;Lcom/vkontakte/android/NewVideoPlayerActivity$CallStateReceiver;)V

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 175
    return-void

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->startFile()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 311
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 312
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 313
    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {v3}, Lcom/vkontakte/android/media/PlayerWrapper;->stopAndRelease()V

    .line 315
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.PLAYER_CONTROL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "action"

    const/16 v4, 0x8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 319
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 320
    .local v2, "timer":Ljava/util/Timer;
    new-instance v3, Lcom/vkontakte/android/NewVideoPlayerActivity$10;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$10;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    .line 325
    const-wide/16 v4, 0x3e8

    .line 320
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 326
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/NewVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 327
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 328
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errCode"    # I

    .prologue
    .line 360
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$12;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 391
    return-void
.end method

.method public onPlaybackCompleted()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->playing:Z

    .line 353
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$11;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$11;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 356
    return-void
.end method

.method public onPlayerReady(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    .line 246
    iput p2, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    .line 247
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$8;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/NewVideoPlayerActivity$8;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    .line 259
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 333
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 338
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 339
    invoke-direct {p0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->cancelHideUI()V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->ready:Z

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->seeking:Z

    .line 346
    iget-object v0, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->player:Lcom/vkontakte/android/media/PlayerWrapper;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/media/PlayerWrapper;->seek(I)V

    .line 347
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->hideUI(I)V

    goto :goto_0
.end method

.method public onUpdateBuffered(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 395
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

    .line 396
    return-void
.end method

.method public onUpdatePlaybackPosition(I)V
    .locals 1
    .param p1, "sec"    # I

    .prologue
    .line 286
    new-instance v0, Lcom/vkontakte/android/NewVideoPlayerActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/NewVideoPlayerActivity$9;-><init>(Lcom/vkontakte/android/NewVideoPlayerActivity;I)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/NewVideoPlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public resize()V
    .locals 11

    .prologue
    const v9, 0x7f060150

    const/16 v10, 0x11

    .line 262
    const/4 v4, 0x0

    .local v4, "scrW":I
    const/4 v3, 0x0

    .line 263
    .local v3, "scrH":I
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 264
    invoke-virtual {p0, v9}, Lcom/vkontakte/android/NewVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 265
    int-to-float v8, v4

    int-to-float v9, v3

    div-float v5, v8, v9

    .line 266
    .local v5, "sratio":F
    iget v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    int-to-float v8, v8

    iget v9, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 267
    .local v6, "vratio":F
    iget-boolean v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->fillScreen:Z

    if-eqz v8, :cond_1

    cmpl-float v8, v6, v5

    if-lez v8, :cond_2

    .line 268
    :cond_0
    int-to-float v8, v3

    iget v9, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 269
    .local v1, "k":F
    iget v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v7, v8

    .line 271
    .local v7, "w":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    invoke-direct {v2, v8, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 272
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 273
    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v8, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    .end local v7    # "w":I
    :goto_0
    return-void

    .line 267
    .end local v1    # "k":F
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    cmpg-float v8, v6, v5

    if-ltz v8, :cond_0

    .line 275
    :cond_2
    int-to-float v8, v4

    iget v9, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->width:I

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 276
    .restart local v1    # "k":F
    iget v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v0, v8

    .line 278
    .local v0, "h":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->height:I

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    invoke-direct {v2, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 279
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object v8, p0, Lcom/vkontakte/android/NewVideoPlayerActivity;->surface:Landroid/view/SurfaceView;

    invoke-virtual {v8, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
