.class Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;
.super Ljava/util/TimerTask;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateProgressTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)Lcom/vkontakte/android/AudioPlayerService;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$6(Lcom/vkontakte/android/AudioPlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkontakte/android/AudioPlayerService;->access$7(Lcom/vkontakte/android/AudioPlayerService;)Lcom/vkontakte/android/AudioPlayerView;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask$1;-><init>(Lcom/vkontakte/android/AudioPlayerService$UpdateProgressTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/AudioPlayerView;->post(Ljava/lang/Runnable;)Z

    .line 544
    :cond_0
    return-void
.end method
