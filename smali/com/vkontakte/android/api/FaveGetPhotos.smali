.class public Lcom/vkontakte/android/api/FaveGetPhotos;
.super Lcom/vkontakte/android/APIRequest;
.source "FaveGetPhotos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FaveGetPhotos$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FaveGetPhotos$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 21
    const-string v0, "fave.getPhotos"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FaveGetPhotos;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "photo_sizes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/FaveGetPhotos;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v2, p0, Lcom/vkontakte/android/api/FaveGetPhotos;->callback:Lcom/vkontakte/android/api/FaveGetPhotos$Callback;

    if-nez v2, :cond_0

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 48
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/FaveGetPhotos;->callback:Lcom/vkontakte/android/api/FaveGetPhotos$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/FaveGetPhotos$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 50
    check-cast v1, [Ljava/lang/Object;

    .line 51
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/FaveGetPhotos;->callback:Lcom/vkontakte/android/api/FaveGetPhotos$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/FaveGetPhotos$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 28
    :try_start_0
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 29
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 30
    .local v4, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    if-eqz v0, :cond_0

    .line 31
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 37
    .end local v1    # "i":I
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "response"

    invoke-static {p1, v8}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v8

    iget v8, v8, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 41
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :goto_1
    return-object v6

    .line 32
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 33
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3, v2}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 34
    .local v3, "photo":Lcom/vkontakte/android/Photo;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "photo":Lcom/vkontakte/android/Photo;
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :catch_0
    move-exception v5

    .line 39
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/FaveGetPhotos$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FaveGetPhotos$Callback;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkontakte/android/api/FaveGetPhotos;->callback:Lcom/vkontakte/android/api/FaveGetPhotos$Callback;

    .line 57
    return-object p0
.end method
