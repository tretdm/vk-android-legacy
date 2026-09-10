.class public Lcom/vkontakte/android/CallActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "CallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/CallActivity$DragView;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0xbcc9


# instance fields
.field private bottomBar:Landroid/widget/LinearLayout;

.field private btnCam:Landroid/widget/FrameLayout;

.field private btnCamIcon:Landroid/widget/ImageView;

.field private btnMic:Landroid/widget/FrameLayout;

.field private btnMicIcon:Landroid/widget/ImageView;

.field private btnSpeaker:Landroid/widget/FrameLayout;

.field private btnSpeakerIcon:Landroid/widget/ImageView;

.field private btnSwitchCam:Landroid/widget/FrameLayout;

.field private btnSwitchCamIcon:Landroid/widget/ImageView;

.field private callID:I

.field private callStartTime:J

.field private cam:Landroid/hardware/Camera;

.field private camEnabled:Z

.field private cameraInitFirstTime:Z

.field private cameraInited:Z

.field private canPlayVideo:Z

.field private canSetCamera:Z

.field private client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

.field private connectParam1:Ljava/lang/String;

.field private connectParam2:Ljava/lang/String;

.field private contentView:Landroid/widget/FrameLayout;

.field private currentOrientation:I

.field debugText:Landroid/widget/TextView;

.field private downStream:Ljava/lang/String;

.field private endBtn:Landroid/widget/Button;

.field private fromID:I

.field private glSurface:Landroid/opengl/GLSurfaceView;

.field private incomingOrientation:I

.field private lastOrientationChange:J

.field private orientListener:Landroid/view/OrientationEventListener;

.field private paused:Z

.field private pingInterval:I

.field private previewSurface:Landroid/view/SurfaceView;

.field private previewWrap:Landroid/widget/FrameLayout;

.field private proximityListener:Landroid/hardware/SensorEventListener;

.field private proximitySensor:Landroid/hardware/Sensor;

.field private replied:Z

.field private screenOn:Z

.field private server:Ljava/lang/String;

.field private topBar:Landroid/widget/LinearLayout;

.field private upStream:Ljava/lang/String;

.field private upStreamID:I

.field private useFrontCamera:Z

.field private userInfoView:Landroid/view/View;

.field private videoOut:Lcom/vkontakte/android/media/rtmp/VideoOutput;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 65
    iput-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->useFrontCamera:Z

    .line 67
    iput-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->cameraInitFirstTime:Z

    .line 68
    iput-boolean v3, p0, Lcom/vkontakte/android/CallActivity;->replied:Z

    .line 69
    sget v0, Lcom/vkontakte/android/Global;->uid:I

    iput v0, p0, Lcom/vkontakte/android/CallActivity;->fromID:I

    .line 70
    iput-boolean v3, p0, Lcom/vkontakte/android/CallActivity;->cameraInited:Z

    .line 71
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/vkontakte/android/CallActivity;->pingInterval:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkontakte/android/CallActivity;->lastOrientationChange:J

    .line 76
    iput v3, p0, Lcom/vkontakte/android/CallActivity;->currentOrientation:I

    .line 81
    const/16 v0, 0x10e

    iput v0, p0, Lcom/vkontakte/android/CallActivity;->incomingOrientation:I

    .line 91
    iput-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    .line 93
    iput-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->canSetCamera:Z

    .line 94
    iput-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->canPlayVideo:Z

    .line 96
    iput-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->screenOn:Z

    .line 98
    new-instance v0, Lcom/vkontakte/android/CallActivity$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/CallActivity$1;-><init>(Lcom/vkontakte/android/CallActivity;)V

    iput-object v0, p0, Lcom/vkontakte/android/CallActivity;->proximityListener:Landroid/hardware/SensorEventListener;

    .line 115
    iput-boolean v3, p0, Lcom/vkontakte/android/CallActivity;->paused:Z

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/CallActivity;)Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/CallActivity;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->screenOn:Z

    return v0
.end method

.method static synthetic access$10(Lcom/vkontakte/android/CallActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnMic:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnSpeaker:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vkontakte/android/CallActivity;)Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->canSetCamera:Z

    return v0
.end method

.method static synthetic access$15(Lcom/vkontakte/android/CallActivity;Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/vkontakte/android/CallActivity;->canSetCamera:Z

    return-void
.end method

.method static synthetic access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    return-object v0
.end method

.method static synthetic access$17(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$18(Lcom/vkontakte/android/CallActivity;Landroid/hardware/Camera;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic access$19(Lcom/vkontakte/android/CallActivity;Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/CallActivity;)Landroid/hardware/Sensor;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->proximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$20(Lcom/vkontakte/android/CallActivity;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/vkontakte/android/CallActivity;->callID:I

    return v0
.end method

.method static synthetic access$21(Lcom/vkontakte/android/CallActivity;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/vkontakte/android/CallActivity;->fromID:I

    return v0
.end method

.method static synthetic access$22(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$23(Lcom/vkontakte/android/CallActivity;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/vkontakte/android/CallActivity;->currentOrientation:I

    return v0
.end method

.method static synthetic access$24(Lcom/vkontakte/android/CallActivity;)J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/vkontakte/android/CallActivity;->lastOrientationChange:J

    return-wide v0
.end method

.method static synthetic access$25(Lcom/vkontakte/android/CallActivity;J)V
    .locals 0

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/vkontakte/android/CallActivity;->lastOrientationChange:J

    return-void
.end method

.method static synthetic access$26(Lcom/vkontakte/android/CallActivity;II)V
    .locals 0

    .prologue
    .line 458
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/CallActivity;->orientationChanged(II)V

    return-void
.end method

.method static synthetic access$27(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/vkontakte/android/CallActivity;->currentOrientation:I

    return-void
.end method

.method static synthetic access$28(Lcom/vkontakte/android/CallActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnMicIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$29(Lcom/vkontakte/android/CallActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnCamIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/CallActivity;Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/vkontakte/android/CallActivity;->screenOn:Z

    return-void
.end method

.method static synthetic access$30(Lcom/vkontakte/android/CallActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnSpeakerIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$31(Lcom/vkontakte/android/CallActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnSwitchCamIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$32(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CallActivity;->updateVideoOrientation(I)V

    return-void
.end method

.method static synthetic access$33(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity;->server:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$34(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity;->connectParam1:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$35(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity;->connectParam2:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$36(Lcom/vkontakte/android/CallActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$37(Lcom/vkontakte/android/CallActivity;)Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->cameraInited:Z

    return v0
.end method

.method static synthetic access$38(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/vkontakte/android/CallActivity;->callID:I

    return-void
.end method

.method static synthetic access$39(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity;->upStream:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/vkontakte/android/CallActivity;Z)V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CallActivity;->setScreenOn(Z)V

    return-void
.end method

.method static synthetic access$40(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/vkontakte/android/CallActivity;->startTimer()V

    return-void
.end method

.method static synthetic access$41(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity;->downStream:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$42(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->upStream:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$43(Lcom/vkontakte/android/CallActivity;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/vkontakte/android/CallActivity;->replied:Z

    return-void
.end method

.method static synthetic access$44(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/vkontakte/android/CallActivity;->pingInterval:I

    return-void
.end method

.method static synthetic access$45(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CallActivity;->sendOnRotate(I)V

    return-void
.end method

.method static synthetic access$46(Lcom/vkontakte/android/CallActivity;)Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->canPlayVideo:Z

    return v0
.end method

.method static synthetic access$47(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/vkontakte/android/CallActivity;->sendVideoNotSupported()V

    return-void
.end method

.method static synthetic access$48(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->downStream:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$49(Lcom/vkontakte/android/CallActivity;)I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/vkontakte/android/CallActivity;->pingInterval:I

    return v0
.end method

.method static synthetic access$5(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->previewWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$50(Lcom/vkontakte/android/CallActivity;)J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/vkontakte/android/CallActivity;->callStartTime:J

    return-wide v0
.end method

.method static synthetic access$51(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/vkontakte/android/CallActivity;->upStreamID:I

    return-void
.end method

.method static synthetic access$52(Lcom/vkontakte/android/CallActivity;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->replied:Z

    return v0
.end method

.method static synthetic access$53(Lcom/vkontakte/android/CallActivity;I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/vkontakte/android/CallActivity;->incomingOrientation:I

    return-void
.end method

.method static synthetic access$54(Lcom/vkontakte/android/CallActivity;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/vkontakte/android/CallActivity;->incomingOrientation:I

    return v0
.end method

.method static synthetic access$55(Lcom/vkontakte/android/CallActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnSwitchCam:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$56(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$57(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->connectParam1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$58(Lcom/vkontakte/android/CallActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->connectParam2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vkontakte/android/CallActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vkontakte/android/CallActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->bottomBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vkontakte/android/CallActivity;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->previewSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vkontakte/android/CallActivity;)V
    .locals 0

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/vkontakte/android/CallActivity;->focusCamera()V

    return-void
.end method

.method private detectOpenGLES20()Z
    .locals 4

    .prologue
    .line 453
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 454
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 455
    .local v1, "info":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private focusCamera()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method private hangup()V
    .locals 3

    .prologue
    .line 890
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 891
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0xbcc9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 892
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->finish()V

    .line 893
    iget v1, p0, Lcom/vkontakte/android/CallActivity;->callID:I

    if-nez v1, :cond_0

    .line 894
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 914
    :goto_0
    return-void

    .line 897
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/vkontakte/android/CallActivity$19;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/CallActivity$19;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 913
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private orientationChanged(II)V
    .locals 1
    .param p1, "newOrient"    # I
    .param p2, "prevOrient"    # I

    .prologue
    .line 460
    invoke-direct {p0, p1}, Lcom/vkontakte/android/CallActivity;->sendOnRotate(I)V

    .line 462
    new-instance v0, Lcom/vkontakte/android/CallActivity$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkontakte/android/CallActivity$10;-><init>(Lcom/vkontakte/android/CallActivity;II)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 482
    return-void
.end method

.method private sendOnRotate(I)V
    .locals 6
    .param p1, "o"    # I

    .prologue
    .line 485
    iget v0, p0, Lcom/vkontakte/android/CallActivity;->upStreamID:I

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 486
    :cond_0
    sget-boolean v0, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v0, :cond_1

    .line 487
    add-int/lit8 p1, p1, -0x5a

    .line 488
    :goto_1
    if-ltz p1, :cond_4

    .line 490
    :cond_1
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->useFrontCamera:Z

    if-nez v0, :cond_3

    .line 491
    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_3

    :cond_2
    add-int/lit16 p1, p1, 0xb4

    .line 493
    :cond_3
    rem-int/lit16 p1, p1, 0x168

    .line 494
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRotate -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    const-string v1, "onRotate"

    iget v2, p0, Lcom/vkontakte/android/CallActivity;->upStreamID:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->send(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    goto :goto_0

    .line 488
    :cond_4
    add-int/lit16 p1, p1, 0x168

    goto :goto_1
.end method

.method private sendVideoNotSupported()V
    .locals 4

    .prologue
    .line 995
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    const-string v1, "disableVideo"

    iget v2, p0, Lcom/vkontakte/android/CallActivity;->upStreamID:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->send(Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_0
    return-void

    .line 996
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setScreenOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/vkontakte/android/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 732
    .local v0, "layout":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 733
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 737
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 738
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 739
    return-void

    .line 735
    :cond_0
    const v1, 0x3c23d70a    # 0.01f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 738
    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private startTimer()V
    .locals 4

    .prologue
    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkontakte/android/CallActivity;->callStartTime:J

    .line 718
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/CallActivity$13;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$13;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 721
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    new-instance v1, Lcom/vkontakte/android/CallActivity$14;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$14;-><init>(Lcom/vkontakte/android/CallActivity;)V

    .line 727
    const-wide/16 v2, 0x1f4

    .line 721
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    return-void
.end method

.method private updateVideoOrientation(I)V
    .locals 8
    .param p1, "screenOrient"    # I

    .prologue
    const/16 v7, 0xb4

    const/4 v4, 0x1

    const/4 v0, 0x0

    const v6, 0x3faa9fbe    # 1.333f

    .line 503
    :try_start_0
    iget v5, p0, Lcom/vkontakte/android/CallActivity;->incomingOrientation:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/vkontakte/android/CallActivity;->incomingOrientation:I

    if-eq v5, v7, :cond_0

    move v1, v0

    .line 504
    .local v1, "inVertical":Z
    :goto_0
    if-eqz p1, :cond_1

    if-eq p1, v7, :cond_1

    .line 505
    .local v0, "deviceVertical":Z
    :goto_1
    if-ne v1, v0, :cond_3

    .line 506
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 507
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget-boolean v4, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 509
    :goto_2
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4, v2}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    :goto_3
    iget v4, p0, Lcom/vkontakte/android/CallActivity;->incomingOrientation:I

    sub-int v5, p1, v4

    sget-boolean v4, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v4, :cond_5

    const/16 v4, 0x5a

    :goto_4
    add-int v3, v5, v4

    .line 519
    .local v3, "vo":I
    :goto_5
    if-ltz v3, :cond_6

    .line 520
    rem-int/lit16 v3, v3, 0x168

    .line 521
    const-string v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setting video orientation to "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->videoOut:Lcom/vkontakte/android/media/rtmp/VideoOutput;

    invoke-virtual {v4, v3}, Lcom/vkontakte/android/media/rtmp/VideoOutput;->setFrameOrientation(I)V

    .line 524
    .end local v0    # "deviceVertical":Z
    .end local v1    # "inVertical":Z
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "vo":I
    :goto_6
    return-void

    :cond_0
    move v1, v4

    .line 503
    goto :goto_0

    .restart local v1    # "inVertical":Z
    :cond_1
    move v0, v4

    .line 504
    goto :goto_1

    .line 508
    .restart local v0    # "deviceVertical":Z
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2

    .line 523
    .end local v0    # "deviceVertical":Z
    .end local v1    # "inVertical":Z
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v4

    goto :goto_6

    .line 511
    .restart local v0    # "deviceVertical":Z
    .restart local v1    # "inVertical":Z
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 512
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    sget-boolean v4, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 514
    :goto_7
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4, v2}, Landroid/opengl/GLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 513
    :cond_4
    iget-object v4, p0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 516
    :cond_5
    const/16 v4, -0x5a

    goto :goto_4

    .line 519
    .restart local v3    # "vo":I
    :cond_6
    add-int/lit16 v3, v3, 0x168

    goto :goto_5
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .prologue
    .line 832
    new-instance v1, Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-direct {v1}, Lcom/vkontakte/android/media/rtmp/RTMPClient;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    .line 833
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    invoke-virtual {v1, p0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->setRPCListener(Lcom/vkontakte/android/media/rtmp/RTMPClient$RPCListener;)V

    .line 835
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->connect(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk_RTMP"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 923
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 924
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 925
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 926
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 927
    invoke-direct {p0}, Lcom/vkontakte/android/CallActivity;->hangup()V

    .line 929
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 930
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    :goto_0
    return-void

    .line 931
    :catch_0
    move-exception v1

    .local v1, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    invoke-static {v2, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initCamera()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, "camID":I
    const-string v6, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " cams"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    if-lt v3, v6, :cond_3

    .line 763
    :try_start_0
    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    .line 764
    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    const/16 v7, 0x5a

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 765
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 766
    .local v1, "cparams":Landroid/hardware/Camera$Parameters;
    const/16 v6, 0x140

    const/16 v7, 0xf0

    invoke-virtual {v1, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 767
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    .line 768
    .local v2, "fps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 769
    :cond_1
    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 770
    iget-boolean v6, p0, Lcom/vkontakte/android/CallActivity;->cameraInitFirstTime:Z

    if-eqz v6, :cond_6

    .line 771
    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->previewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v6}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    new-instance v7, Lcom/vkontakte/android/CallActivity$16;

    invoke-direct {v7, p0}, Lcom/vkontakte/android/CallActivity$16;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 798
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/vkontakte/android/CallActivity;->cameraInitFirstTime:Z

    .line 799
    iget-boolean v6, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    if-eqz v6, :cond_2

    .line 800
    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    iget-object v7, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->setCamera(Landroid/hardware/Camera;)V

    .line 808
    :cond_2
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/vkontakte/android/CallActivity;->cameraInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    .end local v1    # "cparams":Landroid/hardware/Camera$Parameters;
    .end local v2    # "fps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2
    return-void

    .line 757
    :cond_3
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 758
    .local v4, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {v3, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 759
    iget v9, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget-boolean v6, p0, Lcom/vkontakte/android/CallActivity;->useFrontCamera:Z

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    if-ne v9, v6, :cond_4

    move v0, v3

    .line 756
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v6, v8

    .line 759
    goto :goto_3

    .line 803
    .end local v4    # "info":Landroid/hardware/Camera$CameraInfo;
    .restart local v1    # "cparams":Landroid/hardware/Camera$Parameters;
    .restart local v2    # "fps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_6
    :try_start_1
    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/vkontakte/android/CallActivity;->previewSurface:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 804
    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 805
    iget-object v6, p0, Lcom/vkontakte/android/CallActivity;->client:Lcom/vkontakte/android/media/rtmp/RTMPClient;

    iget-object v7, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v6, v7}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->setCamera(Landroid/hardware/Camera;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 809
    .end local v1    # "cparams":Landroid/hardware/Camera$Parameters;
    .end local v2    # "fps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    .line 810
    .local v5, "x":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error initializing camera: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public onCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 944
    const-string v1, "onRotate"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-int v0, v1

    .line 946
    .local v0, "orient":I
    new-instance v1, Lcom/vkontakte/android/CallActivity$20;

    invoke-direct {v1, p0, v0}, Lcom/vkontakte/android/CallActivity$20;-><init>(Lcom/vkontakte/android/CallActivity;I)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 958
    .end local v0    # "orient":I
    :cond_0
    const-string v1, "disableVideo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    new-instance v1, Lcom/vkontakte/android/CallActivity$21;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$21;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual {p0, v1}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 979
    :cond_1
    return-void
.end method

.method public onConnectionSuddenlyClosed()V
    .locals 2

    .prologue
    .line 983
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/CallActivity$22;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$22;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 990
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 991
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super/range {p0 .. p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const/16 v23, -0x13

    invoke-static/range {v23 .. v23}, Landroid/os/Process;->setThreadPriority(I)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->hideTitle()V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x400

    const/16 v25, 0x400

    invoke-virtual/range {v23 .. v25}, Landroid/view/Window;->setFlags(II)V

    .line 122
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->requestWindowFeature(I)Z

    .line 123
    new-instance v23, Landroid/widget/FrameLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->setContentView(Landroid/view/View;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/CustomTitleActivityImpl;->initGlobal()V

    .line 126
    sget v23, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/CallActivity;->fromID:I

    .line 127
    const v23, 0x7f030011

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->detectOpenGLES20()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/CallActivity;->canPlayVideo:Z

    .line 130
    sget-boolean v23, Lcom/vkontakte/android/Global;->supportsVoipVideo:Z

    if-eqz v23, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "voice_only"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_8

    const/16 v23, 0x1

    :goto_0
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    .line 131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    move/from16 v23, v0

    sput-boolean v23, Lcom/vkontakte/android/media/rtmp/RTMPClient;->useSpeaker:Z

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "uid"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "uid"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->startCall(I)V

    .line 151
    :cond_0
    :goto_1
    sget-boolean v23, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v23, :cond_a

    const/16 v23, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->setRequestedOrientation(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 155
    sget-boolean v23, Lcom/vkontakte/android/Global;->supportsVoipVideo:Z

    if-eqz v23, :cond_2

    .line 156
    new-instance v23, Landroid/view/SurfaceView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->previewSurface:Landroid/view/SurfaceView;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    .local v21, "sw":F
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    .line 158
    .local v19, "sh":F
    mul-float v23, v21, v21

    mul-float v24, v19, v19

    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v23

    const-wide v25, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double v8, v23, v25

    .line 159
    .local v8, "d":D
    const-wide v23, 0x3fed99ccfcd8d466L    # 0.9250245035569946

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v23, v23, v8

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v18, v0

    .line 160
    .local v18, "pw":I
    const-wide v23, 0x3fed99ccfcd8d466L    # 0.9250245035569946

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v23, v23, v8

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v17, v0

    .line 161
    .local v17, "ph":I
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    sget-boolean v23, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v23, :cond_b

    move/from16 v23, v17

    :goto_3
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    sget-boolean v24, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v24, :cond_c

    .end local v18    # "pw":I
    :goto_4
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v13, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewSurface:Landroid/view/SurfaceView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewSurface:Landroid/view/SurfaceView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v23

    const/16 v24, 0x3

    invoke-interface/range {v23 .. v24}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 164
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewSurface:Landroid/view/SurfaceView;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/CallActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/CallActivity$2;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v23, Landroid/widget/FrameLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->previewWrap:Landroid/widget/FrameLayout;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewWrap:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewSurface:Landroid/view/SurfaceView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v23, -0x2

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v13, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 174
    .restart local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/high16 v23, 0x428a0000    # 69.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 175
    const/high16 v23, 0x40800000    # 4.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 176
    const/16 v23, 0x50

    move/from16 v0, v23

    iput v0, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewWrap:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewWrap:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const v24, 0x7f020007

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewWrap:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->initCamera()V

    .line 187
    .end local v8    # "d":D
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "ph":I
    .end local v19    # "sh":F
    .end local v21    # "sw":F
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/CallActivity;->canPlayVideo:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 188
    new-instance v23, Landroid/opengl/GLSurfaceView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    .line 189
    new-instance v23, Lcom/vkontakte/android/media/rtmp/VideoOutput;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/vkontakte/android/media/rtmp/VideoOutput;-><init>(Landroid/opengl/GLSurfaceView;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->videoOut:Lcom/vkontakte/android/media/rtmp/VideoOutput;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/CallActivity$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/CallActivity$3;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Landroid/opengl/GLSurfaceView;->setVisibility(I)V

    .line 217
    :cond_3
    const-string v23, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 218
    .local v14, "mgr":Landroid/os/PowerManager;
    const/16 v23, 0xa

    const-string v24, "vk_videocall"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/high16 v24, 0x80000

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->addFlags(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f060047

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "user_name"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f060049

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "user_photo"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 258
    new-instance v24, Lcom/vkontakte/android/ImageLoader;

    invoke-direct/range {v24 .. v24}, Lcom/vkontakte/android/ImageLoader;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    move-object/from16 v23, v0

    const v25, 0x7f060049

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/ImageLoader;->add(Landroid/widget/ImageView;ZJ)Lcom/vkontakte/android/ImageLoader;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/vkontakte/android/ImageLoader;->start()V

    .line 260
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->bottomBar:Landroid/widget/LinearLayout;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->bottomBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/high16 v24, -0x80000000

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 262
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v6, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 263
    .local v6, "bblp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v23, 0x50

    move/from16 v0, v23

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->bottomBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    new-instance v23, Landroid/widget/Button;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v23, v0

    const v24, 0x7f0901db

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setText(I)V

    .line 267
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v23, 0x43550000    # 213.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 268
    .local v11, "eblp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v23, 0x11

    move/from16 v0, v23

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 269
    const/high16 v23, 0x41200000    # 10.0f

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v23

    move/from16 v0, v23

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v0, v23

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v23, v0

    const v24, 0x7f020048

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v23, v0

    sget-object v24, Lcom/vkontakte/android/Global;->boldFont:Landroid/graphics/Typeface;

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setTextColor(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/high16 v27, -0x1000000

    invoke-virtual/range {v23 .. v27}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v23, v0

    const/high16 v24, 0x41600000    # 14.0f

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setTextSize(F)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->bottomBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->bottomBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x11

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->endBtn:Landroid/widget/Button;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/CallActivity$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/CallActivity$4;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->bottomBar:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 286
    const-string v23, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 288
    .local v5, "amgr":Landroid/media/AudioManager;
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/high16 v24, -0x80000000

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 290
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/high16 v24, 0x42820000    # 65.0f

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v24

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 291
    .local v22, "tblp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v23, 0x30

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 295
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 296
    .local v7, "btnlp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v23, 0x3f800000    # 1.0f

    move/from16 v0, v23

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 297
    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->btnMicIcon:Landroid/widget/ImageView;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMicIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const v24, 0x7f0200d8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMicIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMicIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 302
    new-instance v23, Landroid/widget/FrameLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->btnMic:Landroid/widget/FrameLayout;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMic:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual {v5}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v23

    if-eqz v23, :cond_e

    const v23, 0x7f020205

    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMic:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMic:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMicIcon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMic:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 308
    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->btnCamIcon:Landroid/widget/ImageView;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCamIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const v24, 0x7f0200d5

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCamIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCamIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 312
    new-instance v23, Landroid/widget/FrameLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    const v23, 0x7f020204

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCamIcon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->btnSpeakerIcon:Landroid/widget/ImageView;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeakerIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const v24, 0x7f0200dd

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeakerIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeakerIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 322
    new-instance v23, Landroid/widget/FrameLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->btnSpeaker:Landroid/widget/FrameLayout;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeaker:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeaker:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_10

    const v23, 0x7f020205

    :goto_8
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeaker:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeakerIcon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeaker:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->btnSwitchCamIcon:Landroid/widget/ImageView;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCamIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const v24, 0x7f0200e0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCamIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCamIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 332
    new-instance v23, Landroid/widget/FrameLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->btnSwitchCam:Landroid/widget/FrameLayout;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCamIcon:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const v24, 0x7f020204

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->topBar:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCam:Landroid/widget/FrameLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    sget-boolean v23, Lcom/vkontakte/android/Global;->supportsVoipVideo:Z

    if-nez v23, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 343
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSwitchCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/CallActivity$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/CallActivity$5;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnMic:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/CallActivity$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/CallActivity$6;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnSpeaker:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/CallActivity$7;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/CallActivity$7;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    new-instance v24, Lcom/vkontakte/android/CallActivity$8;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/CallActivity$8;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkontakte/android/CallActivity;->canPlayVideo:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 405
    new-instance v23, Lcom/vkontakte/android/CallActivity$9;

    const/16 v24, 0x3

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/CallActivity$9;-><init>(Lcom/vkontakte/android/CallActivity;Landroid/content/Context;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->orientListener:Landroid/view/OrientationEventListener;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->orientListener:Landroid/view/OrientationEventListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/OrientationEventListener;->enable()V

    .line 431
    :cond_5
    const-string v23, "sensor"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/SensorManager;

    .line 432
    .local v20, "sm":Landroid/hardware/SensorManager;
    const/16 v23, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkontakte/android/CallActivity;->proximitySensor:Landroid/hardware/Sensor;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->proximitySensor:Landroid/hardware/Sensor;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->proximityListener:Landroid/hardware/SensorEventListener;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->proximitySensor:Landroid/hardware/Sensor;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 439
    :cond_6
    sget-boolean v23, Lcom/vkontakte/android/Global;->supportsVoipVideo:Z

    if-eqz v23, :cond_7

    sget v23, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 440
    new-instance v10, Lcom/vkontakte/android/CallActivity$DragView;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v10, v0, v1}, Lcom/vkontakte/android/CallActivity$DragView;-><init>(Lcom/vkontakte/android/CallActivity;Landroid/content/Context;)V

    .line 441
    .local v10, "dv":Lcom/vkontakte/android/CallActivity$DragView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->contentView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 444
    .end local v10    # "dv":Lcom/vkontakte/android/CallActivity$DragView;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 445
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v23, 0x20020000

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    new-instance v16, Landroid/app/Notification;

    const v23, 0x1080084

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move-object/from16 v2, v24

    move-wide/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 447
    .local v16, "ntf":Landroid/app/Notification;
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0901ee

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "user_name"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 448
    const-string v23, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/NotificationManager;

    .line 449
    .local v15, "nm":Landroid/app/NotificationManager;
    const v23, 0xbcc9

    move/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 450
    return-void

    .line 130
    .end local v5    # "amgr":Landroid/media/AudioManager;
    .end local v6    # "bblp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "btnlp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "eblp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "mgr":Landroid/os/PowerManager;
    .end local v15    # "nm":Landroid/app/NotificationManager;
    .end local v16    # "ntf":Landroid/app/Notification;
    .end local v20    # "sm":Landroid/hardware/SensorManager;
    .end local v22    # "tblp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 134
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "from_id"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "from_id"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkontakte/android/CallActivity;->fromID:I

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/vkontakte/android/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    const-string v24, "call_id"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/CallActivity;->startIncomingCall(I)V

    goto/16 :goto_1

    .line 151
    :cond_a
    const/16 v23, 0x1

    goto/16 :goto_2

    .restart local v8    # "d":D
    .restart local v17    # "ph":I
    .restart local v18    # "pw":I
    .restart local v19    # "sh":F
    .restart local v21    # "sw":F
    :cond_b
    move/from16 v23, v18

    .line 161
    goto/16 :goto_3

    :cond_c
    move/from16 v18, v17

    goto/16 :goto_4

    .line 183
    .end local v18    # "pw":I
    .restart local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/CallActivity;->previewWrap:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 303
    .end local v8    # "d":D
    .end local v13    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v17    # "ph":I
    .end local v19    # "sh":F
    .end local v21    # "sw":F
    .restart local v5    # "amgr":Landroid/media/AudioManager;
    .restart local v6    # "bblp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v7    # "btnlp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11    # "eblp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v14    # "mgr":Landroid/os/PowerManager;
    .restart local v22    # "tblp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    const v23, 0x7f020204

    goto/16 :goto_6

    .line 314
    :cond_f
    const v23, 0x7f020205

    goto/16 :goto_7

    .line 324
    :cond_10
    const v23, 0x7f020204

    goto/16 :goto_8
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 936
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onDestroy()V

    .line 939
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->orientListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 940
    return-void
.end method

.method public onInVideoStarted()V
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->glSurface:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 1002
    new-instance v0, Lcom/vkontakte/android/CallActivity$23;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/CallActivity$23;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1007
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 879
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onPause()V

    .line 880
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 881
    iput-boolean v1, p0, Lcom/vkontakte/android/CallActivity;->paused:Z

    .line 882
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 884
    iput-boolean v1, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    .line 887
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 868
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onResume()V

    .line 869
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 870
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on resume, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->paused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->paused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->upStream:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    if-eqz v0, :cond_0

    .line 872
    iput-boolean v3, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    .line 873
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->btnCam:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 875
    :cond_0
    iput-boolean v3, p0, Lcom/vkontakte/android/CallActivity;->paused:Z

    .line 876
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    .line 843
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/CallActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/CallActivity$17;-><init>(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 850
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 852
    return-void
.end method

.method public publish(Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/lang/String;

    .prologue
    .line 855
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/CallActivity$18;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/CallActivity$18;-><init>(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 863
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 865
    return-void
.end method

.method public showMsg(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 742
    new-instance v0, Lcom/vkontakte/android/CallActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/CallActivity$15;-><init>(Lcom/vkontakte/android/CallActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/CallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 745
    return-void
.end method

.method public startCall(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity;->userInfoView:Landroid/view/View;

    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 529
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/CallActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/vkontakte/android/CallActivity$11;-><init>(Lcom/vkontakte/android/CallActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 637
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 638
    return-void
.end method

.method public startIncomingCall(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 641
    iput p1, p0, Lcom/vkontakte/android/CallActivity;->callID:I

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->replied:Z

    .line 643
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/CallActivity$12;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/CallActivity$12;-><init>(Lcom/vkontakte/android/CallActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 713
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 714
    return-void
.end method

.method public switchCamera()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 815
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 829
    :goto_0
    return-void

    .line 816
    :cond_0
    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->camEnabled:Z

    if-nez v2, :cond_2

    .line 817
    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->useFrontCamera:Z

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->useFrontCamera:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 820
    :cond_2
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 822
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 823
    iget-object v2, p0, Lcom/vkontakte/android/CallActivity;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/vkontakte/android/CallActivity;->useFrontCamera:Z

    if-eqz v2, :cond_4

    :goto_3
    iput-boolean v0, p0, Lcom/vkontakte/android/CallActivity;->useFrontCamera:Z

    .line 827
    invoke-virtual {p0}, Lcom/vkontakte/android/CallActivity;->initCamera()V

    .line 828
    iget v0, p0, Lcom/vkontakte/android/CallActivity;->currentOrientation:I

    invoke-direct {p0, v0}, Lcom/vkontakte/android/CallActivity;->sendOnRotate(I)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 826
    goto :goto_3

    .line 824
    :catch_0
    move-exception v2

    goto :goto_2
.end method
