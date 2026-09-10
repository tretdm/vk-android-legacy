.class public Lcom/vkontakte/android/api/C2DMUnregisterDevice;
.super Lcom/vkontakte/android/APIRequest;
.source "C2DMUnregisterDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "account.unregisterDevice"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "token"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 13
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->callback:Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;

    if-nez v1, :cond_0

    .line 31
    :goto_0
    return-void

    .line 25
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 26
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 27
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->callback:Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 29
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->callback:Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 17
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 20
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->callback:Lcom/vkontakte/android/api/C2DMUnregisterDevice$Callback;

    .line 35
    return-object p0
.end method
