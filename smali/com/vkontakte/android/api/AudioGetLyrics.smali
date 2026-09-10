.class public Lcom/vkontakte/android/api/AudioGetLyrics;
.super Lcom/vkontakte/android/APIRequest;
.source "AudioGetLyrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AudioGetLyrics$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AudioGetLyrics$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 13
    const-string v0, "audio.getLyrics"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "lyrics_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AudioGetLyrics;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    new-instance v0, Lcom/vkontakte/android/api/AudioGetLyrics$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/AudioGetLyrics$1;-><init>(Lcom/vkontakte/android/api/AudioGetLyrics;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/AudioGetLyrics;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetLyrics;->callback:Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    if-nez v1, :cond_0

    .line 45
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 39
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 40
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 41
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetLyrics;->callback:Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AudioGetLyrics$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetLyrics;->callback:Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/AudioGetLyrics$Callback;->success(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AudioGetLyrics$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/api/AudioGetLyrics;->callback:Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    .line 49
    return-object p0
.end method
