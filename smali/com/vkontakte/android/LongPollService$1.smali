.class Lcom/vkontakte/android/LongPollService$1;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->updateServerInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LongPollService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    .line 199
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 17
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 202
    :try_start_0
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "s"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 203
    .local v9, "o":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v14, "ts"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/LongPollService;->access$0(Lcom/vkontakte/android/LongPollService;I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v14, "key"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/LongPollService;->access$1(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v14, "server"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/LongPollService;->access$2(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    sget-object v14, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "useHTTPS"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v13, v14}, Lcom/vkontakte/android/LongPollService;->access$3(Lcom/vkontakte/android/LongPollService;Z)V

    .line 210
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "c"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 211
    .local v10, "o1":Lorg/json/JSONObject;
    sget-object v13, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 212
    if-eqz v10, :cond_2

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v14, "messages"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 214
    const-string v13, "friends"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 215
    const-string v13, "notifications"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 216
    const-string v13, "groups"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 217
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 218
    .local v7, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_1

    .line 228
    .end local v7    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    sget-object v13, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v13, :cond_0

    sget-object v13, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v13}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 229
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v13, v14, v15}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 230
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v14, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v13, v5, v14}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 232
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "fo"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 233
    .local v3, "fo":Lorg/json/JSONObject;
    const-string v13, "online"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 234
    .local v1, "fdo":Lorg/json/JSONArray;
    const-string v13, "online_mobile"

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 241
    .local v2, "fmo":Lorg/json/JSONArray;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v8, "mobileOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lt v4, v13, :cond_3

    .line 245
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lt v4, v13, :cond_4

    .line 248
    invoke-static {v11, v8}, Lcom/vkontakte/android/data/Friends;->setOnlines(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 250
    .end local v1    # "fdo":Lorg/json/JSONArray;
    .end local v2    # "fmo":Lorg/json/JSONArray;
    .end local v3    # "fo":Lorg/json/JSONObject;
    .end local v4    # "i":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "mobileOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "o":Lorg/json/JSONObject;
    .end local v10    # "o1":Lorg/json/JSONObject;
    .end local v11    # "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_4
    return-void

    .line 219
    .restart local v7    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9    # "o":Lorg/json/JSONObject;
    .restart local v10    # "o1":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 220
    .local v6, "k":Ljava/lang/String;
    sget-object v13, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v6    # "k":Ljava/lang/String;
    .end local v7    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "o":Lorg/json/JSONObject;
    .end local v10    # "o1":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 223
    .end local v12    # "x":Ljava/lang/Exception;
    .restart local v9    # "o":Lorg/json/JSONObject;
    .restart local v10    # "o1":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 224
    const/4 v13, 0x0

    sput v13, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 225
    const/4 v13, 0x0

    sput v13, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 226
    const/4 v13, 0x0

    sput v13, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    goto/16 :goto_1

    .line 243
    .restart local v1    # "fdo":Lorg/json/JSONArray;
    .restart local v2    # "fmo":Lorg/json/JSONArray;
    .restart local v3    # "fo":Lorg/json/JSONObject;
    .restart local v4    # "i":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v8    # "mobileOnlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 246
    :cond_4
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method
