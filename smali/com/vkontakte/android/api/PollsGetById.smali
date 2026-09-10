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
.method public parse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "question"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, "q":Ljava/lang/String;
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "answer_id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 33
    .local v5, "ua":I
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "answers"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

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

    if-lt v0, v7, :cond_1

    .line 43
    iget-object v7, p0, Lcom/vkontakte/android/api/PollsGetById;->callback:Lcom/vkontakte/android/api/PollsGetById$Callback;

    if-eqz v7, :cond_0

    .line 44
    iget-object v7, p0, Lcom/vkontakte/android/api/PollsGetById;->callback:Lcom/vkontakte/android/api/PollsGetById$Callback;

    invoke-interface {v7, v4, v5, v2}, Lcom/vkontakte/android/api/PollsGetById$Callback;->success(Ljava/lang/String;I[Lcom/vkontakte/android/api/PollOption;)V

    .line 48
    .end local v0    # "i":I
    .end local v1    # "op":Lorg/json/JSONArray;
    .end local v2    # "opts":[Lcom/vkontakte/android/api/PollOption;
    .end local v4    # "q":Ljava/lang/String;
    .end local v5    # "ua":I
    :cond_0
    :goto_1
    return-void

    .line 36
    .restart local v0    # "i":I
    .restart local v1    # "op":Lorg/json/JSONArray;
    .restart local v2    # "opts":[Lcom/vkontakte/android/api/PollOption;
    .restart local v4    # "q":Ljava/lang/String;
    .restart local v5    # "ua":I
    :cond_1
    new-instance v3, Lcom/vkontakte/android/api/PollOption;

    invoke-direct {v3}, Lcom/vkontakte/android/api/PollOption;-><init>()V

    .line 37
    .local v3, "po":Lcom/vkontakte/android/api/PollOption;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/vkontakte/android/api/PollOption;->id:I

    .line 38
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "text"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "votes"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v3, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    .line 40
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "rate"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    iput v7, v3, Lcom/vkontakte/android/api/PollOption;->percent:F

    .line 41
    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v0    # "i":I
    .end local v1    # "op":Lorg/json/JSONArray;
    .end local v2    # "opts":[Lcom/vkontakte/android/api/PollOption;
    .end local v3    # "po":Lcom/vkontakte/android/api/PollOption;
    .end local v4    # "q":Ljava/lang/String;
    .end local v5    # "ua":I
    :catch_0
    move-exception v6

    .line 46
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/PollsGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PollsGetById$Callback;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkontakte/android/api/PollsGetById;->callback:Lcom/vkontakte/android/api/PollsGetById$Callback;

    .line 52
    return-object p0
.end method
