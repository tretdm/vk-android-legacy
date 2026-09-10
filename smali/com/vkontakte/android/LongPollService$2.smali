.class Lcom/vkontakte/android/LongPollService$2;
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


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/LongPollService;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/LongPollService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$2;->this$0:Lcom/vkontakte/android/LongPollService;

    .line 178
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 181
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 182
    .local v5, "r":Lorg/json/JSONObject;
    const-string v7, "friends"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 183
    .local v4, "numReqs":I
    sget v7, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    if-eq v4, v7, :cond_0

    .line 184
    sput v4, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/vkontakte/android/LongPollService$2;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v8, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v7, v0, v8}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v7, "notifications"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 189
    const-string v7, "messages"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 190
    .local v3, "numMsgs":I
    sget v7, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    if-eq v3, v7, :cond_1

    .line 191
    const/4 v7, 0x1

    sput-boolean v7, Lcom/vkontakte/android/LongPollService;->needReloadDialogs:Z

    .line 192
    iget-object v7, p0, Lcom/vkontakte/android/LongPollService$2;->this$0:Lcom/vkontakte/android/LongPollService;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.REFRESH_DIALOGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v7, v8, v9}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 193
    sput v3, Lcom/vkontakte/android/LongPollService;->numNewMessages:I

    .line 196
    :cond_1
    sget-object v7, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v7, :cond_2

    .line 197
    sget-object v7, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    new-instance v8, Lcom/vkontakte/android/LongPollService$2$1;

    invoke-direct {v8, p0}, Lcom/vkontakte/android/LongPollService$2$1;-><init>(Lcom/vkontakte/android/LongPollService$2;)V

    invoke-virtual {v7, v8}, Lcom/vkontakte/android/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    :cond_2
    sget-object v7, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 206
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 207
    .local v2, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 211
    sget-object v7, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v7, :cond_3

    sget-object v7, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v7}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 216
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "numMsgs":I
    .end local v4    # "numReqs":I
    .end local v5    # "r":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    return-void

    .line 208
    .restart local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "numMsgs":I
    .restart local v4    # "numReqs":I
    .restart local v5    # "r":Lorg/json/JSONObject;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    .local v1, "k":Ljava/lang/String;
    sget-object v7, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "numMsgs":I
    .end local v4    # "numReqs":I
    .end local v5    # "r":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 214
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
