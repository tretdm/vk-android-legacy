.class public Lcom/vkontakte/android/api/AppsGetGamesPage;
.super Lcom/vkontakte/android/APIRequest;
.source "AppsGetGamesPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, "execute.getGames"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v0, "fields"

    const-string v1, "photo_100,photo_50,sex"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/AppsGetGamesPage;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 25
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/vkontakte/android/api/AppsGetGamesPage;->callback:Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;

    if-nez v2, :cond_0

    .line 123
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 116
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 117
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 118
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/AppsGetGamesPage;->callback:Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 121
    .local v1, "r":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/vkontakte/android/api/AppsGetGamesPage;->callback:Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v5, v2, v3, v4}, Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;->success(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 27
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    :try_start_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v22, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/GameRequest;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v8, "feed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/GameFeedEntry;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v7, "catalog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/ApiApplication;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v19, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v4, "apps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/data/ApiApplication;>;"
    const-string v25, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 36
    const-string v25, "catalog"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v14, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 37
    .local v14, "jcatalog":Lorg/json/JSONArray;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_2

    .line 38
    new-instance v3, Lcom/vkontakte/android/data/ApiApplication;

    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Lcom/vkontakte/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    .line 39
    .local v3, "app":Lcom/vkontakte/android/data/ApiApplication;
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "friends"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 40
    .local v9, "fids":Lorg/json/JSONArray;
    if-eqz v9, :cond_1

    .line 41
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_1

    .line 42
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    .line 43
    .local v12, "id":I
    invoke-static {v12}, Lcom/vkontakte/android/data/Friends;->get(I)Lcom/vkontakte/android/UserProfile;

    move-result-object v23

    .line 44
    .local v23, "user":Lcom/vkontakte/android/UserProfile;
    if-eqz v23, :cond_0

    .line 45
    iget-object v0, v3, Lcom/vkontakte/android/data/ApiApplication;->friendsPhotos:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 48
    .end local v12    # "id":I
    .end local v13    # "j":I
    .end local v23    # "user":Lcom/vkontakte/android/UserProfile;
    :cond_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    iput v0, v3, Lcom/vkontakte/android/data/ApiApplication;->friends:I

    .line 49
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 52
    .end local v3    # "app":Lcom/vkontakte/android/data/ApiApplication;
    .end local v9    # "fids":Lorg/json/JSONArray;
    :cond_2
    const-string v25, "reqs"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "profiles"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 53
    .local v20, "profiles1":Lorg/json/JSONArray;
    const-string v25, "act"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "profiles"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 54
    .local v21, "profiles2":Lorg/json/JSONArray;
    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_5

    .line 55
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 56
    .local v16, "jp":Lorg/json/JSONObject;
    new-instance v18, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 57
    .local v18, "p":Lcom/vkontakte/android/UserProfile;
    const-string v25, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 58
    const-string v25, "first_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 59
    const-string v25, "last_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 60
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 61
    sget v25, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_3

    const-string v25, "photo_100"

    :goto_3
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 62
    const-string v25, "sex"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/16 v25, 0x1

    :goto_4
    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 63
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 61
    :cond_3
    const-string v25, "photo_50"

    goto :goto_3

    .line 62
    :cond_4
    const/16 v25, 0x0

    goto :goto_4

    .line 65
    .end local v16    # "jp":Lorg/json/JSONObject;
    .end local v18    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_5
    const/4 v11, 0x0

    :goto_5
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_8

    .line 66
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 67
    .restart local v16    # "jp":Lorg/json/JSONObject;
    new-instance v18, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 68
    .restart local v18    # "p":Lcom/vkontakte/android/UserProfile;
    const-string v25, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 69
    const-string v25, "first_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 70
    const-string v25, "last_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 71
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 72
    sget v25, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v25, v25, v26

    if-lez v25, :cond_6

    const-string v25, "photo_100"

    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 73
    const-string v25, "sex"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 74
    move-object/from16 v0, v18

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 72
    :cond_6
    const-string v25, "photo_50"

    goto :goto_6

    .line 73
    :cond_7
    const/16 v25, 0x0

    goto :goto_7

    .line 76
    .end local v16    # "jp":Lorg/json/JSONObject;
    .end local v18    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_8
    const-string v25, "reqs"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "apps"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 77
    .local v5, "apps1":Lorg/json/JSONArray;
    const-string v25, "act"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    const-string v26, "apps"

    invoke-virtual/range {v25 .. v26}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 78
    .local v6, "apps2":Lorg/json/JSONArray;
    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_9

    .line 79
    new-instance v3, Lcom/vkontakte/android/data/ApiApplication;

    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Lcom/vkontakte/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    .line 80
    .restart local v3    # "app":Lcom/vkontakte/android/data/ApiApplication;
    iget v0, v3, Lcom/vkontakte/android/data/ApiApplication;->id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 82
    .end local v3    # "app":Lcom/vkontakte/android/data/ApiApplication;
    :cond_9
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_a

    .line 83
    new-instance v3, Lcom/vkontakte/android/data/ApiApplication;

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Lcom/vkontakte/android/data/ApiApplication;-><init>(Lorg/json/JSONObject;)V

    .line 84
    .restart local v3    # "app":Lcom/vkontakte/android/data/ApiApplication;
    iget v0, v3, Lcom/vkontakte/android/data/ApiApplication;->id:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 87
    .end local v3    # "app":Lcom/vkontakte/android/data/ApiApplication;
    :cond_a
    const-string v25, "reqs"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v17, v0

    .line 88
    .local v17, "jreqs":Lorg/json/JSONArray;
    const/4 v11, 0x0

    :goto_a
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_b

    .line 89
    new-instance v25, Lcom/vkontakte/android/data/GameRequest;

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v4}, Lcom/vkontakte/android/data/GameRequest;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 92
    :cond_b
    const-string v25, "act"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 93
    .local v15, "jfeed":Lorg/json/JSONArray;
    const/4 v11, 0x0

    :goto_b
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_d

    .line 94
    new-instance v10, Lcom/vkontakte/android/data/GameFeedEntry;

    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1, v4}, Lcom/vkontakte/android/data/GameFeedEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 95
    .local v10, "gfe":Lcom/vkontakte/android/data/GameFeedEntry;
    iget-object v0, v10, Lcom/vkontakte/android/data/GameFeedEntry;->user:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    iget-object v0, v10, Lcom/vkontakte/android/data/GameFeedEntry;->app:Lcom/vkontakte/android/data/ApiApplication;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 96
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 101
    .end local v10    # "gfe":Lcom/vkontakte/android/data/GameFeedEntry;
    :cond_d
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v22, v25, v26

    const/16 v26, 0x1

    aput-object v8, v25, v26

    const/16 v26, 0x2

    aput-object v7, v25, v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v4    # "apps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/data/ApiApplication;>;"
    .end local v5    # "apps1":Lorg/json/JSONArray;
    .end local v6    # "apps2":Lorg/json/JSONArray;
    .end local v7    # "catalog":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/ApiApplication;>;"
    .end local v8    # "feed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/GameFeedEntry;>;"
    .end local v11    # "i":I
    .end local v14    # "jcatalog":Lorg/json/JSONArray;
    .end local v15    # "jfeed":Lorg/json/JSONArray;
    .end local v17    # "jreqs":Lorg/json/JSONArray;
    .end local v19    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v20    # "profiles1":Lorg/json/JSONArray;
    .end local v21    # "profiles2":Lorg/json/JSONArray;
    .end local v22    # "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/data/GameRequest;>;"
    :goto_c
    return-object v25

    .line 102
    :catch_0
    move-exception v24

    .line 103
    .local v24, "x":Ljava/lang/Exception;
    const-string v25, "vk"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    const/16 v25, 0x0

    goto :goto_c
.end method

.method public setCallback(Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/vkontakte/android/api/AppsGetGamesPage;->callback:Lcom/vkontakte/android/api/AppsGetGamesPage$Callback;

    .line 110
    return-object p0
.end method
