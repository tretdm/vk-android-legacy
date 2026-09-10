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


# direct methods
.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "gid"    # I
    .param p2, "tid"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x1

    .line 24
    const-string v0, "board.getComments"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "((?:(?:http|https)://)?[a-zA-Z\u0430-\u044f\u0410-\u042f0-9-]+\\.[a-zA-Z\u0430-\u044f\u0410-\u042f]{2,4}[a-zA-Z/?\\.=#%&-_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->ptn1:Ljava/util/regex/Pattern;

    .line 21
    const-string v0, "\\[id(\\d+):bp\\-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->ptn2:Ljava/util/regex/Pattern;

    .line 25
    const-string v0, "gid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/BoardGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 26
    const-string v0, "extended"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/BoardGetComments;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_sizes"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 28
    new-instance v0, Lcom/vkontakte/android/api/BoardGetComments$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/BoardGetComments$1;-><init>(Lcom/vkontakte/android/api/BoardGetComments;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/BoardGetComments;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 38
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 123
    check-cast v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 124
    .local v7, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v0, p0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    iget v1, v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v2, v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/BoardGetComments$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v7    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v8, p1

    .line 126
    check-cast v8, [Ljava/lang/Object;

    .line 127
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
    .locals 26
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v4, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v11, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v14, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "profiles"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 47
    .local v20, "profiles":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v6, v0, :cond_2

    .line 53
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "comments"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 54
    .local v5, "comms":Lorg/json/JSONArray;
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v6, v0, :cond_4

    .line 90
    const/16 v16, 0x0

    .line 91
    .local v16, "pollID":I
    const/16 v18, 0x0

    .line 92
    .local v18, "pollQuestion":Ljava/lang/String;
    const/16 v19, 0x0

    .line 93
    .local v19, "pollUserAnswer":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v17, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "poll"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 96
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "poll"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 97
    .local v15, "poll":Lorg/json/JSONObject;
    const-string v23, "poll_id"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 98
    const-string v23, "question"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 99
    const-string v23, "answer_id"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 100
    const-string v23, "is_closed"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    const/16 v19, 0x1

    .line 101
    :cond_0
    const-string v23, "answers"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 102
    .local v13, "options":Lorg/json/JSONArray;
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v6, v0, :cond_9

    .line 113
    .end local v13    # "options":Lorg/json/JSONArray;
    .end local v15    # "poll":Lorg/json/JSONObject;
    :cond_1
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    aput-object v18, v23, v24

    const/16 v24, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x5

    aput-object v17, v23, v24

    .line 117
    .end local v4    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .end local v5    # "comms":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v11    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v14    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v16    # "pollID":I
    .end local v17    # "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    .end local v18    # "pollQuestion":Ljava/lang/String;
    .end local v19    # "pollUserAnswer":I
    .end local v20    # "profiles":Lorg/json/JSONArray;
    :goto_3
    return-object v23

    .line 48
    .restart local v4    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .restart local v6    # "i":I
    .restart local v11    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v14    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v20    # "profiles":Lorg/json/JSONArray;
    :cond_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    .line 49
    .local v21, "u":Lorg/json/JSONObject;
    const-string v23, "uid"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "first_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "last_name"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v23, "uid"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    sget v23, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v25

    if-lez v23, :cond_3

    const-string v23, "photo_medium_rec"

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 50
    :cond_3
    const-string v23, "photo"

    goto :goto_4

    .line 55
    .end local v21    # "u":Lorg/json/JSONObject;
    .restart local v5    # "comms":Lorg/json/JSONArray;
    :cond_4
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 56
    .local v8, "jc":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/api/BoardComment;

    invoke-direct {v3}, Lcom/vkontakte/android/api/BoardComment;-><init>()V

    .line 57
    .local v3, "c":Lcom/vkontakte/android/api/BoardComment;
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v3, Lcom/vkontakte/android/api/BoardComment;->id:I

    .line 58
    const-string v23, "from_id"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v3, Lcom/vkontakte/android/api/BoardComment;->uid:I

    .line 59
    const-string v23, "text"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    .line 60
    sget v23, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v24, "date"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v3, Lcom/vkontakte/android/api/BoardComment;->time:I

    .line 61
    iget v0, v3, Lcom/vkontakte/android/api/BoardComment;->uid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    .line 62
    iget v0, v3, Lcom/vkontakte/android/api/BoardComment;->uid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    .line 63
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    .line 64
    const-string v23, "attachments"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 65
    const-string v23, "attachments"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 66
    .local v2, "atts":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v7, v0, :cond_6

    .line 71
    .end local v2    # "atts":Lorg/json/JSONArray;
    .end local v7    # "j":I
    :cond_5
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    .line 72
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn2:Ljava/util/regex/Pattern;

    move-object/from16 v23, v0

    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 75
    .local v10, "matcher":Ljava/util/regex/Matcher;
    :goto_6
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-nez v23, :cond_7

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn1:Ljava/util/regex/Pattern;

    move-object/from16 v23, v0

    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 80
    :goto_7
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v23

    if-nez v23, :cond_8

    .line 85
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v25, "$4"

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    .line 87
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 67
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "atts":Lorg/json/JSONArray;
    .restart local v7    # "j":I
    :cond_6
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 76
    .end local v2    # "atts":Lorg/json/JSONArray;
    .end local v7    # "j":I
    .restart local v10    # "matcher":Ljava/util/regex/Matcher;
    :cond_7
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "vkontakte://profile/"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 114
    .end local v3    # "c":Lcom/vkontakte/android/api/BoardComment;
    .end local v4    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .end local v5    # "comms":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v8    # "jc":Lorg/json/JSONObject;
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .end local v11    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v14    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v20    # "profiles":Lorg/json/JSONArray;
    :catch_0
    move-exception v22

    .line 115
    .local v22, "x":Ljava/lang/Exception;
    const-string v23, "vk"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 81
    .end local v22    # "x":Ljava/lang/Exception;
    .restart local v3    # "c":Lcom/vkontakte/android/api/BoardComment;
    .restart local v4    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .restart local v5    # "comms":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v8    # "jc":Lorg/json/JSONObject;
    .restart local v10    # "matcher":Ljava/util/regex/Matcher;
    .restart local v11    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v14    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v20    # "profiles":Lorg/json/JSONArray;
    :cond_8
    :try_start_1
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "vklink://view/?"

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, v3, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 103
    .end local v3    # "c":Lcom/vkontakte/android/api/BoardComment;
    .end local v8    # "jc":Lorg/json/JSONObject;
    .end local v10    # "matcher":Ljava/util/regex/Matcher;
    .restart local v13    # "options":Lorg/json/JSONArray;
    .restart local v15    # "poll":Lorg/json/JSONObject;
    .restart local v16    # "pollID":I
    .restart local v17    # "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    .restart local v18    # "pollQuestion":Ljava/lang/String;
    .restart local v19    # "pollUserAnswer":I
    :cond_9
    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 104
    .local v9, "jopt":Lorg/json/JSONObject;
    new-instance v12, Lcom/vkontakte/android/api/PollOption;

    invoke-direct {v12}, Lcom/vkontakte/android/api/PollOption;-><init>()V

    .line 105
    .local v12, "opt":Lcom/vkontakte/android/api/PollOption;
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v12, Lcom/vkontakte/android/api/PollOption;->id:I

    .line 106
    const-string v23, "text"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v12, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    .line 107
    const-string v23, "votes"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v12, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    .line 108
    const-string v23, "rate"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v12, Lcom/vkontakte/android/api/PollOption;->percent:F

    .line 109
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardGetComments$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardGetComments$Callback;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    .line 133
    return-object p0
.end method
