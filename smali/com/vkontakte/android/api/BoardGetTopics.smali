.class public Lcom/vkontakte/android/api/BoardGetTopics;
.super Lcom/vkontakte/android/APIRequest;
.source "BoardGetTopics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/BoardGetTopics$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "tid"    # I

    .prologue
    .line 27
    const-string v0, "board.getTopics"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "topic_ids"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 29
    const-string v0, "preview"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "preview_length"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 30
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 20
    const-string v0, "board.getTopics"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    const-string v0, "preview"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/BoardGetTopics;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "preview_length"

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 91
    iget-object v2, p0, Lcom/vkontakte/android/api/BoardGetTopics;->callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    if-nez v2, :cond_0

    .line 99
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 92
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 93
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 94
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/BoardGetTopics;->callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/BoardGetTopics$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 97
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/BoardGetTopics;->callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v3, 0x3

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v5, v2, v6, v3}, Lcom/vkontakte/android/api/BoardGetTopics$Callback;->success(ILjava/util/ArrayList;ZI)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 16
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 34
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v7, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v10, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "profiles"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 38
    .local v8, "u":Lorg/json/JSONArray;
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "groups"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 40
    .local v2, "g":Lorg/json/JSONArray;
    if-eqz v8, :cond_1

    .line 41
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_1

    .line 42
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 43
    .local v5, "p":Lorg/json/JSONObject;
    new-instance v9, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v9}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 44
    .local v9, "up":Lcom/vkontakte/android/UserProfile;
    const-string v12, "id"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 45
    const-string v12, "first_name"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 46
    const-string v12, "last_name"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 47
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v9, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 48
    sget v12, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_0

    const-string v12, "photo_100"

    :goto_1
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 49
    iget v12, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_0
    const-string v12, "photo_50"

    goto :goto_1

    .line 52
    .end local v3    # "i":I
    .end local v5    # "p":Lorg/json/JSONObject;
    .end local v9    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_1
    if-eqz v2, :cond_3

    .line 53
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_3

    .line 54
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 55
    .restart local v5    # "p":Lorg/json/JSONObject;
    new-instance v9, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v9}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 56
    .restart local v9    # "up":Lcom/vkontakte/android/UserProfile;
    const-string v12, "id"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    neg-int v12, v12

    iput v12, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 57
    const-string v12, "name"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 58
    const-string v12, ""

    iput-object v12, v9, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 59
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v9, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 60
    sget v12, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2

    const-string v12, "photo_100"

    :goto_3
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 61
    iget v12, v9, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 60
    :cond_2
    const-string v12, "photo_50"

    goto :goto_3

    .line 65
    .end local v3    # "i":I
    .end local v5    # "p":Lorg/json/JSONObject;
    .end local v9    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_3
    const-string v12, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "items"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 66
    .local v1, "a":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_7

    .line 67
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 68
    .local v4, "jt":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkontakte/android/api/BoardTopic;

    invoke-direct {v6}, Lcom/vkontakte/android/api/BoardTopic;-><init>()V

    .line 69
    .local v6, "t":Lcom/vkontakte/android/api/BoardTopic;
    const-string v12, "id"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v6, Lcom/vkontakte/android/api/BoardTopic;->id:I

    .line 70
    const-string v12, "title"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/vkontakte/android/api/BoardTopic;->title:Ljava/lang/String;

    .line 71
    const-string v12, "created"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    sget v13, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v12, v13

    iput v12, v6, Lcom/vkontakte/android/api/BoardTopic;->created:I

    .line 72
    const-string v12, "created_by"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v6, Lcom/vkontakte/android/api/BoardTopic;->creator:I

    .line 73
    const-string v12, "updated"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    sget v13, Lcom/vkontakte/android/Global;->timeDiff:I

    add-int/2addr v12, v13

    iput v12, v6, Lcom/vkontakte/android/api/BoardTopic;->updated:I

    .line 74
    const-string v12, "is_closed"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_4

    iget v12, v6, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v6, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    .line 75
    :cond_4
    const-string v12, "is_fixed"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_5

    iget v12, v6, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v6, Lcom/vkontakte/android/api/BoardTopic;->flags:I

    .line 76
    :cond_5
    const-string v12, "comments"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v6, Lcom/vkontakte/android/api/BoardTopic;->numComments:I

    .line 77
    const-string v12, "last_comment"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "\\[(id|club)[0-9]+(?::bp[-_0-9]+)?\\|([^\\]]+)\\]"

    const-string v14, "$2"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v6, Lcom/vkontakte/android/api/BoardTopic;->lastComment:Ljava/lang/CharSequence;

    .line 78
    iget-object v12, v6, Lcom/vkontakte/android/api/BoardTopic;->lastComment:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_6

    sget-object v12, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0034

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/vkontakte/android/api/BoardTopic;->lastComment:Ljava/lang/CharSequence;

    .line 79
    :cond_6
    const-string v12, "updated_by"

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vkontakte/android/UserProfile;

    iput-object v12, v6, Lcom/vkontakte/android/api/BoardTopic;->updatedBy:Lcom/vkontakte/android/UserProfile;

    .line 80
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 83
    .end local v4    # "jt":Lorg/json/JSONObject;
    .end local v6    # "t":Lcom/vkontakte/android/api/BoardTopic;
    :cond_7
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "count"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v14, 0x2

    const-string v13, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v15, "can_add_topics"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const/4 v15, 0x1

    if-ne v13, v15, :cond_8

    const/4 v13, 0x1

    :goto_5
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v14

    const/4 v13, 0x3

    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "default_order"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "a":Lorg/json/JSONArray;
    .end local v2    # "g":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v7    # "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    .end local v8    # "u":Lorg/json/JSONArray;
    .end local v10    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :goto_6
    return-object v12

    .line 83
    .restart local v1    # "a":Lorg/json/JSONArray;
    .restart local v2    # "g":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v7    # "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    .restart local v8    # "u":Lorg/json/JSONArray;
    .restart local v10    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_8
    const/4 v13, 0x0

    goto :goto_5

    .line 84
    .end local v1    # "a":Lorg/json/JSONArray;
    .end local v2    # "g":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v7    # "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardTopic;>;"
    .end local v8    # "u":Lorg/json/JSONArray;
    .end local v10    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v11

    .line 85
    .local v11, "x":Ljava/lang/Exception;
    const-string v12, "vk"

    invoke-static {v12, v11}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    const/4 v12, 0x0

    goto :goto_6
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardGetTopics$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardGetTopics;->callback:Lcom/vkontakte/android/api/BoardGetTopics$Callback;

    .line 103
    return-object p0
.end method
