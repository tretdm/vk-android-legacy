.class public Lcom/vkontakte/android/api/VoipSetDevices;
.super Lcom/vkontakte/android/APIRequest;
.source "VoipSetDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VoipSetDevices$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VoipSetDevices$Callback;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "callID"    # I
    .param p2, "fromID"    # I
    .param p3, "camera"    # Z

    .prologue
    .line 11
    const-string v0, "voip.setDevices"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v1, "camera"

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/VoipSetDevices;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "call_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/VoipSetDevices;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "from_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/VoipSetDevices;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    new-instance v0, Lcom/vkontakte/android/api/VoipSetDevices$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/VoipSetDevices$1;-><init>(Lcom/vkontakte/android/api/VoipSetDevices;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/VoipSetDevices;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/vkontakte/android/api/VoipSetDevices;->callback:Lcom/vkontakte/android/api/VoipSetDevices$Callback;

    if-nez v1, :cond_0

    .line 40
    :goto_0
    return-void

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 36
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/VoipSetDevices;->callback:Lcom/vkontakte/android/api/VoipSetDevices$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/VoipSetDevices$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/VoipSetDevices;->callback:Lcom/vkontakte/android/api/VoipSetDevices$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/VoipSetDevices$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCallback(Lcom/vkontakte/android/api/VoipSetDevices$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VoipSetDevices$Callback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/api/VoipSetDevices;->callback:Lcom/vkontakte/android/api/VoipSetDevices$Callback;

    .line 44
    return-object p0
.end method
