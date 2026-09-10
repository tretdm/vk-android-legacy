.class public Lcom/vkontakte/android/api/FriendsGet;
.super Lcom/vkontakte/android/APIRequest;
.source "FriendsGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FriendsGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FriendsGet$Callback;


# direct methods
.method public constructor <init>(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "mutual"    # Z

    .prologue
    .line 18
    const-string v0, "friends.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v1, "fields"

    new-instance v2, Ljava/lang/StringBuilder;

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    const-string v0, "photo_medium_rec"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ",online"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_4

    :cond_0
    const-string v0, ",bdate,first_name_gen,last_name_gen,sex"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/FriendsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    if-eqz p1, :cond_1

    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-ne p1, v0, :cond_2

    .line 21
    :cond_1
    const-string v0, "order"

    const-string v1, "hints"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/FriendsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    :cond_2
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FriendsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 23
    return-void

    .line 19
    :cond_3
    const-string v0, "photo_rec"

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_1
.end method

.method private parseProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/UserProfile;
    .locals 4
    .param p1, "p"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 26
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 27
    .local v0, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v1, "first_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 28
    const-string v1, "last_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 30
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    const-string v1, "photo_medium_rec"

    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 31
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 32
    invoke-static {p1}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/UserProfile;->online:I

    .line 33
    const-string v1, "bdate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    .line 34
    const-string v1, "sex"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 35
    const-string v1, "first_name_gen"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "first_name_gen"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "last_name_gen"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 38
    :cond_0
    return-object v0

    .line 30
    :cond_1
    const-string v1, "photo_rec"

    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    if-nez v1, :cond_0

    .line 66
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 60
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 62
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FriendsGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/FriendsGet$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 43
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "items"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 45
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 55
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 48
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 49
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vkontakte/android/api/FriendsGet;->parseProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/UserProfile;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v3

    .line 53
    .local v3, "x":Ljava/lang/Exception;
    const-string v4, "vk"

    invoke-static {v4, v3}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsGet$Callback;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    .line 70
    return-object p0
.end method
