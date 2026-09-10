.class public Lcom/vkontakte/android/api/DatabaseGetCities;
.super Lcom/vkontakte/android/APIRequest;
.source "DatabaseGetCities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/DatabaseGetCities$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/DatabaseGetCities$Callback;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "country"    # I
    .param p2, "q"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "database.getCities"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v0, "country_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/DatabaseGetCities;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 19
    const-string v0, "q"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/DatabaseGetCities;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "count"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/DatabaseGetCities;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/vkontakte/android/api/DatabaseGetCities;->callback:Lcom/vkontakte/android/api/DatabaseGetCities$Callback;

    if-nez v1, :cond_0

    .line 51
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 45
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 46
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 47
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/DatabaseGetCities;->callback:Lcom/vkontakte/android/api/DatabaseGetCities$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/DatabaseGetCities$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 49
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/DatabaseGetCities;->callback:Lcom/vkontakte/android/api/DatabaseGetCities$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/DatabaseGetCities$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/database/City;>;"
    const-string v3, "response"

    invoke-static {p1, v3}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v3

    iget-object v1, v3, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 28
    .local v1, "ja":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 34
    .end local v0    # "i":I
    .end local v1    # "ja":Lorg/json/JSONArray;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/database/City;>;"
    :goto_1
    return-object v2

    .line 29
    .restart local v0    # "i":I
    .restart local v1    # "ja":Lorg/json/JSONArray;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/database/City;>;"
    :cond_0
    new-instance v3, Lcom/vkontakte/android/data/database/City;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkontakte/android/data/database/City;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "i":I
    .end local v1    # "ja":Lorg/json/JSONArray;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/database/City;>;"
    :catch_0
    move-exception v3

    .line 34
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/DatabaseGetCities$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/DatabaseGetCities$Callback;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkontakte/android/api/DatabaseGetCities;->callback:Lcom/vkontakte/android/api/DatabaseGetCities$Callback;

    .line 39
    return-object p0
.end method
