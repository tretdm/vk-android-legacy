.class Lcom/vkontakte/android/LongPollService$9;
.super Ljava/util/TimerTask;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->startSendingOnline()V
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
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$9;->this$0:Lcom/vkontakte/android/LongPollService;

    .line 857
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 860
    sget-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    if-nez v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 861
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "activity.online"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_0
.end method
