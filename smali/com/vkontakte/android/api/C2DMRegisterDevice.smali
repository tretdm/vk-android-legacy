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
    .locals 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v0, "account.registerDevice"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "token"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 17
    const-string v0, "system_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v0, "device_model"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "type"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "gcm"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    const-string v0, "subscribe"

    const-string v1, "msg,friend,call,reply,mention,group"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    :try_start_0
    const-string v0, "app_version"

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    new-instance v0, Lcom/vkontakte/android/api/C2DMRegisterDevice$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/C2DMRegisterDevice$1;-><init>(Lcom/vkontakte/android/api/C2DMRegisterDevice;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 36
    return-void

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/vkontakte/android/api/C2DMRegisterDevice;->callback:Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 49
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 50
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/C2DMRegisterDevice;->callback:Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/C2DMRegisterDevice;->callback:Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    invoke-interface {v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;->success()V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkontakte/android/api/C2DMRegisterDevice;->callback:Lcom/vkontakte/android/api/C2DMRegisterDevice$Callback;

    .line 58
    return-object p0
.end method
