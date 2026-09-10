.class public Lcom/vkontakte/android/C2DM;
.super Ljava/lang/Object;
.source "C2DM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkForUpdate()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkontakte/android/C2DM;->start(Z)V

    .line 48
    return-void
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vkontakte/android/C2DM;->start(Z)V

    .line 44
    return-void
.end method

.method public static start(Z)V
    .locals 2
    .param p0, "check"    # Z

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkontakte/android/C2DM$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/C2DM$1;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method public static stop()V
    .locals 4

    .prologue
    .line 52
    :try_start_0
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "gcm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "reg"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "token":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    new-instance v1, Lcom/vkontakte/android/api/C2DMUnregisterDevice;

    invoke-direct {v1, v0}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lcom/vkontakte/android/api/C2DMUnregisterDevice;->exec()Lcom/vkontakte/android/APIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method
