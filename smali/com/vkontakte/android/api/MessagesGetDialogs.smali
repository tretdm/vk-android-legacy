.class public Lcom/vkontakte/android/api/MessagesGetDialogs;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesGetDialogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 24
    const-string v0, "execute.getDialogsWithProfilesNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetDialogs;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 26
    const-string v0, "vk"

    const-string v1, "MESSAGES GET DIALOGS"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    if-nez v2, :cond_0

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 119
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 120
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 122
    check-cast v1, [Ljava/lang/Object;

    .line 123
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;->success(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 22
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    :try_start_0
    sget-object v19, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "userphoto"

    const-string v21, ""

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 36
    .local v11, "myPhoto":Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v15, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 38
    .local v14, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "p"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 39
    .local v12, "p":Lorg/json/JSONArray;
    if-eqz v12, :cond_0

    .line 40
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-lt v6, v0, :cond_1

    .line 51
    .end local v6    # "i":I
    :cond_0
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    new-instance v20, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v20 .. v20}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "a"

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v3

    .line 54
    .local v3, "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    if-nez v3, :cond_3

    .line 55
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v15, v19, v20

    .line 113
    .end local v3    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v11    # "myPhoto":Ljava/lang/String;
    .end local v12    # "p":Lorg/json/JSONArray;
    .end local v14    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v15    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :goto_1
    return-object v19

    .line 41
    .restart local v6    # "i":I
    .restart local v11    # "myPhoto":Ljava/lang/String;
    .restart local v12    # "p":Lorg/json/JSONArray;
    .restart local v14    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v15    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_1
    new-instance v17, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v17 .. v17}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 42
    .local v17, "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "first_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 43
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "last_name"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 44
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    const-string v21, "first_name"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    const-string v21, "last_name"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 45
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    sget v19, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v21

    if-lez v19, :cond_2

    const-string v19, "photo_medium_rec"

    :goto_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 46
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "id"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 47
    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 49
    move-object/from16 v0, v17

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 45
    :cond_2
    const-string v19, "photo_rec"

    goto :goto_2

    .line 57
    .end local v6    # "i":I
    .end local v17    # "up":Lcom/vkontakte/android/UserProfile;
    .restart local v3    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    :cond_3
    iget-object v2, v3, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 58
    .local v2, "a":Lorg/json/JSONArray;
    const-string v19, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    const-string v20, "a"

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    move/from16 v16, v0

    .line 60
    .local v16, "total":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-lt v6, v0, :cond_4

    .line 109
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v15, v19, v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 110
    .end local v2    # "a":Lorg/json/JSONArray;
    .end local v3    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v6    # "i":I
    .end local v11    # "myPhoto":Ljava/lang/String;
    .end local v12    # "p":Lorg/json/JSONArray;
    .end local v14    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v15    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v16    # "total":I
    :catch_0
    move-exception v18

    .line 111
    .local v18, "x":Ljava/lang/Exception;
    const-string v19, "vk"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 61
    .end local v18    # "x":Ljava/lang/Exception;
    .restart local v2    # "a":Lorg/json/JSONArray;
    .restart local v3    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v6    # "i":I
    .restart local v11    # "myPhoto":Ljava/lang/String;
    .restart local v12    # "p":Lorg/json/JSONArray;
    .restart local v14    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v15    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .restart local v16    # "total":I
    :cond_4
    :try_start_1
    new-instance v5, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v5}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 62
    .local v5, "entry":Lcom/vkontakte/android/DialogEntry;
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 63
    .local v10, "msgWrap":Lorg/json/JSONObject;
    const-string v19, "message"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 65
    .local v9, "msg":Lorg/json/JSONObject;
    const-string v19, "unread"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v5, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 67
    const-string v19, "user_id"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 68
    const-string v19, "user_id"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 70
    :cond_5
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v19, v0

    if-nez v19, :cond_6

    .line 71
    new-instance v19, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v19 .. v19}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 72
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v19, v0

    const-string v20, "user_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 75
    :cond_6
    new-instance v8, Lcom/vkontakte/android/Message;

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v8, v9, v0, v1}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 77
    .local v8, "m":Lcom/vkontakte/android/Message;
    iput-object v8, v5, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 78
    iget v0, v8, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 79
    iget v0, v8, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 82
    :goto_4
    iget v0, v8, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v19, v0

    const v20, 0x77359400

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 83
    new-instance v19, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v19 .. v19}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 84
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v19, v0

    iget v0, v8, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 85
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v19, v0

    const-string v20, "title"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 86
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v19, v0

    const-string v20, "admin_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 87
    const-string v19, "photo_50"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 88
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v20, v0

    sget v19, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v19, v19, v21

    if-lez v19, :cond_9

    const-string v19, "photo_100"

    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 107
    :cond_7
    :goto_6
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 81
    :cond_8
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Profile for "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v8, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " not found!!!"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 88
    :cond_9
    const-string v19, "photo_50"

    goto :goto_5

    .line 90
    :cond_a
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v13, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v19, "M"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const-string v19, "chat_active"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 93
    .local v4, "act":Lorg/json/JSONArray;
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "chat active "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v19

    move/from16 v0, v19

    if-lt v7, v0, :cond_b

    .line 102
    :goto_8
    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v19, v0

    const-string v20, "|"

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 103
    const-string v19, "vk"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Set photo "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 95
    :cond_b
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    sget v20, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 94
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 96
    :cond_d
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 97
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    goto :goto_8
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    .line 129
    return-object p0
.end method
