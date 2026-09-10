.class public Lcom/vkontakte/android/api/BoardGetTopics;
.super Lcom/vkontakte/android/APIRequest;
.source "BoardGetTopics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/BoardGetTopics$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 31
    const-string v0, "board.getTopics"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "tids"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 34
    new-instance v0, Lcom/vkontakte/android/api/BoardGetTopics$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/BoardGetTopics$2;-><init>(Lcom/vkontakte/android/api/BoardGetTopics;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/BoardGetTopics;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 44
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 15
    const-string v0, "board.getTopics"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    new-instance v0, Lcom/vkontakte/android/api/BoardGetTopics$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/BoardGetTopics$1;-><init>(Lcom/vkontakte/android/api/BoardGetTopics;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/BoardGetTopics;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 28
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/api/BoardGetTopics;->callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    if-nez v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 74
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 75
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/BoardGetTopics;->callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/BoardGetTopics$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 77
    check-cast v1, [Ljava/lang/Object;

    .line 78
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/BoardGetTopics;->callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v3, 0x3

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v5, v2, v6, v3}, Lcom/vkontakte/android/api/BoardGetTopics$Callback;->success(ILjava/util/ArrayList;ZI)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 48
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v4, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "topics"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 51
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 65
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v4, v5, v8

    const/4 v8, 0x2

    const-string v9, "response"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "can_add_topics"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v6, :cond_3

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "default_order"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 68
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v4    # "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    :goto_2
    return-object v5

    .line 52
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    .local v2, "jt":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/api/BoardTopic;

    invoke-direct {v3}, Lcom/vkontakte/android/api/BoardTopic;-><init>()V

    .line 54
    .local v3, "t":Lcom/vkontakte/android/api/BoardTopic;
    const-string v5, "tid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/api/BoardTopic;->id:I

    .line 55
    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    .line 56
    const-string v5, "created"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sget v8, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v5, v8

    iput v5, v3, Lcom/vkontakte/android/api/BoardTopic;->created:I

    .line 57
    const-string v5, "created_by"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/api/BoardTopic;->creator:I

    .line 58
    const-string v5, "updated"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sget v8, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v5, v8

    iput v5, v3, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    .line 59
    const-string v5, "is_closed"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    .line 60
    :cond_1
    const-string v5, "is_fixed"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v3, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v3, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    .line 61
    :cond_2
    const-string v5, "comments"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/api/BoardTopic;->numComments:I

    .line 62
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "jt":Lorg/json/JSONObject;
    .end local v3    # "t":Lcom/vkontakte/android/api/BoardTopic;
    :cond_3
    move v6, v7

    .line 65
    goto :goto_1

    .line 66
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v4    # "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    :catch_0
    move-exception v5

    .line 68
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardGetTopics;->callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    .line 84
    return-object p0
.end method
