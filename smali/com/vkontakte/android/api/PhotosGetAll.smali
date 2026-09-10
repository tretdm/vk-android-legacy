.class public Lcom/vkontakte/android/api/PhotosGetAll;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosGetAll.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosGetAll$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 16
    const-string v0, "photos.getAll"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PhotosGetAll;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/PhotosGetAll;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    if-nez v2, :cond_0

    .line 45
    :goto_0
    return-void

    .line 38
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 40
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGetAll$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 42
    check-cast v1, [Ljava/lang/Object;

    .line 43
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/PhotosGetAll$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    const-string v5, "response"

    invoke-static {p1, v5}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v5

    iget-object v0, v5, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 24
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 25
    .local v4, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 30
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

    aput-object v4, v5, v6

    .line 33
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :goto_1
    return-object v5

    .line 26
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 27
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3, v2}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 28
    .local v3, "photo":Lcom/vkontakte/android/Photo;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "photo":Lcom/vkontakte/android/Photo;
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :catch_0
    move-exception v5

    .line 33
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGetAll$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGetAll;->callback:Lcom/vkontakte/android/api/PhotosGetAll$Callback;

    .line 49
    return-object p0
.end method
