.class public Lcom/vkontakte/android/api/GroupsGet;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsGet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsGet$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsGet$Callback;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 17
    const-string v0, "groups.get"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "user_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GroupsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "fields"

    const-string v1, "start_date"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GroupsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 21
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    if-nez v1, :cond_0

    .line 50
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 44
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 45
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 46
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GroupsGet$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/GroupsGet$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "items"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 27
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 39
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    :cond_0
    :goto_0
    return-object v4

    .line 30
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 31
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 32
    .local v2, "gr":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Group;

    invoke-direct {v1, v2}, Lcom/vkontakte/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    .line 33
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    .end local v2    # "gr":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/Group;>;"
    :catch_0
    move-exception v5

    .line 37
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsGet$Callback;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    .line 54
    return-object p0
.end method
