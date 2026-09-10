.class public Lcom/vkontakte/android/api/FacebookGetMe;
.super Lcom/vkontakte/android/APIRequest;
.source "FacebookGetMe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FacebookGetMe$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FacebookGetMe$Callback;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string v0, "__facebookGetMe"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/vkontakte/android/api/FacebookGetMe;->token:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public doExec()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 26
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://graph.facebook.com/me?fields=id&access_token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/api/FacebookGetMe;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v0

    .line 27
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 29
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "data":[B
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 30
    :catch_0
    move-exception v2

    .line 31
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/vkontakte/android/api/FacebookGetMe;->callback:Lcom/vkontakte/android/api/FacebookGetMe$Callback;

    if-nez v1, :cond_0

    .line 59
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 53
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 54
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 55
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FacebookGetMe;->callback:Lcom/vkontakte/android/api/FacebookGetMe$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FacebookGetMe$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FacebookGetMe;->callback:Lcom/vkontakte/android/api/FacebookGetMe$Callback;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/FacebookGetMe$Callback;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    :try_start_0
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/FacebookGetMe$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FacebookGetMe$Callback;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vkontakte/android/api/FacebookGetMe;->callback:Lcom/vkontakte/android/api/FacebookGetMe$Callback;

    .line 47
    return-object p0
.end method
