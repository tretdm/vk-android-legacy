.class Lcom/vkontakte/android/LongPollService$7;
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
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$7;->this$0:Lcom/vkontakte/android/LongPollService;

    .line 1065
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1068
    sget-boolean v0, Lcom/vkontakte/android/LongPollService;->longPollRunning:Z

    if-nez v0, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1069
    :cond_0
    new-instance v0, Lcom/vkontakte/android/APIRequest;

    const-string v1, "activity.online"

    invoke-direct {v0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    const-string v1, "push_count"

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "push_counter"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1070
    new-instance v1, Lcom/vkontakte/android/LongPollService$7$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/LongPollService$7$1;-><init>(Lcom/vkontakte/android/LongPollService$7;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Lcom/vkontakte/android/APIRequest;->execSync()Z

    goto :goto_0
.end method
