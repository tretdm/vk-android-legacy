.class public Lcom/vkontakte/android/api/VideoGet;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoGet$Callback;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "album"    # I

    .prologue
    .line 17
    const-string v0, "video.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    if-lez p1, :cond_0

    const-string v0, "user_id"

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    return-void

    .line 18
    :cond_0
    const-string v0, "group_id"

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    if-nez v2, :cond_0

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 45
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/VideoGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 47
    check-cast v1, [Ljava/lang/Object;

    .line 48
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/VideoGet$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 25
    .local v4, "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/4 v3, 0x0

    .line 26
    .local v3, "total":I
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget-object v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 27
    .local v0, "arr":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 28
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    iget v3, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    .line 29
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 34
    .end local v1    # "i":I
    :cond_0
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 38
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v3    # "total":I
    .end local v4    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :goto_1
    return-object v6

    .line 30
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "total":I
    .restart local v4    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 31
    .local v2, "jv":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v6, v2}, Lcom/vkontakte/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jv":Lorg/json/JSONObject;
    .end local v3    # "total":I
    .end local v4    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :catch_0
    move-exception v5

    .line 36
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoGet$Callback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    .line 54
    return-object p0
.end method
