.class public Lcom/vkontakte/android/FriendsGetSuggestions;
.super Lcom/vkontakte/android/APIRequest;
.source "FriendsGetSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/FriendsGetSuggestions$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/FriendsGetSuggestions$Callback;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 15
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "code"

    const-string v2, "var f=API.friends.getSuggestions({filter:\"mutual\",fields:\"%s,education,city,country\"});var cities=API.places.getCityById({cids:f@.city});var countries=API.places.getCountryById({cids:f@.country});return {f:f,ct:cities,cn:countries,mc:API.getProfiles({uids:%d,fields:\"country\"})[0].country};"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 19
    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x1

    sget v4, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/FriendsGetSuggestions;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    new-instance v0, Lcom/vkontakte/android/FriendsGetSuggestions$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/FriendsGetSuggestions$1;-><init>(Lcom/vkontakte/android/FriendsGetSuggestions;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/FriendsGetSuggestions;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 31
    return-void

    .line 19
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 17
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .local v2, "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 36
    .local v5, "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "ct"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 37
    .local v7, "ct":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v8, v14, :cond_1

    .line 41
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "cn"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 42
    .local v4, "cn":Lorg/json/JSONArray;
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v8, v14, :cond_2

    .line 46
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "mc"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 48
    .local v9, "myCountry":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v12, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v14, "response"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "f"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 50
    .local v1, "a":Lorg/json/JSONArray;
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v8, v14, :cond_3

    .line 77
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/FriendsGetSuggestions$Callback;

    if-eqz v14, :cond_0

    .line 78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/FriendsGetSuggestions$Callback;

    invoke-interface {v14, v12}, Lcom/vkontakte/android/FriendsGetSuggestions$Callback;->success(Ljava/util/ArrayList;)V

    .line 82
    .end local v1    # "a":Lorg/json/JSONArray;
    .end local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "cn":Lorg/json/JSONArray;
    .end local v5    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "ct":Lorg/json/JSONArray;
    .end local v8    # "i":I
    .end local v9    # "myCountry":I
    .end local v12    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    :goto_3
    return-void

    .line 38
    .restart local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v5    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v7    # "ct":Lorg/json/JSONArray;
    .restart local v8    # "i":I
    :cond_1
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 39
    .local v3, "city":Lorg/json/JSONObject;
    const-string v14, "cid"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "name"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 43
    .end local v3    # "city":Lorg/json/JSONObject;
    .restart local v4    # "cn":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 44
    .local v6, "country":Lorg/json/JSONObject;
    const-string v14, "cid"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "name"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 51
    .end local v6    # "country":Lorg/json/JSONObject;
    .restart local v1    # "a":Lorg/json/JSONArray;
    .restart local v9    # "myCountry":I
    .restart local v12    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 52
    .local v10, "p":Lorg/json/JSONObject;
    new-instance v11, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v11}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 53
    .local v11, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v14, "first_name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 54
    const-string v14, "last_name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 55
    new-instance v14, Ljava/lang/StringBuilder;

    iget-object v15, v11, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 56
    sget v14, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_6

    const-string v14, "photo_medium_rec"

    :goto_4
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 57
    const-string v14, "uid"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v11, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 58
    const-string v14, ""

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 60
    if-eqz v9, :cond_4

    const-string v14, "country"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-ne v9, v14, :cond_7

    :cond_4
    const-string v14, "university_name"

    const-string v15, ""

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_7

    .line 61
    const-string v14, "university_name"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "\r\n"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 62
    const-string v14, "graduation"

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    if-lez v14, :cond_5

    .line 63
    iget-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "\'"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "graduation"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    rem-int/lit8 v15, v15, 0x64

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 75
    :cond_5
    :goto_5
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 56
    :cond_6
    const-string v14, "photo_rec"

    goto :goto_4

    .line 66
    :cond_7
    const-string v14, "country"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_8

    .line 67
    const-string v14, "country"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 68
    :cond_8
    const-string v14, "country"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_9

    const-string v14, "city"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_9

    .line 69
    iget-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ", "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 70
    :cond_9
    const-string v14, "city"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_5

    .line 71
    iget-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "city"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 79
    .end local v1    # "a":Lorg/json/JSONArray;
    .end local v2    # "cities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "cn":Lorg/json/JSONArray;
    .end local v5    # "countries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "ct":Lorg/json/JSONArray;
    .end local v8    # "i":I
    .end local v9    # "myCountry":I
    .end local v10    # "p":Lorg/json/JSONObject;
    .end local v11    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v12    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v13

    .line 80
    .local v13, "x":Ljava/lang/Exception;
    const-string v14, "vk"

    invoke-static {v14, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/FriendsGetSuggestions$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/FriendsGetSuggestions$Callback;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/vkontakte/android/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/FriendsGetSuggestions$Callback;

    .line 86
    return-object p0
.end method
