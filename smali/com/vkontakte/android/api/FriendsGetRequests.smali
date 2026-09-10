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
    .locals 4
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 19
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .line 20
    const-string v1, "code"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "var f=API.friends.getRequests({need_messages: 1, need_mutual: 1, count: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", offset:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    const-string v2, "var p=API.getProfiles({uids: f@.uid, fields: \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",city,country,education\"});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    const-string v2, "var c=API.places.getCityById({cids:p@.city});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    const-string v2, "var cn=API.places.getCountryById({cids:p@.country});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    const-string v2, "return {f: f, p: p, c:c, cn:cn, mc:API.getProfiles({uids:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",fields:\"country\"})[0].country};"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/FriendsGetRequests;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 25
    const-string v1, "vk"

    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->params:Ljava/util/Hashtable;

    const-string v2, "code"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/vkontakte/android/api/FriendsGetRequests$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/FriendsGetRequests$1;-><init>(Lcom/vkontakte/android/api/FriendsGetRequests;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/FriendsGetRequests;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 34
    return-void

    .line 21
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkontakte/android/api/FriendsGetRequests;)Lcom/vkontakte/android/api/FriendsGetRequests$Callback;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    return-object v0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    if-nez v1, :cond_0

    .line 137
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 131
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 132
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 133
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    check-cast p1, [Lcom/vkontakte/android/api/FriendRequest;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->success([Lcom/vkontakte/android/api/FriendRequest;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 25
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    :try_start_0
    const-string v22, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "f"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 44
    .local v16, "requests":Lorg/json/JSONArray;
    const-string v22, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "p"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 45
    .local v14, "profiles":Lorg/json/JSONArray;
    const-string v22, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "c"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 46
    .local v5, "ct":Lorg/json/JSONArray;
    const-string v22, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "cn"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 47
    .local v3, "cn":Lorg/json/JSONArray;
    const-string v22, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "mc"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 48
    .local v10, "myCountry":I
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v22

    if-eqz v22, :cond_0

    if-nez v14, :cond_1

    .line 49
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Lcom/vkontakte/android/api/FriendRequest;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->success([Lcom/vkontakte/android/api/FriendRequest;)V

    .line 51
    :cond_1
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v20, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v2, "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v4, "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v14, :cond_2

    .line 55
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v6, v0, :cond_5

    .line 75
    .end local v6    # "i":I
    :cond_2
    if-eqz v5, :cond_3

    .line 76
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v6, v0, :cond_a

    .line 80
    .end local v6    # "i":I
    :cond_3
    if-eqz v3, :cond_4

    .line 81
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v6, v0, :cond_b

    .line 86
    .end local v6    # "i":I
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Lcom/vkontakte/android/api/FriendRequest;

    move-object/from16 v17, v0

    .line 87
    .local v17, "result":[Lcom/vkontakte/android/api/FriendRequest;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v6, v0, :cond_c

    .line 126
    .end local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "cn":Lorg/json/JSONArray;
    .end local v4    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "ct":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v10    # "myCountry":I
    .end local v14    # "profiles":Lorg/json/JSONArray;
    .end local v16    # "requests":Lorg/json/JSONArray;
    .end local v17    # "result":[Lcom/vkontakte/android/api/FriendRequest;
    .end local v20    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :goto_4
    return-object v17

    .line 56
    .restart local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3    # "cn":Lorg/json/JSONArray;
    .restart local v4    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "ct":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v10    # "myCountry":I
    .restart local v14    # "profiles":Lorg/json/JSONArray;
    .restart local v16    # "requests":Lorg/json/JSONArray;
    .restart local v20    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 57
    .local v8, "jp":Lorg/json/JSONObject;
    new-instance v12, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v12}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 58
    .local v12, "p":Lcom/vkontakte/android/UserProfile;
    const-string v22, "first_name"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 59
    const-string v22, "last_name"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 60
    new-instance v22, Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 61
    sget v22, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v23

    if-lez v22, :cond_7

    const-string v22, "photo_medium_rec"

    :goto_5
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 62
    const-string v22, "uid"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 63
    const-string v22, "country"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Lcom/vkontakte/android/UserProfile;->country:I

    .line 64
    const-string v22, "city"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Lcom/vkontakte/android/UserProfile;->city:I

    .line 65
    const-string v22, "university_name"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_8

    .line 66
    const-string v22, "university_name"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "\r\n"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 67
    const-string v22, "graduation"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    if-lez v22, :cond_6

    .line 68
    iget-object v0, v12, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, "\'"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "graduation"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    rem-int/lit8 v23, v23, 0x64

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 73
    :cond_6
    :goto_6
    const-string v22, "uid"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 61
    :cond_7
    const-string v22, "photo_rec"

    goto/16 :goto_5

    .line 71
    :cond_8
    const/16 v22, 0x0

    move-object/from16 v0, v22

    iput-object v0, v12, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 122
    .end local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v3    # "cn":Lorg/json/JSONArray;
    .end local v4    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "ct":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v8    # "jp":Lorg/json/JSONObject;
    .end local v10    # "myCountry":I
    .end local v12    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v14    # "profiles":Lorg/json/JSONArray;
    .end local v16    # "requests":Lorg/json/JSONArray;
    .end local v20    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v21

    .line 123
    .local v21, "x":Ljava/lang/Exception;
    const-string v22, "vk"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    move-object/from16 v22, v0

    const/16 v23, -0x1

    const-string v24, "Parse error"

    invoke-interface/range {v22 .. v24}, Lcom/vkontakte/android/api/FriendsGetRequests$Callback;->fail(ILjava/lang/String;)V

    .line 126
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 77
    .end local v21    # "x":Ljava/lang/Exception;
    .restart local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v3    # "cn":Lorg/json/JSONArray;
    .restart local v4    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "ct":Lorg/json/JSONArray;
    .restart local v6    # "i":I
    .restart local v10    # "myCountry":I
    .restart local v14    # "profiles":Lorg/json/JSONArray;
    .restart local v16    # "requests":Lorg/json/JSONArray;
    .restart local v20    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :cond_a
    :try_start_1
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "cid"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "name"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 82
    :cond_b
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "cid"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "name"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 88
    .restart local v17    # "result":[Lcom/vkontakte/android/api/FriendRequest;
    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 89
    .local v9, "jreq":Lorg/json/JSONObject;
    new-instance v15, Lcom/vkontakte/android/api/FriendRequest;

    invoke-direct {v15}, Lcom/vkontakte/android/api/FriendRequest;-><init>()V

    .line 90
    .local v15, "req":Lcom/vkontakte/android/api/FriendRequest;
    const-string v22, "uid"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vkontakte/android/UserProfile;

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    .line 91
    const-string v22, "message"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->message:Ljava/lang/String;

    .line 92
    iget-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->country:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v10, :cond_e

    if-eqz v10, :cond_e

    .line 93
    iget-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 101
    :cond_d
    :goto_7
    const-string v22, "mutual"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 102
    const/16 v22, 0x5

    const-string v23, "mutual"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    const-string v24, "users"

    invoke-virtual/range {v23 .. v24}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 103
    .local v11, "nMFriends":I
    new-array v0, v11, [Lcom/vkontakte/android/UserProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    .line 104
    const-string v22, "mutual"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "count"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    iput v0, v15, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I

    .line 105
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_8
    if-lt v7, v11, :cond_10

    .line 119
    .end local v7    # "j":I
    .end local v11    # "nMFriends":I
    :goto_9
    aput-object v15, v17, v6

    .line 87
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 95
    :cond_e
    iget-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->country:I

    move/from16 v22, v0

    if-nez v22, :cond_f

    const/16 v22, 0x0

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    goto :goto_7

    .line 97
    :cond_f
    iget-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->country:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    .line 98
    iget-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->city:I

    move/from16 v22, v0

    if-lez v22, :cond_d

    iget-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ", "

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->profile:Lcom/vkontakte/android/UserProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkontakte/android/UserProfile;->city:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->info:Ljava/lang/String;

    goto/16 :goto_7

    .line 106
    .restart local v7    # "j":I
    .restart local v11    # "nMFriends":I
    :cond_10
    const-string v22, "mutual"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    const-string v23, "users"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v18

    .line 107
    .local v18, "uid":I
    new-instance v19, Lcom/vkontakte/android/UserProfile;

    invoke-direct/range {v19 .. v19}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 108
    .local v19, "up":Lcom/vkontakte/android/UserProfile;
    sget-object v22, Lcom/vkontakte/android/Global;->friends:Ljava/util/Vector;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_11
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_12

    .line 114
    :goto_a
    iget-object v0, v15, Lcom/vkontakte/android/api/FriendRequest;->mutualFriends:[Lcom/vkontakte/android/UserProfile;

    move-object/from16 v22, v0

    aput-object v19, v22, v7

    .line 105
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 108
    :cond_12
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkontakte/android/UserProfile;

    .line 109
    .local v13, "pp":Lcom/vkontakte/android/UserProfile;
    iget v0, v13, Lcom/vkontakte/android/UserProfile;->uid:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 110
    move-object/from16 v19, v13

    .line 111
    goto :goto_a

    .line 117
    .end local v7    # "j":I
    .end local v11    # "nMFriends":I
    .end local v13    # "pp":Lcom/vkontakte/android/UserProfile;
    .end local v18    # "uid":I
    .end local v19    # "up":Lcom/vkontakte/android/UserProfile;
    :cond_13
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v15, Lcom/vkontakte/android/api/FriendRequest;->numMutualFriends:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsGetRequests$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsGetRequests;->callback:Lcom/vkontakte/android/api/FriendsGetRequests$Callback;

    .line 38
    return-object p0
.end method
