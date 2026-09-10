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
    .locals 6
    .param p1, "gids"    # [I

    .prologue
    .line 13
    const-string v2, "groups.getById"

    invoke-direct {p0, v2}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v1, ""

    .line 15
    .local v1, "s":Ljava/lang/String;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 16
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 17
    const-string v2, "gids"

    invoke-virtual {p0, v2, v1}, Lcom/vkontakte/android/api/GroupsGetById;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 19
    new-instance v2, Lcom/vkontakte/android/api/GroupsGetById$1;

    invoke-direct {v2, p0}, Lcom/vkontakte/android/api/GroupsGetById$1;-><init>(Lcom/vkontakte/android/api/GroupsGetById;)V

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/api/GroupsGetById;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 29
    return-void

    .line 15
    :cond_0
    aget v0, p1, v2

    .local v0, "g":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 33
    :try_start_0
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 34
    .local v0, "a":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v4, v5, [Lcom/vkontakte/android/api/Group;

    .line 35
    .local v4, "result":[Lcom/vkontakte/android/api/Group;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 45
    iget-object v5, p0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    if-eqz v5, :cond_0

    .line 46
    iget-object v5, p0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    invoke-interface {v5, v4}, Lcom/vkontakte/android/api/GroupsGetById$Callback;->success([Lcom/vkontakte/android/api/Group;)V

    .line 49
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "result":[Lcom/vkontakte/android/api/Group;
    :cond_0
    :goto_1
    return-void

    .line 36
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "result":[Lcom/vkontakte/android/api/Group;
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 37
    .local v3, "jo":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Group;

    invoke-direct {v1}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 38
    .local v1, "group":Lcom/vkontakte/android/api/Group;
    const-string v5, "gid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/api/Group;->id:I

    .line 39
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 40
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    const-string v5, "photo_medium"

    :goto_2
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 41
    const-string v5, "is_admin"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_3
    iput-boolean v5, v1, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    .line 42
    const-string v5, "is_closed"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_4
    iput-boolean v5, v1, Lcom/vkontakte/android/api/Group;->isClosed:Z

    .line 43
    aput-object v1, v4, v2

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_2
    const-string v5, "photo"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    move v5, v7

    .line 41
    goto :goto_3

    :cond_4
    move v5, v7

    .line 42
    goto :goto_4

    .line 47
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "group":Lcom/vkontakte/android/api/Group;
    .end local v2    # "i":I
    .end local v3    # "jo":Lorg/json/JSONObject;
    .end local v4    # "result":[Lcom/vkontakte/android/api/Group;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsGetById$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsGetById$Callback;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGetById;->callback:Lcom/vkontakte/android/api/GroupsGetById$Callback;

    .line 53
    return-object p0
.end method
