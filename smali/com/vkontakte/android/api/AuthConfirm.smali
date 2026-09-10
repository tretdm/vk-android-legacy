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
    .line 11
    const-string v0, "auth.confirm"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "phone"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "code"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "password"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "client_id"

    const v1, 0x22b2d3

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    const-string v0, "client_secret"

    const-string v1, "hHbZxrka2uZ6jB1inYsH"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthConfirm;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    new-instance v0, Lcom/vkontakte/android/api/AuthConfirm$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/AuthConfirm$1;-><init>(Lcom/vkontakte/android/api/AuthConfirm;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/AuthConfirm;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 28
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/AuthConfirm;->callback:Lcom/vkontakte/android/api/AuthConfirm$Callback;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/vkontakte/android/api/AuthConfirm;->callback:Lcom/vkontakte/android/api/AuthConfirm$Callback;

    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/vkontakte/android/api/AuthConfirm$Callback;->success(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AuthConfirm$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AuthConfirm$Callback;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/api/AuthConfirm;->callback:Lcom/vkontakte/android/api/AuthConfirm$Callback;

    .line 40
    return-object p0
.end method
