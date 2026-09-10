.class public Lcom/vkontakte/android/api/AccountSetSilenceMode;
.super Lcom/vkontakte/android/APIRequest;
.source "AccountSetSilenceMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 3
    .param p1, "peer"    # I
    .param p2, "time"    # I
    .param p3, "mute"    # Z

    .prologue
    .line 11
    const-string v0, "account.setSilenceMode"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_0

    const/4 p2, -0x1

    .end local p2    # "time":I
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AccountSetSilenceMode;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v1, "sound"

    if-eqz p3, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/AccountSetSilenceMode;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AccountSetSilenceMode;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    return-void

    .line 13
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/vkontakte/android/api/AccountSetSilenceMode;->callback:Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 33
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 34
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 35
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AccountSetSilenceMode;->callback:Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 37
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AccountSetSilenceMode;->callback:Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 22
    :goto_0
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 22
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/vkontakte/android/api/AccountSetSilenceMode;->callback:Lcom/vkontakte/android/api/AccountSetSilenceMode$Callback;

    .line 27
    return-object p0
.end method
