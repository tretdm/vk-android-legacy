.class public Lcom/vkontakte/android/api/UsersGetSubscriptions;
.super Lcom/vkontakte/android/APIRequest;
.source "UsersGetSubscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 16
    const-string v0, "users.getSubscriptions"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/UsersGetSubscriptions;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/UsersGetSubscriptions;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "fields"

    const-string v1, "photo_100,photo_50,online"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/UsersGetSubscriptions;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v2, p0, Lcom/vkontakte/android/api/UsersGetSubscriptions;->callback:Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;

    if-nez v2, :cond_0

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 60
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/UsersGetSubscriptions;->callback:Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 62
    check-cast v1, [Ljava/lang/Object;

    .line 63
    .local v1, "r":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/UsersGetSubscriptions;->callback:Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v2, v3}, Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;->success(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    :try_start_0
    const-string v6, "response"

    invoke-static {p1, v6}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v0

    .line 26
    .local v0, "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 43
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    iget v8, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 47
    .end local v0    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v1    # "i":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_1
    return-object v6

    .line 28
    .restart local v0    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v1    # "i":I
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    iget-object v6, v0, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    .local v2, "ju":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 30
    .local v4, "u":Lcom/vkontakte/android/UserProfile;
    const-string v6, "type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "page"

    const-string v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "group"

    const-string v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "event"

    const-string v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 31
    :cond_1
    const-string v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    neg-int v6, v6

    iput v6, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 32
    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 40
    :goto_2
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    const-string v6, "photo_100"

    :goto_3
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_2
    const-string v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 35
    const-string v6, "first_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 36
    const-string v6, "last_name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 38
    invoke-static {v2}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v6

    iput v6, v4, Lcom/vkontakte/android/UserProfile;->online:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 44
    .end local v0    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .end local v1    # "i":I
    .end local v2    # "ju":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v4    # "u":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v5

    .line 45
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 40
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "aa":Lcom/vkontakte/android/api/JSONArrayWithCount;
    .restart local v1    # "i":I
    .restart local v2    # "ju":Lorg/json/JSONObject;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v4    # "u":Lcom/vkontakte/android/UserProfile;
    :cond_3
    :try_start_1
    const-string v6, "photo_50"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkontakte/android/api/UsersGetSubscriptions;->callback:Lcom/vkontakte/android/api/UsersGetSubscriptions$Callback;

    .line 52
    return-object p0
.end method
