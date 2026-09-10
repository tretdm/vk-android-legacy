.class Lcom/vkontakte/android/LongPollService$8;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->sendOffline()V
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
    .line 1349
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$8;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 0
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1355
    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 1351
    invoke-static {}, Lcom/vkontakte/android/data/Analytics;->clear()V

    .line 1352
    return-void
.end method
