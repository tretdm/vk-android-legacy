.class public Lcom/vkontakte/android/api/MessagesSearch;
.super Lcom/vkontakte/android/APIRequest;
.source "MessagesSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/MessagesSearch$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/MessagesSearch$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 22
    const-string v0, "messages.search"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/MessagesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 24
    const-string v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/MessagesSearch;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {v0, v1, p3}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    const-string v1, "photo_sizes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/APIRequest;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 25
    const-string v0, "fields"

    const-string v1, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/MessagesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 26
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 67
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesSearch;->callback:Lcom/vkontakte/android/api/MessagesSearch$Callback;

    if-nez v2, :cond_0

    .line 76
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 69
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 70
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 71
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/MessagesSearch;->callback:Lcom/vkontakte/android/api/MessagesSearch$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/MessagesSearch$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 73
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    .line 74
    .local v1, "o":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/vkontakte/android/api/MessagesSearch;->callback:Lcom/vkontakte/android/api/MessagesSearch$Callback;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v4, v2, v5, v3}, Lcom/vkontakte/android/api/MessagesSearch$Callback;->success(Ljava/util/List;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v6, "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const-string v10, "response"

    invoke-static {p1, v10}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v10

    iget-object v9, v10, Lcom/vkontakte/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    .line 33
    .local v9, "r":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 34
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 35
    .local v4, "m":Lorg/json/JSONObject;
    new-instance v5, Lcom/vkontakte/android/Message;

    invoke-direct {v5, v4}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 36
    .local v5, "msg":Lcom/vkontakte/android/Message;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget v10, v5, Lcom/vkontakte/android/Message;->peer:I

    const v11, 0x77359400

    if-le v10, v11, :cond_0

    .line 38
    new-instance v7, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v7}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 39
    .local v7, "p":Lcom/vkontakte/android/UserProfile;
    iget v10, v5, Lcom/vkontakte/android/Message;->peer:I

    iput v10, v7, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 40
    iget-object v10, v5, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    iput-object v10, v7, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 41
    const-string v10, "photo_50"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 42
    sget v10, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    const-string v10, "photo_100"

    :goto_1
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 52
    :goto_2
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .restart local v7    # "p":Lcom/vkontakte/android/UserProfile;
    :cond_1
    const-string v10, "photo_50"

    goto :goto_1

    .line 44
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v8, "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "M"

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v10, "chat_active"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 47
    .local v0, "act":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    const/4 v10, 0x4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v3, v10, :cond_3

    .line 48
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 50
    :cond_3
    const-string v10, ","

    invoke-static {v10, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    goto :goto_2

    .line 56
    .end local v0    # "act":Lorg/json/JSONArray;
    .end local v1    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "m":Lorg/json/JSONObject;
    .end local v5    # "msg":Lcom/vkontakte/android/Message;
    .end local v6    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .end local v7    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v8    # "ph":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "r":Lorg/json/JSONArray;
    :catch_0
    move-exception v10

    .line 58
    const/4 v10, 0x0

    :goto_4
    return-object v10

    .line 55
    .restart local v1    # "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v2    # "i":I
    .restart local v6    # "msgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message;>;"
    .restart local v9    # "r":Lorg/json/JSONArray;
    :cond_4
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    const-string v12, "response"

    invoke-static {p1, v12}, Lcom/vkontakte/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkontakte/android/api/JSONArrayWithCount;

    move-result-object v12

    iget v12, v12, Lcom/vkontakte/android/api/JSONArrayWithCount;->count:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v1, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method public setCallback(Lcom/vkontakte/android/api/MessagesSearch$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/MessagesSearch$Callback;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vkontakte/android/api/MessagesSearch;->callback:Lcom/vkontakte/android/api/MessagesSearch$Callback;

    .line 63
    return-object p0
.end method
