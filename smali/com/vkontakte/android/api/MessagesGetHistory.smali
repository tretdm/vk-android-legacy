.class public Lcom/vkontakte/android/api/MessagesGetHistory;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesGetHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesGetHistory$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 19
    const-string v0, "messages.getHistory"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetHistory;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_sizes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    const-string v0, "fields"

    const-string v1, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesGetHistory;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    if-nez v2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 47
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetHistory$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 49
    check-cast v1, [Ljava/lang/Object;

    .line 50
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/MessagesGetHistory$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    :try_start_0
    const-string v5, "response"

    invoke-static {p1, v5}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v5

    iget-object v0, v5, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 27
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 28
    iget-object v5, p0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    if-eqz v5, :cond_0

    .line 29
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    aput-object v7, v5, v6

    .line 40
    .end local v0    # "a":Lorg/json/JSONArray;
    :goto_0
    return-object v5

    .line 31
    .restart local v0    # "a":Lorg/json/JSONArray;
    :cond_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 32
    .local v3, "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 36
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "response"

    invoke-static {p1, v7}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :catch_0
    move-exception v4

    .line 38
    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    invoke-static {v5, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    const/4 v5, 0x0

    goto :goto_0

    .line 33
    .end local v4    # "x":Ljava/lang/Exception;
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "msgs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Message;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    .local v2, "jm":Lorg/json/JSONObject;
    const/4 v5, 0x0

    new-instance v6, Lcom/vkontakte/android/Message;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v6, v2, v7, v8}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/Vector;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetHistory$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetHistory;->callback:Lcom/vkontakte/android/api/MessagesGetHistory$Callback;

    .line 56
    return-object p0
.end method
