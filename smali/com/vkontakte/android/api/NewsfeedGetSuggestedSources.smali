.class public Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;
.super Lcom/vkontakte/android/APIRequest;
.source "NewsfeedGetSuggestedSources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "newsfeed.getSuggestedSources"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "count"

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "fields"

    const-string v1, "photo_50,photo_100,activity"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;->callback:Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;

    if-nez v1, :cond_0

    .line 64
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 58
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 60
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;->callback:Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;->callback:Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;

    check-cast p1, Ljava/util/List;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;->success(Ljava/util/List;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 27
    .local v2, "r":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 47
    .end local v0    # "i":I
    .end local v2    # "r":Lorg/json/JSONArray;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :goto_1
    return-object v3

    .line 28
    .restart local v0    # "i":I
    .restart local v2    # "r":Lorg/json/JSONArray;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 29
    .local v4, "u":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v1}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 30
    .local v1, "p":Lcom/vkontakte/android/UserProfile;
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "profile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 31
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 32
    const-string v5, "first_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 33
    const-string v5, "last_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 39
    :goto_2
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    const-string v5, "photo_100"

    :goto_3
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 40
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/UserProfile;->university:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    neg-int v5, v5

    iput v5, v1, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 37
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    goto :goto_2

    .line 45
    .end local v0    # "i":I
    .end local v1    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v2    # "r":Lorg/json/JSONArray;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v4    # "u":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 47
    const/4 v3, 0x0

    goto :goto_1

    .line 39
    .restart local v0    # "i":I
    .restart local v1    # "p":Lcom/vkontakte/android/UserProfile;
    .restart local v2    # "r":Lorg/json/JSONArray;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v4    # "u":Lorg/json/JSONObject;
    :cond_2
    const-string v5, "photo_50"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public setCallback(Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources;->callback:Lcom/vkontakte/android/api/NewsfeedGetSuggestedSources$Callback;

    .line 52
    return-object p0
.end method
