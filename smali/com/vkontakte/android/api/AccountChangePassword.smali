.class public Lcom/vkontakte/android/api/AccountChangePassword;
.super Lcom/vkontakte/android/APIRequest;
.source "AccountChangePassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AccountChangePassword$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AccountChangePassword$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldPass"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, "account.changePassword"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "old_password"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    const-string v0, "new_password"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "pass"    # Ljava/lang/String;

    .prologue
    .line 12
    const-string v0, "account.changePassword"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 13
    const-string v0, "restore_sid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "change_password_hash"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "password"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/AccountChangePassword;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v2, p0, Lcom/vkontakte/android/api/AccountChangePassword;->callback:Lcom/vkontakte/android/api/AccountChangePassword$Callback;

    if-nez v2, :cond_0

    .line 49
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 42
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 44
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/AccountChangePassword;->callback:Lcom/vkontakte/android/api/AccountChangePassword$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/AccountChangePassword$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    .line 47
    .local v1, "r":[Ljava/lang/String;
    iget-object v2, p0, Lcom/vkontakte/android/api/AccountChangePassword;->callback:Lcom/vkontakte/android/api/AccountChangePassword$Callback;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/AccountChangePassword$Callback;->success(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 27
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "secret"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AccountChangePassword$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AccountChangePassword$Callback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/api/AccountChangePassword;->callback:Lcom/vkontakte/android/api/AccountChangePassword$Callback;

    .line 36
    return-object p0
.end method
