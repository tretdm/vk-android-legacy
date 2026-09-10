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

    .line 117
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    :try_start_0
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "s"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 121
    .local v6, "o":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "ts"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->access$0(Lcom/vkontakte/android/LongPollService;I)V

    .line 122
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "key"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->access$1(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V

    .line 123
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "server"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/LongPollService;->access$2(Lcom/vkontakte/android/LongPollService;Ljava/lang/String;)V

    .line 124
    const-string v9, "vk_longpoll"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Update: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-static {v11}, Lcom/vkontakte/android/LongPollService;->access$3(Lcom/vkontakte/android/LongPollService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-static {v11}, Lcom/vkontakte/android/LongPollService;->access$4(Lcom/vkontakte/android/LongPollService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-static {v11}, Lcom/vkontakte/android/LongPollService;->access$5(Lcom/vkontakte/android/LongPollService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "c"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 127
    .local v7, "o1":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "messages"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 129
    const-string v9, "friends"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    .line 130
    const-string v9, "notifications"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 131
    sget-object v9, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    if-eqz v9, :cond_0

    .line 132
    sget-object v9, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v10, 0x4

    sget v11, Lcom/vkontakte/android/LongPollService;->numFriendRequests:I

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 133
    sget-object v9, Lcom/vkontakte/android/MainActivity;->lastInstance:Lcom/vkontakte/android/MainActivity;

    const/4 v10, 0x0

    sget v11, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    invoke-virtual {v9, v10, v11}, Lcom/vkontakte/android/MainActivity;->setTabBadge(II)V

    .line 135
    :cond_0
    sget-object v9, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 136
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 137
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 141
    sget-object v9, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    if-eqz v9, :cond_1

    sget-object v9, Lcom/vkontakte/android/MenuListView;->lastInstance:Lcom/vkontakte/android/MenuListView;

    invoke-virtual {v9}, Lcom/vkontakte/android/MenuListView;->updateList()V

    .line 142
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.vkontakte.android.FRIEND_REQUESTS_CHANGED"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v3, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/vkontakte/android/LongPollService$1;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v10, "com.vkontakte.android.permission.ACCESS_DATA"

    invoke-virtual {v9, v3, v10}, Lcom/vkontakte/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 144
    const-string v9, "fo"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 145
    .local v0, "fo":Lorg/json/JSONArray;
    sget-object v9, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_4

    .line 152
    .end local v0    # "fo":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "o":Lorg/json/JSONObject;
    .end local v7    # "o1":Lorg/json/JSONObject;
    :goto_3
    return-void

    .line 138
    .restart local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "o":Lorg/json/JSONObject;
    .restart local v7    # "o1":Lorg/json/JSONObject;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    .local v4, "k":Ljava/lang/String;
    sget-object v9, Lcom/vkontakte/android/MenuListView;->counters:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 151
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "o":Lorg/json/JSONObject;
    .end local v7    # "o1":Lorg/json/JSONObject;
    :catch_0
    move-exception v9

    goto :goto_3

    .line 145
    .restart local v0    # "fo":Lorg/json/JSONArray;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "o":Lorg/json/JSONObject;
    .restart local v7    # "o1":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .local v8, "up":Lcom/vkontakte/android/UserProfile;
    const/4 v10, 0x0

    iput-boolean v10, v8, Lcom/vkontakte/android/UserProfile;->online:Z

    goto :goto_1

    .line 147
    .end local v8    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v1    # "i":I
    :cond_4
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 148
    .local v2, "id":I
    sget-object v9, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_6

    .line 146
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    .line 149
    .restart local v8    # "up":Lcom/vkontakte/android/UserProfile;
    iget v10, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    if-ne v10, v2, :cond_5

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/vkontakte/android/UserProfile;->online:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method
