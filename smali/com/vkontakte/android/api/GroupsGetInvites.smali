.class public Lcom/vkontakte/android/api/GroupsGetInvites;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsGetInvites.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsGetInvites$Callback;
    }
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "var g=API.groups.getInvites({fields:\"members_count\"}).items; return {g:g,u:API.getProfiles({user_ids:g@.invited_by})};"


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsGetInvites$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "code"

    const-string v1, "var g=API.groups.getInvites({fields:\"members_count\"}).items; return {g:g,u:API.getProfiles({user_ids:g@.invited_by})};"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GroupsGetInvites;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGetInvites;->callback:Lcom/vkontakte/android/api/GroupsGetInvites$Callback;

    if-nez v1, :cond_0

    .line 72
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 66
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 67
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 68
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGetInvites;->callback:Lcom/vkontakte/android/api/GroupsGetInvites$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GroupsGetInvites$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGetInvites;->callback:Lcom/vkontakte/android/api/GroupsGetInvites$Callback;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/GroupsGetInvites$Callback;->success(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 26
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/api/GroupInvitation;>;"
    :try_start_0
    const-string v11, "response"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "g"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 29
    .local v0, "a":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 55
    .end local v0    # "a":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-object v2

    .line 30
    .restart local v0    # "a":Lorg/json/JSONArray;
    :cond_1
    const-string v11, "response"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "u"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 31
    .local v8, "u":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 32
    .local v9, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v3, v11, :cond_2

    .line 42
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v3, v11, :cond_0

    .line 43
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 44
    .local v5, "jg":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Group;

    invoke-direct {v1, v5}, Lcom/vkontakte/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    .line 45
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    new-instance v4, Lcom/vkontakte/android/api/GroupInvitation;

    invoke-direct {v4}, Lcom/vkontakte/android/api/GroupInvitation;-><init>()V

    .line 46
    .local v4, "inv":Lcom/vkontakte/android/api/GroupInvitation;
    iput-object v1, v4, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    .line 47
    const-string v11, "invited_by"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkontakte/android/UserProfile;

    iput-object v11, v4, Lcom/vkontakte/android/api/GroupInvitation;->inviter:Lcom/vkontakte/android/UserProfile;

    .line 48
    const-string v11, "members_count"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v4, Lcom/vkontakte/android/api/GroupInvitation;->size:I

    .line 49
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 33
    .end local v1    # "g":Lcom/vkontakte/android/api/Group;
    .end local v4    # "inv":Lcom/vkontakte/android/api/GroupInvitation;
    .end local v5    # "jg":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 34
    .local v6, "jp":Lorg/json/JSONObject;
    new-instance v7, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v7}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 35
    .local v7, "p":Lcom/vkontakte/android/UserProfile;
    const-string v11, "first_name"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    .line 36
    const-string v11, "last_name"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    .line 37
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, v7, Lcom/vkontakte/android/UserProfile;->firstName:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Lcom/vkontakte/android/UserProfile;->lastName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 38
    const-string v11, "id"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 39
    iget v11, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 52
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v6    # "jp":Lorg/json/JSONObject;
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v8    # "u":Lorg/json/JSONArray;
    .end local v9    # "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/vkontakte/android/UserProfile;>;"
    :catch_0
    move-exception v10

    .line 53
    .local v10, "x":Ljava/lang/Exception;
    const-string v11, "vk"

    invoke-static {v11, v10}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsGetInvites$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsGetInvites$Callback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGetInvites;->callback:Lcom/vkontakte/android/api/GroupsGetInvites$Callback;

    .line 60
    return-object p0
.end method
