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
    .locals 6
    .param p1, "uid"    # I
    .param p2, "mutual"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 17
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-ne p1, v0, :cond_2

    :cond_0
    const-string v0, "execute"

    :goto_0
    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    if-nez p2, :cond_8

    .line 19
    if-eqz p1, :cond_1

    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-ne p1, v0, :cond_4

    .line 20
    :cond_1
    const-string v1, "code"

    const-string v2, "var f=API.friends.get({fields:\"%s,online,bdate,first_name\",order:\"hints\"});var f2=API.friends.get({fields:\"first_name\",name_case:\"gen\",order:\"hints\"});return {f:f,fl:f2@.last_name,ff:f2@.first_name};"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 22
    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    const-string v0, "photo_medium_rec"

    :goto_1
    aput-object v0, v3, v4

    .line 20
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/FriendsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 31
    :goto_2
    new-instance v0, Lcom/vkontakte/android/api/FriendsGet$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/FriendsGet$1;-><init>(Lcom/vkontakte/android/api/FriendsGet;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/FriendsGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 41
    return-void

    .line 17
    :cond_2
    const-string v0, "friends.get"

    goto :goto_0

    .line 22
    :cond_3
    const-string v0, "photo_rec"

    goto :goto_1

    .line 24
    :cond_4
    const-string v1, "fields"

    new-instance v2, Ljava/lang/StringBuilder;

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    const-string v0, "photo_medium_rec"

    :goto_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ",online"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Lcom/vkontakte/android/Global;->uid:I

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    const-string v0, ",bdate"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/FriendsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 25
    const-string v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/FriendsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    .line 24
    :cond_6
    const-string v0, "photo_rec"

    goto :goto_3

    :cond_7
    const-string v0, ""

    goto :goto_4

    .line 28
    :cond_8
    const-string v1, "code"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "return API.getProfiles({uids:API.friends.getMutual({target_uid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}),fields:\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v0, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_9

    const-string v0, "photo_medium_rec"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",online\"});"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/vkontakte/android/api/FriendsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    goto :goto_2

    :cond_9
    const-string v0, "photo_rec"

    goto :goto_5
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

    .line 44
    new-instance v0, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v0}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 45
    .local v0, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v1, "first_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 46
    const-string v1, "last_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 47
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

    .line 48
    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "photo_medium_rec"

    :goto_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 49
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 50
    const-string v1, "online"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/vkontakte/android/UserProfile;->online:Z

    .line 51
    const-string v1, "bdate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkontakte/android/UserProfile;->bdate:Ljava/lang/String;

    .line 52
    return-object v0

    .line 48
    :cond_0
    const-string v1, "photo_rec"

    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 57
    :try_start_0
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 58
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 59
    .local v3, "hasCase":Z
    if-nez v0, :cond_0

    .line 60
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "f"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 61
    const/4 v3, 0x1

    .line 63
    :cond_0
    if-nez v0, :cond_2

    .line 64
    iget-object v7, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    if-eqz v7, :cond_1

    .line 65
    iget-object v7, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/vkontakte/android/UserProfile;

    invoke-interface {v7, v8}, Lcom/vkontakte/android/api/FriendsGet$Callback;->success([Lcom/vkontakte/android/UserProfile;)V

    .line 85
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "hasCase":Z
    :cond_1
    :goto_0
    return-void

    .line 68
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v3    # "hasCase":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "cl":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .line 69
    .local v1, "cf":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    .line 70
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "fl"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 71
    const-string v7, "response"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "ff"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 73
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v5, v7, [Lcom/vkontakte/android/UserProfile;

    .line 74
    .local v5, "result":[Lcom/vkontakte/android/UserProfile;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_4

    .line 80
    iget-object v7, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    if-eqz v7, :cond_1

    .line 81
    iget-object v7, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    invoke-interface {v7, v5}, Lcom/vkontakte/android/api/FriendsGet$Callback;->success([Lcom/vkontakte/android/UserProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "cf":Lorg/json/JSONArray;
    .end local v2    # "cl":Lorg/json/JSONArray;
    .end local v3    # "hasCase":Z
    .end local v4    # "i":I
    .end local v5    # "result":[Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v6

    .line 83
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 75
    .end local v6    # "x":Ljava/lang/Exception;
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "cf":Lorg/json/JSONArray;
    .restart local v2    # "cl":Lorg/json/JSONArray;
    .restart local v3    # "hasCase":Z
    .restart local v4    # "i":I
    .restart local v5    # "result":[Lcom/vkontakte/android/UserProfile;
    :cond_4
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vkontakte/android/api/FriendsGet;->parseProfile(Lorg/json/JSONObject;)Lcom/vkontakte/android/UserProfile;

    move-result-object v7

    aput-object v7, v5, v4

    .line 76
    if-eqz v3, :cond_5

    .line 77
    aget-object v7, v5, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/FriendsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FriendsGet$Callback;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkontakte/android/api/FriendsGet;->callback:Lcom/vkontakte/android/api/FriendsGet$Callback;

    .line 89
    return-object p0
.end method
