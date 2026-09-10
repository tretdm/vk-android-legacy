.class public Lcom/vkontakte/android/api/AudioDelete;
.super Lcom/vkontakte/android/APIRequest;
.source "AudioDelete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AudioDelete$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AudioDelete$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 11
    const-string v0, "audio.delete"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AudioDelete;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "audio_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AudioDelete;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioDelete;->callback:Lcom/vkontakte/android/api/AudioDelete$Callback;

    if-nez v1, :cond_0

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 33
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 34
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioDelete;->callback:Lcom/vkontakte/android/api/AudioDelete$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AudioDelete$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 36
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioDelete;->callback:Lcom/vkontakte/android/api/AudioDelete$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/AudioDelete$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 21
    :goto_0
    return-object v0

    .line 19
    :catch_0
    move-exception v0

    .line 21
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AudioDelete$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AudioDelete$Callback;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/vkontakte/android/api/AudioDelete;->callback:Lcom/vkontakte/android/api/AudioDelete$Callback;

    .line 26
    return-object p0
.end method
