.class public Lcom/vkontakte/android/api/WallGetById;
.super Lcom/vkontakte/android/APIRequest;
.source "WallGetById.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallGetById$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/WallGetById$Callback;

.field public gphoto:Ljava/lang/String;

.field public gtitle:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "idsArray"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 24
    const-string v0, "wall.getById"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "posts"

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    const-string v0, "extended"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/api/WallGetById;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "fields"

    const-string v2, "photo_rec,photo_medium_rec"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 27
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/api/WallGetById;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 28
    return-void
.end method

.method private doParse(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 4
    .param p3, "items"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v1, v2, [Lcom/vkontakte/android/NewsEntry;

    .line 71
    .local v1, "result":[Lcom/vkontakte/android/NewsEntry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 75
    return-object v1

    .line 72
    :cond_0
    new-instance v2, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {p3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    aput-object v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    if-nez v1, :cond_0

    .line 86
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 80
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 82
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/WallGetById$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    check-cast p1, [Lcom/vkontakte/android/NewsEntry;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/WallGetById$Callback;->success([Lcom/vkontakte/android/NewsEntry;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 32
    :try_start_0
    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "items"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 33
    .local v2, "items":Lorg/json/JSONArray;
    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "profiles"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 34
    .local v5, "profiles":Lorg/json/JSONArray;
    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "groups"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 36
    .local v0, "groups":Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 37
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/vkontakte/android/NewsEntry;

    .line 65
    .end local v0    # "groups":Lorg/json/JSONArray;
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v5    # "profiles":Lorg/json/JSONArray;
    :goto_0
    return-object v8

    .line 40
    .restart local v0    # "groups":Lorg/json/JSONArray;
    .restart local v2    # "items":Lorg/json/JSONArray;
    .restart local v5    # "profiles":Lorg/json/JSONArray;
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v4, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 52
    .end local v1    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 53
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_5

    .line 60
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0, v3, v4, v2}, Lcom/vkontakte/android/api/WallGetById;->doParse(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    .line 45
    .restart local v1    # "i":I
    :cond_3
    const-string v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 47
    .local v6, "uid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "first_name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "last_name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_4

    const-string v8, "photo_100"

    :goto_3
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_4
    const-string v8, "photo_50"

    goto :goto_3

    .line 54
    .end local v6    # "uid":I
    :cond_5
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    neg-int v6, v8

    .line 55
    .restart local v6    # "uid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v8, v8, v12

    if-lez v8, :cond_6

    const-string v8, "photo_100"

    :goto_4
    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 56
    :cond_6
    const-string v8, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 62
    .end local v0    # "groups":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "profiles":Lorg/json/JSONArray;
    .end local v6    # "uid":I
    :catch_0
    move-exception v7

    .line 63
    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    invoke-static {v8, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallGetById$Callback;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    .line 90
    return-object p0
.end method
