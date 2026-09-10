.class Lcom/vkontakte/android/LongPollService$7;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->sendOnline()V
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

    .line 1270
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$7;->this$0:Lcom/vkontakte/android/LongPollService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/LongPollService;->access$6(Lcom/vkontakte/android/LongPollService;Z)V

    .line 1278
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 1272
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$7;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-static {v0, v2}, Lcom/vkontakte/android/LongPollService;->access$6(Lcom/vkontakte/android/LongPollService;Z)V

    .line 1273
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_counter"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1274
    invoke-static {}, Lcom/vkontakte/android/data/Analytics;->clear()V

    .line 1275
    return-void
.end method
