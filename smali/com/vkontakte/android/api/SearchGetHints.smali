.class public Lcom/vkontakte/android/api/SearchGetHints;
.super Lcom/vkontakte/android/APIRequest;
.source "SearchGetHints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/SearchGetHints$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/SearchGetHints$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string v0, "execute.searchHints"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "filters"

    const-string v1, "mutual_friends,correspondents"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/SearchGetHints;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/SearchGetHints;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "limit"

    const/16 v1, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/SearchGetHints;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 21
    const-string v0, "fields"

    const-string v1, "photo_rec,photo_medium_rec,online,verified"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/SearchGetHints;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/vkontakte/android/api/SearchGetHints;->callback:Lcom/vkontakte/android/api/SearchGetHints$Callback;

    if-nez v1, :cond_0

    .line 69
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 63
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 64
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 65
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/SearchGetHints;->callback:Lcom/vkontakte/android/api/SearchGetHints$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/SearchGetHints$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/SearchGetHints;->callback:Lcom/vkontakte/android/api/SearchGetHints$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/SearchGetHints$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    .line 25
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :try_start_0
    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 28
    .local v5, "r":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 29
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 30
    .local v1, "item":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 31
    .local v4, "profile":Lcom/vkontakte/android/UserProfile;
    const-string v8, "type"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, "type":Ljava/lang/String;
    const-string v8, "profile"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 33
    const-string v8, "profile"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 34
    .local v3, "jp":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 35
    const-string v8, "first_name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 36
    const-string v8, "last_name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v4, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v4, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 38
    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_1

    const-string v8, "photo_medium_rec"

    :goto_1
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 39
    invoke-static {v3}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v8

    iput v8, v4, Lcom/vkontakte/android/UserProfile;->online:I

    .line 40
    const-string v8, "verified"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_2

    move v8, v9

    :goto_2
    iput-boolean v8, v4, Lcom/vkontakte/android/UserProfile;->f:Z

    .line 47
    .end local v3    # "jp":Lorg/json/JSONObject;
    :cond_0
    :goto_3
    const-string v8, "description"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 48
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 38
    .restart local v3    # "jp":Lorg/json/JSONObject;
    :cond_1
    const-string v8, "photo_rec"

    goto :goto_1

    .line 40
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 41
    .end local v3    # "jp":Lorg/json/JSONObject;
    :cond_3
    const-string v8, "group"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 42
    const-string v8, "group"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 43
    .local v2, "jg":Lorg/json/JSONObject;
    const-string v8, "id"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    neg-int v8, v8

    iput v8, v4, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 44
    const-string v8, "name"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 45
    sget v8, Lcom/vkontakte/android/Global;->displayDensity:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_5

    const-string v8, "photo_100"

    :goto_4
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_3

    .line 50
    .end local v0    # "i":I
    .end local v1    # "item":Lorg/json/JSONObject;
    .end local v2    # "jg":Lorg/json/JSONObject;
    .end local v4    # "profile":Lcom/vkontakte/android/UserProfile;
    .end local v5    # "r":Lorg/json/JSONArray;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 52
    :cond_4
    return-object v6

    .line 45
    .restart local v0    # "i":I
    .restart local v1    # "item":Lorg/json/JSONObject;
    .restart local v2    # "jg":Lorg/json/JSONObject;
    .restart local v4    # "profile":Lcom/vkontakte/android/UserProfile;
    .restart local v5    # "r":Lorg/json/JSONArray;
    .restart local v7    # "type":Ljava/lang/String;
    :cond_5
    const-string v8, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method public setCallback(Lcom/vkontakte/android/api/SearchGetHints$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/SearchGetHints$Callback;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/vkontakte/android/api/SearchGetHints;->callback:Lcom/vkontakte/android/api/SearchGetHints$Callback;

    .line 57
    return-object p0
.end method
