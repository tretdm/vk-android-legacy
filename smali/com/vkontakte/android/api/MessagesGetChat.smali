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
    .line 20
    const-string v0, "messages.getChat"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesGetChat;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "fields"

    const-string v2, "photo_rec,photo_medium_rec"

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 72
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 76
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetChat$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 78
    check-cast v1, [Ljava/lang/Object;

    .line 79
    .local v1, "r":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v2, v3, v4}, Lcom/vkontakte/android/api/MessagesGetChat$Callback;->success(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 18
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    :try_start_0
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 27
    .local v9, "r":Lorg/json/JSONObject;
    const-string v14, "users"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 28
    .local v1, "arr":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v8, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v12, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v6, "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_1

    .line 41
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_3

    .line 47
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 48
    invoke-static {v6}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v13

    .line 49
    .local v13, "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_5

    .line 51
    .end local v13    # "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v3, v14, :cond_6

    .line 60
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v16, 0x2

    sget v15, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v17

    if-lez v15, :cond_7

    const-string v15, "photo_100"

    :goto_4
    invoke-static {v8}, Lcom/vkontakte/android/data/Messages;->createChatPhoto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v16

    .line 63
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v6    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .end local v9    # "r":Lorg/json/JSONObject;
    .end local v12    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :goto_5
    return-object v14

    .line 32
    .restart local v1    # "arr":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v6    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .restart local v9    # "r":Lorg/json/JSONObject;
    .restart local v12    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 33
    .local v5, "jp":Lorg/json/JSONObject;
    new-instance v7, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v7}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 34
    .local v7, "p":Lcom/vkontakte/android/UserProfile;
    const-string v14, "id"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 35
    const-string v14, "first_name"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 36
    const-string v14, "last_name"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 37
    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 38
    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_2

    const-string v14, "photo_medium_rec"

    :goto_6
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 39
    iget v14, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 38
    :cond_2
    const-string v14, "photo_rec"

    goto :goto_6

    .line 42
    .end local v5    # "jp":Lorg/json/JSONObject;
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_3
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 43
    .restart local v5    # "jp":Lorg/json/JSONObject;
    const-string v14, "id"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 44
    .local v11, "userID":I
    const-string v14, "invited_by"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 45
    .local v4, "invID":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 49
    .end local v4    # "invID":I
    .end local v5    # "jp":Lorg/json/JSONObject;
    .end local v11    # "userID":I
    .restart local v13    # "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkontakte/android/UserProfile;

    .local v10, "u":Lcom/vkontakte/android/UserProfile;
    iget v15, v10, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 61
    .end local v1    # "arr":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v6    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .end local v9    # "r":Lorg/json/JSONObject;
    .end local v10    # "u":Lcom/vkontakte/android/UserProfile;
    .end local v12    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    .end local v13    # "uu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v14

    .line 63
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 52
    .restart local v1    # "arr":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v6    # "missingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/ChatUser;>;"
    .restart local v9    # "r":Lorg/json/JSONObject;
    .restart local v12    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_6
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 53
    .restart local v5    # "jp":Lorg/json/JSONObject;
    const-string v14, "id"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 54
    .restart local v11    # "userID":I
    const-string v14, "invited_by"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 55
    .restart local v4    # "invID":I
    new-instance v2, Lcom/vkontakte/android/ChatUser;

    invoke-direct {v2}, Lcom/vkontakte/android/ChatUser;-><init>()V

    .line 56
    .local v2, "cu":Lcom/vkontakte/android/ChatUser;
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/UserProfile;

    iput-object v14, v2, Lcom/vkontakte/android/ChatUser;->user:Lcom/vkontakte/android/UserProfile;

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/UserProfile;

    iput-object v14, v2, Lcom/vkontakte/android/ChatUser;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 58
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 60
    .end local v2    # "cu":Lcom/vkontakte/android/ChatUser;
    .end local v4    # "invID":I
    .end local v5    # "jp":Lorg/json/JSONObject;
    .end local v11    # "userID":I
    :cond_7
    const-string v15, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesGetChat$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesGetChat;->callback:Lcom/vkontakte/android/api/MessagesGetChat$Callback;

    .line 68
    return-object p0
.end method
