.class public Lcom/vkontakte/android/api/PollsCreate;
.super Lcom/vkontakte/android/APIRequest;
.source "PollsCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PollsCreate$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PollsCreate$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;IZ)V
    .locals 2
    .param p1, "question"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "anonym"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "polls.create"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "question"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PollsCreate;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v1, "is_anonymous"

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/PollsCreate;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/PollsCreate;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "add_answers"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PollsCreate;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 33
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsCreate;->callback:Lcom/vkontakte/android/api/PollsCreate$Callback;

    if-nez v1, :cond_0

    .line 40
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 34
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 36
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsCreate;->callback:Lcom/vkontakte/android/api/PollsCreate$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PollsCreate$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PollsCreate;->callback:Lcom/vkontakte/android/api/PollsCreate$Callback;

    check-cast p1, Lcom/vkontakte/android/PollAttachment;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/PollsCreate$Callback;->success(Lcom/vkontakte/android/PollAttachment;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    :try_start_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 26
    .local v1, "r":Lorg/json/JSONObject;
    new-instance v0, Lcom/vkontakte/android/PollAttachment;

    const-string v3, "question"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "owner_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v0, v3, v4, v5}, Lcom/vkontakte/android/PollAttachment;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v1    # "r":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 28
    :catch_0
    move-exception v2

    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/PollsCreate$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PollsCreate$Callback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkontakte/android/api/PollsCreate;->callback:Lcom/vkontakte/android/api/PollsCreate$Callback;

    .line 44
    return-object p0
.end method
