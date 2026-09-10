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
    .locals 9
    .param p1, "idsArray"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 23
    const-string v3, "execute"

    invoke-direct {p0, v3}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v1, ""

    .line 25
    .local v1, "ids":Ljava/lang/String;
    array-length v5, p1

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 26
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v5, "var w=API.wall.getById({posts:\"%1$s\",photo_sizes:1});var p=API.users.get({fields:\"%2$s\",uids:w@.from_id});var p2=API.users.get({uids:w@.copy_owner_id+w@.signer_id});return {w:w,p:p,p2:p2};"

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    .line 30
    aput-object v1, v6, v4

    sget v3, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const-string v3, "photo_medium_rec"

    :goto_1
    aput-object v3, v6, v8

    .line 27
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "code":Ljava/lang/String;
    const-string v3, "code"

    invoke-virtual {p0, v3, v0}, Lcom/vkontakte/android/api/WallGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 32
    const-string v3, "vk"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v3, Lcom/vkontakte/android/api/WallGetById$1;

    invoke-direct {v3, p0}, Lcom/vkontakte/android/api/WallGetById$1;-><init>(Lcom/vkontakte/android/api/WallGetById;)V

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/api/WallGetById;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 44
    return-void

    .line 25
    .end local v0    # "code":Ljava/lang/String;
    :cond_0
    aget-object v2, p1, v3

    .local v2, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 30
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    const-string v3, "photo_rec"

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/vkontakte/android/api/WallGetById;Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/api/WallGetById;->doParse(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;)V

    return-void
.end method

.method private doParse(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;)V
    .locals 9
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
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v8, v0, [Lcom/vkontakte/android/NewsEntry;

    .line 125
    .local v8, "result":[Lcom/vkontakte/android/NewsEntry;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v7, v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    invoke-interface {v0, v8}, Lcom/vkontakte/android/api/WallGetById$Callback;->success([Lcom/vkontakte/android/NewsEntry;)V

    .line 131
    :cond_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Lcom/vkontakte/android/NewsEntry;

    invoke-virtual {p3, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "from_id"

    const-string v5, "from_id"

    const-string v6, "id"

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v8, v7

    .line 125
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 16
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 48
    :try_start_0
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "w"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 49
    .local v5, "items":Lorg/json/JSONArray;
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "p"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 50
    .local v8, "profiles1":Lorg/json/JSONArray;
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "p2"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 52
    .local v9, "profiles2":Lorg/json/JSONArray;
    if-nez v5, :cond_1

    .line 53
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    if-eqz v12, :cond_0

    .line 54
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    const/4 v13, 0x0

    new-array v13, v13, [Lcom/vkontakte/android/NewsEntry;

    invoke-interface {v12, v13}, Lcom/vkontakte/android/api/WallGetById$Callback;->success([Lcom/vkontakte/android/NewsEntry;)V

    .line 120
    .end local v5    # "items":Lorg/json/JSONArray;
    .end local v8    # "profiles1":Lorg/json/JSONArray;
    .end local v9    # "profiles2":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v5    # "items":Lorg/json/JSONArray;
    .restart local v8    # "profiles1":Lorg/json/JSONArray;
    .restart local v9    # "profiles2":Lorg/json/JSONArray;
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v6, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v7, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 62
    .local v3, "groupsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v4, v12, :cond_4

    .line 71
    if-eqz v8, :cond_2

    .line 72
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v4, v12, :cond_8

    .line 79
    :cond_2
    if-eqz v9, :cond_3

    .line 80
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v4, v12, :cond_a

    .line 88
    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v12

    if-nez v12, :cond_c

    .line 89
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5}, Lcom/vkontakte/android/api/WallGetById;->doParse(Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v3    # "groupsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local v4    # "i":I
    .end local v5    # "items":Lorg/json/JSONArray;
    .end local v6    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "profiles1":Lorg/json/JSONArray;
    .end local v9    # "profiles2":Lorg/json/JSONArray;
    :catch_0
    move-exception v11

    .line 118
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 63
    .end local v11    # "x":Ljava/lang/Exception;
    .restart local v3    # "groupsToGet":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    .restart local v4    # "i":I
    .restart local v5    # "items":Lorg/json/JSONArray;
    .restart local v6    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "profiles1":Lorg/json/JSONArray;
    .restart local v9    # "profiles2":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "copy_owner_id"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-gez v12, :cond_5

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "copy_owner_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 64
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "copy_owner_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_5
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "owner_id"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-gez v12, :cond_6

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "owner_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 66
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "owner_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_6
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "from_id"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-gez v12, :cond_7

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "from_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 68
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "from_id"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    neg-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 73
    :cond_8
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "uid"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 74
    .local v10, "uid":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "first_name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "last_name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    sget v12, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v15

    if-lez v12, :cond_9

    const-string v12, "photo_medium_rec"

    :goto_4
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 75
    :cond_9
    const-string v12, "photo_rec"

    goto :goto_4

    .line 81
    .end local v10    # "uid":I
    :cond_a
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "uid"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 82
    .restart local v10    # "uid":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 83
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "first_name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "last_name"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 91
    .end local v10    # "uid":I
    :cond_c
    const-string v2, ""

    .line 92
    .local v2, "gids":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_d

    .line 93
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v12, Lcom/vkontakte/android/APIRequest;

    const-string v13, "groups.getById"

    invoke-direct {v12, v13}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v13, "gids"

    invoke-virtual {v12, v13, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    .line 96
    new-instance v13, Lcom/vkontakte/android/api/WallGetById$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v6, v7, v5}, Lcom/vkontakte/android/api/WallGetById$2;-><init>(Lcom/vkontakte/android/api/WallGetById;Ljava/util/HashMap;Ljava/util/HashMap;Lorg/json/JSONArray;)V

    invoke-virtual {v12, v13}, Lcom/vkontakte/android/APIRequest;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    move-result-object v12

    .line 113
    invoke-virtual {v12}, Lcom/vkontakte/android/APIRequest;->exec()Lcom/vkontakte/android/APIRequest;

    goto/16 :goto_0

    .line 92
    :cond_d
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "g":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_5
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallGetById$Callback;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGetById;->callback:Lcom/vkontakte/android/api/WallGetById$Callback;

    .line 135
    return-object p0
.end method
