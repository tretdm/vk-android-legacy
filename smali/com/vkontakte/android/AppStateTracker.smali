.class public Lcom/vkontakte/android/AppStateTracker;
.super Ljava/lang/Object;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/AppStateTracker$1;,
        Lcom/vkontakte/android/AppStateTracker$BgTrackerTask;
    }
.end annotation


# static fields
.field private static currentActivity:Landroid/app/Activity;

.field private static isInBG:Z

.field private static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkontakte/android/AppStateTracker;->isInBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$102(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 9
    sput-object p0, Lcom/vkontakte/android/AppStateTracker;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 9
    sput-boolean p0, Lcom/vkontakte/android/AppStateTracker;->isInBG:Z

    return p0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/vkontakte/android/AppStateTracker;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static isInBackground()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/vkontakte/android/AppStateTracker;->isInBG:Z

    return v0
.end method

.method public static onActivityPaused()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    sget-object v0, Lcom/vkontakte/android/AppStateTracker;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/vkontakte/android/AppStateTracker;->timer:Ljava/util/Timer;

    .line 18
    sget-object v0, Lcom/vkontakte/android/AppStateTracker;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/vkontakte/android/AppStateTracker$BgTrackerTask;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/AppStateTracker$BgTrackerTask;-><init>(Lcom/vkontakte/android/AppStateTracker$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 20
    :cond_0
    sput-object v4, Lcom/vkontakte/android/AppStateTracker;->currentActivity:Landroid/app/Activity;

    .line 21
    return-void
.end method

.method public static onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 37
    sget-object v1, Lcom/vkontakte/android/AppStateTracker;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 38
    sget-object v1, Lcom/vkontakte/android/AppStateTracker;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 39
    const/4 v1, 0x0

    sput-object v1, Lcom/vkontakte/android/AppStateTracker;->timer:Ljava/util/Timer;

    .line 41
    :cond_0
    sget-boolean v1, Lcom/vkontakte/android/AppStateTracker;->isInBG:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    :cond_1
    const-string v1, "vk"

    const-string v2, "==== LEAVE BACKGROUND ===="

    invoke-static {v1, v2}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x0

    sput-boolean v1, Lcom/vkontakte/android/AppStateTracker;->isInBG:Z

    .line 44
    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v1}, Lcom/vkontakte/android/LongPollService;->cancelDelayedStop()V

    .line 50
    :cond_2
    :goto_0
    sput-object p0, Lcom/vkontakte/android/AppStateTracker;->currentActivity:Landroid/app/Activity;

    .line 51
    return-void

    .line 46
    :cond_3
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-class v2, Lcom/vkontakte/android/LongPollService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
