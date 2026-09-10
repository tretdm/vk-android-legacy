.class Lcom/vkontakte/android/NetworkStateReceiver$2;
.super Ljava/lang/Object;
.source "NetworkStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NetworkStateReceiver;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NetworkStateReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$2;->this$0:Lcom/vkontakte/android/NetworkStateReceiver;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 124
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/cache/Cache;->getApiRequest()Lcom/vkontakte/android/data/PersistentAPIRequest;

    move-result-object v2

    .line 125
    .local v2, "preq":Lcom/vkontakte/android/data/PersistentAPIRequest;
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got api req: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-nez v2, :cond_0

    .line 161
    .end local v2    # "preq":Lcom/vkontakte/android/data/PersistentAPIRequest;
    :goto_1
    return-void

    .line 127
    .restart local v2    # "preq":Lcom/vkontakte/android/data/PersistentAPIRequest;
    :cond_0
    new-instance v3, Lcom/vkontakte/android/APIRequest;

    iget-object v5, v2, Lcom/vkontakte/android/data/PersistentAPIRequest;->method:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 128
    .local v3, "req":Lcom/vkontakte/android/APIRequest;
    iget-object v5, v2, Lcom/vkontakte/android/data/PersistentAPIRequest;->args:Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 129
    iget-object v5, v2, Lcom/vkontakte/android/data/PersistentAPIRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 130
    .local v1, "ks":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 135
    .end local v1    # "ks":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Lcom/vkontakte/android/NetworkStateReceiver$2$1;

    invoke-direct {v5, p0, v3, v2}, Lcom/vkontakte/android/NetworkStateReceiver$2$1;-><init>(Lcom/vkontakte/android/NetworkStateReceiver$2;Lcom/vkontakte/android/APIRequest;Lcom/vkontakte/android/data/PersistentAPIRequest;)V

    invoke-virtual {v3, v5}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 158
    invoke-virtual {v3}, Lcom/vkontakte/android/APIRequest;->execSync()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v2    # "preq":Lcom/vkontakte/android/data/PersistentAPIRequest;
    .end local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    .end local v4    # "x":Ljava/lang/Exception;
    .restart local v1    # "ks":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "preq":Lcom/vkontakte/android/data/PersistentAPIRequest;
    .restart local v3    # "req":Lcom/vkontakte/android/APIRequest;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "k":Ljava/lang/String;
    iget-object v5, v3, Lcom/vkontakte/android/APIRequest;->params:Ljava/util/Hashtable;

    iget-object v6, v2, Lcom/vkontakte/android/data/PersistentAPIRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
