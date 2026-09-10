.class public Lcom/vkontakte/android/api/FriendsGetRequests;
.super Lcom/vkontakte/android/APIRequest;
.source "FriendsGetRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FriendsGetRequests$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 20
    const-string v0, "execute.getFullFriendRequestsNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .line 26
    const-string v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 27
    const-string v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 29
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    if-nez v1, :cond_0

    .line 134
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 128
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 130
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 26
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 38
    :try_start_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v18, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v11, "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-static {v11}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 41
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "f"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 42
    .local v17, "requests":Lorg/json/JSONArray;
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "p"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 43
    .local v15, "profiles":Lorg/json/JSONArray;
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "c"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 44
    .local v5, "ct":Lorg/json/JSONArray;
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "cn"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 45
    .local v3, "cn":Lorg/json/JSONArray;
    const-string v23, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "mc"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 46
    .local v10, "myCountry":I
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v23

    if-eqz v23, :cond_0

    if-nez v15, :cond_1

    .line 47
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->success(Ljava/util/ArrayList;)V

    .line 49
    :cond_1
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v21, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v2, "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v4, "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    .line 53
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v6, v0, :cond_5

    .line 73
    .end local v6    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 74
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v6, v0, :cond_a

    .line 78
    .end local v6    # "i":I
    :cond_3
    if-eqz v3, :cond_4

    .line 79
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v6, v0, :cond_b

    .line 84
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-lt v6, v0, :cond_c

    .line 123
    .end local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "cn":Lorg/json/JSONArray;
    .end local v4    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "ct":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v10    # "myCountry":I
    .end local v11    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v15    # "profiles":Lorg/json/JSONArray;
    .end local v17    # "requests":Lorg/json/JSONArray;
    .end local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .end local v21    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :goto_4
    return-object v18

    .line 54
    .restart local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3    # "cn":Lorg/json/JSONArray;
    .restart local v4    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "ct":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v10    # "myCountry":I
    .restart local v11    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v15    # "profiles":Lorg/json/JSONArray;
    .restart local v17    # "requests":Lorg/json/JSONArray;
    .restart local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .restart local v21    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 55
    .local v8, "jp":Lorg/json/JSONObject;
    new-instance v13, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v13}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 56
    .local v13, "p":Lcom/vkontakte/android/UserProfile;
    const-string v23, "first_name"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 57
    const-string v23, "last_name"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 58
    new-instance v23, Ljava/lang/StringBuilder;

    iget-object v0, v13, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 59
    sget v23, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v24

    if-lez v23, :cond_7

    const-string v23, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 60
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    iput v0, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 61
    const-string v23, "country"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v13, Lcom/vkontakte/android/UserProfile;->country:I

    .line 62
    const-string v23, "city"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    move/from16 v0, v23

    iput v0, v13, Lcom/vkontakte/android/UserProfile;->city:I

    .line 63
    const-string v23, "university_name"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_8

    .line 64
    const-string v23, "university_name"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "\r\n"

    const-string v25, ""

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 65
    const-string v23, "graduation"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    if-lez v23, :cond_6

    .line 66
    iget-object v0, v13, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\'"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "graduation"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    rem-int/lit8 v24, v24, 0x64

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 71
    :cond_6
    :goto_6
    const-string v23, "id"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 59
    :cond_7
    const-string v23, "photo_rec"

    goto/16 :goto_5

    .line 69
    :cond_8
    const/16 v23, 0x0

    move-object/from16 v0, v23

    iput-object v0, v13, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 119
    .end local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "cn":Lorg/json/JSONArray;
    .end local v4    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "ct":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v8    # "jp":Lorg/json/JSONObject;
    .end local v10    # "myCountry":I
    .end local v11    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v13    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v15    # "profiles":Lorg/json/JSONArray;
    .end local v17    # "requests":Lorg/json/JSONArray;
    .end local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .end local v21    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v22

    .line 120
    .local v22, "x":Ljava/lang/Exception;
    const-string v23, "vk"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    const-string v25, "Parse error"

    invoke-interface/range {v23 .. v25}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->fail(ILjava/lang/String;)V

    .line 123
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 75
    .end local v22    # "x":Ljava/lang/Exception;
    .restart local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3    # "cn":Lorg/json/JSONArray;
    .restart local v4    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "ct":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v10    # "myCountry":I
    .restart local v11    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v15    # "profiles":Lorg/json/JSONArray;
    .restart local v17    # "requests":Lorg/json/JSONArray;
    .restart local v18    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .restart local v21    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_a
    :try_start_1
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "id"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "title"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 80
    :cond_b
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "id"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "title"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 85
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 86
    .local v9, "jreq":Lorg/json/JSONObject;
    new-instance v16, Lcom/vkontakte/android/api/FriendRequest;

    invoke-direct/range {v16 .. v16}, Lcom/vkontakte/android/api/FriendRequest;-><init>()V

    .line 87
    .local v16, "req":Lcom/vkontakte/android/api/FriendRequest;
    const-string v23, "user_id"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    .line 88
    const-string v23, "message"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    .line 89
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->country:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v0, v10, :cond_e

    if-eqz v10, :cond_e

    .line 90
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 98
    :cond_d
    :goto_7
    const-string v23, "mutual"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 99
    const/16 v23, 0x5

    const-string v24, "mutual"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    const-string v25, "users"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 100
    .local v12, "nMFriends":I
    new-array v0, v12, [Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    .line 101
    const-string v23, "mutual"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "count"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    .line 102
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    if-lt v7, v12, :cond_10

    .line 116
    .end local v7    # "j":I
    .end local v12    # "nMFriends":I
    :goto_9
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 92
    :cond_e
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->country:I

    move/from16 v23, v0

    if-nez v23, :cond_f

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    goto :goto_7

    .line 94
    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->country:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 95
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->city:I

    move/from16 v23, v0

    if-lez v23, :cond_d

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, ", "

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->city:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    goto/16 :goto_7

    .line 103
    .restart local v7    # "j":I
    .restart local v12    # "nMFriends":I
    :cond_10
    const-string v23, "mutual"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "users"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v19

    .line 104
    .local v19, "uid":I
    new-instance v20, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v20 .. v20}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 105
    .local v20, "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_11
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_12

    .line 111
    :goto_a
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    move-object/from16 v23, v0

    aput-object v20, v23, v7

    .line 102
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 105
    :cond_12
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkontakte/android/UserProfile;

    .line 106
    .local v14, "pp":Lcom/vkontakte/android/UserProfile;
    iget v0, v14, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 107
    move-object/from16 v20, v14

    .line 108
    goto :goto_a

    .line 114
    .end local v7    # "j":I
    .end local v12    # "nMFriends":I
    .end local v14    # "pp":Lcom/vkontakte/android/UserProfile;
    .end local v19    # "uid":I
    .end local v20    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_13
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsGetRequests$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .line 33
    return-object p0
.end method
