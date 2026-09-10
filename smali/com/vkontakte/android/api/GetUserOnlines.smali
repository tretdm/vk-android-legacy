.class public Lcom/vkontakte/android/api/GetUserOnlines;
.super Lcom/vkontakte/android/APIRequest;
.source "GetUserOnlines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/GetUserOnlines$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/GetUserOnlines$Callback;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "execute.getUserOnlines"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "user_ids"

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/GetUserOnlines;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/vkontakte/android/api/GetUserOnlines;->callback:Lcom/vkontakte/android/api/GetUserOnlines$Callback;

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
    iget-object v1, p0, Lcom/vkontakte/android/api/GetUserOnlines;->callback:Lcom/vkontakte/android/api/GetUserOnlines$Callback;

    iget v2, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/vkontakte/android/api/GetUserOnlines$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/api/GetUserOnlines;->callback:Lcom/vkontakte/android/api/GetUserOnlines$Callback;

    check-cast p1, Ljava/util/HashMap;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-interface {v1, p1}, Lcom/vkontakte/android/api/GetUserOnlines$Callback;->success(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 6
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v4, "response"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 26
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 33
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_1
    return-object v3

    .line 27
    .restart local v0    # "a":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    .restart local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 28
    .local v2, "oo":Lorg/json/JSONObject;
    const-string v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Lcom/vkontakte/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "oo":Lorg/json/JSONObject;
    .end local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v4

    .line 33
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/GetUserOnlines$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/GetUserOnlines$Callback;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/vkontakte/android/api/GetUserOnlines;->callback:Lcom/vkontakte/android/api/GetUserOnlines$Callback;

    .line 38
    return-object p0
.end method
