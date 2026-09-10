.class public Lcom/vkontakte/android/api/NewsfeedGet;
.super Lcom/vkontakte/android/APIRequest;
.source "NewsfeedGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NewsfeedGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/NewsfeedGet$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 4
    .param p1, "endTime"    # I
    .param p2, "count"    # I

    .prologue
    .line 20
    const-string v0, "newsfeed.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    if-lez p1, :cond_0

    const-string v0, "end_time"

    sget v1, Lcom/vkontakte/android/Global;->timeDiff:I

    sub-int v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "start_time"

    sget v2, Lcom/vkontakte/android/Global;->timeDiff:I

    sub-int v2, p1, v2

    const v3, 0x15180

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_0
    const-string v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "filters"

    const-string v2, "post,photo,photo_tag"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 24
    const-string v0, "photo_sizes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 26
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedGet$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/NewsfeedGet$1;-><init>(Lcom/vkontakte/android/api/NewsfeedGet;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/NewsfeedGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 36
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
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 45
    .local v9, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-nez v13, :cond_1

    .line 46
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedGet;->callback:Lcom/vkontakte/android/api/NewsfeedGet$Callback;

    if-eqz v1, :cond_0

    .line 47
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedGet;->callback:Lcom/vkontakte/android/api/NewsfeedGet$Callback;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/NewsEntry;

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/NewsfeedGet$Callback;->success([Lcom/vkontakte/android/NewsEntry;)V

    .line 86
    .end local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v11    # "groups":Lorg/json/JSONArray;
    .end local v13    # "items":Lorg/json/JSONArray;
    .end local v14    # "profiles":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
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

    .line 53
    .local v4, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v8, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-eqz v14, :cond_2

    .line 56
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_4

    .line 64
    .end local v12    # "i":I
    :cond_2
    if-eqz v11, :cond_3

    .line 65
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_7

    .line 73
    .end local v12    # "i":I
    :cond_3
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v15, v1, [Lcom/vkontakte/android/NewsEntry;

    .line 75
    .local v15, "result":[Lcom/vkontakte/android/NewsEntry;
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_a

    .line 81
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedGet;->callback:Lcom/vkontakte/android/api/NewsfeedGet$Callback;

    if-eqz v1, :cond_0

    .line 82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedGet;->callback:Lcom/vkontakte/android/api/NewsfeedGet$Callback;

    invoke-interface {v1, v15}, Lcom/vkontakte/android/api/NewsfeedGet$Callback;->success([Lcom/vkontakte/android/NewsEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v11    # "groups":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v13    # "items":Lorg/json/JSONArray;
    .end local v14    # "profiles":Lorg/json/JSONArray;
    .end local v15    # "result":[Lcom/vkontakte/android/NewsEntry;
    :catch_0
    move-exception v17

    .line 84
    .local v17, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v17    # "x":Ljava/lang/Exception;
    .restart local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
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

    .line 58
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

    .line 59
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

    .line 60
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "sex"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_6

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 59
    :cond_5
    const-string v1, "photo"

    goto :goto_4

    .line 60
    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 66
    .end local v16    # "uid":I
    :cond_7
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "gid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 67
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

    .line 68
    neg-int v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v6

    if-lez v1, :cond_9

    const-string v1, "photo_medium"

    :goto_6
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "is_admin"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 68
    :cond_9
    const-string v1, "photo"

    goto :goto_6

    .line 76
    .end local v10    # "gid":I
    .restart local v15    # "result":[Lcom/vkontakte/android/NewsEntry;
    :cond_a
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "source_id"

    const-string v6, "source_id"

    const-string v7, "post_id"

    invoke-direct/range {v1 .. v8}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    aput-object v1, v15, v12

    .line 78
    aget-object v1, v15, v12

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v1, :cond_b

    aget-object v1, v15, v12

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    aget-object v1, v15, v12

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/NewsfeedGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NewsfeedGet$Callback;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedGet;->callback:Lcom/vkontakte/android/api/NewsfeedGet$Callback;

    .line 90
    return-object p0
.end method
