.class Lcom/vkontakte/android/AppStateTracker$BgTrackerTask;
.super Ljava/util/TimerTask;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BgTrackerTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/AppStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/AppStateTracker$1;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkontakte/android/AppStateTracker$BgTrackerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/AppStateTracker;->access$102(Ljava/util/Timer;)Ljava/util/Timer;

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/AppStateTracker;->access$202(Z)Z

    .line 65
    const-string v0, "vk"

    const-string v1, "==== ENTER BACKGROUND ===="

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkontakte/android/LongPollService;->stopDelayed()V

    .line 67
    :cond_0
    return-void
.end method
