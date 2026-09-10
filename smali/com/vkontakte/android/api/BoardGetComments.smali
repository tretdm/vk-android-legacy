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
.method public parse(Lorg/json/JSONObject;)V
    .locals 27
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v3, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v17, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v20, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "profiles"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 47
    .local v22, "profiles":Lorg/json/JSONArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v12, v2, :cond_3

    .line 53
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "comments"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 54
    .local v11, "comms":Lorg/json/JSONArray;
    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v12, v2, :cond_5

    .line 90
    const/4 v5, 0x0

    .line 91
    .local v5, "pollID":I
    const/4 v6, 0x0

    .line 92
    .local v6, "pollQuestion":Ljava/lang/String;
    const/4 v7, 0x0

    .line 93
    .local v7, "pollUserAnswer":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v8, "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "poll"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "poll"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 97
    .local v21, "poll":Lorg/json/JSONObject;
    const-string v2, "poll_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 98
    const-string v2, "question"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    const-string v2, "answer_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 100
    const-string v2, "is_closed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const/4 v7, 0x1

    .line 101
    :cond_0
    const-string v2, "answers"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 102
    .local v19, "options":Lorg/json/JSONArray;
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v12, v2, :cond_a

    .line 113
    .end local v19    # "options":Lorg/json/JSONArray;
    .end local v21    # "poll":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    if-eqz v2, :cond_2

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-interface/range {v2 .. v8}, Lcom/vkontakte/android/api/BoardGetComments$Callback;->success(Ljava/util/ArrayList;IILjava/lang/String;ILjava/util/ArrayList;)V

    .line 118
    .end local v3    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .end local v5    # "pollID":I
    .end local v6    # "pollQuestion":Ljava/lang/String;
    .end local v7    # "pollUserAnswer":I
    .end local v8    # "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    .end local v11    # "comms":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v17    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v20    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22    # "profiles":Lorg/json/JSONArray;
    :cond_2
    :goto_3
    return-void

    .line 48
    .restart local v3    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .restart local v12    # "i":I
    .restart local v17    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v20    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v22    # "profiles":Lorg/json/JSONArray;
    :cond_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 49
    .local v23, "u":Lorg/json/JSONObject;
    const-string v2, "uid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v25, "first_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v25, "last_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v2, "uid"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v25

    if-lez v2, :cond_4

    const-string v2, "photo_medium_rec"

    :goto_4
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 50
    :cond_4
    const-string v2, "photo"

    goto :goto_4

    .line 55
    .end local v23    # "u":Lorg/json/JSONObject;
    .restart local v11    # "comms":Lorg/json/JSONArray;
    :cond_5
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 56
    .local v14, "jc":Lorg/json/JSONObject;
    new-instance v10, Lcom/vkontakte/android/api/BoardComment;

    invoke-direct {v10}, Lcom/vkontakte/android/api/BoardComment;-><init>()V

    .line 57
    .local v10, "c":Lcom/vkontakte/android/api/BoardComment;
    const-string v2, "id"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/api/BoardComment;->id:I

    .line 58
    const-string v2, "from_id"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Lcom/vkontakte/android/api/BoardComment;->uid:I

    .line 59
    const-string v2, "text"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    .line 60
    sget v2, Lcom/vkontakte/android/Global;->timeDiff:I

    const-string v4, "date"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v10, Lcom/vkontakte/android/api/BoardComment;->time:I

    .line 61
    iget v2, v10, Lcom/vkontakte/android/api/BoardComment;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->userName:Ljava/lang/String;

    .line 62
    iget v2, v10, Lcom/vkontakte/android/api/BoardComment;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->userPhoto:Ljava/lang/String;

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    .line 64
    const-string v2, "attachments"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 65
    const-string v2, "attachments"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 66
    .local v9, "atts":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v13, v2, :cond_7

    .line 71
    .end local v9    # "atts":Lorg/json/JSONArray;
    .end local v13    # "j":I
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn2:Ljava/util/regex/Pattern;

    iget-object v4, v10, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 75
    .local v16, "matcher":Ljava/util/regex/Matcher;
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_8

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkontakte/android/api/BoardGetComments;->ptn1:Ljava/util/regex/Pattern;

    iget-object v4, v10, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 80
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_9

    .line 85
    iget-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    const-string v4, "\\[id(\\d+):bp-(\\d+)_(\\d+)\\|([^\\]]+)\\]"

    const-string v25, "$4"

    move-object/from16 v0, v25

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->text:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 67
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v9    # "atts":Lorg/json/JSONArray;
    .restart local v13    # "j":I
    :cond_7
    iget-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-static {v4, v0}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 76
    .end local v9    # "atts":Lorg/json/JSONArray;
    .end local v13    # "j":I
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_8
    iget-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v25, "vkontakte://profile/"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 115
    .end local v3    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .end local v10    # "c":Lcom/vkontakte/android/api/BoardComment;
    .end local v11    # "comms":Lorg/json/JSONArray;
    .end local v12    # "i":I
    .end local v14    # "jc":Lorg/json/JSONObject;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .end local v17    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v20    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v22    # "profiles":Lorg/json/JSONArray;
    :catch_0
    move-exception v24

    .line 116
    .local v24, "x":Ljava/lang/Exception;
    const-string v2, "vk"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 81
    .end local v24    # "x":Ljava/lang/Exception;
    .restart local v3    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/BoardComment;>;"
    .restart local v10    # "c":Lcom/vkontakte/android/api/BoardComment;
    .restart local v11    # "comms":Lorg/json/JSONArray;
    .restart local v12    # "i":I
    .restart local v14    # "jc":Lorg/json/JSONObject;
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v17    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v20    # "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v22    # "profiles":Lorg/json/JSONArray;
    :cond_9
    :try_start_1
    iget-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->linkUrls:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v25, "vklink://view/?"

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v2, v10, Lcom/vkontakte/android/api/BoardComment;->linkTitles:Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 103
    .end local v10    # "c":Lcom/vkontakte/android/api/BoardComment;
    .end local v14    # "jc":Lorg/json/JSONObject;
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .restart local v5    # "pollID":I
    .restart local v6    # "pollQuestion":Ljava/lang/String;
    .restart local v7    # "pollUserAnswer":I
    .restart local v8    # "pollOptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/PollOption;>;"
    .restart local v19    # "options":Lorg/json/JSONArray;
    .restart local v21    # "poll":Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 104
    .local v15, "jopt":Lorg/json/JSONObject;
    new-instance v18, Lcom/vkontakte/android/api/PollOption;

    invoke-direct/range {v18 .. v18}, Lcom/vkontakte/android/api/PollOption;-><init>()V

    .line 105
    .local v18, "opt":Lcom/vkontakte/android/api/PollOption;
    const-string v2, "id"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/api/PollOption;->id:I

    .line 106
    const-string v2, "text"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/vkontakte/android/api/PollOption;->title:Ljava/lang/String;

    .line 107
    const-string v2, "votes"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/api/PollOption;->numVotes:I

    .line 108
    const-string v2, "rate"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v2, v0

    move-object/from16 v0, v18

    iput v2, v0, Lcom/vkontakte/android/api/PollOption;->percent:F

    .line 109
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/BoardGetComments$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/BoardGetComments$Callback;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/vkontakte/android/api/BoardGetComments;->callback:Lcom/vkontakte/android/api/BoardGetComments$Callback;

    .line 122
    return-object p0
.end method
