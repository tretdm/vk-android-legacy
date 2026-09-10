.class public Lcom/vkontakte/android/api/AppsGetActivity;
.super Lcom/vkontakte/android/APIRequest;
.source "AppsGetActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AppsGetActivity$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AppsGetActivity$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 21
    const-string v0, "apps.getActivity"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "platform"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AppsGetActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "fields"

    const-string v1, "photo_100,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AppsGetActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 24
    const-string v0, "start_from"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/AppsGetActivity;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 25
    const-string v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/AppsGetActivity;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/api/AppsGetActivity;->callback:Lcom/vkontakte/android/api/AppsGetActivity$Callback;

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
    iget-object v2, p0, Lcom/vkontakte/android/api/AppsGetActivity;->callback:Lcom/vkontakte/android/api/AppsGetActivity$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/AppsGetActivity$Callback;->fail(ILjava/lang/String;)V

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
    iget-object v4, p0, Lcom/vkontakte/android/api/AppsGetActivity;->callback:Lcom/vkontakte/android/api/AppsGetActivity$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Lcom/vkontakte/android/api/AppsGetActivity$Callback;->success(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 17
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v10, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v2, "apps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/data/ApiApplication;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v5, "feed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/GameFeedEntry;>;"
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "profiles"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 34
    .local v11, "profiles1":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_2

    .line 35
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 36
    .local v8, "jp":Lorg/json/JSONObject;
    new-instance v9, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v9}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 37
    .local v9, "p":Lcom/vkontakte/android/UserProfile;
    const-string v13, "id"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 38
    const-string v13, "first_name"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 39
    const-string v13, "last_name"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 40
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 41
    sget v13, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    const-string v13, "photo_100"

    :goto_1
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 42
    const-string v13, "sex"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    :goto_2
    iput-boolean v13, v9, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 43
    iget v13, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 41
    :cond_0
    const-string v13, "photo_50"

    goto :goto_1

    .line 42
    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    .line 45
    .end local v8    # "jp":Lorg/json/JSONObject;
    .end local v9    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "apps"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 46
    .local v3, "apps1":Lorg/json/JSONArray;
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 47
    new-instance v1, Lcom/vkontakte/android/data/ApiApplication;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/vkontakte/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    .line 48
    .local v1, "app":Lcom/vkontakte/android/data/ApiApplication;
    iget v13, v1, Lcom/vkontakte/android/data/ApiApplication;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 51
    .end local v1    # "app":Lcom/vkontakte/android/data/ApiApplication;
    :cond_3
    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v13

    iget-object v7, v13, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 52
    .local v7, "jfeed":Lorg/json/JSONArray;
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_5

    .line 53
    new-instance v4, Lcom/vkontakte/android/data/GameFeedEntry;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v4, v13, v10, v2}, Lcom/vkontakte/android/data/GameFeedEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 54
    .local v4, "e":Lcom/vkontakte/android/data/GameFeedEntry;
    iget-object v13, v4, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    if-eqz v13, :cond_4

    iget-object v13, v4, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    if-eqz v13, :cond_4

    .line 55
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 57
    :cond_4
    const-string v13, "vk"

    const-string v14, "NO USER"

    invoke-static {v13, v14}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 60
    .end local v2    # "apps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/data/ApiApplication;>;"
    .end local v3    # "apps1":Lorg/json/JSONArray;
    .end local v4    # "e":Lcom/vkontakte/android/data/GameFeedEntry;
    .end local v5    # "feed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/GameFeedEntry;>;"
    .end local v6    # "i":I
    .end local v7    # "jfeed":Lorg/json/JSONArray;
    .end local v10    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v11    # "profiles1":Lorg/json/JSONArray;
    :catch_0
    move-exception v12

    .line 61
    .local v12, "x":Ljava/lang/Exception;
    const-string v13, "vk"

    invoke-static {v13, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    const/4 v13, 0x0

    .end local v12    # "x":Ljava/lang/Exception;
    :goto_6
    return-object v13

    .line 59
    .restart local v2    # "apps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/data/ApiApplication;>;"
    .restart local v3    # "apps1":Lorg/json/JSONArray;
    .restart local v5    # "feed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/GameFeedEntry;>;"
    .restart local v6    # "i":I
    .restart local v7    # "jfeed":Lorg/json/JSONArray;
    .restart local v10    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v11    # "profiles1":Lorg/json/JSONArray;
    :cond_5
    const/4 v13, 0x2

    :try_start_1
    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    const-string v15, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "next_from"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public setCallback(Lcom/vkontakte/android/api/AppsGetActivity$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AppsGetActivity$Callback;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/api/AppsGetActivity;->callback:Lcom/vkontakte/android/api/AppsGetActivity$Callback;

    .line 68
    return-object p0
.end method
