.class public Lcom/vkontakte/android/api/WallGet;
.super Lcom/vkontakte/android/APIRequest;
.source "WallGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/WallGet$Callback;

.field public gphoto:Ljava/lang/String;

.field public gtitle:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 31
    const-string v0, "wall.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "filter"

    invoke-virtual {v0, v1, p4}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 33
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 34
    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "owner"    # Z
    .param p5, "needStatus"    # Z

    .prologue
    const/4 v2, 0x1

    .line 23
    const-string v0, "execute.wallGetWrapNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v0, "photo_sizes"

    invoke-virtual {p0, v0, v2}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 25
    const-string v0, "owner_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "extended"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 26
    if-eqz p4, :cond_0

    const-string v0, "filter"

    const-string v1, "owner"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/WallGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 27
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/api/WallGet;->uid:I

    .line 28
    return-void
.end method

.method private parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :cond_1
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    new-instance v0, Lcom/vkontakte/android/AudioFile;

    invoke-direct {v0}, Lcom/vkontakte/android/AudioFile;-><init>()V

    .line 40
    .local v0, "af":Lcom/vkontakte/android/AudioFile;
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "aid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->aid:I

    .line 41
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "owner_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->oid:I

    .line 42
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    .line 43
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "artist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->artist:Ljava/lang/String;

    .line 44
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->title:Ljava/lang/String;

    .line 45
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->url:Ljava/lang/String;

    .line 46
    const-string v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Lcom/vkontakte/android/AudioFile;->duration:I

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/AudioFile;->durationS:Ljava/lang/String;

    goto/16 :goto_0

    .line 49
    .end local v0    # "af":Lcom/vkontakte/android/AudioFile;
    :cond_2
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v0, :cond_1

    move-object v6, p1

    .line 118
    check-cast v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 119
    .local v6, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    iget v1, v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v2, v6, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/WallGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v6    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v7, p1

    .line 121
    check-cast v7, [Ljava/lang/Object;

    .line 122
    .local v7, "r":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    const/4 v1, 0x0

    aget-object v1, v7, v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget-object v2, v7, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v7, v3

    const/4 v4, 0x3

    aget-object v4, v7, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v7, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/vkontakte/android/api/WallGet$Callback;->success(Ljava/util/ArrayList;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 21
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 57
    :try_start_0
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 58
    .local v13, "resp":Lorg/json/JSONObject;
    if-nez v13, :cond_0

    .line 59
    const-string v17, "execute_errors"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 60
    .local v2, "e":Lorg/json/JSONObject;
    new-instance v17, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    const-string v18, "error_code"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v19, "error_msg"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/vkontakte/android/APIRequest$ErrorResponse;-><init>(ILjava/lang/String;)V

    .line 112
    .end local v2    # "e":Lorg/json/JSONObject;
    .end local v13    # "resp":Lorg/json/JSONObject;
    :goto_0
    return-object v17

    .line 62
    .restart local v13    # "resp":Lorg/json/JSONObject;
    :cond_0
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v6

    .line 63
    .local v6, "items":Lcom/vkontakte/android/api/JSONArrayWithCount;
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "profiles"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 64
    .local v10, "profiles1":Lorg/json/JSONArray;
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "groups"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 67
    .local v11, "profiles2":Lorg/json/JSONArray;
    if-nez v6, :cond_1

    .line 68
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "status"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/WallGet;->parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v17, v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v6    # "items":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v10    # "profiles1":Lorg/json/JSONArray;
    .end local v11    # "profiles2":Lorg/json/JSONArray;
    .end local v13    # "resp":Lorg/json/JSONObject;
    :catch_0
    move-exception v16

    .line 110
    .local v16, "x":Ljava/lang/Exception;
    const-string v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    const/16 v17, 0x0

    goto :goto_0

    .line 71
    .end local v16    # "x":Ljava/lang/Exception;
    .restart local v6    # "items":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v10    # "profiles1":Lorg/json/JSONArray;
    .restart local v11    # "profiles2":Lorg/json/JSONArray;
    .restart local v13    # "resp":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v7, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v9, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v4, "fs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    if-eqz v10, :cond_2

    .line 76
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_5

    .line 84
    .end local v5    # "i":I
    :cond_2
    if-eqz v11, :cond_3

    .line 85
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_8

    .line 94
    .end local v5    # "i":I
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "fixed"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 97
    .local v3, "fixed":Lorg/json/JSONObject;
    if-eqz v3, :cond_4

    .line 98
    new-instance v8, Lcom/vkontakte/android/NewsEntry;

    invoke-direct {v8, v3, v7, v9}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 99
    .local v8, "ne":Lcom/vkontakte/android/NewsEntry;
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v8    # "ne":Lcom/vkontakte/android/NewsEntry;
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    iget-object v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_b

    .line 107
    const-string v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 108
    .local v12, "r":Lorg/json/JSONObject;
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v14, v17, v18

    const/16 v18, 0x1

    iget v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "status"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/WallGet;->parseStatus(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "postponed_count"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string v19, "suggested_count"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    goto/16 :goto_0

    .line 77
    .end local v3    # "fixed":Lorg/json/JSONObject;
    .end local v12    # "r":Lorg/json/JSONObject;
    .end local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_5
    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 78
    .local v15, "uid":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "first_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "last_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v20

    if-lez v17, :cond_6

    const-string v17, "photo_100"

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v19, "sex"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    :goto_5
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 79
    :cond_6
    const-string v17, "photo_50"

    goto :goto_4

    .line 80
    :cond_7
    const/16 v17, 0x0

    goto :goto_5

    .line 86
    .end local v15    # "uid":I
    :cond_8
    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    const-string v18, "id"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    neg-int v15, v0

    .line 87
    .restart local v15    # "uid":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 88
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    const-string v19, "name"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual {v11, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v20

    if-lez v17, :cond_a

    const-string v17, "photo_100"

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 89
    :cond_a
    const-string v17, "photo_50"

    goto :goto_6

    .line 103
    .end local v15    # "uid":I
    .restart local v3    # "fixed":Lorg/json/JSONObject;
    .restart local v14    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/NewsEntry;>;"
    :cond_b
    new-instance v8, Lcom/vkontakte/android/NewsEntry;

    iget-object v0, v6, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0, v7, v9, v4}, Lcom/vkontakte/android/NewsEntry;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 104
    .restart local v8    # "ne":Lcom/vkontakte/android/NewsEntry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/WallGet;->uid:I

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkontakte/android/api/WallGet;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v8, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    .line 105
    :cond_c
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallGet$Callback;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/vkontakte/android/api/WallGet;->callback:Lcom/vkontakte/android/api/WallGet$Callback;

    .line 128
    return-object p0
.end method
