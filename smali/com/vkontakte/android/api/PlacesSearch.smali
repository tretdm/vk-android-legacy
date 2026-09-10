.class public Lcom/vkontakte/android/api/PlacesSearch;
.super Lcom/vkontakte/android/APIRequest;
.source "PlacesSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/PlacesSearch$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/PlacesSearch$Callback;


# direct methods
.method public constructor <init>(DDILjava/lang/String;)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "radius"    # I
    .param p6, "q"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "places.search"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "latitude"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PlacesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    const-string v0, "longitude"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/PlacesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "radius"

    invoke-virtual {p0, v0, p5}, Lcom/vkontakte/android/api/PlacesSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 21
    const-string v0, "q"

    invoke-virtual {p0, v0, p6}, Lcom/vkontakte/android/api/PlacesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/vkontakte/android/api/PlacesSearch;->callback:Lcom/vkontakte/android/api/PlacesSearch$Callback;

    if-nez v1, :cond_0

    .line 52
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 46
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 48
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/PlacesSearch;->callback:Lcom/vkontakte/android/api/PlacesSearch$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/PlacesSearch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/PlacesSearch;->callback:Lcom/vkontakte/android/api/PlacesSearch$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/PlacesSearch$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    :try_start_0
    const-string v4, "response"

    invoke-static {p1, v4}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    iget-object v0, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 27
    .local v0, "a":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "places":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/GeoPlace;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 29
    new-instance v4, Lcom/vkontakte/android/GeoPlace;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkontakte/android/GeoPlace;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "places":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/GeoPlace;>;"
    :catch_0
    move-exception v3

    .line 33
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v2, 0x0

    .end local v3    # "x":Ljava/lang/Exception;
    :cond_0
    return-object v2
.end method

.method public setCallback(Lcom/vkontakte/android/api/PlacesSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/PlacesSearch$Callback;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vkontakte/android/api/PlacesSearch;->callback:Lcom/vkontakte/android/api/PlacesSearch$Callback;

    .line 40
    return-object p0
.end method
