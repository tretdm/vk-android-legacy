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
.method public constructor <init>(IIZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "onlySuggests"    # Z

    .prologue
    .line 22
    const-string v0, "execute.getFullFriendRequestsNew"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .line 23
    const-string v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 24
    const-string v0, "count"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 25
    if-eqz p3, :cond_0

    .line 26
    const-string v0, "only_suggests"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/FriendsGetRequests;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 158
    iget-object v2, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    if-nez v2, :cond_0

    .line 166
    :goto_0
    return-void

    .line 159
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 160
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 161
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 163
    check-cast v1, [Ljava/lang/Object;

    .line 164
    .local v1, "r":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v2, v3, v4}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->success(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 32
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    :try_start_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v22, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v19, "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v11, "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-static {v11}, Lcom/vkontakte/android/data/Friends;->getFriends(Ljava/util/ArrayList;)V

    .line 40
    const-string v27, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "f"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 41
    .local v21, "requests":Lorg/json/JSONArray;
    const-string v27, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "p"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 42
    .local v16, "profiles":Lorg/json/JSONArray;
    const-string v27, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "s"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 43
    .local v17, "recom":Lorg/json/JSONArray;
    const-string v27, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "s_from"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 44
    .local v4, "fnames":Lorg/json/JSONArray;
    const-string v27, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "sc"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 45
    .local v18, "recomCnt":I
    const/4 v10, 0x0

    .line 46
    .local v10, "myCountry":I
    const-string v27, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "mc"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 47
    const-string v27, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "mc"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "id"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 49
    :cond_0
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-nez v27, :cond_2

    :cond_1
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v27

    if-eqz v27, :cond_3

    :cond_2
    if-nez v16, :cond_4

    .line 50
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->success(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 52
    :cond_4
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v25, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v5, "fromNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v16, :cond_5

    .line 55
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-lt v6, v0, :cond_8

    .line 80
    .end local v6    # "i":I
    :cond_5
    if-eqz v4, :cond_6

    .line 81
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-lt v6, v0, :cond_e

    .line 87
    .end local v6    # "i":I
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-lt v6, v0, :cond_f

    .line 113
    if-eqz v17, :cond_7

    .line 114
    const/4 v6, 0x0

    :goto_3
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-lt v6, v0, :cond_14

    .line 149
    :cond_7
    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v22, v27, v28

    const/16 v28, 0x1

    aput-object v19, v27, v28

    const/16 v28, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    .line 154
    .end local v4    # "fnames":Lorg/json/JSONArray;
    .end local v5    # "fromNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v10    # "myCountry":I
    .end local v11    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v16    # "profiles":Lorg/json/JSONArray;
    .end local v17    # "recom":Lorg/json/JSONArray;
    .end local v18    # "recomCnt":I
    .end local v19    # "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .end local v21    # "requests":Lorg/json/JSONArray;
    .end local v22    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .end local v25    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :goto_4
    return-object v27

    .line 56
    .restart local v4    # "fnames":Lorg/json/JSONArray;
    .restart local v5    # "fromNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "i":I
    .restart local v10    # "myCountry":I
    .restart local v11    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v16    # "profiles":Lorg/json/JSONArray;
    .restart local v17    # "recom":Lorg/json/JSONArray;
    .restart local v18    # "recomCnt":I
    .restart local v19    # "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .restart local v21    # "requests":Lorg/json/JSONArray;
    .restart local v22    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .restart local v25    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 57
    .local v8, "jp":Lorg/json/JSONObject;
    new-instance v14, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v14}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 58
    .local v14, "p":Lcom/vkontakte/android/UserProfile;
    const-string v27, "first_name"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 59
    const-string v27, "last_name"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 60
    new-instance v27, Ljava/lang/StringBuilder;

    iget-object v0, v14, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v14, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 61
    sget v27, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_a

    const-string v27, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 62
    const-string v27, "id"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    iput v0, v14, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 63
    const-string v27, "country"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v14, Lcom/vkontakte/android/UserProfile;->country:I

    .line 64
    const-string v27, "city"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    iput v0, v14, Lcom/vkontakte/android/UserProfile;->city:I

    .line 65
    const-string v27, "university_name"

    const-string v28, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_b

    .line 66
    const-string v27, "university_name"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "\r\n"

    const-string v29, ""

    invoke-virtual/range {v27 .. v29}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 67
    const-string v27, "graduation"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v27

    if-lez v27, :cond_9

    .line 68
    iget-object v0, v14, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, " \'%02d"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "graduation"

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    rem-int/lit8 v31, v31, 0x64

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 77
    :cond_9
    :goto_6
    const-string v27, "id"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 61
    :cond_a
    const-string v27, "photo_rec"

    goto/16 :goto_5

    .line 70
    :cond_b
    const-string v27, "country"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 71
    const-string v27, "country"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "title"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 72
    const-string v27, "city"

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 73
    iget-object v0, v14, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, ", "

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "city"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "title"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 150
    .end local v4    # "fnames":Lorg/json/JSONArray;
    .end local v5    # "fromNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "i":I
    .end local v8    # "jp":Lorg/json/JSONObject;
    .end local v10    # "myCountry":I
    .end local v11    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v14    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v16    # "profiles":Lorg/json/JSONArray;
    .end local v17    # "recom":Lorg/json/JSONArray;
    .end local v18    # "recomCnt":I
    .end local v19    # "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .end local v21    # "requests":Lorg/json/JSONArray;
    .end local v22    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .end local v25    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v26

    .line 151
    .local v26, "x":Ljava/lang/Exception;
    const-string v27, "vk"

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    const-string v29, "Parse error"

    invoke-interface/range {v27 .. v29}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->fail(ILjava/lang/String;)V

    .line 154
    :cond_c
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 75
    .end local v26    # "x":Ljava/lang/Exception;
    .restart local v4    # "fnames":Lorg/json/JSONArray;
    .restart local v5    # "fromNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v6    # "i":I
    .restart local v8    # "jp":Lorg/json/JSONObject;
    .restart local v10    # "myCountry":I
    .restart local v11    # "myFriends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v14    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v16    # "profiles":Lorg/json/JSONArray;
    .restart local v17    # "recom":Lorg/json/JSONArray;
    .restart local v18    # "recomCnt":I
    .restart local v19    # "recoms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .restart local v21    # "requests":Lorg/json/JSONArray;
    .restart local v22    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/FriendRequest;>;"
    .restart local v25    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_d
    const/16 v27, 0x0

    :try_start_1
    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    goto/16 :goto_6

    .line 82
    .end local v8    # "jp":Lorg/json/JSONObject;
    .end local v14    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_e
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 83
    .local v13, "oo":Lorg/json/JSONObject;
    const-string v27, "id"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "first_name"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "last_name"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 88
    .end local v13    # "oo":Lorg/json/JSONObject;
    :cond_f
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 89
    .local v9, "jreq":Lorg/json/JSONObject;
    new-instance v20, Lcom/vkontakte/android/api/FriendRequest;

    invoke-direct/range {v20 .. v20}, Lcom/vkontakte/android/api/FriendRequest;-><init>()V

    .line 90
    .local v20, "req":Lcom/vkontakte/android/api/FriendRequest;
    const-string v27, "user_id"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    .line 91
    const-string v27, "message"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    .line 92
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 93
    const-string v27, "mutual"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 94
    const/16 v27, 0x5

    const-string v28, "mutual"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "users"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 95
    .local v12, "nMFriends":I
    new-array v0, v12, [Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    .line 96
    const-string v27, "mutual"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "count"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    .line 97
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    if-lt v7, v12, :cond_10

    .line 111
    .end local v7    # "j":I
    .end local v12    # "nMFriends":I
    :goto_8
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 98
    .restart local v7    # "j":I
    .restart local v12    # "nMFriends":I
    :cond_10
    const-string v27, "mutual"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "users"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v23

    .line 99
    .local v23, "uid":I
    new-instance v24, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v24 .. v24}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 100
    .local v24, "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_11
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_12

    .line 106
    :goto_9
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    aput-object v24, v27, v7

    .line 97
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 100
    :cond_12
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/UserProfile;

    .line 101
    .local v15, "pp":Lcom/vkontakte/android/UserProfile;
    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 102
    move-object/from16 v24, v15

    .line 103
    goto :goto_9

    .line 109
    .end local v7    # "j":I
    .end local v12    # "nMFriends":I
    .end local v15    # "pp":Lcom/vkontakte/android/UserProfile;
    .end local v23    # "uid":I
    .end local v24    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_13
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    goto :goto_8

    .line 115
    .end local v9    # "jreq":Lorg/json/JSONObject;
    .end local v20    # "req":Lcom/vkontakte/android/api/FriendRequest;
    :cond_14
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 116
    .restart local v9    # "jreq":Lorg/json/JSONObject;
    new-instance v20, Lcom/vkontakte/android/api/FriendRequest;

    invoke-direct/range {v20 .. v20}, Lcom/vkontakte/android/api/FriendRequest;-><init>()V

    .line 117
    .restart local v20    # "req":Lcom/vkontakte/android/api/FriendRequest;
    const-string v27, "user_id"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    .line 118
    sget-object v27, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0802b5

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-string v31, "from"

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-virtual/range {v27 .. v29}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    .line 120
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 128
    const-string v27, "mutual"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_18

    .line 129
    const/16 v27, 0x5

    const-string v28, "mutual"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v28

    const-string v29, "users"

    invoke-virtual/range {v28 .. v29}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 130
    .restart local v12    # "nMFriends":I
    new-array v0, v12, [Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    .line 131
    const-string v27, "mutual"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "count"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    .line 132
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_a
    if-lt v7, v12, :cond_15

    .line 146
    .end local v7    # "j":I
    .end local v12    # "nMFriends":I
    :goto_b
    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 133
    .restart local v7    # "j":I
    .restart local v12    # "nMFriends":I
    :cond_15
    const-string v27, "mutual"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    const-string v28, "users"

    invoke-virtual/range {v27 .. v28}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v23

    .line 134
    .restart local v23    # "uid":I
    new-instance v24, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v24 .. v24}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 135
    .restart local v24    # "up":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_16
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-nez v28, :cond_17

    .line 141
    :goto_c
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    move-object/from16 v27, v0

    aput-object v24, v27, v7

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 135
    :cond_17
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vkontakte/android/UserProfile;

    .line 136
    .restart local v15    # "pp":Lcom/vkontakte/android/UserProfile;
    iget v0, v15, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 137
    move-object/from16 v24, v15

    .line 138
    goto :goto_c

    .line 144
    .end local v7    # "j":I
    .end local v12    # "nMFriends":I
    .end local v15    # "pp":Lcom/vkontakte/android/UserProfile;
    .end local v23    # "uid":I
    .end local v24    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_18
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsGetRequests$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .line 31
    return-object p0
.end method
