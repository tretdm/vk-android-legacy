.class public Lcom/vkontakte/android/api/AuthConfirm;
.super Lcom/vkontakte/android/APIRequest;
.source "AuthConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AuthConfirm$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AuthConfirm$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "pass"    # Ljava/lang/String;

    .prologue
    .line 12
    const-string v0, "auth.confirm"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "phone"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "code"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    if-eqz p3, :cond_0

    const-string v0, "password"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 16
    :cond_0
    const-string v0, "client_id"

    const v1, 0x22b2d3

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    const-string v0, "client_secret"

    const-string v1, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v0, "intro"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 30
    iget-object v1, p0, Lcom/vkontakte/android/api/AuthConfirm;->callback:Lcom/vkontakte/android/api/AuthConfirm$Callback;

    if-nez v1, :cond_0

    .line 37
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 31
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 32
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 33
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AuthConfirm;->callback:Lcom/vkontakte/android/api/AuthConfirm$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AuthConfirm$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AuthConfirm;->callback:Lcom/vkontakte/android/api/AuthConfirm$Callback;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/AuthConfirm$Callback;->success(I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 26
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AuthConfirm$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AuthConfirm$Callback;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkontakte/android/api/AuthConfirm;->callback:Lcom/vkontakte/android/api/AuthConfirm$Callback;

    .line 41
    return-object p0
.end method
