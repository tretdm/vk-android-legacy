.class public Lcom/vkontakte/android/api/GroupsSearch;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsSearch$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 15
    const-string v0, "groups.search"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    const-string v0, "fields"

    const-string v1, "start_date"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GroupsSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 39
    iget-object v2, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    if-nez v2, :cond_0

    .line 47
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 40
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 42
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/GroupsSearch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 45
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/vkontakte/android/api/GroupsSearch$Callback;->success(Ljava/util/List;I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 23
    .local v4, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    const-string v5, "response"

    invoke-static {p1, v5}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v5

    iget-object v0, v5, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 24
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 25
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 35
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :goto_0
    return-object v5

    .line 27
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 28
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    .local v2, "gr":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Group;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    .line 30
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 32
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    .end local v2    # "gr":Lorg/json/JSONObject;
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    const-string v7, "response"

    invoke-static {p1, v7}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 33
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :catch_0
    move-exception v5

    .line 35
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsSearch$Callback;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    .line 51
    return-object p0
.end method
