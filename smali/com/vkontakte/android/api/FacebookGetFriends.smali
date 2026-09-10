.class public Lcom/vkontakte/android/api/FacebookGetFriends;
.super Lcom/vkontakte/android/APIRequest;
.source "FacebookGetFriends.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/FacebookGetFriends$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/FacebookGetFriends$Callback;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "__facebookGetFriends"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/vkontakte/android/api/FacebookGetFriends;->token:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public doExec()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 27
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://graph.facebook.com/me/friends?limit=5000&fields=id,first_name,last_name&access_token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vkontakte/android/api/FacebookGetFriends;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkontakte/android/Global;->getURL(Ljava/lang/String;)[B

    move-result-object v0

    .line 28
    .local v0, "data":[B
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 30
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .end local v0    # "data":[B
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 31
    :catch_0
    move-exception v2

    .line 32
    .local v2, "x":Ljava/lang/Exception;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/vkontakte/android/api/FacebookGetFriends;->callback:Lcom/vkontakte/android/api/FacebookGetFriends$Callback;

    if-nez v1, :cond_0

    .line 74
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 68
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 70
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/FacebookGetFriends;->callback:Lcom/vkontakte/android/api/FacebookGetFriends$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/FacebookGetFriends$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/FacebookGetFriends;->callback:Lcom/vkontakte/android/api/FacebookGetFriends$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/FacebookGetFriends$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v7, "data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 41
    .local v2, "r":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v0, v7, :cond_0

    .line 57
    .end local v0    # "i":I
    .end local v2    # "r":Lorg/json/JSONArray;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_1
    return-object v3

    .line 42
    .restart local v0    # "i":I
    .restart local v2    # "r":Lorg/json/JSONArray;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 44
    .local v4, "u":Lorg/json/JSONObject;
    new-instance v5, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v5}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 45
    .local v5, "user":Lcom/vkontakte/android/UserProfile;
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    .line 46
    const-string v7, "first_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 47
    const-string v7, "last_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 49
    const/high16 v7, 0x42700000    # 60.0f

    invoke-static {v7}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    .line 50
    .local v1, "photoSize":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://graph.facebook.com/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/picture?width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    .end local v1    # "photoSize":I
    .end local v2    # "r":Lorg/json/JSONArray;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v4    # "u":Lorg/json/JSONObject;
    .end local v5    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v6

    .line 55
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    invoke-static {v7, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/FacebookGetFriends$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/FacebookGetFriends$Callback;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkontakte/android/api/FacebookGetFriends;->callback:Lcom/vkontakte/android/api/FacebookGetFriends$Callback;

    .line 62
    return-object p0
.end method
