.class public Lcom/vkontakte/android/api/PollsGetById;
.super Lcom/vkontakte/android/APIRequest;
.source "PollsGetById.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PollsGetById$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PollsGetById$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "ownerID"    # I
    .param p2, "pollID"    # I

    .prologue
    .line 14
    const-string v0, "polls.getById"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PollsGetById;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "poll_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    new-instance v0, Lcom/vkontakte/android/api/PollsGetById$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/PollsGetById$1;-><init>(Lcom/vkontakte/android/api/PollsGetById;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/PollsGetById;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 27
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/vkontakte/android/api/PollsGetById;->callback:Lcom/vkontakte/android/api/PollsGetById$Callback;

    if-nez v2, :cond_0

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 53
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 54
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/PollsGetById;->callback:Lcom/vkontakte/android/api/PollsGetById$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/PollsGetById$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 56
    check-cast v1, [Ljava/lang/Object;

    .line 57
    .local v1, "r":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/vkontakte/android/api/PollsGetById;->callback:Lcom/vkontakte/android/api/PollsGetById$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, [Lcom/vkontakte/android/api/PollOption;

    const/4 v4, 0x3

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v5, v2, v6, v3, v4}, Lcom/vkontakte/android/api/PollsGetById$Callback;->success(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;Z)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 31
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "question"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "q":Ljava/lang/String;
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "answer_id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 33
    .local v5, "ua":I
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "answers"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 34
    .local v1, "op":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v2, v7, [Lcom/vkontakte/android/api/PollOption;

    .line 35
    .local v2, "opts":[Lcom/vkontakte/android/api/PollOption;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 43
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v7, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x2

    aput-object v2, v7, v10

    const/4 v10, 0x3

    const-string v11, "response"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "anonymous"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    .line 47
    .end local v0    # "i":I
    .end local v1    # "op":Lorg/json/JSONArray;
    .end local v2    # "opts":[Lcom/vkontakte/android/api/PollOption;
    .end local v4    # "q":Ljava/lang/String;
    .end local v5    # "ua":I
    :goto_2
    return-object v7

    .line 36
    .restart local v0    # "i":I
    .restart local v1    # "op":Lorg/json/JSONArray;
    .restart local v2    # "opts":[Lcom/vkontakte/android/api/PollOption;
    .restart local v4    # "q":Ljava/lang/String;
    .restart local v5    # "ua":I
    :cond_0
    new-instance v3, Lcom/vkontakte/android/api/PollOption;

    invoke-direct {v3}, Lcom/vkontakte/android/api/PollOption;-><init>()V

    .line 37
    .local v3, "po":Lcom/vkontakte/android/api/PollOption;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/vkontakte/android/api/PollOption;->id:I

    .line 38
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "text"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "votes"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    .line 40
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "rate"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v7, v10

    iput v7, v3, Lcom/vkontakte/android/api/PollOption;->percent:F

    .line 41
    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "po":Lcom/vkontakte/android/api/PollOption;
    :cond_1
    move v8, v9

    .line 43
    goto :goto_1

    .line 44
    .end local v0    # "i":I
    .end local v1    # "op":Lorg/json/JSONArray;
    .end local v2    # "opts":[Lcom/vkontakte/android/api/PollOption;
    .end local v4    # "q":Ljava/lang/String;
    .end local v5    # "ua":I
    :catch_0
    move-exception v6

    .line 45
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/PollsGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PollsGetById$Callback;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/api/PollsGetById;->callback:Lcom/vkontakte/android/api/PollsGetById$Callback;

    .line 63
    return-object p0
.end method
