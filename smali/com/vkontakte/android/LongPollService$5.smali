.class final Lcom/vkontakte/android/LongPollService$5;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->updateCounters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 529
    :try_start_0
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 530
    .local v5, "r":Lorg/json/JSONObject;
    if-nez v5, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "r":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 531
    .restart local v5    # "r":Lorg/json/JSONObject;
    :cond_0
    const-string v9, "friends"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 532
    .local v4, "numReqs":I
    sget v9, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-eq v4, v9, :cond_1

    .line 533
    sput v4, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, "intent":Landroid/content/Intent;
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 537
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v9, "notifications"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 538
    const-string v9, "groups"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 539
    const-string v9, "messages"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 540
    .local v3, "numMsgs":I
    sget v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-eq v3, v9, :cond_2

    .line 541
    const/4 v9, 0x1

    sput-boolean v9, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 542
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 543
    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 546
    :cond_2
    sget-object v9, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 547
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 548
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 549
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 550
    .local v1, "k":Ljava/lang/String;
    sget-object v9, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "numMsgs":I
    .end local v4    # "numReqs":I
    .end local v5    # "r":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 560
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    .end local v6    # "x":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 552
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "numMsgs":I
    .restart local v4    # "numReqs":I
    .restart local v5    # "r":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    sget-object v9, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 553
    :cond_4
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "forceHTTPS"

    const-string v11, "https_required"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v8, :cond_5

    move v7, v8

    :cond_5
    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 554
    const-string v7, "https_required"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_6

    .line 555
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "useHTTPS"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 556
    :cond_6
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "intro"

    const-string v9, "intro"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
