.class public Lcom/vkontakte/android/api/WallRepost;
.super Lcom/vkontakte/android/APIRequest;
.source "WallRepost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/api/WallRepost$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/vkontakte/android/api/WallRepost$Callback;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "gid"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 11
    const-string v0, "wall.repost"

    invoke-direct {p0, v0}, Lcom/vkontakte/android/APIRequest;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v0, "object"

    invoke-virtual {p0, v0, p1}, Lcom/vkontakte/android/api/WallRepost;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 13
    const-string v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/vkontakte/android/api/WallRepost;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 14
    if-lez p2, :cond_0

    .line 15
    const-string v0, "group_id"

    invoke-virtual {p0, v0, p2}, Lcom/vkontakte/android/api/WallRepost;->param(Ljava/lang/String;I)Lcom/vkontakte/android/APIRequest;

    .line 16
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 17
    const-string v0, "access_key"

    invoke-virtual {p0, v0, p4}, Lcom/vkontakte/android/api/WallRepost;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkontakte/android/APIRequest;

    .line 18
    :cond_1
    return-void
.end method


# virtual methods
.method public invokeCallback(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/vkontakte/android/api/WallRepost;->callback:Lcom/vkontakte/android/api/WallRepost$Callback;

    if-nez v2, :cond_0

    .line 45
    .end local p1    # "result":Ljava/lang/Object;
    :goto_0
    return-void

    .line 38
    .restart local p1    # "result":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 39
    check-cast v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;

    .line 40
    .local v0, "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    iget-object v2, p0, Lcom/vkontakte/android/api/WallRepost;->callback:Lcom/vkontakte/android/api/WallRepost$Callback;

    iget v3, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorCode:I

    iget-object v4, v0, Lcom/vkontakte/android/APIRequest$ErrorResponse;->errorMessage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/vkontakte/android/api/WallRepost$Callback;->fail(ILjava/lang/String;)V

    goto :goto_0

    .line 42
    .end local v0    # "er":Lcom/vkontakte/android/APIRequest$ErrorResponse;
    :cond_1
    check-cast p1, [I

    .end local p1    # "result":Ljava/lang/Object;
    move-object v1, p1

    check-cast v1, [I

    .line 43
    .local v1, "r":[I
    iget-object v2, p0, Lcom/vkontakte/android/api/WallRepost;->callback:Lcom/vkontakte/android/api/WallRepost$Callback;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x2

    aget v5, v1, v5

    invoke-interface {v2, v3, v4, v5}, Lcom/vkontakte/android/api/WallRepost$Callback;->success(III)V

    goto :goto_0
.end method

.method public parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 4
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 23
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    .local v0, "r":Lorg/json/JSONObject;
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    const-string v3, "post_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "reposts_count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "likes_count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0    # "r":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 25
    :catch_0
    move-exception v1

    .line 27
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/vkontakte/android/api/WallRepost$Callback;)Lcom/vkontakte/android/APIRequest;
    .locals 0
    .param p1, "cb"    # Lcom/vkontakte/android/api/WallRepost$Callback;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/vkontakte/android/api/WallRepost;->callback:Lcom/vkontakte/android/api/WallRepost$Callback;

    .line 32
    return-object p0
.end method
