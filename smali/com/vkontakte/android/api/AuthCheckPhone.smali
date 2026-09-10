.class public Lcom/vkontakte/android/api/AuthCheckPhone;
.super Lcom/vkontakte/android/APIRequest;
.source "AuthCheckPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AuthCheckPhone$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AuthCheckPhone$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "auth.checkPhone"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "phone"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AuthCheckPhone;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "client_id"

    const v1, 0x22b2d3

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AuthCheckPhone;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 15
    new-instance v0, Lcom/vkontakte/android/api/AuthCheckPhone$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/AuthCheckPhone$1;-><init>(Lcom/vkontakte/android/api/AuthCheckPhone;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/AuthCheckPhone;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 25
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/AuthCheckPhone;->callback:Lcom/vkontakte/android/api/AuthCheckPhone$Callback;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/api/AuthCheckPhone;->callback:Lcom/vkontakte/android/api/AuthCheckPhone$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/AuthCheckPhone$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/AuthCheckPhone$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AuthCheckPhone$Callback;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/vkontakte/android/api/AuthCheckPhone;->callback:Lcom/vkontakte/android/api/AuthCheckPhone$Callback;

    .line 37
    return-object p0
.end method
