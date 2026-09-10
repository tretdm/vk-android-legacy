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
    .line 18
    const-string v0, "execute.getVideosWithProfiles"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/VideoGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "album_id"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    if-nez v2, :cond_0

    .line 81
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 74
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 76
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/VideoGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 79
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
    .locals 16
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    :try_start_0
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 26
    .local v11, "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    const/4 v8, 0x0

    .line 27
    .local v8, "total":I
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v13

    iget-object v1, v13, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 28
    .local v1, "arr":Lorg/json/JSONArray;
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "profiles"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 29
    .local v9, "users":Lorg/json/JSONArray;
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "groups"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 30
    .local v2, "groups":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v7, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    if-eqz v9, :cond_1

    .line 32
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_1

    .line 33
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 34
    .local v4, "ju":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v6}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 35
    .local v6, "p":Lcom/vkontakte/android/UserProfile;
    const-string v13, "id"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 36
    const-string v13, "first_name"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 37
    const-string v13, "last_name"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 38
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v6, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 39
    sget v13, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    const-string v13, "photo_100"

    :goto_1
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 40
    iget v13, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const-string v13, "photo_50"

    goto :goto_1

    .line 43
    .end local v3    # "i":I
    .end local v4    # "ju":Lorg/json/JSONObject;
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    if-eqz v2, :cond_3

    .line 44
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_3

    .line 45
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 46
    .restart local v4    # "ju":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v6}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 47
    .restart local v6    # "p":Lcom/vkontakte/android/UserProfile;
    const-string v13, "id"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    neg-int v13, v13

    iput v13, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 48
    const-string v13, "name"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 49
    sget v13, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    const-string v13, "photo_100"

    :goto_3
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 50
    iget v13, v6, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 49
    :cond_2
    const-string v13, "photo_50"

    goto :goto_3

    .line 53
    .end local v3    # "i":I
    .end local v4    # "ju":Lorg/json/JSONObject;
    .end local v6    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    if-eqz v1, :cond_5

    .line 54
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v13

    iget v8, v13, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    .line 55
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_5

    .line 56
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 57
    .local v5, "jv":Lorg/json/JSONObject;
    new-instance v10, Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {v10, v5}, Lcom/vkontakte/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    .line 58
    .local v10, "v":Lcom/vkontakte/android/api/VideoFile;
    iget v13, v10, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 59
    iget v13, v10, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/UserProfile;

    iget-object v13, v13, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    iput-object v13, v10, Lcom/vkontakte/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 60
    iget v13, v10, Lcom/vkontakte/android/api/VideoFile;->oid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/UserProfile;

    iget-object v13, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    iput-object v13, v10, Lcom/vkontakte/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 62
    :cond_4
    invoke-virtual {v11, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 65
    .end local v3    # "i":I
    .end local v5    # "jv":Lorg/json/JSONObject;
    .end local v10    # "v":Lcom/vkontakte/android/api/VideoFile;
    :cond_5
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v2    # "groups":Lorg/json/JSONArray;
    .end local v7    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v8    # "total":I
    .end local v9    # "users":Lorg/json/JSONArray;
    .end local v11    # "vf":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/VideoFile;>;"
    :goto_5
    return-object v13

    .line 66
    :catch_0
    move-exception v12

    .line 67
    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const/4 v13, 0x0

    goto :goto_5
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoGet$Callback;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoGet;->callback:Lcom/vkontakte/android/api/VideoGet$Callback;

    .line 85
    return-object p0
.end method
