.class public Lcom/vkontakte/android/api/AudioGetAlbums;
.super Lcom/vkontakte/android/APIRequest;
.source "AudioGetAlbums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AudioGetAlbums$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AudioGetAlbums$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "oid"    # I

    .prologue
    .line 15
    const-string v0, "audio.getAlbums"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AudioGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 17
    const-string v0, "count"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AudioGetAlbums;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetAlbums;->callback:Lcom/vkontakte/android/api/AudioGetAlbums$Callback;

    if-nez v1, :cond_0

    .line 48
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 42
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 44
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetAlbums;->callback:Lcom/vkontakte/android/api/AudioGetAlbums$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/AudioGetAlbums$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 46
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/AudioGetAlbums;->callback:Lcom/vkontakte/android/api/AudioGetAlbums$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/AudioGetAlbums$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioPlaylist;>;"
    const-string v4, "response"

    invoke-static {p1, v4}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v0, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 24
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 31
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioPlaylist;>;"
    :goto_1
    return-object v3

    .line 25
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioPlaylist;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 26
    .local v2, "j":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/AudioPlaylist;

    const-string v5, "album_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "title"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/vkontakte/android/AudioPlaylist;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "j":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/AudioPlaylist;>;"
    :catch_0
    move-exception v4

    .line 31
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/AudioGetAlbums$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AudioGetAlbums$Callback;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vkontakte/android/api/AudioGetAlbums;->callback:Lcom/vkontakte/android/api/AudioGetAlbums$Callback;

    .line 36
    return-object p0
.end method
