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
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 21
    const-string v0, "newsfeed.search"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/NewsfeedSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    const-string v0, "extended"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/NewsfeedSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_sizes"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 26
    new-instance v0, Lcom/vkontakte/android/api/NewsfeedSearch$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/NewsfeedSearch$1;-><init>(Lcom/vkontakte/android/api/NewsfeedSearch;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/NewsfeedSearch;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

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

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 41
    .local v13, "items":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 43
    .local v9, "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-nez v13, :cond_1

    .line 44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    if-eqz v1, :cond_0

    .line 45
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/vkontakte/android/NewsEntry;

    invoke-interface {v1, v2}, Lcom/vkontakte/android/api/NewsfeedSearch$Callback;->success([Lcom/vkontakte/android/NewsEntry;)V

    .line 83
    .end local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v13    # "items":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 49
    .restart local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v13    # "items":Lorg/json/JSONArray;
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v3, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v4, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v8, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v12, v1, :cond_2

    .line 70
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-array v15, v1, [Lcom/vkontakte/android/NewsEntry;

    .line 72
    .local v15, "result":[Lcom/vkontakte/android/NewsEntry;
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v12, v1, :cond_8

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    if-eqz v1, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    invoke-interface {v1, v15}, Lcom/vkontakte/android/api/NewsfeedSearch$Callback;->success([Lcom/vkontakte/android/NewsEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .end local v13    # "items":Lorg/json/JSONArray;
    .end local v15    # "result":[Lcom/vkontakte/android/NewsEntry;
    :catch_0
    move-exception v17

    .line 81
    .local v17, "x":Ljava/lang/Exception;
    const-string v1, "vk"

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v17    # "x":Ljava/lang/Exception;
    .restart local v3    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v4    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v9    # "adminGroups":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v12    # "i":I
    .restart local v13    # "items":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 56
    .local v14, "profile":Lorg/json/JSONObject;
    const-string v1, "uid"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 57
    .local v16, "uid":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "first_name"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "last_name"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    const-string v1, "photo_medium_rec"

    :goto_3
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v1, "sex"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_6

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v14    # "profile":Lorg/json/JSONObject;
    .end local v16    # "uid":I
    :cond_3
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 63
    .local v11, "group":Lorg/json/JSONObject;
    const-string v1, "gid"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 64
    .local v10, "gid":I
    neg-int v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    neg-int v1, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_7

    const-string v1, "photo_medium"

    :goto_5
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "is_admin"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v10    # "gid":I
    .end local v11    # "group":Lorg/json/JSONObject;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 58
    .restart local v14    # "profile":Lorg/json/JSONObject;
    .restart local v16    # "uid":I
    :cond_5
    const-string v1, "photo"

    goto :goto_3

    .line 59
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 65
    .end local v14    # "profile":Lorg/json/JSONObject;
    .end local v16    # "uid":I
    .restart local v10    # "gid":I
    .restart local v11    # "group":Lorg/json/JSONObject;
    :cond_7
    const-string v1, "photo"

    goto :goto_5

    .line 73
    .end local v10    # "gid":I
    .end local v11    # "group":Lorg/json/JSONObject;
    .restart local v15    # "result":[Lcom/vkontakte/android/NewsEntry;
    :cond_8
    new-instance v1, Lcom/vkontakte/android/NewsEntry;

    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "owner_id"

    const-string v6, "from_id"

    const-string v7, "id"

    invoke-direct/range {v1 .. v8}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    aput-object v1, v15, v12

    .line 75
    aget-object v1, v15, v12

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    if-gez v1, :cond_9

    aget-object v1, v15, v12

    iget v1, v1, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    aget-object v1, v15, v12

    iget v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lcom/vkontakte/android/NewsEntry;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/NewsfeedSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedSearch;->callback:Lcom/vkontakte/android/api/NewsfeedSearch$Callback;

    .line 87
    return-object p0
.end method
