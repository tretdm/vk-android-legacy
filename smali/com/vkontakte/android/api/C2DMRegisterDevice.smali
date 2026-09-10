.class public Lcom/vkontakte/android/api/C2DMRegisterDevice;
.super Lcom/vkontakte/android/APIRequest;
.source "C2DMRegisterDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 13
    const-string v0, "account.registerDevice"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v0, "token"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 15
    const-string v0, "system_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 16
    const-string v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 17
    const-string v0, "type"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    new-instance v0, Lcom/vkontakte/android/api/C2DMRegisterDevice$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/C2DMRegisterDevice$1;-><init>(Lcom/vkontakte/android/api/C2DMRegisterDevice;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 29
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/api/C2DMRegisterDevice;->callback:Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/vkontakte/android/api/C2DMRegisterDevice;->callback:Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    invoke-interface {v0}, Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/vkontakte/android/api/C2DMRegisterDevice;->callback:Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    .line 41
    return-object p0
.end method
