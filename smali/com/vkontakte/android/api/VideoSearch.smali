.class public Lcom/vkontakte/android/api/VideoSearch;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoSearch$Callback;
    }
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "var v=API.video.search({q:\"%s\",offset:%d,count:%d%s%s,adult:%d});return {v:v,u:API.getProfiles({user_ids:v@.owner_id,fields:\"%s\"})};"


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoSearch$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 4
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "hd"    # Z
    .param p5, "length"    # I

    .prologue
    const/4 v3, 0x1

    .line 23
    const-string v1, "execute.searchVideosWithProfiles"

    invoke-direct {p0, v1}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "safeSearch"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 26
    .local v0, "safe":Z
    const-string v1, "q"

    invoke-virtual {p0, v1, p1}, Lcom/vkontakte/android/api/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 27
    const-string v1, "offset"

    invoke-virtual {p0, v1, p2}, Lcom/vkontakte/android/api/VideoSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v1, v2, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 28
    if-eqz p4, :cond_0

    .line 29
    const-string v1, "hd"

    invoke-virtual {p0, v1, v3}, Lcom/vkontakte/android/api/VideoSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 30
    :cond_0
    if-lez p5, :cond_1

    .line 31
    const-string v2, "filters"

    if-ne p5, v3, :cond_2

    const-string v1, "short"

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/vkontakte/android/api/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 32
    :cond_1
    const-string v2, "adult"

    if-eqz v0, :cond_3

    const-string v1, "0"

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/vkontakte/android/api/VideoSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 33
    return-void

    .line 31
    :cond_2
    const-string v1, "long"

    goto :goto_0

    .line 32
    :cond_3
    const-string v1, "1"

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    if-nez v2, :cond_0

    .line 74
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 67
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 69
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/VideoSearch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 72
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/vkontakte/android/api/VideoSearch$Callback;->success(Ljava/util/Vector;I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 16
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    :try_start_0
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 38
    .local v10, "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/4 v6, 0x0

    .line 39
    .local v6, "total":I
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v12

    iget-object v1, v12, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 40
    .local v1, "arr":Lorg/json/JSONArray;
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "profiles"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 41
    .local v7, "u":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v5, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_1

    .line 44
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 45
    .local v8, "uid":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "first_name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "last_name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    sget v12, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v15

    if-lez v12, :cond_0

    const-string v12, "photo_100"

    :goto_1
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    const-string v12, "photo_50"

    goto :goto_1

    .line 49
    .end local v2    # "i":I
    .end local v8    # "uid":I
    :cond_1
    if-eqz v1, :cond_2

    .line 50
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v2, v12, :cond_2

    .line 51
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 52
    .local v3, "jv":Lorg/json/JSONObject;
    new-instance v9, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v9, v3}, Lcom/vkontakte/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    .line 53
    .local v9, "v":Lcom/vkontakte/android/api/VideoFile;
    iget v12, v9, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v9, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 54
    iget v12, v9, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v9, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 55
    invoke-virtual {v10, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 58
    .end local v2    # "i":I
    .end local v3    # "jv":Lorg/json/JSONObject;
    .end local v9    # "v":Lcom/vkontakte/android/api/VideoFile;
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v14

    iget v14, v14, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v4    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "total":I
    .end local v7    # "u":Lorg/json/JSONArray;
    .end local v10    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :goto_3
    return-object v12

    .line 59
    :catch_0
    move-exception v11

    .line 60
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    invoke-static {v12, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v12, 0x0

    goto :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoSearch$Callback;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoSearch;->callback:Lcom/vkontakte/android/api/VideoSearch$Callback;

    .line 78
    return-object p0
.end method
