.class public Lcom/vkontakte/android/api/FriendsGetSuggestions;
.super Lcom/vkontakte/android/APIRequest;
.source "FriendsGetSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;

.field mutual:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 7
    .param p1, "onlyMutual"    # Z

    .prologue
    const/4 v6, 0x0

    .line 22
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    iput-boolean v6, p0, Lcom/vkontakte/android/api/FriendsGetSuggestions;->mutual:Z

    .line 23
    iput-boolean p1, p0, Lcom/vkontakte/android/api/FriendsGetSuggestions;->mutual:Z

    .line 24
    const-string v1, "code"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "var f=API.friends.getSuggestions({fields:\"%s,education,city,country,common_count\",count:50%s}).items;return {f:f,mc:API.getProfiles({user_ids:%d,fields:\"country\"})[0].country.id};"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    .line 25
    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    const-string v0, "photo_medium_rec"

    :goto_0
    aput-object v0, v4, v6

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    const-string v0, ",filter:\"mutual\""

    :goto_1
    aput-object v0, v4, v5

    const/4 v0, 0x2

    sget v5, Lcom/vkontakte/android/Global;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    .line 24
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/FriendsGetSuggestions;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void

    .line 25
    :cond_0
    const-string v0, "photo_rec"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;

    if-nez v1, :cond_0

    .line 77
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 71
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 72
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 73
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "mc"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 32
    .local v2, "myCountry":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v5, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "f"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 34
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_0

    .line 66
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "myCountry":I
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_1
    return-object v5

    .line 35
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v2    # "myCountry":I
    .restart local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 36
    .local v3, "p":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 37
    .local v4, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v7, "first_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 38
    const-string v7, "last_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 40
    sget v7, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    const-string v7, "photo_medium_rec"

    :goto_2
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 41
    const-string v7, "id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 42
    const-string v7, ""

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 44
    iget-boolean v7, p0, Lcom/vkontakte/android/api/FriendsGetSuggestions;->mutual:Z

    if-eqz v7, :cond_3

    const-string v7, "common_count"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "common_count"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_3

    .line 45
    const v7, 0x7f0d0018

    const-string v8, "common_count"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/vkontakte/android/Global;->langPlural(IILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 60
    :cond_1
    :goto_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 40
    :cond_2
    const-string v7, "photo_rec"

    goto :goto_2

    .line 46
    :cond_3
    if-eqz v2, :cond_4

    const-string v7, "country"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v2, v7, :cond_5

    :cond_4
    const-string v7, "university_name"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 47
    const-string v7, "university_name"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\r\n"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 48
    const-string v7, "graduation"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_1

    .line 49
    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " \'"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%02d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "graduation"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    rem-int/lit8 v11, v11, 0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 63
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "myCountry":I
    .end local v3    # "p":Lorg/json/JSONObject;
    .end local v4    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v6

    .line 64
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 52
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v2    # "myCountry":I
    .restart local v3    # "p":Lorg/json/JSONObject;
    .restart local v4    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v5    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_5
    :try_start_1
    const-string v7, "country"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 53
    const-string v7, "country"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 54
    const-string v7, "city"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 55
    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ", "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "city"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "title"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsGetSuggestions;->callback:Lcom/vkontakte/android/api/FriendsGetSuggestions$Callback;

    .line 81
    return-object p0
.end method
