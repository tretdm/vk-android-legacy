.class public Lcom/vkontakte/android/api/PhotosGet;
.super Lcom/vkontakte/android/APIRequest;
.source "PhotosGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PhotosGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

.field uid:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "aid"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    .line 17
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/api/PhotosGet;-><init>(IIIIZ)V

    .line 18
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "aid"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "rev"    # Z

    .prologue
    const/4 v2, 0x1

    .line 21
    if-eqz p2, :cond_1

    const-string v0, "photos.get"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    iput p1, p0, Lcom/vkontakte/android/api/PhotosGet;->uid:I

    .line 23
    const-string v0, "album_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "owner_id"

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 25
    const-string v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 26
    if-eqz p5, :cond_0

    const-string v0, "rev"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/PhotosGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 27
    :cond_0
    return-void

    .line 21
    :cond_1
    const-string v0, "photos.getAll"

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGet;->callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

    if-nez v2, :cond_0

    .line 56
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 49
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 51
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/PhotosGet;->callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/PhotosGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 54
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/PhotosGet;->callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/PhotosGet$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    :try_start_0
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 32
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 33
    .local v4, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    if-eqz v0, :cond_0

    .line 34
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 36
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/Photo;

    invoke-direct {v3, v2}, Lcom/vkontakte/android/Photo;-><init>(Lorg/json/JSONObject;)V

    .line 37
    .local v3, "photo":Lcom/vkontakte/android/Photo;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "photo":Lcom/vkontakte/android/Photo;
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v4    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :goto_1
    return-object v6

    .line 41
    :catch_0
    move-exception v5

    .line 42
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/PhotosGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PhotosGet$Callback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/api/PhotosGet;->callback:Lcom/vkontakte/android/api/PhotosGet$Callback;

    .line 60
    return-object p0
.end method
