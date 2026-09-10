.class public Lcom/vkontakte/android/api/BoardGetComments;
.super Lcom/vkontakte/android/APIRequest;
.source "BoardGetComments.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/BoardGetComments$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

.field ptn1:Ljava/util/regex/Pattern;

.field ptn2:Ljava/util/regex/Pattern;

.field ptn3:Ljava/util/regex/Pattern;

.field ptn4:Ljava/util/regex/Pattern;

.field ptn5:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 26
    const-string v0, "board.getComments"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->ptn1:Ljava/util/regex/Pattern;

    .line 20
    const-string v0, "\\[id(\\d+):bp\\-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->ptn2:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "\\[club(\\d+):bp\\-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->ptn3:Ljava/util/regex/Pattern;

    .line 22
    const-string v0, "\\[id(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->ptn4:Ljava/util/regex/Pattern;

    .line 23
    const-string v0, "\\[club(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->ptn5:Ljava/util/regex/Pattern;

    .line 27
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "topic_id"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 28
    const-string v0, "extended"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/BoardGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_sizes"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 29
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    if-nez v0, :cond_0

    .line 142
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 135
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 136
    check-cast v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 137
    .local v7, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    iget v1, v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v2, v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/BoardGetComments$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v7    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v8, p1

    check-cast v8, [Ljava/lang/Object;

    .line 140
    .local v8, "r":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget-object v2, v8, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v8, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v8, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v8, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v8, v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-interface/range {v0 .. v6}, Lcom/vkontakte/android/api/BoardGetComments$Callback;->success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 28
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 33
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v4, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v12, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v15, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v24, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "profiles"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 38
    .local v21, "profiles":Lorg/json/JSONArray;
    const-string v24, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "groups"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 39
    .local v6, "groups":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_1

    .line 40
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 41
    .local v22, "u":Lorg/json/JSONObject;
    const-string v24, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "first_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "last_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v24, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    sget v24, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v26

    if-lez v24, :cond_0

    const-string v24, "photo_100"

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const-string v24, "photo_50"

    goto :goto_1

    .line 44
    .end local v22    # "u":Lorg/json/JSONObject;
    :cond_1
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_3

    .line 45
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 46
    .restart local v22    # "u":Lorg/json/JSONObject;
    const-string v24, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const-string v25, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v24, "id"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    sget v24, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v26, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v26

    if-lez v24, :cond_2

    const-string v24, "photo_100"

    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 47
    :cond_2
    const-string v24, "photo_50"

    goto :goto_3

    .line 50
    .end local v22    # "u":Lorg/json/JSONObject;
    :cond_3
    const-string v24, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "items"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 51
    .local v5, "comms":Lorg/json/JSONArray;
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_a

    .line 52
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 53
    .local v9, "jc":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/api/BoardComment;

    invoke-direct {v3}, Lcom/vkontakte/android/api/BoardComment;-><init>()V

    .line 54
    .local v3, "c":Lcom/vkontakte/android/api/BoardComment;
    const-string v24, "id"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/vkontakte/android/api/BoardComment;->id:I

    .line 55
    const-string v24, "from_id"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v3, Lcom/vkontakte/android/api/BoardComment;->uid:I

    .line 56
    const-string v24, "text"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    .line 57
    sget v24, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v25, "date"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    iput v0, v3, Lcom/vkontakte/android/api/BoardComment;->time:I

    .line 58
    iget v0, v3, Lcom/vkontakte/android/api/BoardComment;->uid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    .line 59
    iget v0, v3, Lcom/vkontakte/android/api/BoardComment;->uid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    .line 60
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    .line 61
    const-string v24, "attachments"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 62
    const-string v24, "attachments"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 63
    .local v2, "atts":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v8, v0, :cond_4

    .line 64
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 67
    .end local v2    # "atts":Lorg/json/JSONArray;
    .end local v8    # "j":I
    :cond_4
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 69
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    .line 70
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn2:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 73
    .local v11, "matcher":Ljava/util/regex/Matcher;
    :goto_6
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 74
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "vkontakte://profile/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 127
    .end local v3    # "c":Lcom/vkontakte/android/api/BoardComment;
    .end local v4    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .end local v5    # "comms":Lorg/json/JSONArray;
    .end local v6    # "groups":Lorg/json/JSONArray;
    .end local v7    # "i":I
    .end local v9    # "jc":Lorg/json/JSONObject;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v21    # "profiles":Lorg/json/JSONArray;
    :catch_0
    move-exception v23

    .line 128
    .local v23, "x":Ljava/lang/Exception;
    const-string v24, "vk"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    const/16 v24, 0x0

    .end local v23    # "x":Ljava/lang/Exception;
    :goto_7
    return-object v24

    .line 77
    .restart local v3    # "c":Lcom/vkontakte/android/api/BoardComment;
    .restart local v4    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .restart local v5    # "comms":Lorg/json/JSONArray;
    .restart local v6    # "groups":Lorg/json/JSONArray;
    .restart local v7    # "i":I
    .restart local v9    # "jc":Lorg/json/JSONObject;
    .restart local v11    # "matcher":Ljava/util/regex/Matcher;
    .restart local v12    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v15    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v21    # "profiles":Lorg/json/JSONArray;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn3:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 78
    :goto_8
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 79
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "vkontakte://profile/-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 82
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn4:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 83
    :goto_9
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 84
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "vkontakte://profile/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 87
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn5:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 88
    :goto_a
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 89
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "vkontakte://profile/-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 92
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn1:Ljava/util/regex/Pattern;

    move-object/from16 v24, v0

    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 93
    :goto_b
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 94
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "vklink://view/?"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 98
    :cond_9
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "\\[(id|club)[0-9]+(?::bp[-_0-9]+)?\\|([^\\]]+)\\]"

    const-string v26, "$2"

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 103
    .end local v3    # "c":Lcom/vkontakte/android/api/BoardComment;
    .end local v9    # "jc":Lorg/json/JSONObject;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    :cond_a
    const/16 v17, 0x0

    .line 104
    .local v17, "pollID":I
    const/16 v19, 0x0

    .line 105
    .local v19, "pollQuestion":Ljava/lang/String;
    const/16 v20, 0x0

    .line 106
    .local v20, "pollUserAnswer":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v18, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    const-string v24, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "poll"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 109
    const-string v24, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "poll"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 110
    .local v16, "poll":Lorg/json/JSONObject;
    const-string v24, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 111
    const-string v24, "question"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 112
    const-string v24, "answer_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 113
    const-string v24, "is_closed"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    const/16 v20, 0x1

    .line 114
    :cond_b
    const-string v24, "answers"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 115
    .local v14, "options":Lorg/json/JSONArray;
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v7, v0, :cond_c

    .line 116
    invoke-virtual {v14, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 117
    .local v10, "jopt":Lorg/json/JSONObject;
    new-instance v13, Lcom/vkontakte/android/api/PollOption;

    invoke-direct {v13}, Lcom/vkontakte/android/api/PollOption;-><init>()V

    .line 118
    .local v13, "opt":Lcom/vkontakte/android/api/PollOption;
    const-string v24, "id"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v13, Lcom/vkontakte/android/api/PollOption;->id:I

    .line 119
    const-string v24, "text"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v13, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    .line 120
    const-string v24, "votes"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v13, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    .line 121
    const-string v24, "rate"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v13, Lcom/vkontakte/android/api/PollOption;->percent:F

    .line 122
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 126
    .end local v10    # "jopt":Lorg/json/JSONObject;
    .end local v13    # "opt":Lcom/vkontakte/android/api/PollOption;
    .end local v14    # "options":Lorg/json/JSONArray;
    .end local v16    # "poll":Lorg/json/JSONObject;
    :cond_c
    const/16 v24, 0x6

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v4, v24, v25

    const/16 v25, 0x1

    const-string v26, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    const-string v27, "count"

    invoke-virtual/range {v26 .. v27}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x3

    aput-object v19, v24, v25

    const/16 v25, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x5

    aput-object v18, v24, v25
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardGetComments$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardGetComments$Callback;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    .line 146
    return-object p0
.end method
