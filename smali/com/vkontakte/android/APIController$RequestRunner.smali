.class Lcom/vkontakte/android/APIController$RequestRunner;
.super Ljava/lang/Object;
.source "APIController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/APIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestRunner"
.end annotation


# instance fields
.field r:Lcom/vkontakte/android/APIRequest;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/APIRequest;)V
    .locals 0
    .param p1, "req"    # Lcom/vkontakte/android/APIRequest;

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    .line 295
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 298
    iget-object v4, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    .local v0, "res":Lorg/json/JSONObject;
    if-nez v0, :cond_2

    .line 302
    iget-object v4, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-static {v4}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;

    move-result-object v0

    .line 304
    :cond_2
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v4, v0}, Lcom/vkontakte/android/APIRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v1

    .line 305
    .local v1, "result":Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v4}, Lcom/vkontakte/android/APIRequest;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    new-instance v2, Lcom/vkontakte/android/APIController$RequestRunner$1;

    invoke-direct {v2, p0, v1}, Lcom/vkontakte/android/APIController$RequestRunner$1;-><init>(Lcom/vkontakte/android/APIController$RequestRunner;Ljava/lang/Object;)V

    .line 323
    .local v2, "rs":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v4, v4, Lcom/vkontakte/android/APIRequest;->uiHandler:Landroid/os/Handler;

    if-eqz v4, :cond_4

    .line 324
    iget-object v4, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v4, v4, Lcom/vkontakte/android/APIRequest;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v0    # "res":Lorg/json/JSONObject;
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "rs":Ljava/lang/Runnable;
    :catch_0
    move-exception v3

    .line 328
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 304
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "res":Lorg/json/JSONObject;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 326
    .restart local v1    # "result":Ljava/lang/Object;
    .restart local v2    # "rs":Ljava/lang/Runnable;
    :cond_4
    :try_start_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
