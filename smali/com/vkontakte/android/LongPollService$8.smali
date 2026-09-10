.class Lcom/vkontakte/android/LongPollService$8;
.super Ljava/util/TimerTask;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->setSlowModeDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LongPollService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$8;->this$0:Lcom/vkontakte/android/LongPollService;

    .line 1228
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$8;->this$0:Lcom/vkontakte/android/LongPollService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/vkontakte/android/LongPollService;->sDelayTimer:Ljava/util/Timer;

    .line 1232
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$8;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-virtual {v0}, Lcom/vkontakte/android/LongPollService;->stopSelf()V

    .line 1233
    return-void
.end method
