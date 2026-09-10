.class Lcom/vkontakte/android/LongPollService$11;
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
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$11;->this$0:Lcom/vkontakte/android/LongPollService;

    .line 1225
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1228
    sget-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    if-nez v0, :cond_0

    .line 1236
    :goto_0
    return-void

    .line 1229
    :cond_0
    new-instance v2, Lcom/vkontakte/android/APIRequest;

    const-string v0, "activity.online"

    invoke-direct {v2, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v3, "voip"

    sget-boolean v0, Lcom/vkontakte/android/Global;->supportsVoip:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v2, "push_count"

    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "push_counter"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1230
    new-instance v1, Lcom/vkontakte/android/LongPollService$11$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$11$1;-><init>(Lcom/vkontakte/android/LongPollService$11;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1235
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1229
    goto :goto_1
.end method
