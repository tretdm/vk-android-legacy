.class public Lcom/vkontakte/android/api/VoipStart;
.super Lcom/vkontakte/android/APIRequest;
.source "VoipStart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VoipStart$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VoipStart$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 11
    const-string v0, "voip.start"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/VoipStart;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    new-instance v0, Lcom/vkontakte/android/api/VoipStart$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/VoipStart$1;-><init>(Lcom/vkontakte/android/api/VoipStart;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/VoipStart;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/vkontakte/android/api/VoipStart;->callback:Lcom/vkontakte/android/api/VoipStart$Callback;

    if-nez v2, :cond_0

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 38
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 39
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/VoipStart;->callback:Lcom/vkontakte/android/api/VoipStart$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/VoipStart$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 41
    check-cast v1, [Ljava/lang/Object;

    .line 42
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/VoipStart;->callback:Lcom/vkontakte/android/api/VoipStart$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/VoipStart$Callback;->success(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "near_stream"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/VoipStart$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VoipStart$Callback;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkontakte/android/api/VoipStart;->callback:Lcom/vkontakte/android/api/VoipStart$Callback;

    .line 48
    return-object p0
.end method
