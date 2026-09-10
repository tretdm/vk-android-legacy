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

    const-string v0, "from"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/NewsfeedGetComments;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_0
    const-string v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/NewsfeedGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "filters"

    const-string v2, "post,photo,topic"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "last_comments"

    invoke-virtual {v0, v1, v3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v3}, Lcom/vkontakte/android/api/NewsfeedGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 25
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGetComments$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/NewsfeedGetComments$1;-><init>(Lcom/vkontakte/android/api/NewsfeedGetComments;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/NewsfeedGetComments;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 35
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 18
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 40
    :try_start_0
    const-string v1, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "items"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 41
    .local v13, "items":Lorg/json/JSONArray;
    const-string v1, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "profiles"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 42
    .local v14, "profiles":Lorg/json/JSONArray;
    const-string v1, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "groups"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 43
    .local v11, "groups":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 45
    .local v8, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-nez v13, :cond_1

    .line 46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    if-eqz v1, :cond_0

    .line 47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/NewsEntry;

    const-string v5, "0"

    invoke-interface {v1, v2, v5}, Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;->success([Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V

    .line 85
    .end local v8    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v11    # "groups":Lorg/json/JSONArray;
    .end local v13    # "items":Lorg/json/JSONArray;
    .end local v14    # "profiles":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v8    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v11    # "groups":Lorg/json/JSONArray;
    .restart local v13    # "items":Lorg/json/JSONArray;
    .restart local v14    # "profiles":Lorg/json/JSONArray;
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v4, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v14, :cond_2

    .line 55
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_4

    .line 62
    .end local v12    # "i":I
    :cond_2
    if-eqz v11, :cond_3

    .line 63
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_6

    .line 71
    .end local v12    # "i":I
    :cond_3
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v15, v1, [Lcom/vkontakte/android/NewsEntry;

    .line 73
    .local v15, "result":[Lcom/vkontakte/android/NewsEntry;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_9

    .line 78
    const-string v1, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "new_from"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "from":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    if-eqz v1, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    invoke-interface {v1, v15, v9}, Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;->success([Lcom/vkontakte/android/NewsEntry;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v9    # "from":Ljava/lang/String;
    .end local v11    # "groups":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v13    # "items":Lorg/json/JSONArray;
    .end local v14    # "profiles":Lorg/json/JSONArray;
    .end local v15    # "result":[Lcom/vkontakte/android/NewsEntry;
    :catch_0
    move-exception v17

    .line 83
    .local v17, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v17    # "x":Ljava/lang/Exception;
    .restart local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v11    # "groups":Lorg/json/JSONArray;
    .restart local v12    # "i":I
    .restart local v13    # "items":Lorg/json/JSONArray;
    .restart local v14    # "profiles":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 57
    .local v16, "uid":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "first_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "last_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    const-string v1, "photo_medium_rec"

    :goto_4
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 58
    :cond_5
    const-string v1, "photo"

    goto :goto_4

    .line 64
    .end local v16    # "uid":I
    :cond_6
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 65
    .local v10, "gid":I
    neg-int v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    neg-int v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_8

    const-string v1, "photo_medium"

    :goto_5
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "is_admin"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 66
    :cond_8
    const-string v1, "photo"

    goto :goto_5

    .line 74
    .end local v10    # "gid":I
    .restart local v15    # "result":[Lcom/vkontakte/android/NewsEntry;
    :cond_9
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "source_id"

    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "from_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "from_id"

    :goto_6
    const-string v7, "post_id"

    invoke-direct/range {v1 .. v7}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v15, v12

    .line 76
    aget-object v1, v15, v12

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v1, :cond_a

    aget-object v1, v15, v12

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    aget-object v1, v15, v12

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    .line 73
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 74
    :cond_b
    const-string v6, "source_id"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public setCallback(Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedGetComments;->callback:Lcom/vkontakte/android/api/NewsfeedGetComments$Callback;

    .line 89
    return-object p0
.end method
