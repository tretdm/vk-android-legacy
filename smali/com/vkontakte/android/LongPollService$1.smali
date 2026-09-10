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

    .line 170
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 173
    :try_start_0
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "s"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 174
    .local v5, "o":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "ts"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->access$0(Lcom/vkontakte/android/LongPollService;I)V

    .line 175
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "key"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->access$1(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V

    .line 176
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "server"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->access$2(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V

    .line 177
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    sget-object v10, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "useHTTPS"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->access$3(Lcom/vkontakte/android/LongPollService;Z)V

    .line 179
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "c"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 180
    .local v6, "o1":Lorg/json/JSONObject;
    sget-object v9, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 181
    if-eqz v6, :cond_2

    .line 182
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "messages"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 183
    const-string v9, "friends"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 184
    const-string v9, "notifications"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 185
    const-string v9, "groups"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 186
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 187
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 197
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    sget-object v9, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v9, :cond_0

    sget-object v9, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 198
    :cond_0
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 199
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v2, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v2, v10}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 201
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "fo"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 208
    .local v0, "fo":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v7, "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_3

    .line 212
    invoke-static {v7}, Lcom/vkontakte/android/data/Friends;->setOnlines(Ljava/util/ArrayList;)V

    .line 214
    .end local v0    # "fo":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "o":Lorg/json/JSONObject;
    .end local v6    # "o1":Lorg/json/JSONObject;
    .end local v7    # "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_3
    return-void

    .line 188
    .restart local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "o":Lorg/json/JSONObject;
    .restart local v6    # "o1":Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    .local v3, "k":Ljava/lang/String;
    sget-object v9, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v3    # "k":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "o":Lorg/json/JSONObject;
    .end local v6    # "o1":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 192
    .end local v8    # "x":Ljava/lang/Exception;
    .restart local v5    # "o":Lorg/json/JSONObject;
    .restart local v6    # "o1":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 193
    const/4 v9, 0x0

    sput v9, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 194
    const/4 v9, 0x0

    sput v9, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 195
    const/4 v9, 0x0

    sput v9, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    goto :goto_1

    .line 210
    .restart local v0    # "fo":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "onlines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
