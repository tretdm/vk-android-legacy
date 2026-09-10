.class public Lcom/vkontakte/android/api/VoipPing;
.super Lcom/vkontakte/android/APIRequest;
.source "VoipPing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VoipPing$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VoipPing$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "callID"    # I

    .prologue
    .line 13
    const-string v0, "voip.ping"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "call_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/VoipPing;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x1

    .line 19
    :try_start_0
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 20
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 21
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 22
    .local v2, "ev":Lorg/json/JSONObject;
    const-string v4, "custom"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    const-string v4, "custom"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "code"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "code":Ljava/lang/String;
    const-string v4, "received"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25
    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    invoke-interface {v4}, Lcom/vkontakte/android/api/VoipPing$Callback;->onReceived()V

    .line 20
    .end local v1    # "code":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    .restart local v1    # "code":Ljava/lang/String;
    :cond_1
    const-string v4, "reply"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 27
    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    const-string v6, "custom"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "stream"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/vkontakte/android/api/VoipPing$Callback;->onReply(Ljava/lang/String;)V

    goto :goto_1

    .line 41
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "ev":Lorg/json/JSONObject;
    .end local v3    # "i":I
    :catch_0
    move-exception v4

    .line 43
    :cond_2
    :goto_2
    return-object p1

    .line 28
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "code":Ljava/lang/String;
    .restart local v2    # "ev":Lorg/json/JSONObject;
    .restart local v3    # "i":I
    :cond_3
    const-string v4, "hangup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 29
    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    invoke-interface {v4}, Lcom/vkontakte/android/api/VoipPing$Callback;->onHangup()V

    goto :goto_1

    .line 30
    :cond_4
    const-string v4, "camera"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 31
    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    const-string v4, "custom"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v7, "available"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_5

    move v4, v5

    :goto_3
    invoke-interface {v6, v4}, Lcom/vkontakte/android/api/VoipPing$Callback;->onCamera(Z)V

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 32
    :cond_6
    const-string v4, "replied"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 33
    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/vkontakte/android/api/VoipPing$Callback;->onReply(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_7
    const-string v4, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 39
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "ev":Lorg/json/JSONObject;
    :cond_8
    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    if-eqz v4, :cond_2

    .line 40
    iget-object v4, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    invoke-interface {v4}, Lcom/vkontakte/android/api/VoipPing$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/VoipPing$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VoipPing$Callback;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vkontakte/android/api/VoipPing;->callback:Lcom/vkontakte/android/api/VoipPing$Callback;

    .line 48
    return-object p0
.end method
