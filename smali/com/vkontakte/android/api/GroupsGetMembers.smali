.class public Lcom/vkontakte/android/api/GroupsGetMembers;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsGetMembers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsGetMembers$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "gid"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 17
    const-string v0, "groups.getMembers"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 18
    const-string v0, "fields"

    const-string v1, "photo_rec,photo_medium_rec"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GroupsGetMembers;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsGetMembers;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/vkontakte/android/api/GroupsGetMembers;->callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    if-nez v2, :cond_0

    .line 54
    :goto_0
    return-void

    .line 47
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 49
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/GroupsGetMembers;->callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/GroupsGetMembers$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v1, p1

    .line 51
    check-cast v1, [Ljava/lang/Object;

    .line 52
    .local v1, "r":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/vkontakte/android/api/GroupsGetMembers;->callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Vector;

    invoke-interface {v3, v4, v2}, Lcom/vkontakte/android/api/GroupsGetMembers$Callback;->success(ILjava/util/Vector;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 25
    .local v4, "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    const-string v5, "response"

    invoke-static {p1, v5}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v5

    iget-object v0, v5, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 26
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 39
    .end local v1    # "i":I
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "response"

    invoke-static {p1, v7}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v7

    iget v7, v7, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    .line 42
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :goto_1
    return-object v5

    .line 28
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 29
    .local v2, "jp":Lorg/json/JSONObject;
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 30
    .local v3, "p":Lcom/vkontakte/android/UserProfile;
    const-string v5, "first_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 31
    const-string v5, "last_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 33
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    const-string v5, "photo_medium_rec"

    :goto_2
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 34
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 35
    invoke-static {v2}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v5

    iput v5, v3, Lcom/vkontakte/android/UserProfile;->online:I

    .line 36
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_2
    const-string v5, "photo_rec"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 40
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jp":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v4    # "r":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v5

    .line 42
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsGetMembers$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGetMembers;->callback:Lcom/vkontakte/android/api/GroupsGetMembers$Callback;

    .line 58
    return-object p0
.end method
