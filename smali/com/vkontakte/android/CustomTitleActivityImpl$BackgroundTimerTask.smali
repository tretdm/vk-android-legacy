.class Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;
.super Ljava/util/TimerTask;
.source "CustomTitleActivityImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/CustomTitleActivityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundTimerTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivityImpl$BackgroundTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkontakte/android/CustomTitleActivityImpl;->isInBG:Z

    .line 222
    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vkontakte/android/Global;->longPoll:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkontakte/android/LongPollService;->setSlowModeDelayed()V

    .line 223
    :cond_0
    return-void
.end method
