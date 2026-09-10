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
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    .line 319
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 322
    iget-object v5, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->doExec()Lorg/json/JSONObject;

    move-result-object v1

    .line 326
    .local v1, "res":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 327
    iget-object v5, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-static {v5}, Lcom/vkontakte/android/APIController;->runRequest(Lcom/vkontakte/android/APIRequest;)Lorg/json/JSONObject;

    move-result-object v1

    .line 329
    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 330
    .local v0, "networkFail":Z
    :goto_1
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v5, v1}, Lcom/vkontakte/android/APIRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v2

    .line 331
    .local v2, "result":Ljava/lang/Object;
    :goto_2
    iget-object v5, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    invoke-virtual {v5}, Lcom/vkontakte/android/APIRequest;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 332
    sget-boolean v5, Lcom/vkontakte/android/APIController;->API_DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v5, v5, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/HashMap;

    const-string v8, "method"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " was canceled"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    .end local v0    # "networkFail":Z
    .end local v1    # "res":Lorg/json/JSONObject;
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 366
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 329
    .end local v4    # "x":Ljava/lang/Exception;
    .restart local v1    # "res":Lorg/json/JSONObject;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 330
    .restart local v0    # "networkFail":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 335
    .restart local v2    # "result":Ljava/lang/Object;
    :cond_5
    :try_start_1
    new-instance v3, Lcom/vkontakte/android/APIController$RequestRunner$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/vkontakte/android/APIController$RequestRunner$1;-><init>(Lcom/vkontakte/android/APIController$RequestRunner;Ljava/lang/Object;Z)V

    .line 361
    .local v3, "rs":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v5, v5, Lcom/vkontakte/android/APIRequest;->uiHandler:Landroid/os/Handler;

    if-eqz v5, :cond_6

    .line 362
    iget-object v5, p0, Lcom/vkontakte/android/APIController$RequestRunner;->r:Lcom/vkontakte/android/APIRequest;

    iget-object v5, v5, Lcom/vkontakte/android/APIRequest;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 364
    :cond_6
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
