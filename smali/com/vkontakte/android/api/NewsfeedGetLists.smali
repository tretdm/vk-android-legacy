.class public Lcom/vkontakte/android/api/NewsfeedGetLists;
.super Lcom/vkontakte/android/APIRequest;
.source "NewsfeedGetLists.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "newsfeed.getLists"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedGetLists;->callback:Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;

    if-nez v1, :cond_0

    .line 46
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 40
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 42
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedGetLists;->callback:Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedGetLists;->callback:Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsfeedList;>;"
    :try_start_0
    const-string v4, "response"

    invoke-static {p1, v4}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v1, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 22
    .local v1, "ja":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 23
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 24
    .local v2, "jl":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/NewsfeedList;

    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/vkontakte/android/NewsfeedList;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "i":I
    .end local v1    # "ja":Lorg/json/JSONArray;
    .end local v2    # "jl":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 29
    :cond_0
    return-object v3
.end method

.method public setCallback(Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedGetLists;->callback:Lcom/vkontakte/android/api/NewsfeedGetLists$Callback;

    .line 34
    return-object p0
.end method
