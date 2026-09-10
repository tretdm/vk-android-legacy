.class public Lcom/vkontakte/android/api/MessagesGetChat;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesGetChat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesGetChat$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "chatID"    # I

    .prologue
    .line 23
    const-string v0, "messages.getChat"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetChat;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "fields"

    const-string v2, "photo_rec,photo_medium_rec,sex"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 25
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    if-nez v0, :cond_0

    .line 94
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 87
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 88
    check-cast v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 89
    .local v7, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    iget v1, v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v2, v7, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkontakte/android/api/MessagesGetChat$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v7    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v8, p1

    check-cast v8, [Ljava/lang/Object;

    .line 92
    .local v8, "r":[Ljava/lang/Object;
    iget-object v0, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget-object v2, v8, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v8, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v4, v8, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v8, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x5

    aget-object v6, v8, v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/vkontakte/android/api/MessagesGetChat$Callback;->success(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 24
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    :try_start_0
    const-string v20, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 30
    .local v14, "r":Lorg/json/JSONObject;
    const-string v20, "users"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 31
    .local v2, "arr":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v13, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v17, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v10, "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_2

    .line 35
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 36
    .local v8, "jp":Lorg/json/JSONObject;
    new-instance v12, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v12}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 37
    .local v12, "p":Lcom/vkontakte/android/UserProfile;
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 38
    const-string v20, "first_name"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 39
    const-string v20, "last_name"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 40
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 41
    sget v20, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_0

    const-string v20, "photo_medium_rec"

    :goto_1
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 42
    const-string v20, "sex"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    :goto_2
    move/from16 v0, v20

    iput-boolean v0, v12, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 43
    iget v0, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 41
    :cond_0
    const-string v20, "photo_rec"

    goto :goto_1

    .line 42
    :cond_1
    const/16 v20, 0x0

    goto :goto_2

    .line 45
    .end local v8    # "jp":Lorg/json/JSONObject;
    .end local v12    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_2
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_4

    .line 46
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 47
    .restart local v8    # "jp":Lorg/json/JSONObject;
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 48
    .local v16, "userID":I
    const-string v20, "invited_by"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 49
    .local v7, "invID":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 51
    .end local v7    # "invID":I
    .end local v8    # "jp":Lorg/json/JSONObject;
    .end local v16    # "userID":I
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_5

    .line 52
    invoke-static {v10}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v18

    .line 53
    .local v18, "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/UserProfile;

    .local v15, "u":Lcom/vkontakte/android/UserProfile;
    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 73
    .end local v2    # "arr":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .end local v14    # "r":Lorg/json/JSONObject;
    .end local v15    # "u":Lcom/vkontakte/android/UserProfile;
    .end local v17    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v18    # "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v19

    .line 74
    .local v19, "x":Ljava/lang/Exception;
    const-string v20, "vk"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    const/16 v20, 0x0

    .end local v19    # "x":Ljava/lang/Exception;
    :goto_5
    return-object v20

    .line 55
    .restart local v2    # "arr":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v10    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v13    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .restart local v14    # "r":Lorg/json/JSONObject;
    .restart local v17    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    const/4 v5, 0x0

    :goto_6
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v5, v0, :cond_6

    .line 56
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 57
    .restart local v8    # "jp":Lorg/json/JSONObject;
    const-string v20, "id"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 58
    .restart local v16    # "userID":I
    const-string v20, "invited_by"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 59
    .restart local v7    # "invID":I
    new-instance v3, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v3}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 60
    .local v3, "cu":Lcom/vkontakte/android/ChatUser;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v20

    iput-object v0, v3, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 62
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 64
    .end local v3    # "cu":Lcom/vkontakte/android/ChatUser;
    .end local v7    # "invID":I
    .end local v8    # "jp":Lorg/json/JSONObject;
    .end local v16    # "userID":I
    :cond_6
    const/4 v4, 0x0

    .line 65
    .local v4, "dnd":I
    const/4 v11, 0x0

    .line 66
    .local v11, "mute":Z
    const-string v20, "push_settings"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 67
    const-string v20, "push_settings"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 68
    .local v9, "jps":Lorg/json/JSONObject;
    const-string v20, "disabled_until"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 69
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    const v4, 0x7fffffff

    .line 70
    :cond_7
    const-string v20, "sound"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/4 v11, 0x1

    .line 72
    .end local v9    # "jps":Lorg/json/JSONObject;
    :cond_8
    :goto_7
    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v13, v20, v21

    const/16 v21, 0x1

    const-string v22, "title"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v22, 0x2

    sget v21, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v21, v21, v23

    if-lez v21, :cond_a

    const-string v21, "photo_100"

    :goto_8
    invoke-static {v13}, Lcom/vkontakte/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v22

    const/16 v21, 0x3

    const-string v22, "admin_id"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    goto/16 :goto_5

    .line 70
    .restart local v9    # "jps":Lorg/json/JSONObject;
    :cond_9
    const/4 v11, 0x0

    goto :goto_7

    .line 72
    .end local v9    # "jps":Lorg/json/JSONObject;
    :cond_a
    const-string v21, "photo_50"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetChat$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    .line 81
    return-object p0
.end method
