.class public Lcom/vkontakte/android/api/GroupsGetById;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsGetById.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsGetById$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;


# direct methods
.method public constructor <init>([I)V
    .locals 5
    .param p1, "gids"    # [I

    .prologue
    .line 16
    const-string v2, "groups.getById"

    invoke-direct {p0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 19
    const-string v2, "group_ids"

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/vkontakte/android/api/GroupsGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    return-void

    .line 18
    :cond_0
    aget v0, p1, v2

    .local v0, "g":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 38
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    if-nez v1, :cond_0

    .line 45
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 39
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 40
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 41
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GroupsGetById$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    check-cast p1, [Lcom/vkontakte/android/api/Group;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/GroupsGetById$Callback;->success([Lcom/vkontakte/android/api/Group;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 25
    .local v0, "a":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v4, v5, [Lcom/vkontakte/android/api/Group;

    .line 26
    .local v4, "result":[Lcom/vkontakte/android/api/Group;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 34
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "result":[Lcom/vkontakte/android/api/Group;
    :goto_1
    return-object v4

    .line 27
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "result":[Lcom/vkontakte/android/api/Group;
    :cond_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 28
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Group;

    invoke-direct {v1, v3}, Lcom/vkontakte/android/api/Group;-><init>(Lorg/json/JSONObject;)V

    .line 29
    .local v1, "group":Lcom/vkontakte/android/api/Group;
    aput-object v1, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "group":Lcom/vkontakte/android/api/Group;
    .end local v2    # "i":I
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "result":[Lcom/vkontakte/android/api/Group;
    :catch_0
    move-exception v5

    .line 34
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsGetById$Callback;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    .line 49
    return-object p0
.end method
