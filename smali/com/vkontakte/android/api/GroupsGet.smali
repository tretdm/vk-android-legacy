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
    const-string v0, "uid"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 19
    const-string v0, "extended"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GroupsGet;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 20
    const-string v0, "fields"

    const-string v1, "start_date"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GroupsGet;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 22
    new-instance v0, Lcom/vkontakte/android/api/GroupsGet$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GroupsGet$1;-><init>(Lcom/vkontakte/android/api/GroupsGet;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GroupsGet;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 32
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 36
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 37
    .local v4, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 38
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 39
    iget-object v6, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    invoke-interface {v6, v4}, Lcom/vkontakte/android/api/GroupsGet$Callback;->success(Ljava/util/Vector;)V

    .line 61
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_2

    .line 56
    iget-object v6, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    if-eqz v6, :cond_0

    .line 57
    iget-object v6, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    invoke-interface {v6, v4}, Lcom/vkontakte/android/api/GroupsGet$Callback;->success(Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :catch_0
    move-exception v5

    .line 59
    .local v5, "x":Ljava/lang/Exception;
    const-string v6, "vk"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 44
    .local v2, "gr":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Group;

    invoke-direct {v1}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 45
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    const-string v6, "gid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/vkontakte/android/api/Group;->id:I

    .line 46
    const-string v6, "name"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 47
    const-string v6, "is_admin"

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_5

    move v6, v7

    :goto_2
    iput-boolean v6, v1, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    .line 48
    const-string v6, "is_closed"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v6, v7

    :goto_3
    iput-boolean v6, v1, Lcom/vkontakte/android/api/Group;->isClosed:Z

    .line 49
    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_7

    const-string v6, "photo_medium"

    :goto_4
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 50
    const/4 v6, 0x0

    iput v6, v1, Lcom/vkontakte/android/api/Group;->type:I

    .line 51
    const-string v6, "start_date"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/vkontakte/android/api/Group;->startTime:I

    .line 52
    const-string v6, "event"

    const-string v9, "type"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    iput v6, v1, Lcom/vkontakte/android/api/Group;->type:I

    .line 53
    :cond_3
    const-string v6, "page"

    const-string v9, "type"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    iput v6, v1, Lcom/vkontakte/android/api/Group;->type:I

    .line 54
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    move v6, v8

    .line 47
    goto :goto_2

    :cond_6
    move v6, v8

    .line 48
    goto :goto_3

    .line 49
    :cond_7
    const-string v6, "photo"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsGet$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsGet$Callback;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsGet;->callback:Lcom/vkontakte/android/api/GroupsGet$Callback;

    .line 65
    return-object p0
.end method
