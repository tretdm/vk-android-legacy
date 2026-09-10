.class public Lcom/vkontakte/android/api/PlacesGetInfo;
.super Lcom/vkontakte/android/APIRequest;
.source "PlacesGetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PlacesGetInfo$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PlacesGetInfo$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "placeID"    # I

    .prologue
    .line 16
    const-string v0, "execute.getPlaceInfo"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "place_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/PlacesGetInfo;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/vkontakte/android/api/PlacesGetInfo;->callback:Lcom/vkontakte/android/api/PlacesGetInfo$Callback;

    if-nez v2, :cond_0

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 47
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/PlacesGetInfo;->callback:Lcom/vkontakte/android/api/PlacesGetInfo$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/PlacesGetInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 49
    check-cast v1, [Ljava/lang/Object;

    .line 50
    .local v1, "r":[Ljava/lang/Object;
    iget-object v6, p0, Lcom/vkontakte/android/api/PlacesGetInfo;->callback:Lcom/vkontakte/android/api/PlacesGetInfo$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lcom/vkontakte/android/GeoPlace;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v2, v3, v4, v5}, Lcom/vkontakte/android/api/PlacesGetInfo$Callback;->success(Lcom/vkontakte/android/GeoPlace;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 11
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 22
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 23
    .local v5, "r":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/GeoPlace;

    const-string v7, "place"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/vkontakte/android/GeoPlace;-><init>(Lorg/json/JSONObject;)V

    .line 24
    .local v4, "place":Lcom/vkontakte/android/GeoPlace;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v3, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "user_photos"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 26
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 29
    const-string v7, "group"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 30
    .local v1, "g":Lorg/json/JSONObject;
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v7, v9

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const/4 v10, 0x2

    if-eqz v1, :cond_1

    const-string v9, "status"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    aput-object v9, v7, v10

    const/4 v10, 0x3

    if-eqz v1, :cond_2

    const-string v9, "photo_100"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_2
    aput-object v9, v7, v10

    .line 34
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "g":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "place":Lcom/vkontakte/android/GeoPlace;
    .end local v5    # "r":Lorg/json/JSONObject;
    :goto_3
    return-object v7

    .line 27
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v3    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "place":Lcom/vkontakte/android/GeoPlace;
    .restart local v5    # "r":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1    # "g":Lorg/json/JSONObject;
    :cond_1
    move-object v9, v8

    .line 30
    goto :goto_1

    :cond_2
    move-object v9, v8

    goto :goto_2

    .line 31
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "g":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "place":Lcom/vkontakte/android/GeoPlace;
    .end local v5    # "r":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 32
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v8

    .line 34
    goto :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/PlacesGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PlacesGetInfo$Callback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkontakte/android/api/PlacesGetInfo;->callback:Lcom/vkontakte/android/api/PlacesGetInfo$Callback;

    .line 39
    return-object p0
.end method
