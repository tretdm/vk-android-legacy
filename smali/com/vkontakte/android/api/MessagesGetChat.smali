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
    .line 21
    const-string v0, "messages.getChat"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetChat;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "fields"

    const-string v2, "photo_rec,photo_medium_rec,sex"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 78
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 79
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetChat$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 81
    check-cast v1, [Ljava/lang/Object;

    .line 82
    .local v1, "r":[Ljava/lang/Object;
    iget-object v6, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v2, v3, v4, v5}, Lcom/vkontakte/android/api/MessagesGetChat$Callback;->success(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 20
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 27
    :try_start_0
    const-string v16, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 28
    .local v10, "r":Lorg/json/JSONObject;
    const-string v16, "users"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    .local v2, "arr":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v9, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v13, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v7, "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v4, v0, :cond_1

    .line 43
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v4, v0, :cond_4

    .line 49
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 50
    invoke-static {v7}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    .line 51
    .local v14, "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_6

    .line 53
    .end local v14    # "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v4, v0, :cond_7

    .line 62
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v9, v16, v17

    const/16 v17, 0x1

    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v18, 0x2

    sget v17, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v19

    if-lez v17, :cond_8

    const-string v17, "photo_100"

    :goto_4
    invoke-static {v9}, Lcom/vkontakte/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v16, v18

    const/16 v17, 0x3

    const-string v18, "admin_id"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    .line 66
    .end local v2    # "arr":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v7    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .end local v10    # "r":Lorg/json/JSONObject;
    .end local v13    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :goto_5
    return-object v16

    .line 33
    .restart local v2    # "arr":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v7    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .restart local v10    # "r":Lorg/json/JSONObject;
    .restart local v13    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 34
    .local v6, "jp":Lorg/json/JSONObject;
    new-instance v8, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v8}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 35
    .local v8, "p":Lcom/vkontakte/android/UserProfile;
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 36
    const-string v16, "first_name"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 37
    const-string v16, "last_name"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 38
    new-instance v16, Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v8, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 39
    sget v16, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v16, v16, v17

    if-lez v16, :cond_2

    const-string v16, "photo_medium_rec"

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 40
    const-string v16, "sex"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    :goto_7
    move/from16 v0, v16

    iput-boolean v0, v8, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 41
    iget v0, v8, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 39
    :cond_2
    const-string v16, "photo_rec"

    goto :goto_6

    .line 40
    :cond_3
    const/16 v16, 0x0

    goto :goto_7

    .line 44
    .end local v6    # "jp":Lorg/json/JSONObject;
    .end local v8    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_4
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 45
    .restart local v6    # "jp":Lorg/json/JSONObject;
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 46
    .local v12, "userID":I
    const-string v16, "invited_by"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 47
    .local v5, "invID":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 51
    .end local v5    # "invID":I
    .end local v6    # "jp":Lorg/json/JSONObject;
    .end local v12    # "userID":I
    .restart local v14    # "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/UserProfile;

    .local v11, "u":Lcom/vkontakte/android/UserProfile;
    iget v0, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 63
    .end local v2    # "arr":Lorg/json/JSONArray;
    .end local v4    # "i":I
    .end local v7    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .end local v10    # "r":Lorg/json/JSONObject;
    .end local v11    # "u":Lcom/vkontakte/android/UserProfile;
    .end local v13    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v14    # "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v15

    .line 64
    .local v15, "x":Ljava/lang/Exception;
    const-string v16, "vk"

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 54
    .end local v15    # "x":Ljava/lang/Exception;
    .restart local v2    # "arr":Lorg/json/JSONArray;
    .restart local v4    # "i":I
    .restart local v7    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .restart local v10    # "r":Lorg/json/JSONObject;
    .restart local v13    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_7
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 55
    .restart local v6    # "jp":Lorg/json/JSONObject;
    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 56
    .restart local v12    # "userID":I
    const-string v16, "invited_by"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 57
    .restart local v5    # "invID":I
    new-instance v3, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v3}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 58
    .local v3, "cu":Lcom/vkontakte/android/ChatUser;
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v16

    iput-object v0, v3, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 60
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 62
    .end local v3    # "cu":Lcom/vkontakte/android/ChatUser;
    .end local v5    # "invID":I
    .end local v6    # "jp":Lorg/json/JSONObject;
    .end local v12    # "userID":I
    :cond_8
    const-string v17, "photo_50"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetChat$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    .line 71
    return-object p0
.end method
