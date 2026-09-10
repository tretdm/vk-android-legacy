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
    .line 25
    const-string v0, "execute.getDialogsWithProfilesNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetDialogs;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 27
    const-string v0, "vk"

    const-string v1, "MESSAGES GET DIALOGS"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 130
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    if-nez v2, :cond_0

    .line 138
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 131
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 132
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 133
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 136
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
    .locals 26
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    :try_start_0
    sget-object v23, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    const-string v24, "userphoto"

    const-string v25, ""

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 37
    .local v15, "myPhoto":Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v19, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v18, "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "p"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 40
    .local v16, "p":Lorg/json/JSONArray;
    if-eqz v16, :cond_1

    .line 41
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_1

    .line 42
    new-instance v21, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v21 .. v21}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 43
    .local v21, "up":Lcom/vkontakte/android/UserProfile;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "first_name"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 44
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "last_name"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 45
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "first_name"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "last_name"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 46
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    sget v23, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v25

    if-lez v23, :cond_0

    const-string v23, "photo_medium_rec"

    :goto_1
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 47
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "id"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 48
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v21

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 50
    move-object/from16 v0, v21

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 46
    :cond_0
    const-string v23, "photo_rec"

    goto :goto_1

    .line 52
    .end local v8    # "i":I
    .end local v21    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_1
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    new-instance v24, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v24 .. v24}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "a"

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v4

    .line 55
    .local v4, "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    if-nez v4, :cond_2

    .line 56
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v19, v23, v24

    .line 126
    .end local v4    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v15    # "myPhoto":Ljava/lang/String;
    .end local v16    # "p":Lorg/json/JSONArray;
    .end local v18    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v19    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :goto_2
    return-object v23

    .line 58
    .restart local v4    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v15    # "myPhoto":Ljava/lang/String;
    .restart local v16    # "p":Lorg/json/JSONArray;
    .restart local v18    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v19    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    :cond_2
    iget-object v3, v4, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 59
    .local v3, "a":Lorg/json/JSONArray;
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "a"

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    move/from16 v20, v0

    .line 61
    .local v20, "total":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_10

    .line 62
    new-instance v7, Lcom/vkontakte/android/DialogEntry;

    invoke-direct {v7}, Lcom/vkontakte/android/DialogEntry;-><init>()V

    .line 63
    .local v7, "entry":Lcom/vkontakte/android/DialogEntry;
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 64
    .local v13, "msgWrap":Lorg/json/JSONObject;
    const-string v23, "message"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 66
    .local v12, "msg":Lorg/json/JSONObject;
    const-string v23, "unread"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v7, Lcom/vkontakte/android/DialogEntry;->unreadCount:I

    .line 68
    const-string v23, "user_id"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 69
    const-string v23, "user_id"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 71
    :cond_3
    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 72
    new-instance v23, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v23 .. v23}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 73
    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    const-string v24, "user_id"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 76
    :cond_4
    new-instance v11, Lcom/vkontakte/android/Message;

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v11, v12, v0, v1}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 78
    .local v11, "m":Lcom/vkontakte/android/Message;
    iput-object v11, v7, Lcom/vkontakte/android/DialogEntry;->lastMessage:Lcom/vkontakte/android/Message;

    .line 79
    iget v0, v11, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 80
    iget v0, v11, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/vkontakte/android/DialogEntry;->lastMessagePhoto:Ljava/lang/String;

    .line 83
    :goto_4
    iget v0, v11, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v23, v0

    const v24, 0x77359400

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 84
    new-instance v23, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v23 .. v23}, Lcom/vkontakte/android/UserProfile;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    .line 85
    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    iget v0, v11, Lcom/vkontakte/android/Message;->peer:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 86
    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    const-string v24, "title"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 87
    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    const-string v24, "admin_id"

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/vkontakte/android/UserProfile;->online:I

    .line 88
    const/4 v6, 0x0

    .line 89
    .local v6, "dnd":I
    const/4 v14, 0x0

    .line 90
    .local v14, "mute":Z
    const-string v23, "push_settings"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 91
    const-string v23, "push_settings"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 92
    .local v10, "jps":Lorg/json/JSONObject;
    const-string v23, "disabled_until"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 93
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_5

    const v6, 0x7fffffff

    .line 94
    :cond_5
    const-string v23, "sound"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    const/4 v14, 0x1

    .line 96
    .end local v10    # "jps":Lorg/json/JSONObject;
    :cond_6
    :goto_5
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v22, "x":Landroid/os/Bundle;
    const-string v23, "dnd"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v23, "mute"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    .line 100
    const-string v23, "photo_50"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 101
    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v24, v0

    sget v23, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v25

    if-lez v23, :cond_a

    const-string v23, "photo_100"

    :goto_6
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 120
    .end local v6    # "dnd":I
    .end local v14    # "mute":Z
    .end local v22    # "x":Landroid/os/Bundle;
    :cond_7
    :goto_7
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 82
    :cond_8
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Profile for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v11, Lcom/vkontakte/android/Message;->sender:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " not found!!!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 123
    .end local v3    # "a":Lorg/json/JSONArray;
    .end local v4    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v7    # "entry":Lcom/vkontakte/android/DialogEntry;
    .end local v8    # "i":I
    .end local v11    # "m":Lcom/vkontakte/android/Message;
    .end local v12    # "msg":Lorg/json/JSONObject;
    .end local v13    # "msgWrap":Lorg/json/JSONObject;
    .end local v15    # "myPhoto":Ljava/lang/String;
    .end local v16    # "p":Lorg/json/JSONArray;
    .end local v18    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v19    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .end local v20    # "total":I
    :catch_0
    move-exception v22

    .line 124
    .local v22, "x":Ljava/lang/Exception;
    const-string v23, "vk"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 94
    .end local v22    # "x":Ljava/lang/Exception;
    .restart local v3    # "a":Lorg/json/JSONArray;
    .restart local v4    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v6    # "dnd":I
    .restart local v7    # "entry":Lcom/vkontakte/android/DialogEntry;
    .restart local v8    # "i":I
    .restart local v10    # "jps":Lorg/json/JSONObject;
    .restart local v11    # "m":Lcom/vkontakte/android/Message;
    .restart local v12    # "msg":Lorg/json/JSONObject;
    .restart local v13    # "msgWrap":Lorg/json/JSONObject;
    .restart local v14    # "mute":Z
    .restart local v15    # "myPhoto":Ljava/lang/String;
    .restart local v16    # "p":Lorg/json/JSONArray;
    .restart local v18    # "profiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .restart local v19    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/DialogEntry;>;"
    .restart local v20    # "total":I
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 101
    .end local v10    # "jps":Lorg/json/JSONObject;
    .local v22, "x":Landroid/os/Bundle;
    :cond_a
    :try_start_1
    const-string v23, "photo_50"

    goto :goto_6

    .line 103
    :cond_b
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v17, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v23, "M"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v23, "chat_active"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 106
    .local v5, "act":Lorg/json/JSONArray;
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "chat active "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_f

    .line 108
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v23

    sget v24, Lcom/vkontakte/android/Global;->uid:I

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 107
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 109
    :cond_d
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 110
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 115
    :cond_f
    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    const-string v24, "|"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 116
    const-string v23, "vk"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Set photo "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v7, Lcom/vkontakte/android/DialogEntry;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 122
    .end local v5    # "act":Lorg/json/JSONArray;
    .end local v6    # "dnd":I
    .end local v7    # "entry":Lcom/vkontakte/android/DialogEntry;
    .end local v9    # "j":I
    .end local v11    # "m":Lcom/vkontakte/android/Message;
    .end local v12    # "msg":Lorg/json/JSONObject;
    .end local v13    # "msgWrap":Lorg/json/JSONObject;
    .end local v14    # "mute":Z
    .end local v17    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "x":Landroid/os/Bundle;
    :cond_10
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v19, v23, v24
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetDialogs;->callback:Lcom/vkontakte/android/api/MessagesGetDialogs$Callback;

    .line 142
    return-object p0
.end method
