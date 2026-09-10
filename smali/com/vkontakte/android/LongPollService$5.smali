.class Lcom/vkontakte/android/LongPollService$5;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->updateCounters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 519
    :try_start_0
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 520
    .local v5, "r":Lorg/json/JSONObject;
    if-nez v5, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    .end local v5    # "r":Lorg/json/JSONObject;
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 521
    .restart local v5    # "r":Lorg/json/JSONObject;
    :cond_0
    const-string v9, "friends"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 522
    .local v4, "numReqs":I
    sget v9, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-eq v4, v9, :cond_1

    .line 523
    sput v4, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 524
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .local v0, "intent":Landroid/content/Intent;
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 527
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v9, "notifications"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 528
    const-string v9, "groups"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 529
    const-string v9, "messages"

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 530
    .local v3, "numMsgs":I
    sget v9, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-eq v3, v9, :cond_2

    .line 531
    const/4 v9, 0x1

    sput-boolean v9, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 532
    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 533
    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 536
    :cond_2
    sget-object v9, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 537
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 538
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 542
    sget-object v9, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v9, :cond_3

    sget-object v9, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 543
    :cond_3
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

    if-ne v11, v8, :cond_4

    move v7, v8

    :cond_4
    invoke-interface {v9, v10, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 544
    const-string v7, "https_required"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_5

    .line 545
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

    .line 546
    :cond_5
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

    .line 547
    sget-object v7, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 552
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "numMsgs":I
    .end local v4    # "numReqs":I
    .end local v5    # "r":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 539
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "numMsgs":I
    .restart local v4    # "numReqs":I
    .restart local v5    # "r":Lorg/json/JSONObject;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 540
    .local v1, "k":Ljava/lang/String;
    sget-object v9, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 549
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "numMsgs":I
    .end local v4    # "numReqs":I
    .end local v5    # "r":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 550
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
