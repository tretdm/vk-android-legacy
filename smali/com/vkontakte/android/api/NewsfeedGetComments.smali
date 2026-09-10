.class public Lcom/vkontakte/android/api/NewsfeedGetComments;
.super Lcom/vkontakte/android/APIRequest;
.source "NewsfeedGetComments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 19
    const-string v0, "newsfeed.getComments"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    if-eqz p1, :cond_0

    const-string v0, "start_from"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/NewsfeedGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_0
    const-string v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/NewsfeedGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "filters"

    const-string v2, "post,photo,topic,video"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "last_comments"

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/api/NewsfeedGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 76
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 78
    check-cast v1, [Ljava/lang/Object;

    .line 79
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;->success(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 18
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    :try_start_0
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "items"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 30
    .local v7, "items":Lorg/json/JSONArray;
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "profiles"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 31
    .local v10, "profiles":Lorg/json/JSONArray;
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "groups"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 32
    .local v5, "groups":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 33
    .local v1, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v11, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    if-nez v7, :cond_0

    .line 35
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    .line 69
    .end local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v5    # "groups":Lorg/json/JSONArray;
    .end local v7    # "items":Lorg/json/JSONArray;
    .end local v10    # "profiles":Lorg/json/JSONArray;
    .end local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :goto_0
    return-object v14

    .line 38
    .restart local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5    # "groups":Lorg/json/JSONArray;
    .restart local v7    # "items":Lorg/json/JSONArray;
    .restart local v10    # "profiles":Lorg/json/JSONArray;
    .restart local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v8, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v9, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    .line 42
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v6, v14, :cond_3

    .line 49
    .end local v6    # "i":I
    :cond_1
    if-eqz v5, :cond_2

    .line 50
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v6, v14, :cond_5

    .line 58
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v6, v14, :cond_8

    .line 63
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "next_from"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "from":Ljava/lang/String;
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v3    # "from":Ljava/lang/String;
    .end local v5    # "groups":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "items":Lorg/json/JSONArray;
    .end local v8    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v9    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "profiles":Lorg/json/JSONArray;
    .end local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :catch_0
    move-exception v13

    .line 67
    .local v13, "x":Ljava/lang/Exception;
    const-string v14, "vk"

    invoke-static {v14, v13}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    const/4 v14, 0x0

    goto :goto_0

    .line 43
    .end local v13    # "x":Ljava/lang/Exception;
    .restart local v1    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v5    # "groups":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v7    # "items":Lorg/json/JSONArray;
    .restart local v8    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v9    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v10    # "profiles":Lorg/json/JSONArray;
    .restart local v11    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "id"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 44
    .local v12, "uid":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "first_name"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "last_name"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v17

    if-lez v14, :cond_4

    const-string v14, "photo_100"

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 45
    :cond_4
    const-string v14, "photo_50"

    goto :goto_4

    .line 51
    .end local v12    # "uid":I
    :cond_5
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "id"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 52
    .local v4, "gid":I
    neg-int v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "name"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    neg-int v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v17

    if-lez v14, :cond_7

    const-string v14, "photo_100"

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "is_admin"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 53
    :cond_7
    const-string v14, "photo_50"

    goto :goto_5

    .line 59
    .end local v4    # "gid":I
    :cond_8
    new-instance v2, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v2, v14, v8, v9}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 60
    .local v2, "e":Lcom/vkontakte/android/NewsEntry;
    iget v14, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v14, :cond_9

    iget v14, v2, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget v14, v2, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v14, v14, 0x40

    iput v14, v2, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 61
    :cond_9
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    .line 85
    return-object p0
.end method
