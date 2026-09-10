.class Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;
.super Ljava/util/TimerTask;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopServiceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AudioPlayerService;Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;)V
    .locals 0

    .prologue
    .line 1519
    invoke-direct {p0, p1}, Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;-><init>(Lcom/vkontakte/android/AudioPlayerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkontakte/android/AudioPlayerService;->stopSelf()V

    .line 1522
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerService$StopServiceRunnable;->this$0:Lcom/vkontakte/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/AudioPlayerService;->access$21(Lcom/vkontakte/android/AudioPlayerService;Ljava/util/Timer;)V

    .line 1523
    return-void
.end method
