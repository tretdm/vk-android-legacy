.class Lcom/vkontakte/android/NetworkStateReceiver$5;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "NetworkStateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NetworkStateReceiver;->getNotifications(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NetworkStateReceiver$5;->val$context:Landroid/content/Context;

    .line 282
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 284
    iget-object v7, p0, Lcom/vkontakte/android/NetworkStateReceiver$5;->val$context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "last_get_notify"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v9, v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 287
    .local v0, "a":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 288
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 289
    .local v5, "nt":Lorg/json/JSONObject;
    const-string v7, "message"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/APIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "md":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/vkontakte/android/NetworkStateReceiver$5;->val$context:Landroid/content/Context;

    const-class v8, Lcom/vkontakte/android/NotificationActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 292
    .local v3, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 296
    const/high16 v7, 0x10000000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 297
    iget-object v7, p0, Lcom/vkontakte/android/NetworkStateReceiver$5;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 300
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "md":Ljava/lang/String;
    .end local v5    # "nt":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 293
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "md":Ljava/lang/String;
    .restart local v5    # "nt":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 294
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "md":Ljava/lang/String;
    .end local v5    # "nt":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
