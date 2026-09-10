.class public Lcom/vkontakte/android/C2DM;
.super Ljava/lang/Object;
.source "C2DM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 10
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "vk.c2dm@gmail.com"

    invoke-static {v0, v1}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    :goto_0
    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/vkontakte/android/api/C2DMRegisterDevice;

    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/c2dm/C2DMessaging;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/C2DMRegisterDevice;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/vkontakte/android/api/C2DMRegisterDevice;->exec()Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/c2dm/C2DMessaging;->unregister(Landroid/content/Context;)V

    .line 24
    return-void
.end method
