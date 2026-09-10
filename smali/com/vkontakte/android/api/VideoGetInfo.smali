.class public Lcom/vkontakte/android/api/VideoGetInfo;
.super Lcom/vkontakte/android/APIRequest;
.source "VideoGetInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/VideoGetInfo$Callback;
    }
.end annotation


# static fields
.field private static final CODE:Ljava/lang/String; = "return {t:API.video.getTags({vid:%1$d,owner_id:%2$d}),l:API.likes.getList({type:\"video\",item_id:%1$d,owner_id:%2$d,count:1}).count,il:API.likes.isLiked({type:\"video\",item_id:%1$d,owner_id:%2$d})};"


# instance fields
.field callback:Lcom/vkontakte/android/api/VideoGetInfo$Callback;


# direct methods
.method public constructor <init>(II)V
    .locals 5
    .param p1, "oid"    # I
    .param p2, "vid"    # I

    .prologue
    .line 18
    const-string v0, "execute"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v0, "code"

    const-string v1, "return {t:API.video.getTags({vid:%1$d,owner_id:%2$d}),l:API.likes.getList({type:\"video\",item_id:%1$d,owner_id:%2$d,count:1}).count,il:API.likes.isLiked({type:\"video\",item_id:%1$d,owner_id:%2$d})};"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkontakte/android/api/VideoGetInfo;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 20
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 49
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoGetInfo;->callback:Lcom/vkontakte/android/api/VideoGetInfo$Callback;

    if-nez v2, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 52
    check-cast v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 53
    .local v1, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/VideoGetInfo;->callback:Lcom/vkontakte/android/api/VideoGetInfo$Callback;

    iget v3, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v1, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/VideoGetInfo$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .end local v1    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    move-object v0, p1

    .line 55
    check-cast v0, [Ljava/lang/Object;

    .line 56
    .local v0, "d":[Ljava/lang/Object;
    iget-object v6, p0, Lcom/vkontakte/android/api/VideoGetInfo;->callback:Lcom/vkontakte/android/api/VideoGetInfo$Callback;

    aget-object v2, v0, v5

    check-cast v2, Ljava/util/ArrayList;

    aget-object v3, v0, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_2

    :goto_1
    const/4 v3, 0x3

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v6, v2, v7, v4, v3}, Lcom/vkontakte/android/api/VideoGetInfo$Callback;->success(Ljava/util/ArrayList;IZI)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 10
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 24
    :try_start_0
    const-string v6, "response"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 25
    .local v5, "tags":Lorg/json/JSONArray;
    const/4 v1, -0x1

    .line 26
    .local v1, "myTagID":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v3, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 37
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "l"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "response"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "il"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 40
    .end local v0    # "i":I
    .end local v1    # "myTagID":I
    .end local v3    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v5    # "tags":Lorg/json/JSONArray;
    :goto_1
    return-object v6

    .line 28
    .restart local v0    # "i":I
    .restart local v1    # "myTagID":I
    .restart local v3    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .restart local v5    # "tags":Lorg/json/JSONArray;
    :cond_0
    new-instance v2, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v2}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 29
    .local v2, "p":Lcom/vkontakte/android/UserProfile;
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 30
    .local v4, "tag":Lorg/json/JSONObject;
    const-string v6, "uid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    .line 31
    const-string v6, "tagged_name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget v6, v2, Lcom/vkontakte/android/UserProfile;->uid:I

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    if-ne v6, v7, :cond_1

    .line 34
    const-string v6, "tag_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 27
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "i":I
    .end local v1    # "myTagID":I
    .end local v2    # "p":Lcom/vkontakte/android/UserProfile;
    .end local v3    # "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v4    # "tag":Lorg/json/JSONObject;
    .end local v5    # "tags":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 40
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setCallback(Lcom/vkontakte/android/api/VideoGetInfo$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/VideoGetInfo$Callback;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vkontakte/android/api/VideoGetInfo;->callback:Lcom/vkontakte/android/api/VideoGetInfo$Callback;

    .line 45
    return-object p0
.end method
