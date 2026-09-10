.class Lcom/vkontakte/android/LongPollService$9;
.super Lcom/vkontakte/android/APIRequest$APIHandler;
.source "LongPollService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/LongPollService;->runSlowPoll()V
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
    iput-object p1, p0, Lcom/vkontakte/android/LongPollService$9;->this$0:Lcom/vkontakte/android/LongPollService;

    .line 1059
    invoke-direct {p0}, Lcom/vkontakte/android/APIRequest$APIHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 1062
    :try_start_0
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1063
    .local v8, "c":Lorg/json/JSONObject;
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 1064
    .local v11, "msgs":Lorg/json/JSONArray;
    if-eqz v11, :cond_0

    .line 1065
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v9, v0, :cond_1

    .line 1075
    .end local v9    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$9;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v1, "messages"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/LongPollService;->setNumUnread(I)V

    .line 1076
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$9;->this$0:Lcom/vkontakte/android/LongPollService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vkontakte/android/LongPollService;->lastReqTime:J

    .line 1078
    .end local v8    # "c":Lorg/json/JSONObject;
    .end local v11    # "msgs":Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 1066
    .restart local v8    # "c":Lorg/json/JSONObject;
    .restart local v9    # "i":I
    .restart local v11    # "msgs":Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1067
    .local v10, "m":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 1068
    .local v2, "u":I
    const-string v0, "chat_id"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    const v0, 0x77359400

    const-string v1, "chat_id"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    add-int v2, v0, v1

    .line 1072
    :goto_2
    iget-object v0, p0, Lcom/vkontakte/android/LongPollService$9;->this$0:Lcom/vkontakte/android/LongPollService;

    const-string v1, "mid"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    const-string v4, "date"

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "body"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/vkontakte/android/LongPollService;->access$3(Lcom/vkontakte/android/LongPollService;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1071
    :cond_2
    const-string v0, "uid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 1077
    .end local v2    # "u":I
    .end local v8    # "c":Lorg/json/JSONObject;
    .end local v9    # "i":I
    .end local v10    # "m":Lorg/json/JSONObject;
    .end local v11    # "msgs":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    goto :goto_1
.end method
