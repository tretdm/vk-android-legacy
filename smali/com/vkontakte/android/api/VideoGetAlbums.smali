.class public Lcom/vkontakte/android/api/VideoGetAlbums;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoGetAlbums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoGetAlbums$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoGetAlbums$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "oid"    # I

    .prologue
    .line 15
    const-string v0, "video.getAlbums"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/VideoGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoGetAlbums;->callback:Lcom/vkontakte/android/api/VideoGetAlbums$Callback;

    if-nez v1, :cond_0

    .line 49
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 43
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 45
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoGetAlbums;->callback:Lcom/vkontakte/android/api/VideoGetAlbums$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/VideoGetAlbums$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 47
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/VideoGetAlbums;->callback:Lcom/vkontakte/android/api/VideoGetAlbums$Callback;

    check-cast p1, Ljava/util/Vector;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/VideoGetAlbums$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 23
    .local v1, "albums":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoAlbum;>;"
    const-string v5, "response"

    invoke-static {p1, v5}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v5

    iget-object v0, v5, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 25
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 26
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 27
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 28
    .local v4, "va":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/api/VideoAlbum;

    invoke-direct {v3}, Lcom/vkontakte/android/api/VideoAlbum;-><init>()V

    .line 29
    .local v3, "v":Lcom/vkontakte/android/api/VideoAlbum;
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/api/VideoAlbum;->id:I

    .line 30
    const-string v5, "title"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/api/VideoAlbum;->title:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "albums":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoAlbum;>;"
    .end local v2    # "i":I
    .end local v3    # "v":Lcom/vkontakte/android/api/VideoAlbum;
    .end local v4    # "va":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 38
    const/4 v1, 0x0

    :cond_0
    return-object v1
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoGetAlbums$Callback;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoGetAlbums;->callback:Lcom/vkontakte/android/api/VideoGetAlbums$Callback;

    .line 53
    return-object p0
.end method
