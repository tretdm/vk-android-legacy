.class Lcom/vkontakte/android/fragments/GamesFragment$6;
.super Ljava/lang/Object;
.source "GamesFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/AppsDeleteRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GamesFragment;->hideReq(Lcom/vkontakte/android/data/GameRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GamesFragment;

.field final synthetic val$req:Lcom/vkontakte/android/data/GameRequest;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GamesFragment;Lcom/vkontakte/android/data/GameRequest;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GamesFragment$6;->this$0:Lcom/vkontakte/android/fragments/GamesFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/GamesFragment$6;->val$req:Lcom/vkontakte/android/data/GameRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 231
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    .local v0, "params":Lorg/json/JSONObject;
    const-string v1, "request_id"

    iget-object v2, p0, Lcom/vkontakte/android/fragments/GamesFragment$6;->val$req:Lcom/vkontakte/android/data/GameRequest;

    iget v2, v2, Lcom/vkontakte/android/data/GameRequest;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    const-string v1, "apps.deleteRequest"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "params":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public success()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method
