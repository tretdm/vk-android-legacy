.class public Lcom/vkontakte/android/api/DocsGet;
.super Lcom/vkontakte/android/APIRequest;
.source "DocsGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/DocsGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/DocsGet$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 14
    const-string v0, "execute.getDocs"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/DocsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/vkontakte/android/api/DocsGet;->callback:Lcom/vkontakte/android/api/DocsGet$Callback;

    if-nez v2, :cond_0

    .line 46
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 39
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 40
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 41
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/DocsGet;->callback:Lcom/vkontakte/android/api/DocsGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/DocsGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 44
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/DocsGet;->callback:Lcom/vkontakte/android/api/DocsGet$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v4, v5, v2, v3}, Lcom/vkontakte/android/api/DocsGet$Callback;->success(ILjava/util/Vector;Z)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 20
    :try_start_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 21
    .local v2, "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    const/4 v5, 0x0

    .line 22
    .local v5, "total":I
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 23
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 24
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget v5, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    .line 25
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 26
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 27
    .local v4, "j":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Document;

    invoke-direct {v1, v4}, Lcom/vkontakte/android/api/Document;-><init>(Lorg/json/JSONObject;)V

    .line 28
    .local v1, "d":Lcom/vkontakte/android/api/Document;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 25
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 31
    .end local v1    # "d":Lcom/vkontakte/android/api/Document;
    .end local v3    # "i":I
    .end local v4    # "j":Lorg/json/JSONObject;
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    aput-object v2, v6, v9

    const/4 v9, 0x2

    const-string v10, "response"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "can_add"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v7, :cond_1

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    .end local v5    # "total":I
    :goto_2
    return-object v6

    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v2    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    .restart local v5    # "total":I
    :cond_1
    move v7, v8

    .line 31
    goto :goto_1

    .line 32
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "docs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Document;>;"
    .end local v5    # "total":I
    :catch_0
    move-exception v6

    .line 34
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/DocsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/DocsGet$Callback;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vkontakte/android/api/DocsGet;->callback:Lcom/vkontakte/android/api/DocsGet$Callback;

    .line 50
    return-object p0
.end method
