.class public Lcom/vkontakte/android/api/NewsfeedSearch;
.super Lcom/vkontakte/android/APIRequest;
.source "NewsfeedSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NewsfeedSearch$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 19
    const-string v0, "newsfeed.search"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/NewsfeedSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    const-string v0, "count"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "start_from"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    const-string v0, "extended"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_sizes"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    if-nez v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 74
    check-cast v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 75
    .local v1, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    iget v3, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/NewsfeedSearch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v1    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v0, p1

    .line 77
    check-cast v0, [Ljava/lang/Object;

    .line 78
    .local v0, "a":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Lcom/vkontakte/android/api/NewsfeedSearch$Callback;->success(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 20
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    :try_start_0
    const-string v15, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "items"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 28
    .local v8, "items":Lorg/json/JSONArray;
    const-string v15, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "profiles"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 29
    .local v11, "profiles":Lorg/json/JSONArray;
    const-string v15, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 30
    .local v6, "groups":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 31
    .local v2, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v12, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    if-nez v8, :cond_0

    .line 33
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    .line 68
    .end local v2    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v6    # "groups":Lorg/json/JSONArray;
    .end local v8    # "items":Lorg/json/JSONArray;
    .end local v11    # "profiles":Lorg/json/JSONArray;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :goto_0
    return-object v15

    .line 36
    .restart local v2    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v6    # "groups":Lorg/json/JSONArray;
    .restart local v8    # "items":Lorg/json/JSONArray;
    .restart local v11    # "profiles":Lorg/json/JSONArray;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v9, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v10, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v4, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-eqz v11, :cond_1

    .line 41
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v7, v15, :cond_3

    .line 49
    .end local v7    # "i":I
    :cond_1
    if-eqz v6, :cond_2

    .line 50
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v7, v15, :cond_6

    .line 58
    .end local v7    # "i":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v7, v15, :cond_9

    .line 64
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/16 v16, 0x1

    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "next_from"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v2    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v4    # "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v6    # "groups":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v8    # "items":Lorg/json/JSONArray;
    .end local v9    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v10    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "profiles":Lorg/json/JSONArray;
    .end local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :catch_0
    move-exception v14

    .line 66
    .local v14, "x":Ljava/lang/Exception;
    const-string v15, "vk"

    invoke-static {v15, v14}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const/4 v15, 0x0

    goto :goto_0

    .line 42
    .end local v14    # "x":Ljava/lang/Exception;
    .restart local v2    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v4    # "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v6    # "groups":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v8    # "items":Lorg/json/JSONArray;
    .restart local v9    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v10    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v11    # "profiles":Lorg/json/JSONArray;
    .restart local v12    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_3
    :try_start_1
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "id"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 43
    .local v13, "uid":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "first_name"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "last_name"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    sget v15, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v18

    if-lez v15, :cond_4

    const-string v15, "photo_100"

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v17, "sex"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    const/4 v15, 0x1

    :goto_5
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 44
    :cond_4
    const-string v15, "photo_50"

    goto :goto_4

    .line 45
    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    .line 51
    .end local v13    # "uid":I
    :cond_6
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "id"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 52
    .local v5, "gid":I
    neg-int v15, v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    const-string v17, "name"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    neg-int v15, v5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    sget v15, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v18

    if-lez v15, :cond_8

    const-string v15, "photo_100"

    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "is_admin"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 53
    :cond_8
    const-string v15, "photo_50"

    goto :goto_6

    .line 59
    .end local v5    # "gid":I
    :cond_9
    new-instance v3, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-direct {v3, v15, v9, v10, v4}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 60
    .local v3, "e":Lcom/vkontakte/android/NewsEntry;
    iget v15, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v15, :cond_a

    iget v15, v3, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    iget v15, v3, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v15, v15, 0x40

    iput v15, v3, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 61
    :cond_a
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/NewsfeedSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    .line 84
    return-object p0
.end method
