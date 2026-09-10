.class public Lcom/vkontakte/android/api/AudioAdd;
.super Lcom/vkontakte/android/APIRequest;
.source "AudioAdd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AudioAdd$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AudioAdd$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "aid"    # I
    .param p3, "gid"    # I

    .prologue
    .line 13
    const-string v0, "audio.add"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AudioAdd;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "audio_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AudioAdd;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    if-eqz p3, :cond_0

    .line 17
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/AudioAdd;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 34
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioAdd;->callback:Lcom/vkontakte/android/api/AudioAdd$Callback;

    if-nez v1, :cond_0

    .line 42
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 36
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 37
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 38
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioAdd;->callback:Lcom/vkontakte/android/api/AudioAdd$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AudioAdd$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioAdd;->callback:Lcom/vkontakte/android/api/AudioAdd$Callback;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/AudioAdd$Callback;->success(I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 25
    :goto_0
    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AudioAdd$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AudioAdd$Callback;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/vkontakte/android/api/AudioAdd;->callback:Lcom/vkontakte/android/api/AudioAdd$Callback;

    .line 30
    return-object p0
.end method
