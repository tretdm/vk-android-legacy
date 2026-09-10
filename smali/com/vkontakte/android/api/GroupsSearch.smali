.class public Lcom/vkontakte/android/api/GroupsSearch;
.super Lcom/vkontakte/android/APIRequest;
.source "GroupsSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GroupsSearch$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 15
    const-string v0, "groups.search"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/GroupsSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 18
    new-instance v0, Lcom/vkontakte/android/api/GroupsSearch$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/api/GroupsSearch$1;-><init>(Lcom/vkontakte/android/api/GroupsSearch;)V

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/api/GroupsSearch;->handler(Lcom/vkontakte/android/APIRequest$APIHandler;)Lcom/vkontakte/android/APIRequest;

    .line 28
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 32
    :try_start_0
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 33
    .local v4, "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    const-string v5, "response"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 34
    .local v0, "a":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 35
    iget-object v5, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/vkontakte/android/api/GroupsSearch$Callback;->success(Ljava/util/Vector;I)V

    .line 55
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_0
    :goto_0
    return-void

    .line 38
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 51
    iget-object v5, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    if-eqz v5, :cond_0

    .line 52
    iget-object v5, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-interface {v5, v4, v6}, Lcom/vkontakte/android/api/GroupsSearch$Callback;->success(Ljava/util/Vector;I)V

    goto :goto_0

    .line 53
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :catch_0
    move-exception v5

    goto :goto_0

    .line 39
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    .restart local v4    # "result":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/api/Group;>;"
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 40
    .local v2, "gr":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkontakte/android/api/Group;

    invoke-direct {v1}, Lcom/vkontakte/android/api/Group;-><init>()V

    .line 41
    .local v1, "g":Lcom/vkontakte/android/api/Group;
    const-string v5, "gid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/vkontakte/android/api/Group;->id:I

    .line 42
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/api/Group;->name:Ljava/lang/String;

    .line 43
    const-string v5, "is_admin"

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_2
    iput-boolean v5, v1, Lcom/vkontakte/android/api/Group;->isAdmin:Z

    .line 44
    const-string v5, "is_closed"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v6

    :goto_3
    iput-boolean v5, v1, Lcom/vkontakte/android/api/Group;->isClosed:Z

    .line 45
    sget v5, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_7

    const-string v5, "photo_medium"

    :goto_4
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/vkontakte/android/api/Group;->photo:Ljava/lang/String;

    .line 46
    const/4 v5, 0x0

    iput v5, v1, Lcom/vkontakte/android/api/Group;->type:I

    .line 47
    const-string v5, "event"

    const-string v8, "type"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    iput v5, v1, Lcom/vkontakte/android/api/Group;->type:I

    .line 48
    :cond_3
    const-string v5, "page"

    const-string v8, "type"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    iput v5, v1, Lcom/vkontakte/android/api/Group;->type:I

    .line 49
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    move v5, v7

    .line 43
    goto :goto_2

    :cond_6
    move v5, v7

    .line 44
    goto :goto_3

    .line 45
    :cond_7
    const-string v5, "photo"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method public setCallback(Lcom/vkontakte/android/api/GroupsSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GroupsSearch$Callback;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/vkontakte/android/api/GroupsSearch;->callback:Lcom/vkontakte/android/api/GroupsSearch$Callback;

    .line 59
    return-object p0
.end method
