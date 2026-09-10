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
.method public parse(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetLyrics;->callback:Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetLyrics;->callback:Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    const-string v2, "response"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/AudioGetLyrics$Callback;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AudioGetLyrics$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkontakte/android/api/AudioGetLyrics;->callback:Lcom/vkontakte/android/api/AudioGetLyrics$Callback;

    .line 39
    return-object p0
.end method
